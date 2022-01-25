import socket
import sys
from datetime import datetime

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Bind the socket to the port
server_address = ('0.0.0.0', 5000)
print('starting up on {} port {}'.format(*server_address))
sock.bind(server_address)

# Listen for incoming connections
sock.listen(1)

while True:
# Wait for a connection
    print('waiting for a connection')
    connection, client_address = sock.accept()
    dt = datetime
    try:
        print('connection from', client_address)
        fl = open("log_{}.log".format(dt.now().strftime("%b-%d-%Y_%H-%M-%S")),"w")
        # Receive the data in small chunks and retransmit it
        while True:
            data = connection.recv(16)
            if data:
                print('received {!r}'.format(data))
                fl.write('[{}] {!r}\n'.format(dt.now().strftime("%H:%M:%S"), data))
                connection.sendall(data)
            else:
                print('no data from', client_address)
                break
    finally:
        connection.close()
