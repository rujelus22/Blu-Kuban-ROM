.class public Lcom/samsung/swift/network/MulticastSender;
.super Lcom/samsung/swift/network/Multicaster;
.source "MulticastSender.java"


# static fields
.field public static final DEF_TTL:I = 0x1

.field public static final LOCATION_HEADER:Ljava/lang/String; = "LOCATION"

.field private static final SOCKET_TIMEOUT:I = 0x32

.field public static final msg:Ljava/lang/String; = "M-SEARCH * HTTP/1.1\r\nHost:239.255.255.250:1900\r\nST:urn:schemas-upnp-org:device:SwiftServer:1\r\nMan:\"ssdp:discover\"\r\nMX:3\r\n\r\n"


# instance fields
.field private final TAGNAME:Ljava/lang/String;

.field private ttl:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-direct {p0}, Lcom/samsung/swift/network/Multicaster;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/network/MulticastSender;->TAGNAME:Ljava/lang/String;

    .line 21
    iput v2, p0, Lcom/samsung/swift/network/MulticastSender;->ttl:I

    .line 96
    const-string v0, "239.255.255.250"

    const/16 v1, 0x76c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/swift/network/MulticastSender;->setup(Ljava/lang/String;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "group"

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Lcom/samsung/swift/network/Multicaster;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/network/MulticastSender;->TAGNAME:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/samsung/swift/network/MulticastSender;->ttl:I

    .line 102
    const/16 v0, 0x76c

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/swift/network/MulticastSender;->setup(Ljava/lang/String;II)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "group"
    .parameter "port"

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-direct {p0}, Lcom/samsung/swift/network/Multicaster;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/network/MulticastSender;->TAGNAME:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/samsung/swift/network/MulticastSender;->ttl:I

    .line 108
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/swift/network/MulticastSender;->setup(Ljava/lang/String;II)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter "group"
    .parameter "port"
    .parameter "ttl"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/samsung/swift/network/Multicaster;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/network/MulticastSender;->TAGNAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/swift/network/MulticastSender;->ttl:I

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/swift/network/MulticastSender;->setup(Ljava/lang/String;II)V

    .line 115
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 12
    .parameter "args"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, mc:Lcom/samsung/swift/network/MulticastSender;
    array-length v8, p0

    packed-switch v8, :pswitch_data_a2

    .line 58
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Usage:  java MulticastSender <group> <port> <ttl>\n"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, " defaults are:  239.255.255.250 1900 1\n"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 65
    :goto_18
    const/16 v8, 0x3e8

    :try_start_1a
    new-array v0, v8, [B

    .line 66
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 67
    .local v3, i:I
    invoke-virtual {v6}, Lcom/samsung/swift/network/MulticastSender;->init()V

    .line 68
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v9, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v7, stdin:Ljava/io/BufferedReader;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Begin typing (return to send, ctrl-C to quit):"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const-wide/16 v4, 0x0

    .line 71
    .local v4, ll:J
    :goto_35
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9d

    .line 73
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Starting Scan..."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    const-string v8, "M-SEARCH * HTTP/1.1\r\nHost:239.255.255.250:1900\r\nST:urn:schemas-upnp-org:device:SwiftServer:1\r\nMan:\"ssdp:discover\"\r\nMX:3\r\n\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 75
    invoke-virtual {v6}, Lcom/samsung/swift/network/MulticastSender;->send()[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, dl:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_4d
    array-length v8, v1

    if-ge v3, v8, :cond_89

    .line 78
    aget-object v8, v1, v3

    invoke-static {v8}, Lcom/samsung/swift/network/Utils;->getServiceDescription(Ljava/lang/String;)Lcom/samsung/swift/network/DiscoveryResponse;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_55} :catch_98

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 46
    .end local v0           #buffer:[B
    .end local v1           #dl:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #ll:J
    .end local v7           #stdin:Ljava/io/BufferedReader;
    :pswitch_58
    new-instance v6, Lcom/samsung/swift/network/MulticastSender;

    .end local v6           #mc:Lcom/samsung/swift/network/MulticastSender;
    invoke-direct {v6}, Lcom/samsung/swift/network/MulticastSender;-><init>()V

    .line 47
    .restart local v6       #mc:Lcom/samsung/swift/network/MulticastSender;
    goto :goto_18

    .line 49
    :pswitch_5e
    new-instance v6, Lcom/samsung/swift/network/MulticastSender;

    .end local v6           #mc:Lcom/samsung/swift/network/MulticastSender;
    aget-object v8, p0, v9

    invoke-direct {v6, v8}, Lcom/samsung/swift/network/MulticastSender;-><init>(Ljava/lang/String;)V

    .line 50
    .restart local v6       #mc:Lcom/samsung/swift/network/MulticastSender;
    goto :goto_18

    .line 52
    :pswitch_66
    new-instance v6, Lcom/samsung/swift/network/MulticastSender;

    .end local v6           #mc:Lcom/samsung/swift/network/MulticastSender;
    aget-object v8, p0, v9

    aget-object v9, p0, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v8, v9}, Lcom/samsung/swift/network/MulticastSender;-><init>(Ljava/lang/String;I)V

    .line 53
    .restart local v6       #mc:Lcom/samsung/swift/network/MulticastSender;
    goto :goto_18

    .line 55
    :pswitch_74
    new-instance v6, Lcom/samsung/swift/network/MulticastSender;

    .end local v6           #mc:Lcom/samsung/swift/network/MulticastSender;
    aget-object v8, p0, v9

    aget-object v9, p0, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v6, v8, v9, v10}, Lcom/samsung/swift/network/MulticastSender;-><init>(Ljava/lang/String;II)V

    .line 56
    .restart local v6       #mc:Lcom/samsung/swift/network/MulticastSender;
    goto :goto_18

    .line 81
    .restart local v0       #buffer:[B
    .restart local v1       #dl:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #ll:J
    .restart local v7       #stdin:Ljava/io/BufferedReader;
    :cond_89
    :try_start_89
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Scan done."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Begin typing (return to send, ctrl-C to quit):"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_97} :catch_98

    goto :goto_35

    .line 87
    .end local v0           #buffer:[B
    .end local v1           #dl:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #ll:J
    .end local v7           #stdin:Ljava/io/BufferedReader;
    :catch_98
    move-exception v2

    .line 89
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v2           #e:Ljava/io/IOException;
    :goto_9c
    return-void

    .line 85
    .restart local v0       #buffer:[B
    .restart local v3       #i:I
    .restart local v4       #ll:J
    .restart local v7       #stdin:Ljava/io/BufferedReader;
    :cond_9d
    :try_start_9d
    invoke-virtual {v6}, Lcom/samsung/swift/network/MulticastSender;->cleanUp()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_98

    goto :goto_9c

    .line 43
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_58
        :pswitch_5e
        :pswitch_66
        :pswitch_74
    .end packed-switch
