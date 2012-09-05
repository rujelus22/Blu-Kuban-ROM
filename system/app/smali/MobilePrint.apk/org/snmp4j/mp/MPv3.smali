.class public Lorg/snmp4j/mp/MPv3;
.super Ljava/lang/Object;
.source "MPv3.java"

# interfaces
.implements Lorg/snmp4j/mp/MessageProcessingModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/mp/MPv3$HeaderData;,
        Lorg/snmp4j/mp/MPv3$Cache;,
        Lorg/snmp4j/mp/MPv3$CacheEntry;
    }
.end annotation


# static fields
.field public static final ID:I = 0x3

.field public static final MAXLEN_ENGINE_ID:I = 0x20

#the value of this static final field might be set in the static constructor
.field private static final MAX_HEADER_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_HEADER_PAYLOAD_LENGTH:I = 0x0

.field public static final MAX_MESSAGE_ID:I = 0x7fffffff

.field public static final MINLEN_ENGINE_ID:I = 0x5

.field public static final MPv3_REPORTABLE_FLAG:I = 0x4

.field static class$org$snmp4j$mp$MPv3:Ljava/lang/Class;

.field private static enterpriseID:I

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private cache:Lorg/snmp4j/mp/MPv3$Cache;

.field private counterSupport:Lorg/snmp4j/mp/CounterSupport;

.field private currentMsgID:I

.field private engineIDs:Ljava/util/Hashtable;

.field protected incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;

