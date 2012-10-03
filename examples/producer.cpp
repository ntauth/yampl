#include "Socket.h"
#include "ZMQSocketFactory.h"
#include "utils.h"

using namespace IPC;
using namespace std;

int main(int argc, char *argv[]){
  Environment env;
  string message = "Hello from " +  pid();
  
  ISocket *socket = ZMQSocketFactory().createProducerSocket(Channel(env, "pipe", ONE_TO_MANY), true, deallocator);

  while(true){
    socket->send(message.c_str(), message.size());
    cout << "Message sent" <<  endl;
    sleep(1);
  }
}