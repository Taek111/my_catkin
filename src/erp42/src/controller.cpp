#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>
#include <vector>
#include <string>
#include <iterator>
#include <sstream>
#include "erp42/input.h"
#include "DataContainer.h"

using namespace std;

DataContainer *data;


bool stob(const std::string &s){
	return s.at(0)=='1';
}

double mps2kph(double mps){
	
	
}

double kph2mps(double kph){
	
	
}

void inputParser(const std::string &c){
	istringstream iss{c};
	vector<string> words{ istream_iterator<string> {iss}, istream_iterator<string> {} };

	for (int i = 0; i < words.size(); i += 2) {
		if (words.at(i) == "Auto")
			data->setValue_PCtoU_Auto(stob(words.at(i + 1)));
		else if (words.at(i) == "Manual")
			data->setValue_PCtoU_Manual(stob(words.at(i + 1)));
		else if (words.at(i) == "ESTOP")
			data->setValue_PCtoU_ESTOP(stob(words.at(i + 1)));
		else if (words.at(i) == "Gear"){
			int tmp = stoi(words.at(i + 1));
			if (tmp < 0 || tmp > 255){
				cout << "Please enter a valid range(0 ~ 255)" << endl;
				continue;
			}
			data->setValue_PCtoU_Gear(tmp);
		}
		
		else if (words.at(i) == "Speed_mps"){
			double tmp = stof(words.at(i + 1));
			//TODO: set speed range
			data->setValue_PCtoU_Speed_mps(tmp);
			data->setValue_PCtoU_Speed_kph(tmp*3.6);
		}
		
		else if (words.at(i) == "Speed_kph"){
			double tmp = stof(words.at(i + 1));
			//TODO: set speed range
			data->setValue_PCtoU_Speed_kph(tmp);
			data->setValue_PCtoU_Speed_mps(tmp/3.6);
		}
		
		else if (words.at(i) == "Steer") {
			int tmp = stoi(words.at(i + 1));
			double tmp_degree = tmp / 71;
			if (tmp < -2000 || tmp > 2000){
				cout << "Please enter a valid range(-2000 ~ 2000)" << endl;
				continue;
			}
			data->setValue_PCtoU_Steer(tmp);
			data->setValue_PCtoU_Steer_degree(tmp_degree);
		}
		
		else if (words.at(i) == "Steer_degree"){
			double tmp= stof(words.at(i + 1));
			int tmp_int = tmp * 71;
			if (tmp < -2000/71 || tmp > 2000/71){
				cout << "Please enter a valid range(-28.17 ~ 28.17)" << endl;
				continue;
			}
			data->setValue_PCtoU_Steer_degree(tmp);
			data->setValue_PCtoU_Steer(tmp_int);
		}
		
		else if (words.at(i) == "Brake"){
			int tmp = stoi(words.at(i + 1));
			if (tmp < 1 || tmp > 200){
				cout << "Please enter a valid range(1 ~ 200)" << endl;
				continue;
			} 
			data->setValue_PCtoU_Brake(tmp);
		}
		
		else if (words.at(i) == "Alive"){
			int tmp = stoi(words.at(i + 1));
			if (tmp < 0 || tmp > 255){
				cout << "Please enter a valid range(0 ~ 255)" << endl;
				continue;
			} 
			data->setValue_PCtoU_Alive(tmp);
		}
		
		else cout << "Enter correct code." << endl;
	}
}

void setInput(erp42::input& i){
	i.Auto =data -> getValue_PCtoU_Auto();	
	i.Manual = data -> getValue_PCtoU_Manual();
	i.ESTOP = data -> getValue_PCtoU_ESTOP();
	i.Gear = data -> getValue_PCtoU_Gear();
	i.Speed_mps = data -> getValue_PCtoU_Speed_mps();
	i.Speed_kph = data -> getValue_PCtoU_Speed_kph();
	i.Steer = data -> getValue_PCtoU_Steer();
	i.Steer_degree = data -> getValue_PCtoU_Steer_degree();
	i.Brake = data -> getValue_PCtoU_Brake();
	i.Alive = data -> getValue_PCtoU_Alive();
}


int main(int argc, char **argv)
{
	
  ros::init(argc, argv, "controller");
  
  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<erp42::input>("input", 1000);
  
  data = DataContainer::getInstance();
  
  erp42::input input;
  
  string command;
  cout << "Commands: Auto, Manual, ESTOP, Gear, Speed_mps, Speed_kph, Steer, Steer_degree, Brake, Alive" << endl;
  cout << "example: Gear 1 Speed_kph 3" << endl;
  
  while(getline(cin, command)){
	inputParser(command);
	setInput(input);
	chatter_pub.publish(input);
  }

  return 0;
}
