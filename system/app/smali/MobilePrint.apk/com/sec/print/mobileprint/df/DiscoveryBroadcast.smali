.class public Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;
.super Ljava/lang/Object;
.source "DiscoveryBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;
    }
.end annotation


# static fields
.field protected static final PRINTER_OID:Lorg/snmp4j/smi/OID;


# instance fields
.field private final discoveryResultsDispatcher:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

.field private final dispatcherThread:Ljava/lang/Thread;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/DiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final receiveBufferSize:I

.field private final results:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/print/mobileprint/df/DiscoveryResult;",
            ">;"
        }
    .end annotation
.end field

.field private snmp:Lorg/snmp4j/Snmp;

.field private snmp1Discovery:Z

.field private snmp1ReadComunity:Ljava/lang/String;

.field private snmp2Discovery:Z

.field private snmp2ReadComunity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    return-void

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 6
    .parameter "concurrentThreadsNumber"
    .parameter "concurrentRequestsNumber"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp1Discovery:Z

    .line 30
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp2Discovery:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->listeners:Ljava/util/List;

    .line 45
    iput p2, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->receiveBufferSize:I

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->results:Ljava/util/concurrent/BlockingQueue;

    .line 47
    new-instance v0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->results:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->listeners:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->discoveryResultsDispatcher:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    .line 49
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->discoveryResultsDispatcher:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->dispatcherThread:Ljava/lang/Thread;

    .line 50
    return-void
.end method


