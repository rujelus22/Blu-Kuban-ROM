.class public abstract Lcom/samsung/swift/network/Multicaster;
.super Ljava/lang/Object;
.source "Multicaster.java"


# static fields
.field public static final DEF_GROUP:Ljava/lang/String; = "239.255.255.250"

.field public static final DEF_PORT:I = 0x76c

.field public static final MAX_LEN:I = 0x1000

.field public static final MAX_PORT:I = 0xffff

.field public static final MIN_PORT:I = 0x400


# instance fields
.field private address:Ljava/net/InetAddress;

.field private group:Ljava/lang/String;

.field private port:I

.field private socket:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x76c

    iput v0, p0, Lcom/samsung/swift/network/Multicaster;->port:I

    .line 22
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lcom/samsung/swift/network/Multicaster;->group:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/swift/network/Multicaster;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getGroup()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/swift/network/Multicaster;->group:Ljava/lang/String;

    return-object v0
.end method

.method protected getPort()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/swift/network/Multicaster;->port:I

    return v0
.end method

.method protected getSocket()Ljava/net/MulticastSocket;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/swift/network/Multicaster;->socket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public init()V
    .registers 5

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/samsung/swift/network/Multicaster;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 94
    :goto_6
    return-void

    .line 78
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/samsung/swift/network/Multicaster;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/network/Multicaster;->address:Ljava/net/InetAddress;
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_11} :catch_38

    .line 87
    iget-object v1, p0, Lcom/samsung/swift/network/Multicaster;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_56

    .line 89
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/swift/network/Multicaster;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a multicast IP address."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 80
    :catch_38
    move-exception v0

    .line 82
    .local v0, e:Ljava/net/UnknownHostException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/swift/network/Multicaster;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid IP address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 93
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_56
    invoke-virtual {p0}, Lcom/samsung/swift/network/Multicaster;->initImpl()V

    goto :goto_6
.end method

.method protected abstract initImpl()V
.end method

.method protected setAddress(Ljava/net/InetAddress;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/swift/network/Multicaster;->address:Ljava/net/InetAddress;

    .line 58
    return-void
.end method

.method protected setGroup(Ljava/lang/String;)V
    .registers 2
    .parameter "group"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/swift/network/Multicaster;->group:Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected setPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 37
    iput p1, p0, Lcom/samsung/swift/network/Multicaster;->port:I

    .line 38
    return-void
.end method

.method protected setSocket(Ljava/net/MulticastSocket;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/swift/network/Multicaster;->socket:Ljava/net/MulticastSocket;

    .line 68
    return-void
.end method
