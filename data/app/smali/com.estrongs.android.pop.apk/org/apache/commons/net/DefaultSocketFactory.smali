.class public Lorg/apache/commons/net/DefaultSocketFactory;
.super Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .registers 3

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .registers 4

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 5

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v0
.end method
