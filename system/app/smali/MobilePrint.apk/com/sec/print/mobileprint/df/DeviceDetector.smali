.class public Lcom/sec/print/mobileprint/df/DeviceDetector;
.super Ljava/lang/Object;
.source "DeviceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;
    }
.end annotation


# static fields
.field private static final ALL_PROTOCOLS:Ljava/util/Collection; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRINTER_OID:Lorg/snmp4j/smi/OID; = null

.field private static final SNMP_V1:Ljava/lang/Integer; = null

.field private static final SNMP_V2:Ljava/lang/Integer; = null

.field private static final log:Ljava/util/logging/Logger; = null

.field private static final maximumPacketSize:I = 0x2710

.field private static final snmp:Lorg/snmp4j/Snmp;

.field private static udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V1:Ljava/lang/Integer;

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V2:Ljava/lang/Integer;

    .line 35
    new-array v3, v4, [Ljava/lang/Integer;

    sget-object v4, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V1:Ljava/lang/Integer;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V2:Ljava/lang/Integer;

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    sput-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->ALL_PROTOCOLS:Ljava/util/Collection;

    .line 37
    const-class v3, Lcom/sec/print/mobileprint/df/DeviceDetector;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sput-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->log:Ljava/util/logging/Logger;

    .line 38
    new-instance v3, Lorg/snmp4j/smi/OID;

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_96

    invoke-direct {v3, v4}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    .line 40
    new-instance v3, Lorg/snmp4j/Snmp;

    invoke-direct {v3}, Lorg/snmp4j/Snmp;-><init>()V

    sput-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    .line 41
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    .line 45
    :try_start_46
    sget-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v3}, Lorg/snmp4j/Snmp;->getMessageDispatcher()Lorg/snmp4j/MessageDispatcher;

    move-result-object v0

    .line 46
    .local v0, dispatcher:Lorg/snmp4j/MessageDispatcher;
    sget-object v3, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    invoke-interface {v0, v3}, Lorg/snmp4j/MessageDispatcher;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 47
    new-instance v3, Lorg/snmp4j/mp/MPv2c;

    invoke-direct {v3}, Lorg/snmp4j/mp/MPv2c;-><init>()V

    invoke-interface {v0, v3}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 48
    new-instance v3, Lorg/snmp4j/mp/MPv1;

    invoke-direct {v3}, Lorg/snmp4j/mp/MPv1;-><init>()V

    invoke-interface {v0, v3}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 49
    new-instance v3, Lorg/snmp4j/mp/MPv3;

    invoke-direct {v3}, Lorg/snmp4j/mp/MPv3;-><init>()V

    invoke-interface {v0, v3}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 50
    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v3

    invoke-virtual {v3}, Lorg/snmp4j/security/SecurityProtocols;->addDefaultProtocols()V

    .line 52
    new-instance v2, Lorg/snmp4j/security/USM;

    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v3

    new-instance v4, Lorg/snmp4j/smi/OctetString;

    invoke-static {}, Lorg/snmp4j/mp/MPv3;->createLocalEngineID()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/snmp4j/security/USM;-><init>(Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/smi/OctetString;I)V

    .line 53
    .local v2, usm:Lorg/snmp4j/security/USM;
    invoke-static {}, Lorg/snmp4j/security/SecurityModels;->getInstance()Lorg/snmp4j/security/SecurityModels;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/snmp4j/security/SecurityModels;->addSecurityModel(Lorg/snmp4j/security/SecurityModel;)V

    .line 55
    invoke-static {}, Lcom/sec/print/mobileprint/df/DeviceDetector;->ensureTransport()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_8d} :catch_8e

    .line 60
    return-void

    .line 56
    .end local v2           #usm:Lorg/snmp4j/security/USM;
    :catch_8e
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 38
    nop

    :array_96
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

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000()Lorg/snmp4j/smi/OID;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method private static computeProtocolsToBeRequested(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, protocolsToBeChecked:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_22

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 289
    .local v0, result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V1:Ljava/lang/Integer;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 290
    sget-object v1, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V1:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_14
    sget-object v1, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V2:Ljava/lang/Integer;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 293
    sget-object v1, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V2:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v0           #result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_21
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static ensureTransport()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v1, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    monitor-enter v1

    .line 64
    :try_start_3
    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->isListening()Z

    move-result v0

    if-nez v0, :cond_34

    .line 65
    :cond_f
    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    if-eqz v0, :cond_1a

    .line 66
    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    sget-object v2, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-virtual {v0, v2}, Lorg/snmp4j/Snmp;->removeTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 68
    :cond_1a
    new-instance v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-direct {v0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    .line 69
    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->setReceiveBufferSize(I)V

    .line 70
    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    sget-object v2, Lcom/sec/print/mobileprint/df/DeviceDetector;->udpTransportMapping:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-virtual {v0, v2}, Lorg/snmp4j/Snmp;->addTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 71
    sget-object v0, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v0}, Lorg/snmp4j/Snmp;->listen()V

    .line 73
    :cond_34
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public static pingHost(Ljava/net/InetAddress;)Ljava/util/Collection;
    .registers 5
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 164
    const-wide/16 v0, 0x1388

    const-string v2, "public"

    const-string v3, "public"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/print/mobileprint/df/DeviceDetector;->pingHost(Ljava/net/InetAddress;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static pingHost(Ljava/net/InetAddress;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .registers 11
    .parameter "inetAddress"
    .parameter "timeout"
    .parameter "snmp1ComunityName"
    .parameter "snmp2ComunityName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 187
    sget-object v5, Lcom/sec/print/mobileprint/df/DeviceDetector;->ALL_PROTOCOLS:Ljava/util/Collection;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/print/mobileprint/df/DeviceDetector;->pingHost(Ljava/net/InetAddress;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static pingHost(Ljava/net/InetAddress;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 21
    .parameter "inetAddress"
    .parameter "timeout"
    .parameter "snmp1ComunityName"
    .parameter "snmp2ComunityName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 220
    .local p5, protocolsToBeChecked:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 221
    .local v6, result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Lcom/sec/print/mobileprint/df/DeviceDetector;->computeProtocolsToBeRequested(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 223
    .local v5, protocolsToBeRequested:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_ac

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v11

    if-lez v11, :cond_ac

    .line 224
    new-instance v2, Lorg/snmp4j/smi/UdpAddress;

    const/16 v11, 0xa1

    invoke-direct {v2, p0, v11}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 226
    .local v2, address:Lorg/snmp4j/smi/UdpAddress;
    new-instance v4, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v4, v2, v6, v11}, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;-><init>(Lorg/snmp4j/smi/Address;Ljava/util/Collection;I)V

    .line 228
    .local v4, listener:Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;
    sget-object v11, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V1:Ljava/lang/Integer;

    invoke-interface {v5, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_64

    .line 230
    new-instance v9, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v9}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 231
    .local v9, target1:Lorg/snmp4j/CommunityTarget;
    if-eqz p3, :cond_3a

    .line 232
    new-instance v11, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 234
    :cond_3a
    const-wide/16 v11, 0x5dc

    invoke-virtual {v9, v11, v12}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 235
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 236
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 237
    invoke-virtual {v9, v2}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 238
    new-instance v7, Lorg/snmp4j/PDU;

    invoke-direct {v7}, Lorg/snmp4j/PDU;-><init>()V

    .line 239
    .local v7, snmp1Pdu:Lorg/snmp4j/PDU;
    new-instance v11, Lorg/snmp4j/smi/VariableBinding;

    sget-object v12, Lcom/sec/print/mobileprint/df/DeviceDetector;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    invoke-direct {v11, v12}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v7, v11}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 242
    :try_start_5a
    invoke-static {}, Lcom/sec/print/mobileprint/df/DeviceDetector;->ensureTransport()V

    .line 243
    sget-object v11, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    sget-object v12, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V1:Ljava/lang/Integer;

    invoke-virtual {v11, v7, v9, v12, v4}, Lorg/snmp4j/Snmp;->getNext(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_64} :catch_b2

    .line 249
    .end local v7           #snmp1Pdu:Lorg/snmp4j/PDU;
    .end local v9           #target1:Lorg/snmp4j/CommunityTarget;
    :cond_64
    :goto_64
    sget-object v11, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V2:Ljava/lang/Integer;

    invoke-interface {v5, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a7

    .line 251
    new-instance v10, Lorg/snmp4j/CommunityTarget;

    invoke-direct {v10}, Lorg/snmp4j/CommunityTarget;-><init>()V

    .line 252
    .local v10, target2:Lorg/snmp4j/CommunityTarget;
    if-eqz p4, :cond_7d

    .line 253
    new-instance v11, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 255
    :cond_7d
    const-wide/16 v11, 0x5dc

    invoke-virtual {v10, v11, v12}, Lorg/snmp4j/CommunityTarget;->setTimeout(J)V

    .line 256
    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setRetries(I)V

    .line 257
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 258
    invoke-virtual {v10, v2}, Lorg/snmp4j/CommunityTarget;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 259
    new-instance v8, Lorg/snmp4j/PDU;

    invoke-direct {v8}, Lorg/snmp4j/PDU;-><init>()V

    .line 260
    .local v8, snmp2Pdu:Lorg/snmp4j/PDU;
    new-instance v11, Lorg/snmp4j/smi/VariableBinding;

    sget-object v12, Lcom/sec/print/mobileprint/df/DeviceDetector;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    invoke-direct {v11, v12}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    invoke-virtual {v8, v11}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 263
    :try_start_9d
    invoke-static {}, Lcom/sec/print/mobileprint/df/DeviceDetector;->ensureTransport()V

    .line 264
    sget-object v11, Lcom/sec/print/mobileprint/df/DeviceDetector;->snmp:Lorg/snmp4j/Snmp;

    sget-object v12, Lcom/sec/print/mobileprint/df/DeviceDetector;->SNMP_V2:Ljava/lang/Integer;

    invoke-virtual {v11, v8, v10, v12, v4}, Lorg/snmp4j/Snmp;->getNext(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a7} :catch_d2

    .line 270
    .end local v8           #snmp2Pdu:Lorg/snmp4j/PDU;
    .end local v10           #target2:Lorg/snmp4j/CommunityTarget;
    :cond_a7
    :goto_a7
    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->waitForResponses(J)V

    .line 272
    .end local v2           #address:Lorg/snmp4j/smi/UdpAddress;
    .end local v4           #listener:Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;
    :cond_ac
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v11

    .line 244
    .restart local v2       #address:Lorg/snmp4j/smi/UdpAddress;
    .restart local v4       #listener:Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;
    .restart local v7       #snmp1Pdu:Lorg/snmp4j/PDU;
    .restart local v9       #target1:Lorg/snmp4j/CommunityTarget;
    :catch_b2
    move-exception v3

    .line 245
    .local v3, e:Ljava/io/IOException;
    sget-object v11, Lcom/sec/print/mobileprint/df/DeviceDetector;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error sending SNMP request: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64

    .line 265
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #snmp1Pdu:Lorg/snmp4j/PDU;
    .end local v9           #target1:Lorg/snmp4j/CommunityTarget;
    .restart local v8       #snmp2Pdu:Lorg/snmp4j/PDU;
    .restart local v10       #target2:Lorg/snmp4j/CommunityTarget;
    :catch_d2
    move-exception v3

    .line 266
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v11, Lcom/sec/print/mobileprint/df/DeviceDetector;->log:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error sending SNMP request: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a7
.end method
