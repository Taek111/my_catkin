#include "ros/ros.h"
#include "std_msgs/String.h"
#include "erp42/feedback.h"
#include "erp42/input.h"
#include "DataContainer.h"

DataContainer *data;

void chatterCallback(const erp42::input& input)
{
  data -> setValue_PCtoU_Auto(input.Auto);
  data -> setValue_PCtoU_Manual(input.Manual);
  data -> setValue_PCtoU_ESTOP(input.ESTOP);
  data -> setValue_PCtoU_Gear(input.Gear);
  data -> setValue_PCtoU_Speed_mps(input.Speed_mps);
  data -> setValue_PCtoU_Speed_kph(input.Speed_kph);
  data -> setValue_PCtoU_Steer(input.Steer);
  data -> setValue_PCtoU_Steer_degree(input.Steer_degree);
  data -> setValue_PCtoU_Brake(input.Brake);
  data -> setValue_PCtoU_Alive(input.Alive);
  data -> show_PCtoU();
  
}

int main(int argc, char **argv)
{
  
  data = DataContainer::getInstance();

  ros::init(argc, argv, "Upper");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("input", 100, chatterCallback);

  ros::spin();

  return 0;
}
