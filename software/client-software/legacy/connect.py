from rpiInteract import *
import sys

if __name__ == "__main__":
    connection = rpiInteract(HOST=sys.argv[1], PORT=int(sys.argv[2]))
    connection.start_stream()
    print("asd")