# virtual methods
.method public addDiscoveryListener(Lcom/sec/print/mobileprint/df/DiscoveryListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public enableSnmp1(Ljava/lang/String;)V
    .registers 3
    .parameter "readComunity"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp1Discovery:Z

    .line 54
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp1ReadComunity:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public enableSnmp2(Ljava/lang/String;)V
    .registers 3
    .parameter "readComunity"

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp2Discovery:Z

    .line 59
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp2ReadComunity:Ljava/lang/String;

    .line 60
    return-void
.end method

.method newDeviceFound(Ljava/lang/String;I)V
    .registers 6
    .parameter "host"
    .parameter "version"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->results:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-direct {v2, p1, p2}, Lcom/sec/print/mobileprint/df/DiscoveryResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 161
    :goto_a
    return-void

    .line 158
    :catch_b
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a
.end method

.method newDeviceFoundException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "host"
    .parameter "exception"

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->results:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-direct {v2, p1, p2}, Lcom/sec/print/mobileprint/df/DiscoveryResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 169
    :goto_a
    return-void

    .line 166
    :catch_b
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a
.end method

.method public start()V
    .registers 14

    .prologue
    const/4 v11, 0x1

    .line 85
    new-instance v5, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;

    invoke-direct {v5, p0, v11}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;-><init>(Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;I)V

    .line 86
    .local v5, listener1:Lorg/snmp4j/event/ResponseListener;
    new-instance v6, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;

    const/4 v11, 0x2

    invoke-direct {v6, p0, v11}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;-><init>(Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;I)V

    .line 88
    .local v6, listener2:Lorg/snmp4j/event/ResponseListener;
    :try_start_c
    const-string v11, "255.255.255.255"

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 89
    .local v0, broadcastAddress:Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 90
    .local v8, networkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_16
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_ef

    .line 91
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 92
    .local v2, iface:Ljava/net/NetworkInterface;
    invoke-static {v2}, Lcom/sec/print/mobileprint/df/DiscoveryUtil;->isNetworkIntefaceWorking(Ljava/net/NetworkInterface;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 93
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 94
    .local v4, inetAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 95
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_38} :catch_e4

    .line 97
    .local v3, inetAddress:Ljava/net/InetAddress;
    :try_start_38
    new-instance v7, Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    new-instance v11, Lorg/snmp4j/smi/UdpAddress;

    const/4 v12, 0x0

    invoke-direct {v11, v3, v12}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v7, v11}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;-><init>(Lorg/snmp4j/smi/UdpAddress;)V

    .line 98
    .local v7, mapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;
    iget v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->receiveBufferSize:I

    invoke-virtual {v7, v11}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->setReceiveBufferSize(I)V

    .line 99
    new-instance v11, Lorg/snmp4j/Snmp;

    invoke-direct {v11, v7}, Lorg/snmp4j/Snmp;-><init>(Lorg/snmp4j/TransportMapping;)V

    iput-object v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp:Lorg/snmp4j/Snmp;

    .line 100
    iget-object v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v11}, Lorg/snmp4j/Snmp;->listen()V

    .line 101
    iget-boolean v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp1Discovery:Z

    if-eqz v11, :cond_95

    .line 103
    new-instance v9, Lorg/snmp4j/PDU;

    invoke-direct {v9}, Lorg/snmp4j/PDU;-><init>()V

    .line 104
    .local v9, pdu:Lorg/snmp4j/PDU;
    new-instance v11, Lorg/snmp4j/smi/VariableBinding;

    sget-object v12, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    invoke-direct {v11, v12}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v9, v11}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 105
    const/16 v11, -0x5f

    invoke-virtual {v9, v11}, Lorg/snmp4j/PDU;->setType(I)V

    .line 107
    new-instance v10, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v10}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 108
    .local v10, target:Lorg/snmp4j/CommunityTarget;
    new-instance v11, Lorg/snmp4j/smi/OctetString;

    iget-object v12, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp1ReadComunity:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 109
    const-wide/32 v11, 0xea60

    invoke-virtual {v10, v11, v12}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 110
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 111
    new-instance v11, Lorg/snmp4j/smi/UdpAddress;

    const/16 v12, 0xa1

    invoke-direct {v11, v0, v12}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 113
    iget-object v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp:Lorg/snmp4j/Snmp;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v10, v12, v5}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 115
    .end local v9           #pdu:Lorg/snmp4j/PDU;
    .end local v10           #target:Lorg/snmp4j/CommunityTarget;
    :cond_95
    iget-boolean v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp2Discovery:Z

    if-eqz v11, :cond_2c

    .line 117
    new-instance v9, Lorg/snmp4j/PDU;

    invoke-direct {v9}, Lorg/snmp4j/PDU;-><init>()V

    .line 118
    .restart local v9       #pdu:Lorg/snmp4j/PDU;
    new-instance v11, Lorg/snmp4j/smi/VariableBinding;

    sget-object v12, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    invoke-direct {v11, v12}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v9, v11}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 119
    const/16 v11, -0x5f

    invoke-virtual {v9, v11}, Lorg/snmp4j/PDU;->setType(I)V

    .line 121
    new-instance v10, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v10}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 122
    .restart local v10       #target:Lorg/snmp4j/CommunityTarget;
    new-instance v11, Lorg/snmp4j/smi/OctetString;

    iget-object v12, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp2ReadComunity:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 123
    const-wide/32 v11, 0xea60

    invoke-virtual {v10, v11, v12}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 124
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 125
    new-instance v11, Lorg/snmp4j/smi/UdpAddress;

    const/16 v12, 0xa1

    invoke-direct {v11, v0, v12}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 127
    iget-object v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp:Lorg/snmp4j/Snmp;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v10, v12, v6}, Lorg/snmp4j/Snmp;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_d6} :catch_d8

    goto/16 :goto_2c

    .line 130
    .end local v7           #mapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;
    .end local v9           #pdu:Lorg/snmp4j/PDU;
    .end local v10           #target:Lorg/snmp4j/CommunityTarget;
    :catch_d8
    move-exception v1

    .line 131
    .local v1, e:Ljava/io/IOException;
    :try_start_d9
    const-string v11, ""

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_e2} :catch_e4

    goto/16 :goto_2c

    .line 137
    .end local v0           #broadcastAddress:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #iface:Ljava/net/NetworkInterface;
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #inetAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v8           #networkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_e4
    move-exception v1

    .line 138
    .restart local v1       #e:Ljava/io/IOException;
    const-string v11, ""

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v1           #e:Ljava/io/IOException;
    :goto_ee
    return-void

    .line 136
    .restart local v0       #broadcastAddress:Ljava/net/InetAddress;
    .restart local v8       #networkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_ef
    :try_start_ef
    iget-object v11, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->dispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f4} :catch_e4

    goto :goto_ee
.end method

.method public stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp:Lorg/snmp4j/Snmp;

    if-eqz v1, :cond_9

    .line 145
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v1}, Lorg/snmp4j/Snmp;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_14

    .line 151
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->dispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 152
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->dispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 153
    return-void

    .line 147
    :catch_14
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Error during snmp.close()"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
