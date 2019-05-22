#pragma once
#include <mutex>

class DataContainer
{
private:
	// Singleton
	DataContainer() {};
	static bool instanceFlag;
	static DataContainer* instance;

	// PC to Upper 
	bool PCtoU_Auto = false;
	bool PCtoU_Manual = false;
	bool PCtoU_ESTOP = false;
	int PCtoU_Gear = 0;
	double PCtoU_Speed_mps = 0.0;
	double PCtoU_Speed_kph = 0.0;
	int PCtoU_Steer = 0;
	double PCtoU_Steer_degree = 0.0;
	int PCtoU_Brake = 0;
	int PCtoU_Alive = 0;
	

	// PCU to UPPER (Send data to platform)
	bool UtoPC_Auto = false;
	bool UtoPC_Manual = false;
	bool UtoPC_ESTOP = false;
	int UtoPC_Gear = 0;
	double UtoPC_Speed_mps = 0.0;
	double UtoPC_Speed_kph = 0.0;
	int UtoPC_Steer = 0;
	double UtoPC_Steer_degree = 0.0;
	int UtoPC_Brake = 0;
	int UtoPC_Alive = 0;
	int UtoPC_Encoder = 0;

	// Mutex
	
	std::mutex mtx_PCtoU_Auto;
	std::mutex mtx_PCtoU_Manual;
	std::mutex mtx_PCtoU_ESTOP;
	std::mutex mtx_PCtoU_Gear;
	std::mutex mtx_PCtoU_Speed_mps;
	std::mutex mtx_PCtoU_Speed_kph;
	std::mutex mtx_PCtoU_Steer;
	std::mutex mtx_PCtoU_Steer_degree;
	std::mutex mtx_PCtoU_Brake;
	std::mutex mtx_PCtoU_Alive;

	std::mutex mtx_UtoPC_Auto;
	std::mutex mtx_UtoPC_Manual;
	std::mutex mtx_UtoPC_ESTOP;
	std::mutex mtx_UtoPC_Gear;
	std::mutex mtx_UtoPC_Speed_mps;
	std::mutex mtx_UtoPC_Speed_kph;
	std::mutex mtx_UtoPC_Steer;
	std::mutex mtx_UtoPC_Steer_degree;
	std::mutex mtx_UtoPC_Brake;
	std::mutex mtx_UtoPC_Alive;
	std::mutex mtx_UtoPC_Encoder;


public:
	// Return singleton instance
	static DataContainer* getInstance();

	// Destructor
	virtual ~DataContainer() { instanceFlag = false; };

	// UPPER to PCU (Send data to platform)
	bool getValue_PCtoU_Auto();
	bool getValue_PCtoU_Manual();
	bool getValue_PCtoU_ESTOP();
	int getValue_PCtoU_Gear();
	double getValue_PCtoU_Speed_mps();
	double getValue_PCtoU_Speed_kph();
	int getValue_PCtoU_Steer();
	double getValue_PCtoU_Steer_degree();
	int getValue_PCtoU_Brake();
	int getValue_PCtoU_Alive();

	void setValue_PCtoU_Auto(bool value);
	void setValue_PCtoU_Manual(bool value);
	void setValue_PCtoU_ESTOP(bool value);
	void setValue_PCtoU_Gear(int value);
	void setValue_PCtoU_Speed_mps(double value);
	void setValue_PCtoU_Speed_kph(double value);
	void setValue_PCtoU_Steer(int value);
	void setValue_PCtoU_Steer_degree(double value);
	void setValue_PCtoU_Brake(int value);
	void setValue_PCtoU_Alive(int value);

	// PCU to UPPER (Get data from platform)
	bool getValue_UtoPC_Auto();
	bool getValue_UtoPC_Manual();
	bool getValue_UtoPC_ESTOP();
	int getValue_UtoPC_Gear();
	double getValue_UtoPC_Speed_mps();
	double getValue_UtoPC_Speed_kph();
	int getValue_UtoPC_Steer();
	double getValue_UtoPC_Steer_degree();
	int getValue_UtoPC_Brake();
	int getValue_UtoPC_Alive();
	int getValue_UtoPC_Encoder();
	
	void setValue_UtoPC_Auto(bool value);
	void setValue_UtoPC_Manual(bool value);
	void setValue_UtoPC_ESTOP(bool value);
	void setValue_UtoPC_Gear(int value);
	void setValue_UtoPC_Speed_mps(double value);
	void setValue_UtoPC_Speed_kph(double value);
	void setValue_UtoPC_Steer(int value);
	void setValue_UtoPC_Steer_degree(double value);
	void setValue_UtoPC_Brake(int value);
	void setValue_UtoPC_Alive(int value);
	void setValue_UtoPC_Encoder(int value);
	
	// Show data (UPPER to PCU, PCU to UPPER)
	void show_PCtoU();
	void show_UtoPC();

};