.field private localEngineID:[B

.field private securityModels:Lorg/snmp4j/security/SecurityModels;

.field private securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

.field transient snmpEngineListeners:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v0

    new-instance v1, Lorg/snmp4j/smi/Integer32;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sput v0, Lorg/snmp4j/mp/MPv3;->MAX_HEADER_PAYLOAD_LENGTH:I

    .line 58
    sget v0, Lorg/snmp4j/mp/MPv3;->MAX_HEADER_PAYLOAD_LENGTH:I

    sget v1, Lorg/snmp4j/mp/MPv3;->MAX_HEADER_PAYLOAD_LENGTH:I

    invoke-static {v1}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/snmp4j/mp/MPv3;->MAX_HEADER_LENGTH:I

    .line 64
    sget-object v0, Lorg/snmp4j/mp/MPv3;->class$org$snmp4j$mp$MPv3:Ljava/lang/Class;

    if-nez v0, :cond_40

    const-string v0, "org.snmp4j.mp.MPv3"

    invoke-static {v0}, Lorg/snmp4j/mp/MPv3;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/mp/MPv3;->class$org$snmp4j$mp$MPv3:Ljava/lang/Class;

    :goto_35
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 74
    const/16 v0, 0x1370

    sput v0, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    return-void

    .line 64
    :cond_40
    sget-object v0, Lorg/snmp4j/mp/MPv3;->class$org$snmp4j$mp$MPv3:Ljava/lang/Class;

    goto :goto_35
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 90
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->createLocalEngineID()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/snmp4j/mp/MPv3;-><init>([BLorg/snmp4j/util/PDUFactory;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/security/USM;)V
    .registers 8
    .parameter "usm"

    .prologue
    .line 127
    invoke-virtual {p1}, Lorg/snmp4j/security/USM;->getLocalEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/snmp4j/security/SecurityModel;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    invoke-static {v0}, Lorg/snmp4j/security/SecurityModels;->getCollection([Lorg/snmp4j/security/SecurityModel;)Lorg/snmp4j/security/SecurityModels;

    move-result-object v4

    invoke-static {}, Lorg/snmp4j/mp/CounterSupport;->getInstance()Lorg/snmp4j/mp/CounterSupport;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/mp/MPv3;-><init>([BLorg/snmp4j/util/PDUFactory;Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/security/SecurityModels;Lorg/snmp4j/mp/CounterSupport;)V

    .line 131
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "localEngineID"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/snmp4j/mp/MPv3;-><init>([BLorg/snmp4j/util/PDUFactory;)V

    .line 100
    invoke-virtual {p0, p1}, Lorg/snmp4j/mp/MPv3;->setLocalEngineID([B)V

    .line 101
    return-void
.end method

.method public constructor <init>([BLorg/snmp4j/util/PDUFactory;)V
    .registers 9
    .parameter "localEngineID"
    .parameter "incomingPDUFactory"

    .prologue
    .line 114
    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v3

    invoke-static {}, Lorg/snmp4j/security/SecurityModels;->getInstance()Lorg/snmp4j/security/SecurityModels;

    move-result-object v4

    invoke-static {}, Lorg/snmp4j/mp/CounterSupport;->getInstance()Lorg/snmp4j/mp/CounterSupport;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/mp/MPv3;-><init>([BLorg/snmp4j/util/PDUFactory;Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/security/SecurityModels;Lorg/snmp4j/mp/CounterSupport;)V

    .line 116
    return-void
.end method

.method public constructor <init>([BLorg/snmp4j/util/PDUFactory;Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/security/SecurityModels;Lorg/snmp4j/mp/CounterSupport;)V
    .registers 8
    .parameter "localEngineID"
    .parameter "incomingPDUFactory"
    .parameter "secProtocols"
    .parameter "secModels"
    .parameter "counterSupport"

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lorg/snmp4j/mp/MPv3;->currentMsgID:I

    .line 80
    new-instance v0, Lorg/snmp4j/mp/MPv3$1;

    invoke-direct {v0, p0}, Lorg/snmp4j/mp/MPv3$1;-><init>(Lorg/snmp4j/mp/MPv3;)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3;->incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;

    .line 161
    if-eqz p2, :cond_1c

    .line 162
    iput-object p2, p0, Lorg/snmp4j/mp/MPv3;->incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;

    .line 164
    :cond_1c
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3;->engineIDs:Ljava/util/Hashtable;

    .line 165
    new-instance v0, Lorg/snmp4j/mp/MPv3$Cache;

    invoke-direct {v0}, Lorg/snmp4j/mp/MPv3$Cache;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3;->cache:Lorg/snmp4j/mp/MPv3$Cache;

    .line 166
    if-nez p3, :cond_32

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 169
    :cond_32
    iput-object p3, p0, Lorg/snmp4j/mp/MPv3;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    .line 170
    if-nez p4, :cond_3c

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 173
    :cond_3c
    iput-object p4, p0, Lorg/snmp4j/mp/MPv3;->securityModels:Lorg/snmp4j/security/SecurityModels;

    .line 174
    if-nez p5, :cond_46

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 178
    :cond_46
    invoke-virtual {p0, p1}, Lorg/snmp4j/mp/MPv3;->setLocalEngineID([B)V

    .line 179
    return-void
.end method

.method static access$000()Lorg/snmp4j/log/LogAdapter;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 64
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static createLocalEngineID()[B
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    .line 188
    const/4 v5, 0x5

    new-array v1, v5, [B

    .line 189
    .local v1, engineID:[B
    const/4 v5, 0x0

    sget v6, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 190
    sget v5, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v8

    .line 191
    sget v5, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v9

    .line 192
    const/4 v5, 0x3

    sget v6, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 193
    aput-byte v9, v1, v7

    .line 194
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v3}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 196
    .local v3, os:Lorg/snmp4j/smi/OctetString;
    :try_start_33
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 197
    .local v0, b:[B
    array-length v5, v0

    if-ne v5, v7, :cond_42

    .line 198
    const/4 v5, 0x4

    const/4 v6, 0x1

    aput-byte v6, v1, v5

    .line 200
    :cond_42
    invoke-virtual {v3, v0}, Lorg/snmp4j/smi/OctetString;->setValue([B)V
    :try_end_45
    .catch Ljava/net/UnknownHostException; {:try_start_33 .. :try_end_45} :catch_52

    .line 207
    .end local v0           #b:[B
    :goto_45
    new-instance v4, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v4, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 208
    .local v4, ownEngineID:Lorg/snmp4j/smi/OctetString;
    invoke-virtual {v4, v3}, Lorg/snmp4j/smi/OctetString;->append(Lorg/snmp4j/smi/OctetString;)V

    .line 209
    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v5

    return-object v5

    .line 202
    .end local v4           #ownEngineID:Lorg/snmp4j/smi/OctetString;
    :catch_52
    move-exception v2

    .line 203
    .local v2, ex:Ljava/net/UnknownHostException;
    sget-object v5, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Local host cannot be determined for creation of local engine ID"

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 204
    aput-byte v7, v1, v7

    .line 205
    const-string v5, "SNMP4J"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    goto :goto_45
.end method

.method public static createLocalEngineID(Lorg/snmp4j/smi/OctetString;)[B
    .registers 6
    .parameter "id"

    .prologue
    const/4 v4, 0x4

    .line 220
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 221
    .local v0, engineID:[B
    const/4 v2, 0x0

    sget v3, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 222
    const/4 v2, 0x1

    sget v3, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 223
    const/4 v2, 0x2

    sget v3, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 224
    const/4 v2, 0x3

    sget v3, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 225
    aput-byte v4, v0, v4

    .line 226
    new-instance v1, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v1, v0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 227
    .local v1, ownEngineID:Lorg/snmp4j/smi/OctetString;
    invoke-virtual {v1, p0}, Lorg/snmp4j/smi/OctetString;->append(Lorg/snmp4j/smi/OctetString;)V

    .line 228
    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v2

    return-object v2
.end method

.method public static getEnterpriseID()I
    .registers 1

    .prologue
    .line 1337
    sget v0, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    return v0
.end method

.method public static setEnterpriseID(I)V
    .registers 1
    .parameter "newEnterpriseID"

    .prologue
    .line 1347
    sput p0, Lorg/snmp4j/mp/MPv3;->enterpriseID:I

    .line 1348
    return-void
.end method


# virtual methods
.method public addEngineID(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;)Z
    .registers 6
    .parameter "address"
    .parameter "engineID"

    .prologue
    const/4 v0, 0x1

    .line 320
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    invoke-virtual {p2}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 321
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3;->engineIDs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1e

    .line 323
    new-instance v1, Lorg/snmp4j/event/SnmpEngineEvent;

    invoke-direct {v1, p0, v0, p2, p1}, Lorg/snmp4j/event/SnmpEngineEvent;-><init>(Ljava/lang/Object;ILorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/Address;)V

    invoke-virtual {p0, v1}, Lorg/snmp4j/mp/MPv3;->fireEngineChanged(Lorg/snmp4j/event/SnmpEngineEvent;)V

    .line 329
    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public declared-synchronized addSnmpEngineListener(Lorg/snmp4j/event/SnmpEngineListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 1392
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1393
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    .line 1395
    :cond_c
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1396
    monitor-exit p0

    return-void

    .line 1392
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;
    .registers 3
    .parameter "target"

    .prologue
    .line 1419
    new-instance v0, Lorg/snmp4j/ScopedPDU;

    invoke-direct {v0}, Lorg/snmp4j/ScopedPDU;-><init>()V

    return-object v0
.end method

.method protected fireEngineChanged(Lorg/snmp4j/event/SnmpEngineEvent;)V
    .registers 6
    .parameter "engineEvent"

    .prologue
    .line 1429
    iget-object v3, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    if-eqz v3, :cond_19

    .line 1430
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    .line 1431
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1432
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 1433
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/event/SnmpEngineListener;

    invoke-interface {v3, p1}, Lorg/snmp4j/event/SnmpEngineListener;->engineChanged(Lorg/snmp4j/event/SnmpEngineEvent;)V

    .line 1432
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1436
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_19
    return-void
.end method

.method protected fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 1355
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    if-eqz v0, :cond_9

    .line 1356
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    invoke-virtual {v0, p1}, Lorg/snmp4j/mp/CounterSupport;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 1358
    :cond_9
    return-void
.end method

.method public getAuthProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/AuthenticationProtocol;
    .registers 3
    .parameter "id"

    .prologue
    .line 274
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual {v0, p1}, Lorg/snmp4j/security/SecurityProtocols;->getAuthenticationProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/AuthenticationProtocol;

    move-result-object v0

    return-object v0
.end method

.method public getCounterSupport()Lorg/snmp4j/mp/CounterSupport;
    .registers 2

    .prologue
    .line 1368
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    return-object v0
.end method

.method protected getDefaultSecurityModel()I
    .registers 2

    .prologue
    .line 643
    const/4 v0, 0x3

    return v0
.end method

.method public getEngineID(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/smi/OctetString;
    .registers 3
    .parameter "address"

    .prologue
    .line 342
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->engineIDs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 302
    const/4 v0, 0x3

    return v0
.end method

.method public getLocalEngineID()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 253
    .local v0, retval:[B
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    iget-object v2, p0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-object v0
.end method

.method public declared-synchronized getNextMessageID()I
    .registers 3

    .prologue
    .line 613
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/snmp4j/mp/MPv3;->currentMsgID:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_b

    .line 614
    const/4 v0, 0x1

    iput v0, p0, Lorg/snmp4j/mp/MPv3;->currentMsgID:I

    .line 616
    :cond_b
    iget v0, p0, Lorg/snmp4j/mp/MPv3;->currentMsgID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/snmp4j/mp/MPv3;->currentMsgID:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return v0

    .line 613
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrivProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/PrivacyProtocol;
    .registers 3
    .parameter "id"

    .prologue
    .line 286
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual {v0, p1}, Lorg/snmp4j/security/SecurityProtocols;->getPrivacyProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/PrivacyProtocol;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityModel(I)Lorg/snmp4j/security/SecurityModel;
    .registers 4
    .parameter "id"

    .prologue
    .line 298
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->securityModels:Lorg/snmp4j/security/SecurityModels;

    new-instance v1, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v1, p1}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/SecurityModels;->getSecurityModel(Lorg/snmp4j/smi/Integer32;)Lorg/snmp4j/security/SecurityModel;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityModels()Lorg/snmp4j/security/SecurityModels;
    .registers 2

    .prologue
    .line 1328
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->securityModels:Lorg/snmp4j/security/SecurityModels;

    return-object v0
.end method

.method public getSecurityProtocols()Lorg/snmp4j/security/SecurityProtocols;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    return-object v0
.end method

.method public initDefaults()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual {v0}, Lorg/snmp4j/security/SecurityProtocols;->addDefaultProtocols()V

    .line 263
    return-void
.end method

.method public isProtocolVersionSupported(I)Z
    .registers 3
    .parameter "version"

    .prologue
    .line 306
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public prepareDataElements(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/MutablePDU;Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/mp/MutableStateReference;)I
    .registers 59
    .parameter "messageDispatcher"
    .parameter "transportAddress"
    .parameter "wholeMsg"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "sendPduHandle"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "statusInformation"
    .parameter "mutableStateReference"

    .prologue
    .line 970
    :try_start_0
    new-instance v44, Lorg/snmp4j/mp/StateReference;

    invoke-direct/range {v44 .. v44}, Lorg/snmp4j/mp/StateReference;-><init>()V

    .line 972
    .local v44, stateReference:Lorg/snmp4j/mp/StateReference;
    invoke-virtual/range {p12 .. p12}, Lorg/snmp4j/mp/MutableStateReference;->getStateReference()Lorg/snmp4j/mp/StateReference;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 973
    invoke-virtual/range {p12 .. p12}, Lorg/snmp4j/mp/MutableStateReference;->getStateReference()Lorg/snmp4j/mp/StateReference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/mp/StateReference;->getTransportMapping()Lorg/snmp4j/TransportMapping;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 976
    :cond_18
    const/4 v4, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 977
    const/16 v4, 0x10

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/snmp4j/asn1/BERInputStream;->mark(I)V

    .line 979
    new-instance v45, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct/range {v45 .. v45}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 980
    .local v45, type:Lorg/snmp4j/asn1/BER$MutableByte;
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v35

    .line 981
    .local v35, length:I
    invoke-virtual/range {v45 .. v45}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_3d

    .line 982
    const/16 v4, -0x580

    .line 1309
    .end local v35           #length:I
    .end local v44           #stateReference:Lorg/snmp4j/mp/StateReference;
    .end local v45           #type:Lorg/snmp4j/asn1/BER$MutableByte;
    :goto_3c
    return v4

    .line 984
    .restart local v35       #length:I
    .restart local v44       #stateReference:Lorg/snmp4j/mp/StateReference;
    .restart local v45       #type:Lorg/snmp4j/asn1/BER$MutableByte;
    :cond_3d
    invoke-virtual/range {p3 .. p3}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v36

    .line 985
    .local v36, lengthOfLength:J
    invoke-virtual/range {p3 .. p3}, Lorg/snmp4j/asn1/BERInputStream;->reset()V

    .line 986
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/snmp4j/asn1/BERInputStream;->mark(I)V

    .line 987
    move-object/from16 v0, p3

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/snmp4j/asn1/BERInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v4, v4, v36

    if-eqz v4, :cond_5a

    .line 988
    const/16 v4, -0x580

    goto :goto_3c

    .line 991
    :cond_5a
    new-instance v43, Lorg/snmp4j/smi/Integer32;

    invoke-direct/range {v43 .. v43}, Lorg/snmp4j/smi/Integer32;-><init>()V

    .line 992
    .local v43, snmpVersion:Lorg/snmp4j/smi/Integer32;
    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 993
    invoke-virtual/range {v43 .. v43}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a0

    .line 995
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Internal error unexpected snmp version read"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_75} :catch_75

    .line 1304
    .end local v35           #length:I
    .end local v36           #lengthOfLength:J
    .end local v43           #snmpVersion:Lorg/snmp4j/smi/Integer32;
    .end local v44           #stateReference:Lorg/snmp4j/mp/StateReference;
    .end local v45           #type:Lorg/snmp4j/asn1/BER$MutableByte;
    :catch_75
    move-exception v34

    .line 1305
    .local v34, iox:Ljava/io/IOException;
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "MPv3 parse error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 1306
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1307
    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->printStackTrace()V

    .line 1309
    :cond_9d
    const/16 v4, -0x580

    goto :goto_3c

    .line 999
    .end local v34           #iox:Ljava/io/IOException;
    .restart local v35       #length:I
    .restart local v36       #lengthOfLength:J
    .restart local v43       #snmpVersion:Lorg/snmp4j/smi/Integer32;
    .restart local v44       #stateReference:Lorg/snmp4j/mp/StateReference;
    .restart local v45       #type:Lorg/snmp4j/asn1/BER$MutableByte;
    :cond_a0
    :try_start_a0
    new-instance v33, Lorg/snmp4j/mp/MPv3$HeaderData;

    invoke-direct/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;-><init>()V

    .line 1000
    .local v33, header:Lorg/snmp4j/mp/MPv3$HeaderData;
    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3$HeaderData;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 1001
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getSecurityModel()I

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 1003
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgID()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setMsgID(I)V

    .line 1004
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgFlags()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setMsgFlags(I)V

    .line 1005
    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/StateReference;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 1007
    move-object/from16 v0, p12

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 1010
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v4}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v4

    sget v5, Lorg/snmp4j/mp/MPv3;->MAX_HEADER_LENGTH:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 1013
    new-instance v40, Lorg/snmp4j/ScopedPDU;

    invoke-direct/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;-><init>()V

    .line 1014
    .local v40, scopedPdu:Lorg/snmp4j/ScopedPDU;
    move-object/from16 v0, p8

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/snmp4j/MutablePDU;->setPdu(Lorg/snmp4j/PDU;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/mp/MPv3;->securityModels:Lorg/snmp4j/security/SecurityModels;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lorg/snmp4j/security/SecurityModels;->getSecurityModel(Lorg/snmp4j/smi/Integer32;)Lorg/snmp4j/security/SecurityModel;

    move-result-object v3

    .line 1017
    .local v3, secModel:Lorg/snmp4j/security/SecurityModel;
    if-nez v3, :cond_12d

    .line 1018
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "RFC3412 \u00a77.2.4 - Unsupported security model: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 1020
    new-instance v32, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownSecurityModels:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 1023
    .local v32, event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 1024
    const/16 v4, -0x57a

    goto/16 :goto_3c

    .line 1028
    .end local v32           #event:Lorg/snmp4j/event/CounterEvent;
    :cond_12d
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    packed-switch v4, :pswitch_data_628

    .line 1042
    :pswitch_136
    const/4 v4, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 1043
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "RFC3412 \u00a77.2.5 - Invalid message (illegal msgFlags)"

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1044
    new-instance v32, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->snmpInvalidMsgs:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 1046
    .restart local v32       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 1048
    const/16 v4, -0x57d

    goto/16 :goto_3c

    .line 1030
    .end local v32           #event:Lorg/snmp4j/event/CounterEvent;
    :pswitch_159
    const/4 v4, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 1052
    :goto_15f
    invoke-virtual/range {p3 .. p3}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v42, v0

    .line 1054
    .local v42, secParametersPosition:I
    invoke-interface {v3}, Lorg/snmp4j/security/SecurityModel;->newSecurityParametersInstance()Lorg/snmp4j/security/SecurityParameters;

    move-result-object v6

    .line 1056
    .local v6, secParameters:Lorg/snmp4j/security/SecurityParameters;
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lorg/snmp4j/security/SecurityParameters;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 1057
    move/from16 v0, v42

    invoke-interface {v6, v0}, Lorg/snmp4j/security/SecurityParameters;->setSecurityParametersPosition(I)V

    .line 1060
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2c8

    const/16 v39, 0x1

    .line 1062
    .local v39, reportableFlag:Z
    :goto_17e
    new-instance v10, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v10}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 1064
    .local v10, securityEngineID:Lorg/snmp4j/smi/OctetString;
    invoke-interface {v3}, Lorg/snmp4j/security/SecurityModel;->newSecurityStateReference()Lorg/snmp4j/security/SecurityStateReference;

    move-result-object v14

    .line 1069
    .local v14, secStateReference:Lorg/snmp4j/security/SecurityStateReference;
    invoke-virtual/range {p3 .. p3}, Lorg/snmp4j/asn1/BERInputStream;->reset()V

    .line 1071
    new-instance v12, Lorg/snmp4j/asn1/BEROutputStream;

    invoke-direct {v12}, Lorg/snmp4j/asn1/BEROutputStream;-><init>()V

    .line 1072
    .local v12, scopedPDU:Lorg/snmp4j/asn1/BEROutputStream;
    invoke-virtual/range {v43 .. v43}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v4

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgMaxSize()I

    move-result v5

    sget v7, Lorg/snmp4j/mp/MPv3;->MAX_HEADER_LENGTH:I

    sub-int/2addr v5, v7

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v8

    move-object v7, v3

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move-object/from16 v13, p10

    move-object/from16 v15, p11

    invoke-interface/range {v3 .. v15}, Lorg/snmp4j/security/SecurityModel;->processIncomingMsg(IILorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/security/SecurityModel;ILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/asn1/BEROutputStream;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/security/SecurityStateReference;Lorg/snmp4j/mp/StatusInformation;)I

    move-result v29

    .line 1087
    .local v29, status:I
    invoke-virtual/range {p3 .. p3}, Lorg/snmp4j/asn1/BERInputStream;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_1ae} :catch_75

    .line 1088
    if-nez v29, :cond_21c

    .line 1090
    :try_start_1b0
    new-instance v41, Lorg/snmp4j/asn1/BERInputStream;

    invoke-virtual {v12}, Lorg/snmp4j/asn1/BEROutputStream;->rewind()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1092
    .local v41, scopedPduStream:Lorg/snmp4j/asn1/BERInputStream;
    invoke-virtual/range {v40 .. v41}, Lorg/snmp4j/ScopedPDU;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 1093
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v4

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/PduHandle;->setTransactionID(I)V

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10}, Lorg/snmp4j/mp/MPv3;->addEngineID(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;)Z
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1d2} :catch_2cc

    .line 1109
    :try_start_1d2
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    if-eqz v4, :cond_1e2

    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-nez v4, :cond_21c

    :cond_1e2
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getType()I

    move-result v4

    const/16 v5, -0x5e

    if-eq v4, v5, :cond_21c

    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getType()I

    move-result v4

    const/16 v5, -0x58

    if-eq v4, v5, :cond_21c

    .line 1113
    new-instance v32, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownPDUHandlers:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 1116
    .restart local v32       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 1117
    new-instance v31, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v4, v5}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    .line 1119
    .local v31, errorIndication:Lorg/snmp4j/smi/VariableBinding;
    move-object/from16 v0, p11

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    .line 1120
    const/16 v29, -0x587

    .line 1124
    .end local v31           #errorIndication:Lorg/snmp4j/smi/VariableBinding;
    .end local v32           #event:Lorg/snmp4j/event/CounterEvent;
    .end local v41           #scopedPduStream:Lorg/snmp4j/asn1/BERInputStream;
    :cond_21c
    if-eqz v29, :cond_32e

    .line 1125
    if-eqz v39, :cond_2b4

    invoke-virtual/range {p11 .. p11}, Lorg/snmp4j/mp/StatusInformation;->getErrorIndication()Lorg/snmp4j/smi/VariableBinding;
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_223} :catch_75

    move-result-object v4

    if-eqz v4, :cond_2b4

    .line 1129
    :try_start_226
    invoke-virtual {v12}, Lorg/snmp4j/asn1/BEROutputStream;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_30a

    .line 1130
    new-instance v41, Lorg/snmp4j/asn1/BERInputStream;

    invoke-virtual {v12}, Lorg/snmp4j/asn1/BEROutputStream;->rewind()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1132
    .restart local v41       #scopedPduStream:Lorg/snmp4j/asn1/BERInputStream;
    invoke-virtual/range {v40 .. v41}, Lorg/snmp4j/ScopedPDU;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_23a} :catch_30e

    .line 1143
    .end local v41           #scopedPduStream:Lorg/snmp4j/asn1/BERInputStream;
    :goto_23a
    :try_start_23a
    new-instance v15, Lorg/snmp4j/mp/StateReference;

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgID()I

    move-result v16

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgFlags()I

    move-result v17

    invoke-virtual/range {p10 .. p10}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v18

    const/16 v21, 0x0

    invoke-virtual {v10}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v22

    invoke-virtual/range {p6 .. p6}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v24

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v25

    if-nez v40, :cond_31a

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v26, v0

    :goto_25d
    if-nez v40, :cond_324

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v27, v0

    :goto_264
    move-object/from16 v19, p9

    move-object/from16 v20, p2

    move-object/from16 v23, v3

    move-object/from16 v28, v14

    invoke-direct/range {v15 .. v29}, Lorg/snmp4j/mp/StateReference;-><init>(IIILorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;[BLorg/snmp4j/security/SecurityModel;[BI[B[BLorg/snmp4j/security/SecurityStateReference;I)V

    .line 1158
    .local v15, cacheEntry:Lorg/snmp4j/mp/StateReference;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/mp/MPv3;->cache:Lorg/snmp4j/mp/MPv3$Cache;

    invoke-virtual {v4, v15}, Lorg/snmp4j/mp/MPv3$Cache;->addEntry(Lorg/snmp4j/mp/StateReference;)I

    .line 1160
    invoke-virtual/range {p11 .. p11}, Lorg/snmp4j/mp/StatusInformation;->getSecurityLevel()Lorg/snmp4j/smi/Integer32;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v19

    invoke-interface {v3}, Lorg/snmp4j/security/SecurityModel;->getID()I

    move-result v20

    invoke-virtual/range {p10 .. p10}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v22

    invoke-virtual/range {p11 .. p11}, Lorg/snmp4j/mp/StatusInformation;->getErrorIndication()Lorg/snmp4j/smi/VariableBinding;

    move-result-object v24

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v40

    move-object/from16 v21, p6

    move-object/from16 v23, v44

    invoke-virtual/range {v16 .. v24}, Lorg/snmp4j/mp/MPv3;->sendReport(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/ScopedPDU;IILorg/snmp4j/smi/OctetString;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/smi/VariableBinding;)I

    move-result v38

    .line 1167
    .local v38, reportStatus:I
    if-eqz v38, :cond_2b4

    .line 1168
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sending report failed with error code: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 1172
    .end local v15           #cacheEntry:Lorg/snmp4j/mp/StateReference;
    .end local v38           #reportStatus:I
    :cond_2b4
    const/16 v4, -0x586

    goto/16 :goto_3c

    .line 1034
    .end local v6           #secParameters:Lorg/snmp4j/security/SecurityParameters;
    .end local v10           #securityEngineID:Lorg/snmp4j/smi/OctetString;
    .end local v12           #scopedPDU:Lorg/snmp4j/asn1/BEROutputStream;
    .end local v14           #secStateReference:Lorg/snmp4j/security/SecurityStateReference;
    .end local v29           #status:I
    .end local v39           #reportableFlag:Z
    .end local v42           #secParametersPosition:I
    :pswitch_2b8
    const/4 v4, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    goto/16 :goto_15f

    .line 1038
    :pswitch_2c0
    const/4 v4, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    goto/16 :goto_15f

    .line 1060
    .restart local v6       #secParameters:Lorg/snmp4j/security/SecurityParameters;
    .restart local v42       #secParametersPosition:I
    :cond_2c8
    const/16 v39, 0x0

    goto/16 :goto_17e

    .line 1098
    .restart local v10       #securityEngineID:Lorg/snmp4j/smi/OctetString;
    .restart local v12       #scopedPDU:Lorg/snmp4j/asn1/BEROutputStream;
    .restart local v14       #secStateReference:Lorg/snmp4j/security/SecurityStateReference;
    .restart local v29       #status:I
    .restart local v39       #reportableFlag:Z
    :catch_2cc
    move-exception v34

    .line 1099
    .restart local v34       #iox:Ljava/io/IOException;
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "ASN.1 parse error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 1100
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2f4

    .line 1101
    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->printStackTrace()V

    .line 1103
    :cond_2f4
    new-instance v32, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->snmpInASNParseErrs:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 1106
    .restart local v32       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 1107
    const/16 v4, -0x580

    goto/16 :goto_3c

    .line 1135
    .end local v32           #event:Lorg/snmp4j/event/CounterEvent;
    .end local v34           #iox:Ljava/io/IOException;
    :cond_30a
    const/16 v40, 0x0

    goto/16 :goto_23a

    .line 1138
    :catch_30e
    move-exception v34

    .line 1139
    .restart local v34       #iox:Ljava/io/IOException;
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    move-object/from16 v0, v34

    invoke-interface {v4, v0}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 1140
    const/16 v40, 0x0

    goto/16 :goto_23a

    .line 1143
    .end local v34           #iox:Ljava/io/IOException;
    :cond_31a
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v26

    goto/16 :goto_25d

    :cond_324
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v27

    goto/16 :goto_264

    .line 1175
    :cond_32e
    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/StateReference;->setAddress(Lorg/snmp4j/smi/Address;)V

    .line 1176
    invoke-virtual/range {p6 .. p6}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setSecurityName([B)V

    .line 1177
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setContextEngineID([B)V

    .line 1178
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setContextName([B)V

    .line 1179
    invoke-virtual/range {p10 .. p10}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setMaxSizeResponseScopedPDU(I)V

    .line 1181
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgID()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setMsgID(I)V

    .line 1182
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgFlags()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setMsgFlags(I)V

    .line 1183
    invoke-virtual {v10}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setSecurityEngineID([B)V

    .line 1184
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StateReference;->setSecurityLevel(I)V

    .line 1185
    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lorg/snmp4j/mp/StateReference;->setSecurityModel(Lorg/snmp4j/security/SecurityModel;)V

    .line 1186
    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lorg/snmp4j/mp/StateReference;->setSecurityStateReference(Lorg/snmp4j/security/SecurityStateReference;)V

    .line 1187
    move-object/from16 v0, v44

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/StateReference;->setPduHandle(Lorg/snmp4j/mp/PduHandle;)V

    .line 1189
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getType()I

    move-result v4

    const/16 v5, -0x5e

    if-eq v4, v5, :cond_3a6

    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getType()I

    move-result v4

    const/16 v5, -0x58

    if-ne v4, v5, :cond_584

    .line 1191
    :cond_3a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/mp/MPv3;->cache:Lorg/snmp4j/mp/MPv3$Cache;

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgID()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/snmp4j/mp/MPv3$Cache;->popEntry(I)Lorg/snmp4j/mp/StateReference;

    move-result-object v15

    .line 1192
    .restart local v15       #cacheEntry:Lorg/snmp4j/mp/StateReference;
    if-eqz v15, :cond_54a

    .line 1193
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3f0

    .line 1194
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "RFC3412 \u00a77.2.10 - Received PDU (msgID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgID()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, ") is a response or "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "an internal class message. PduHandle.transactionID = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v7

    invoke-virtual {v7}, Lorg/snmp4j/mp/PduHandle;->getTransactionID()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1199
    :cond_3f0
    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/PduHandle;->copyFrom(Lorg/snmp4j/mp/PduHandle;)V

    .line 1201
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getType()I

    move-result v4

    const/16 v5, -0x58

    if-ne v4, v5, :cond_4c2

    .line 1203
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setContextEngineID([B)V

    .line 1204
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setContextName([B)V

    .line 1205
    move-object/from16 v0, p11

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 1207
    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityEngineID()[B

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_433

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityEngineID()[B

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_453

    :cond_433
    invoke-interface {v3}, Lorg/snmp4j/security/SecurityModel;->getID()I

    move-result v4

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityModel()Lorg/snmp4j/security/SecurityModel;

    move-result-object v5

    invoke-interface {v5}, Lorg/snmp4j/security/SecurityModel;->getID()I

    move-result v5

    if-ne v4, v5, :cond_453

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityName()[B

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46c

    invoke-virtual/range {p6 .. p6}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-eqz v4, :cond_46c

    .line 1212
    :cond_453
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_462

    .line 1213
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "RFC 3412 \u00a77.2.11 - Received report message does not match sent message"

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1217
    :cond_462
    const/4 v4, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 1218
    const/16 v4, -0x582

    goto/16 :goto_3c

    .line 1220
    :cond_46c
    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lorg/snmp4j/mp/MPv3;->addEngineID(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;)Z

    move-result v4

    if-nez v4, :cond_4b2

    .line 1221
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_4b2

    .line 1222
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Engine ID \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\' could not be added to engine ID cache for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "target address \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\' because engine ID matches local engine ID"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 1229
    :cond_4b2
    const/4 v4, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 1230
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "MPv3 finished"

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1231
    const/4 v4, 0x0

    goto/16 :goto_3c

    .line 1233
    :cond_4c2
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getType()I

    move-result v4

    const/16 v5, -0x5e

    if-ne v4, v5, :cond_59e

    .line 1234
    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityEngineID()[B

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4db

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityEngineID()[B

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_529

    :cond_4db
    invoke-interface {v3}, Lorg/snmp4j/security/SecurityModel;->getID()I

    move-result v4

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityModel()Lorg/snmp4j/security/SecurityModel;

    move-result-object v5

    invoke-interface {v5}, Lorg/snmp4j/security/SecurityModel;->getID()I

    move-result v5

    if-ne v4, v5, :cond_529

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityName()[B

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_529

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v4

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getSecurityLevel()I

    move-result v5

    if-ne v4, v5, :cond_529

    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getContextEngineID()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_514

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getContextEngineID()[B

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_529

    :cond_514
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getContextName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getContextName()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53a

    invoke-virtual {v15}, Lorg/snmp4j/mp/StateReference;->getContextName()[B

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_53a

    .line 1243
    :cond_529
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "RFC 3412 \u00a77.2.12.b - Received response message does not match sent message"

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1246
    const/4 v4, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 1247
    const/16 v4, -0x582

    goto/16 :goto_3c

    .line 1250
    :cond_53a
    const/4 v4, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 1251
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "MPv3 finished"

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1252
    const/4 v4, 0x0

    goto/16 :goto_3c

    .line 1256
    :cond_54a
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_580

    .line 1257
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "RFC3412 \u00a77.2.10 - Received PDU (msgID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/mp/MPv3$HeaderData;->getMsgID()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, ") is a response or "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "internal class message, but cached "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "information for the msgID could not be found"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1262
    :cond_580
    const/16 v4, -0x581

    goto/16 :goto_3c

    .line 1266
    .end local v15           #cacheEntry:Lorg/snmp4j/mp/StateReference;
    :cond_584
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "RFC3412 \u00a77.2.10 - Received PDU is NOT a response or internal class message -> unchanged PduHandle = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1270
    :cond_59e
    invoke-virtual/range {v40 .. v40}, Lorg/snmp4j/ScopedPDU;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_634

    .line 1302
    :pswitch_5a5
    const/16 v4, -0x578

    goto/16 :goto_3c

    .line 1276
    :pswitch_5a9
    invoke-virtual {v10}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-nez v4, :cond_5cf

    .line 1277
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "Received confirmed message with 0 length security engine ID"

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1289
    :cond_5b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/mp/MPv3;->cache:Lorg/snmp4j/mp/MPv3$Cache;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lorg/snmp4j/mp/MPv3$Cache;->addEntry(Lorg/snmp4j/mp/StateReference;)I

    move-result v30

    .line 1290
    .local v30, cacheStatus:I
    const/16 v4, -0x57c

    move/from16 v0, v30

    if-ne v0, v4, :cond_5cc

    .line 1291
    const/4 v4, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 1293
    :cond_5cc
    const/4 v4, 0x0

    goto/16 :goto_3c

    .line 1279
    .end local v30           #cacheStatus:I
    :cond_5cf
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    invoke-virtual {v10, v4}, Lorg/snmp4j/smi/OctetString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b6

    .line 1280
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_614

    .line 1281
    sget-object v4, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "RFC 3412 \u00a77.2.13.a - Security engine ID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v10}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " does not match local engine ID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v7, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    invoke-direct {v7, v8}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v7}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1286
    :cond_614
    const/4 v4, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 1287
    const/16 v4, -0x57e

    goto/16 :goto_3c

    .line 1297
    :pswitch_61e
    const/4 v4, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V
    :try_end_624
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_624} :catch_75

    .line 1298
    const/4 v4, 0x0

    goto/16 :goto_3c

    .line 1028
    nop

    :pswitch_data_628
    .packed-switch 0x0
        :pswitch_2b8
        :pswitch_2c0
        :pswitch_136
        :pswitch_159
    .end packed-switch

    .line 1270
    :pswitch_data_634
    .packed-switch -0x60
        :pswitch_5a9
        :pswitch_5a9
        :pswitch_5a5
        :pswitch_5a9
        :pswitch_61e
        :pswitch_5a9
        :pswitch_5a9
        :pswitch_61e
    .end packed-switch
.end method

.method public prepareOutgoingMessage(Lorg/snmp4j/smi/Address;III[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BEROutputStream;)I
    .registers 47
    .parameter "transportAddress"
    .parameter "maxMessageSize"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .parameter "sendPduHandle"
    .parameter "destTransportAddress"
    .parameter "outgoingMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    move-object/from16 v0, p7

    instance-of v3, v0, Lorg/snmp4j/ScopedPDU;

    if-nez v3, :cond_e

    .line 663
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "MPv3 only accepts ScopedPDU instances as pdu parameter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    move-object/from16 v31, p7

    .line 666
    check-cast v31, Lorg/snmp4j/ScopedPDU;

    .line 668
    .local v31, scopedPDU:Lorg/snmp4j/ScopedPDU;
    const/4 v7, 0x0

    .line 669
    .local v7, secEngineID:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/mp/MPv3;->engineIDs:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/snmp4j/smi/OctetString;

    .line 671
    .local v34, securityEngineID:Lorg/snmp4j/smi/OctetString;
    if-eqz v34, :cond_12c

    .line 672
    invoke-virtual/range {v34 .. v34}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v7

    .line 673
    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v3

    if-nez v3, :cond_64

    .line 674
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/PDU;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_1b6

    .line 685
    :goto_36
    sget-object v3, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 686
    sget-object v3, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Context engine ID of scoped PDU is empty! Setting it to authoritative engine ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 689
    :cond_5a
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v3, v7}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lorg/snmp4j/ScopedPDU;->setContextEngineID(Lorg/snmp4j/smi/OctetString;)V

    .line 698
    :cond_64
    :goto_64
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/PDU;->isConfirmedPdu()Z

    move-result v3

    if-eqz v3, :cond_131

    .line 699
    array-length v3, v7

    if-nez v3, :cond_7c

    .line 700
    const/16 p6, 0x1

    .line 701
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/mp/MPv3;->getDefaultSecurityModel()I

    move-result p4

    .line 703
    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->clone()Ljava/lang/Object;

    move-result-object v31

    .end local v31           #scopedPDU:Lorg/snmp4j/ScopedPDU;
    check-cast v31, Lorg/snmp4j/ScopedPDU;

    .line 704
    .restart local v31       #scopedPDU:Lorg/snmp4j/ScopedPDU;
    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->clear()V

    .line 718
    :cond_7c
    :goto_7c
    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->getBERLength()I

    move-result v32

    .line 719
    .local v32, scopedPDULength:I
    new-instance v33, Lorg/snmp4j/asn1/BEROutputStream;

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Lorg/snmp4j/asn1/BEROutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 722
    .local v33, scopedPdu:Lorg/snmp4j/asn1/BEROutputStream;
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/snmp4j/ScopedPDU;->encodeBER(Ljava/io/OutputStream;)V

    .line 724
    new-instance v29, Lorg/snmp4j/mp/MPv3$HeaderData;

    invoke-direct/range {v29 .. v29}, Lorg/snmp4j/mp/MPv3$HeaderData;-><init>()V

    .line 725
    .local v29, headerData:Lorg/snmp4j/mp/MPv3$HeaderData;
    const/4 v14, 0x0

    .line 726
    .local v14, flags:I
    packed-switch p6, :pswitch_data_1be

    .line 737
    :goto_9b
    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->isConfirmedPdu()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 738
    or-int/lit8 v14, v14, 0x4

    .line 744
    :goto_a3
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/mp/MPv3;->getNextMessageID()I

    move-result v13

    .line 745
    .local v13, msgID:I
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lorg/snmp4j/mp/MPv3$HeaderData;->setMsgFlags(I)V

    .line 746
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lorg/snmp4j/mp/MPv3$HeaderData;->setMsgID(I)V

    .line 747
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3$HeaderData;->setMsgMaxSize(I)V

    .line 748
    move-object/from16 v0, v29

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3$HeaderData;->setSecurityModel(I)V

    .line 750
    invoke-virtual/range {v29 .. v29}, Lorg/snmp4j/mp/MPv3$HeaderData;->getBERLength()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 752
    .local v27, globalDataBuffer:Ljava/nio/ByteBuffer;
    new-instance v28, Lorg/snmp4j/asn1/BEROutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 754
    .local v28, globalDataOutputStream:Lorg/snmp4j/asn1/BEROutputStream;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3$HeaderData;->encodeBER(Ljava/io/OutputStream;)V

    .line 756
    new-instance v10, Lorg/snmp4j/asn1/BERInputStream;

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/asn1/BEROutputStream;->rewind()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v10, v3}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 758
    .local v10, scopedPDUInput:Lorg/snmp4j/asn1/BERInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/mp/MPv3;->securityModels:Lorg/snmp4j/security/SecurityModels;

    new-instance v4, Lorg/snmp4j/smi/Integer32;

    move/from16 v0, p4

    invoke-direct {v4, v0}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/snmp4j/security/SecurityModels;->getSecurityModel(Lorg/snmp4j/smi/Integer32;)Lorg/snmp4j/security/SecurityModel;

    move-result-object v2

    .line 760
    .local v2, secModel:Lorg/snmp4j/security/SecurityModel;
    if-nez v2, :cond_169

    .line 761
    const/16 v26, -0x57a

    .line 795
    :cond_f3
    :goto_f3
    return v26

    .line 677
    .end local v2           #secModel:Lorg/snmp4j/security/SecurityModel;
    .end local v10           #scopedPDUInput:Lorg/snmp4j/asn1/BERInputStream;
    .end local v13           #msgID:I
    .end local v14           #flags:I
    .end local v27           #globalDataBuffer:Ljava/nio/ByteBuffer;
    .end local v28           #globalDataOutputStream:Lorg/snmp4j/asn1/BEROutputStream;
    .end local v29           #headerData:Lorg/snmp4j/mp/MPv3$HeaderData;
    .end local v32           #scopedPDULength:I
    .end local v33           #scopedPdu:Lorg/snmp4j/asn1/BEROutputStream;
    :pswitch_f4
    new-instance v30, Lorg/snmp4j/smi/OctetString;

    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/mp/MPv3;->getLocalEngineID()[B

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 678
    .local v30, localEngineID:Lorg/snmp4j/smi/OctetString;
    sget-object v3, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 679
    sget-object v3, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Context engine ID of scoped PDU is empty! Setting it to local engine ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 682
    :cond_123
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/snmp4j/ScopedPDU;->setContextEngineID(Lorg/snmp4j/smi/OctetString;)V

    goto/16 :goto_36

    .line 694
    .end local v30           #localEngineID:Lorg/snmp4j/smi/OctetString;
    :cond_12c
    const/4 v3, 0x0

    new-array v7, v3, [B

    goto/16 :goto_64

    .line 708
    :cond_131
    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v3

    if-nez v3, :cond_7c

    .line 709
    sget-object v3, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 710
    sget-object v3, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v4, "Context engine ID of unconfirmed scoped PDU is empty! Setting it to local engine ID"

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 713
    :cond_14a
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    invoke-direct {v3, v4}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lorg/snmp4j/ScopedPDU;->setContextEngineID(Lorg/snmp4j/smi/OctetString;)V

    goto/16 :goto_7c

    .line 728
    .restart local v14       #flags:I
    .restart local v29       #headerData:Lorg/snmp4j/mp/MPv3$HeaderData;
    .restart local v32       #scopedPDULength:I
    .restart local v33       #scopedPdu:Lorg/snmp4j/asn1/BEROutputStream;
    :pswitch_15a
    const/4 v14, 0x0

    .line 729
    goto/16 :goto_9b

    .line 731
    :pswitch_15d
    const/4 v14, 0x1

    .line 732
    goto/16 :goto_9b

    .line 734
    :pswitch_160
    const/4 v14, 0x3

    goto/16 :goto_9b

    .line 741
    :cond_163
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    goto/16 :goto_a3

    .line 764
    .restart local v2       #secModel:Lorg/snmp4j/security/SecurityModel;
    .restart local v10       #scopedPDUInput:Lorg/snmp4j/asn1/BERInputStream;
    .restart local v13       #msgID:I
    .restart local v27       #globalDataBuffer:Ljava/nio/ByteBuffer;
    .restart local v28       #globalDataOutputStream:Lorg/snmp4j/asn1/BEROutputStream;
    :cond_169
    invoke-interface {v2}, Lorg/snmp4j/security/SecurityModel;->newSecurityParametersInstance()Lorg/snmp4j/security/SecurityParameters;

    move-result-object v11

    .line 767
    .local v11, securityParameters:Lorg/snmp4j/security/SecurityParameters;
    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move/from16 v3, p3

    move/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v12, p11

    invoke-interface/range {v2 .. v12}, Lorg/snmp4j/security/SecurityModel;->generateRequestMessage(I[BII[B[BILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/asn1/BEROutputStream;)I

    move-result v26

    .line 778
    .local v26, status:I
    if-nez v26, :cond_f3

    .line 779
    if-eqz p8, :cond_f3

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/mp/MPv3;->cache:Lorg/snmp4j/mp/MPv3$Cache;

    new-instance v12, Lorg/snmp4j/mp/StateReference;

    const/16 v18, 0x0

    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v23

    invoke-virtual/range {v31 .. v31}, Lorg/snmp4j/ScopedPDU;->getContextName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v15, p2

    move-object/from16 v16, p9

    move-object/from16 v17, p1

    move-object/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v21, p5

    move/from16 v22, p6

    invoke-direct/range {v12 .. v26}, Lorg/snmp4j/mp/StateReference;-><init>(IIILorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;[BLorg/snmp4j/security/SecurityModel;[BI[B[BLorg/snmp4j/security/SecurityStateReference;I)V

    invoke-virtual {v3, v12}, Lorg/snmp4j/mp/MPv3$Cache;->addEntry(Lorg/snmp4j/mp/StateReference;)I

    goto/16 :goto_f3

    .line 674
    nop

    :pswitch_data_1b6
    .packed-switch -0x5a
        :pswitch_f4
        :pswitch_f4
    .end packed-switch

    .line 726
    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_15d
        :pswitch_160
    .end packed-switch
.end method

.method public prepareResponseMessage(III[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/asn1/BEROutputStream;)I
    .registers 35
    .parameter "messageProcessingModel"
    .parameter "maxMessageSize"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "stateReference"
    .parameter "statusInformation"
    .parameter "outgoingMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/mp/MPv3;->cache:Lorg/snmp4j/mp/MPv3$Cache;

    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/mp/StateReference;->getMsgID()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/snmp4j/mp/MPv3$Cache;->popEntry(I)Lorg/snmp4j/mp/StateReference;

    move-result-object v14

    .line 811
    .local v14, cacheEntry:Lorg/snmp4j/mp/StateReference;
    if-nez v14, :cond_11

    .line 812
    const/16 v22, -0x581

    .line 892
    :goto_10
    return v22

    .line 817
    :cond_11
    invoke-virtual/range {p6 .. p6}, Lorg/snmp4j/PDU;->getBERLength()I

    move-result v20

    .line 820
    .local v20, scopedPDULength:I
    move/from16 v0, v20

    move/from16 v1, p7

    if-le v0, v1, :cond_df

    .line 821
    new-instance v23, Lorg/snmp4j/ScopedPDU;

    move-object/from16 v3, p6

    check-cast v3, Lorg/snmp4j/ScopedPDU;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lorg/snmp4j/ScopedPDU;-><init>(Lorg/snmp4j/ScopedPDU;)V

    .line 822
    .local v23, tooBigPDU:Lorg/snmp4j/PDU;
    invoke-virtual/range {v23 .. v23}, Lorg/snmp4j/ScopedPDU;->clear()V

    .line 823
    invoke-virtual/range {p6 .. p6}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/snmp4j/ScopedPDU;->setRequestID(Lorg/snmp4j/smi/Integer32;)V

    .line 824
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/snmp4j/PDU;->setErrorStatus(I)V

    .line 825
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/snmp4j/PDU;->setErrorIndex(I)V

    .line 826
    invoke-virtual/range {v23 .. v23}, Lorg/snmp4j/ScopedPDU;->getBERLength()I

    move-result v20

    .line 827
    new-instance v19, Lorg/snmp4j/asn1/BEROutputStream;

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/snmp4j/asn1/BEROutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 828
    .local v19, scopedPDU:Lorg/snmp4j/asn1/BEROutputStream;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/snmp4j/ScopedPDU;->encodeBER(Ljava/io/OutputStream;)V

    .line 835
    .end local v23           #tooBigPDU:Lorg/snmp4j/PDU;
    :goto_54
    new-instance v18, Lorg/snmp4j/mp/MPv3$HeaderData;

    invoke-direct/range {v18 .. v18}, Lorg/snmp4j/mp/MPv3$HeaderData;-><init>()V

    .line 836
    .local v18, headerData:Lorg/snmp4j/mp/MPv3$HeaderData;
    const/4 v15, 0x0

    .line 837
    .local v15, flags:I
    packed-switch p5, :pswitch_data_108

    .line 849
    :goto_5d
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/snmp4j/mp/MPv3$HeaderData;->setMsgFlags(I)V

    .line 850
    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/mp/StateReference;->getMsgID()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/snmp4j/mp/MPv3$HeaderData;->setMsgID(I)V

    .line 851
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3$HeaderData;->setMsgMaxSize(I)V

    .line 852
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3$HeaderData;->setSecurityModel(I)V

    .line 854
    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/mp/MPv3$HeaderData;->getBERLength()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 856
    .local v16, globalDataBuffer:Ljava/nio/ByteBuffer;
    new-instance v17, Lorg/snmp4j/asn1/BEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 858
    .local v17, globalDataOutputStream:Lorg/snmp4j/asn1/BEROutputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/snmp4j/mp/MPv3$HeaderData;->encodeBER(Ljava/io/OutputStream;)V

    .line 861
    invoke-virtual/range {p6 .. p6}, Lorg/snmp4j/PDU;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_112

    .line 869
    :pswitch_98
    new-instance v21, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v14}, Lorg/snmp4j/mp/StateReference;->getSecurityEngineID()[B

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 872
    .local v21, securityEngineID:Lorg/snmp4j/smi/OctetString;
    :goto_a3
    new-instance v10, Lorg/snmp4j/asn1/BERInputStream;

    invoke-virtual/range {v19 .. v19}, Lorg/snmp4j/asn1/BEROutputStream;->rewind()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v10, v3}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 874
    .local v10, scopedPDUInput:Lorg/snmp4j/asn1/BERInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/mp/MPv3;->securityModels:Lorg/snmp4j/security/SecurityModels;

    new-instance v4, Lorg/snmp4j/smi/Integer32;

    move/from16 v0, p3

    invoke-direct {v4, v0}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/snmp4j/security/SecurityModels;->getSecurityModel(Lorg/snmp4j/smi/Integer32;)Lorg/snmp4j/security/SecurityModel;

    move-result-object v2

    .line 877
    .local v2, secModel:Lorg/snmp4j/security/SecurityModel;
    invoke-interface {v2}, Lorg/snmp4j/security/SecurityModel;->newSecurityParametersInstance()Lorg/snmp4j/security/SecurityParameters;

    move-result-object v12

    .line 880
    .local v12, securityParameters:Lorg/snmp4j/security/SecurityParameters;
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/mp/MPv3;->getID()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v7

    invoke-virtual {v14}, Lorg/snmp4j/mp/StateReference;->getSecurityStateReference()Lorg/snmp4j/security/SecurityStateReference;

    move-result-object v11

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v13, p10

    invoke-interface/range {v2 .. v13}, Lorg/snmp4j/security/SecurityModel;->generateResponseMessage(I[BII[B[BILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/security/SecurityStateReference;Lorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/asn1/BEROutputStream;)I

    move-result v22

    .line 892
    .local v22, status:I
    goto/16 :goto_10

    .line 831
    .end local v2           #secModel:Lorg/snmp4j/security/SecurityModel;
    .end local v10           #scopedPDUInput:Lorg/snmp4j/asn1/BERInputStream;
    .end local v12           #securityParameters:Lorg/snmp4j/security/SecurityParameters;
    .end local v15           #flags:I
    .end local v16           #globalDataBuffer:Ljava/nio/ByteBuffer;
    .end local v17           #globalDataOutputStream:Lorg/snmp4j/asn1/BEROutputStream;
    .end local v18           #headerData:Lorg/snmp4j/mp/MPv3$HeaderData;
    .end local v19           #scopedPDU:Lorg/snmp4j/asn1/BEROutputStream;
    .end local v21           #securityEngineID:Lorg/snmp4j/smi/OctetString;
    .end local v22           #status:I
    :cond_df
    new-instance v19, Lorg/snmp4j/asn1/BEROutputStream;

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/snmp4j/asn1/BEROutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 832
    .restart local v19       #scopedPDU:Lorg/snmp4j/asn1/BEROutputStream;
    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->encodeBER(Ljava/io/OutputStream;)V

    goto/16 :goto_54

    .line 839
    .restart local v15       #flags:I
    .restart local v18       #headerData:Lorg/snmp4j/mp/MPv3$HeaderData;
    :pswitch_f3
    const/4 v15, 0x0

    .line 840
    goto/16 :goto_5d

    .line 842
    :pswitch_f6
    const/4 v15, 0x1

    .line 843
    goto/16 :goto_5d

    .line 845
    :pswitch_f9
    const/4 v15, 0x3

    goto/16 :goto_5d

    .line 866
    .restart local v16       #globalDataBuffer:Ljava/nio/ByteBuffer;
    .restart local v17       #globalDataOutputStream:Lorg/snmp4j/asn1/BEROutputStream;
    :pswitch_fc
    new-instance v21, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 867
    .restart local v21       #securityEngineID:Lorg/snmp4j/smi/OctetString;
    goto :goto_a3

    .line 837
    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_f3
        :pswitch_f6
        :pswitch_f9
    .end packed-switch

    .line 861
    :pswitch_data_112
    .packed-switch -0x5e
        :pswitch_fc
        :pswitch_98
        :pswitch_fc
        :pswitch_98
        :pswitch_98
        :pswitch_fc
        :pswitch_fc
    .end packed-switch
.end method

.method public releaseStateReference(Lorg/snmp4j/mp/PduHandle;)V
    .registers 3
    .parameter "pduHandle"

    .prologue
    .line 647
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->cache:Lorg/snmp4j/mp/MPv3$Cache;

    invoke-virtual {v0, p1}, Lorg/snmp4j/mp/MPv3$Cache;->deleteEntry(Lorg/snmp4j/mp/PduHandle;)Z

    .line 648
    return-void
.end method

.method public removeEngineID(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/smi/OctetString;
    .registers 5
    .parameter "address"

    .prologue
    .line 356
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3;->engineIDs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    .line 357
    .local v0, engineID:Lorg/snmp4j/smi/OctetString;
    if-eqz v0, :cond_17

    iget-object v1, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    if-eqz v1, :cond_17

    .line 358
    new-instance v1, Lorg/snmp4j/event/SnmpEngineEvent;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v0, p1}, Lorg/snmp4j/event/SnmpEngineEvent;-><init>(Ljava/lang/Object;ILorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/Address;)V

    invoke-virtual {p0, v1}, Lorg/snmp4j/mp/MPv3;->fireEngineChanged(Lorg/snmp4j/event/SnmpEngineEvent;)V

    .line 362
    :cond_17
    return-object v0
.end method

.method public declared-synchronized removeSnmpEngineListener(Lorg/snmp4j/event/SnmpEngineListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 1405
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1406
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3;->snmpEngineListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1408
    :cond_a
    monitor-exit p0

    return-void

    .line 1405
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendReport(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/ScopedPDU;IILorg/snmp4j/smi/OctetString;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/smi/VariableBinding;)I
    .registers 21
    .parameter "messageDispatcher"
    .parameter "pdu"
    .parameter "securityLevel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "stateReference"
    .parameter "payload"

    .prologue
    .line 927
    new-instance v6, Lorg/snmp4j/ScopedPDU;

    invoke-direct {v6}, Lorg/snmp4j/ScopedPDU;-><init>()V

    .line 928
    .local v6, reportPDU:Lorg/snmp4j/ScopedPDU;
    const/16 v1, -0x58

    invoke-virtual {v6, v1}, Lorg/snmp4j/ScopedPDU;->setType(I)V

    .line 929
    if-eqz p2, :cond_21

    .line 930
    invoke-virtual {p2}, Lorg/snmp4j/ScopedPDU;->getContextEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/snmp4j/ScopedPDU;->setContextEngineID(Lorg/snmp4j/smi/OctetString;)V

    .line 931
    invoke-virtual {p2}, Lorg/snmp4j/ScopedPDU;->getContextName()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/snmp4j/ScopedPDU;->setContextName(Lorg/snmp4j/smi/OctetString;)V

    .line 932
    invoke-virtual {p2}, Lorg/snmp4j/ScopedPDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/snmp4j/ScopedPDU;->setRequestID(Lorg/snmp4j/smi/Integer32;)V

    .line 934
    :cond_21
    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Lorg/snmp4j/ScopedPDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 935
    new-instance v9, Lorg/snmp4j/mp/StatusInformation;

    invoke-direct {v9}, Lorg/snmp4j/mp/StatusInformation;-><init>()V

    .line 937
    .local v9, statusInformation:Lorg/snmp4j/mp/StatusInformation;
    :try_start_2b
    invoke-virtual {p0}, Lorg/snmp4j/mp/MPv3;->getID()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object v1, p1

    move/from16 v3, p4

    move v5, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lorg/snmp4j/MessageDispatcher;->returnResponsePdu(II[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;)I

    move-result v11

    .line 945
    .local v11, status:I
    if-eqz v11, :cond_7c

    .line 946
    sget-object v1, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while sending report: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V
    :try_end_59
    .catch Lorg/snmp4j/MessageException; {:try_start_2b .. :try_end_59} :catch_5c

    .line 947
    const/16 v1, -0x578

    .line 954
    .end local v11           #status:I
    :goto_5b
    return v1

    .line 950
    :catch_5c
    move-exception v10

    .line 951
    .local v10, mex:Lorg/snmp4j/MessageException;
    sget-object v1, Lorg/snmp4j/mp/MPv3;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while sending report: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v10}, Lorg/snmp4j/MessageException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 952
    const/16 v1, -0x578

    goto :goto_5b

    .line 954
    .end local v10           #mex:Lorg/snmp4j/MessageException;
    .restart local v11       #status:I
    :cond_7c
    const/4 v1, 0x0

    goto :goto_5b
.end method

.method public setCounterSupport(Lorg/snmp4j/mp/CounterSupport;)V
    .registers 3
    .parameter "counterSupport"

    .prologue
    .line 1378
    if-nez p1, :cond_8

    .line 1379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1381
    :cond_8
    iput-object p1, p0, Lorg/snmp4j/mp/MPv3;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    .line 1382
    return-void
.end method

.method public setLocalEngineID([B)V
    .registers 4
    .parameter "engineID"

    .prologue
    .line 238
    if-eqz p1, :cond_b

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_b

    array-length v0, p1

    const/16 v1, 0x20

    if-le v0, v1, :cond_13

    .line 241
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal (local) engine ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_13
    iput-object p1, p0, Lorg/snmp4j/mp/MPv3;->localEngineID:[B

    .line 244
    return-void
.end method

.method public setSecurityModels(Lorg/snmp4j/security/SecurityModels;)V
    .registers 2
    .parameter "securityModels"

    .prologue
    .line 1319
    iput-object p1, p0, Lorg/snmp4j/mp/MPv3;->securityModels:Lorg/snmp4j/security/SecurityModels;

    .line 1320
    return-void
.end method

.method public setSecurityProtocols(Lorg/snmp4j/security/SecurityProtocols;)V
    .registers 2
    .parameter "securityProtocols"

    .prologue
    .line 633
    iput-object p1, p0, Lorg/snmp4j/mp/MPv3;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    .line 634
    return-void
.end method
