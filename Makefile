CC = gcc

OPTIONS = -std=gnu99

ALL:FTPC FTPS TCPD


FTPC:ftpc.c
	$(CC) $(OPTIONS)  srbaclib.c ftpc.c -o ftpc

FTPS:ftps.c
	$(CC) $(OPTIONS)  srbaclib.c ftps.c -o ftps

TCPDC:tcpd.c
	$(CC) $(OPTIONS)  srbaclib.c tcpd.c -o tcpd

clean:
	rm ftpc ftps tcpd
	rm -r recvd
