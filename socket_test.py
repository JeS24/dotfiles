# Ended up using the code here: https://stackoverflow.com/questions/20867184/how-to-check-whether-my-server-is-up-and-running-using-python

# import sys
import socket

def serverConTest():
    """
    Checks, if the socket is open. 'ping' is not always reliable. 
    Details about socket can be found here: https://docs.python.org/3/library/socket.html
    """
    host = "10.10.0.79" # Server's IP
    port = 80
    args = socket.getaddrinfo(host, port, socket.AF_INET, socket.SOCK_STREAM)

    for family, socktype, proto, canonname, sockaddr in args:
        s = socket.socket(family, socktype, proto)
        try:
            s.connect(sockaddr)
        except socket.error:
            return False
        else:
            s.close()
            return True


if __name__ == "__main__":
    print("Server is UP") if serverConTest() else print("Server is DOWN")