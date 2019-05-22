#include "DataContainer.h"
#include <iostream>
#include <mutex>

using namespace std;

bool DataContainer::instanceFlag = false;
DataContainer* DataContainer::instance = NULL;

// Return singleton instances
DataContainer* DataContainer::getInstance()
{
	if (!instance)
	{
		instance = new DataContainer();
		instanceFlag = true;
	}
	return instance;
}


// UPPER to PCU (Send data to platform)
bool DataContainer::getValue_PCtoU_Auto() { mtx_PCtoU_Auto.lock(); bool temp = PCtoU_Auto; mtx_PCtoU_Auto.unlock(); return temp; }
bool DataContainer::getValue_PCtoU_Manual() { mtx_PCtoU_Manual.lock(); bool temp = PCtoU_Manual; mtx_PCtoU_Manual.unlock(); return temp; }
bool DataContainer::getValue_PCtoU_ESTOP() { mtx_PCtoU_ESTOP.lock(); bool temp = PCtoU_ESTOP; mtx_PCtoU_ESTOP.unlock(); return temp; }
int DataContainer::getValue_PCtoU_Gear() { mtx_PCtoU_Gear.lock(); int temp = PCtoU_Gear; mtx_PCtoU_Gear.unlock(); return temp; }
double DataContainer::getValue_PCtoU_Speed_mps() { mtx_PCtoU_Speed_mps.lock(); double temp = PCtoU_Speed_mps; mtx_PCtoU_Speed_mps.unlock(); return temp; }
double DataContainer::getValue_PCtoU_Speed_kph() { mtx_PCtoU_Speed_kph.lock(); double temp = PCtoU_Speed_kph; mtx_PCtoU_Speed_kph.unlock(); return temp; }
int DataContainer::getValue_PCtoU_Steer() { mtx_PCtoU_Steer.lock(); int temp = PCtoU_Steer; mtx_PCtoU_Steer.unlock(); return temp; }
double DataContainer::getValue_PCtoU_Steer_degree() { mtx_PCtoU_Steer_degree.lock(); double temp = PCtoU_Steer_degree; mtx_PCtoU_Steer_degree.unlock(); return temp; }
int DataContainer::getValue_PCtoU_Brake() { mtx_PCtoU_Brake.lock(); int temp = PCtoU_Brake; mtx_PCtoU_Brake.unlock(); return temp; }
int DataContainer::getValue_PCtoU_Alive() { mtx_PCtoU_Alive.lock(); int temp = PCtoU_Alive; mtx_PCtoU_Alive.unlock(); return temp; }


void DataContainer::setValue_PCtoU_Auto(bool value) { mtx_PCtoU_Auto.lock(); PCtoU_Auto = value; mtx_PCtoU_Auto.unlock();}
void DataContainer::setValue_PCtoU_Manual(bool value) { mtx_PCtoU_Manual.lock(); PCtoU_Manual = value; mtx_PCtoU_Manual.unlock();}
void DataContainer::setValue_PCtoU_ESTOP(bool value) { mtx_PCtoU_ESTOP.lock(); PCtoU_ESTOP = value; mtx_PCtoU_ESTOP.unlock();}
void DataContainer::setValue_PCtoU_Gear(int value) { mtx_PCtoU_Gear.lock();PCtoU_Gear = value; mtx_PCtoU_Gear.unlock();}
void DataContainer::setValue_PCtoU_Speed_mps(double value) { mtx_PCtoU_Speed_mps.lock();PCtoU_Speed_mps = value; mtx_PCtoU_Speed_mps.unlock();}
void DataContainer::setValue_PCtoU_Speed_kph(double value) { mtx_PCtoU_Speed_kph.lock();PCtoU_Speed_kph = value; mtx_PCtoU_Speed_kph.unlock();}
void DataContainer::setValue_PCtoU_Steer(int value) { mtx_PCtoU_Steer.lock(); PCtoU_Steer = value; mtx_PCtoU_Steer.unlock();}
void DataContainer::setValue_PCtoU_Steer_degree(double value) { mtx_PCtoU_Steer_degree.lock();PCtoU_Steer_degree = value; mtx_PCtoU_Steer_degree.unlock();}
void DataContainer::setValue_PCtoU_Brake(int value){ mtx_PCtoU_Brake.lock();PCtoU_Brake = value; mtx_PCtoU_Brake.unlock();}
void DataContainer::setValue_PCtoU_Alive(int value){ mtx_PCtoU_Alive.lock();PCtoU_Alive = value; mtx_PCtoU_Alive.unlock();}