.end method

.method private setup(Ljava/lang/String;II)V
    .registers 7
    .parameter "group"
    .parameter "port"
    .parameter "ttl"

    .prologue
    .line 120
    const/16 v0, 0x400

    if-lt p2, v0, :cond_9

    const v0, 0xffff

    if-le p2, v0, :cond_29

    .line 122
    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "port should be in range 1024 to 65535"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    :goto_28
    return-void

    .line 127
    :cond_29
    invoke-virtual {p0, p1}, Lcom/samsung/swift/network/MulticastSender;->setGroup(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/samsung/swift/network/MulticastSender;->setPort(I)V

    .line 129
    iput p3, p0, Lcom/samsung/swift/network/MulticastSender;->ttl:I

    goto :goto_28
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v1

    .line 144
    .local v1, mcSocket:Ljava/net/MulticastSocket;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_f

    .line 146
    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 149
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/swift/network/MulticastSender;->setGroup(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/swift/network/MulticastSender;->setAddress(Ljava/net/InetAddress;)V

    .line 151
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/swift/network/MulticastSender;->setSocket(Ljava/net/MulticastSocket;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 157
    .end local v1           #mcSocket:Ljava/net/MulticastSocket;
    :goto_1b
    return-void

    .line 153
    :catch_1c
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method protected destroy()V
    .registers 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->cleanUp()V

    .line 136
    return-void
.end method

.method protected initImpl()V
    .registers 5

    .prologue
    .line 164
    :try_start_0
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1}, Ljava/net/MulticastSocket;-><init>()V

    .line 165
    .local v1, mcSocket:Ljava/net/MulticastSocket;
    iget v2, p0, Lcom/samsung/swift/network/MulticastSender;->ttl:I

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 166
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/samsung/swift/network/MulticastSender;->setSocket(Ljava/net/MulticastSocket;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    .line 174
    .end local v1           #mcSocket:Ljava/net/MulticastSocket;
    :goto_12
    return-void

    .line 169
    :catch_13
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public send()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v5, 0x0

    .line 180
    .local v5, txBuffer:[B
    const/16 v6, 0x800

    new-array v4, v6, [B

    .line 181
    .local v4, rxBuffer:[B
    const-string v6, "M-SEARCH * HTTP/1.1\r\nHost:239.255.255.250:1900\r\nST:urn:schemas-upnp-org:device:SwiftServer:1\r\nMan:\"ssdp:discover\"\r\nMX:3\r\n\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, responses:[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v2, res:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_11
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 187
    .local v0, interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 189
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 190
    .local v1, netIf:Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 192
    array-length v6, v5

    invoke-virtual {p0, v1, v5, v6, v4}, Lcom/samsung/swift/network/MulticastSender;->send(Ljava/net/NetworkInterface;[BI[B)[Ljava/lang/String;

    move-result-object v3

    .line 193
    if-eqz v3, :cond_15

    array-length v6, v3

    if-lez v6, :cond_15

    .line 195
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_39

    goto :goto_15

    .line 200
    .end local v0           #interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #netIf:Ljava/net/NetworkInterface;
    :catch_39
    move-exception v6

    .line 204
    :cond_3a
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 206
    const/4 v6, 0x0

    .line 209
    :goto_41
    return-object v6

    :cond_42
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_41
.end method

.method public send(Ljava/net/NetworkInterface;[BI[B)[Ljava/lang/String;
    .registers 14
    .parameter "netIf"
    .parameter "buffer"
    .parameter "length"
    .parameter "rxBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 214
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getPort()I

    move-result v7

    invoke-direct {v1, p2, p3, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 215
    .local v1, packet:Ljava/net/DatagramPacket;
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v6, p4

    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getPort()I

    move-result v8

    invoke-direct {v3, p4, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 216
    .local v3, rxPacket:Ljava/net/DatagramPacket;
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_23

    .line 257
    :cond_22
    :goto_22
    return-object v5

    .line 227
    :cond_23
    invoke-static {}, Lcom/samsung/swift/Swift;->isJDK6Compat()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 230
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->supportsMulticast()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 236
    :cond_3b
    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 238
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 243
    .local v0, headers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/samsung/swift/network/MulticastSender;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 244
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v6

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 245
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/swift/network/Utils;->parseHttpResponseHeader(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 246
    .local v2, rh:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "LOCATION"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #s:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 247
    .restart local v4       #s:Ljava/lang/String;
    if-eqz v4, :cond_4e

    .line 249
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/net/SocketTimeoutException; {:try_start_4e .. :try_end_77} :catch_78

    goto :goto_4e

    .line 253
    .end local v2           #rh:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #s:Ljava/lang/String;
    :catch_78
    move-exception v5

    .line 257
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_22
.end method