// PCU to UPPER (Get data from platform)
bool DataContainer::getValue_UtoPC_Auto() { mtx_UtoPC_Auto.lock(); bool temp = UtoPC_Auto; mtx_UtoPC_Auto.unlock(); return temp; }
bool DataContainer::getValue_UtoPC_Manual() { mtx_UtoPC_Manual.lock(); bool temp = UtoPC_Manual; mtx_UtoPC_Manual.unlock(); return temp; }
bool DataContainer::getValue_UtoPC_ESTOP() { mtx_UtoPC_ESTOP.lock(); bool temp = UtoPC_ESTOP; mtx_UtoPC_ESTOP.unlock(); return temp; }
int DataContainer::getValue_UtoPC_Gear() { mtx_UtoPC_Gear.lock(); int temp = UtoPC_Gear; mtx_UtoPC_Gear.unlock(); return temp; }
double DataContainer::getValue_UtoPC_Speed_mps() { mtx_UtoPC_Speed_mps.lock(); double temp = UtoPC_Speed_mps; mtx_UtoPC_Speed_mps.unlock(); return temp; }
double DataContainer::getValue_UtoPC_Speed_kph() { mtx_UtoPC_Speed_kph.lock(); double temp = UtoPC_Speed_kph; mtx_UtoPC_Speed_kph.unlock(); return temp; }
int DataContainer::getValue_UtoPC_Steer() { mtx_UtoPC_Steer.lock(); int temp = UtoPC_Steer; mtx_UtoPC_Steer.unlock(); return temp; }
double DataContainer::getValue_UtoPC_Steer_degree() { mtx_UtoPC_Steer_degree.lock(); double temp = UtoPC_Steer_degree; mtx_UtoPC_Steer_degree.unlock(); return temp; }
int DataContainer::getValue_UtoPC_Brake() { mtx_UtoPC_Brake.lock(); int temp = UtoPC_Brake; mtx_UtoPC_Brake.unlock(); return temp; }
int DataContainer::getValue_UtoPC_Alive() { mtx_UtoPC_Alive.lock(); int temp = UtoPC_Alive; mtx_UtoPC_Alive.unlock(); return temp; }


void DataContainer::setValue_UtoPC_Auto(bool value) { mtx_UtoPC_Auto.lock(); UtoPC_Auto = value; mtx_UtoPC_Auto.unlock();}
void DataContainer::setValue_UtoPC_Manual(bool value) { mtx_UtoPC_Manual.lock(); UtoPC_Manual = value; mtx_UtoPC_Manual.unlock();}
void DataContainer::setValue_UtoPC_ESTOP(bool value) { mtx_UtoPC_ESTOP.lock(); UtoPC_ESTOP = value; mtx_UtoPC_ESTOP.unlock();}
void DataContainer::setValue_UtoPC_Gear(int value) { mtx_UtoPC_Gear.lock();UtoPC_Gear = value; mtx_UtoPC_Gear.unlock();}
void DataContainer::setValue_UtoPC_Speed_mps(double value) { mtx_UtoPC_Speed_mps.lock();UtoPC_Speed_mps = value; mtx_UtoPC_Speed_mps.unlock();}
void DataContainer::setValue_UtoPC_Speed_kph(double value) { mtx_UtoPC_Speed_kph.lock();UtoPC_Speed_kph = value; mtx_UtoPC_Speed_kph.unlock();}
void DataContainer::setValue_UtoPC_Steer(int value) { mtx_UtoPC_Steer.lock(); UtoPC_Steer = value; mtx_UtoPC_Steer.unlock();}
void DataContainer::setValue_UtoPC_Steer_degree(double value) { mtx_UtoPC_Steer_degree.lock();UtoPC_Steer_degree = value; mtx_UtoPC_Steer_degree.unlock();}
void DataContainer::setValue_UtoPC_Brake(int value){ mtx_UtoPC_Brake.lock();UtoPC_Brake = value; mtx_UtoPC_Brake.unlock();}
void DataContainer::setValue_UtoPC_Alive(int value){ mtx_UtoPC_Alive.lock();UtoPC_Alive = value; mtx_UtoPC_Alive.unlock();}



void DataContainer::show_PCtoU()
{
	cout << "[ PC To UPPER |";
	cout << " Auto: " << PCtoU_Auto;
	cout << " Manual: " << PCtoU_Manual;
	cout << " ESTOP: " << PCtoU_ESTOP;
	cout << " Gear: " << PCtoU_Gear;
	cout << " Speed(m/s) " << PCtoU_Speed_mps;
	cout << " Speed(km/h) " << PCtoU_Speed_kph;
	cout << " Steer: " << PCtoU_Steer;
	cout << " Steer(degree): " << PCtoU_Steer_degree;
	cout << " Brake: " << PCtoU_Brake;
	cout << " Alive: " << PCtoU_Alive;
	cout << " ]" << endl;
}

void DataContainer::show_UtoPC()
{
	cout << "[ Upper to PC |";
	cout << " Auto: " << UtoPC_Auto;
	cout << " Manual: " << UtoPC_Manual;
	cout << " ESTOP: " << UtoPC_ESTOP;
	cout << " Gear: " << UtoPC_Gear;
	cout << " Speed(m/s) " << UtoPC_Speed_mps;
	cout << " Speed(km/h) " << UtoPC_Speed_kph;
	cout << " Steer: " << UtoPC_Steer;
	cout << " Steer(degree): " << UtoPC_Steer_degree;
	cout << " Brake: " << UtoPC_Brake;
	cout << " Alive: " << UtoPC_Alive;
	cout << " ]" << endl;
}
