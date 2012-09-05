.class public Lorg/snmp4j/security/USM;
.super Ljava/lang/Object;
.source "USM.java"

# interfaces
.implements Lorg/snmp4j/security/SecurityModel;


# static fields
.field private static final MAXLEN_USMUSERNAME:I = 0x20

.field static class$org$snmp4j$security$USM:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private counterSupport:Lorg/snmp4j/mp/CounterSupport;

.field private engineDiscoveryEnabled:Z

.field private localEngineID:Lorg/snmp4j/smi/OctetString;

.field private securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

.field private timeTable:Lorg/snmp4j/security/UsmTimeTable;

.field private userTable:Lorg/snmp4j/security/UsmUserTable;

.field private transient usmUserListeners:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lorg/snmp4j/security/USM;->class$org$snmp4j$security$USM:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.security.USM"

    invoke-static {v0}, Lorg/snmp4j/security/USM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/USM;->class$org$snmp4j$security$USM:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/security/USM;->class$org$snmp4j$security$USM:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/smi/OctetString;I)V
    .registers 5
    .parameter "securityProtocols"
    .parameter "localEngineID"
    .parameter "engineBoots"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/security/USM;->engineDiscoveryEnabled:Z

    .line 75
    iput-object p2, p0, Lorg/snmp4j/security/USM;->localEngineID:Lorg/snmp4j/smi/OctetString;

    .line 76
    new-instance v0, Lorg/snmp4j/security/UsmTimeTable;

    invoke-direct {v0, p2, p3}, Lorg/snmp4j/security/UsmTimeTable;-><init>(Lorg/snmp4j/smi/OctetString;I)V

    iput-object v0, p0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    .line 77
    new-instance v0, Lorg/snmp4j/security/UsmUserTable;

    invoke-direct {v0}, Lorg/snmp4j/security/UsmUserTable;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    .line 78
    iput-object p1, p0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    .line 79
    invoke-static {}, Lorg/snmp4j/mp/CounterSupport;->getInstance()Lorg/snmp4j/mp/CounterSupport;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/security/USM;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    .line 80
    return-void
.end method

.method private static buildMessageBuffer(Lorg/snmp4j/asn1/BERInputStream;)[B
    .registers 10
    .parameter "scopedPDU"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lorg/snmp4j/asn1/BERInputStream;->mark(I)V

    .line 159
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v7

    long-to-int v6, v7

    .line 160
    .local v6, readLengthBytes:I
    new-instance v3, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v3}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 161
    .local v3, mutableByte:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p0, v3}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v2

    .line 162
    .local v2, length:I
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v7

    long-to-int v7, v7

    sub-int v6, v7, v6

    .line 163
    add-int v7, v2, v6

    new-array v1, v7, [B

    .line 164
    .local v1, buf:[B
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->reset()V

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, offset:I
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->available()I

    move-result v0

    .line 168
    .local v0, avail:I
    :goto_26
    array-length v7, v1

    if-ge v4, v7, :cond_33

    if-lez v0, :cond_33

    .line 169
    array-length v7, v1

    sub-int/2addr v7, v4

    invoke-virtual {p0, v1, v4, v7}, Lorg/snmp4j/asn1/BERInputStream;->read([BII)I

    move-result v5

    .line 170
    .local v5, read:I
    if-gez v5, :cond_34

    .line 175
    .end local v5           #read:I
    :cond_33
    return-object v1

    .line 173
    .restart local v5       #read:I
    :cond_34
    add-int/2addr v4, v5

    .line 174
    goto :goto_26
.end method

.method private static buildWholeMessage(Lorg/snmp4j/smi/Integer32;[B[BLorg/snmp4j/security/UsmSecurityParameters;)[B
    .registers 10
    .parameter "snmpVersion"
    .parameter "scopedPdu"
    .parameter "globalData"
    .parameter "usmSecurityParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v4

    array-length v5, p2

    add-int/2addr v4, v5

    invoke-virtual {p3}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERLength()I

    move-result v5

    add-int/2addr v4, v5

    array-length v5, p1

    add-int v0, v4, v5

    .line 190
    .local v0, length:I
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v3, v4, 0x1

    .line 192
    .local v3, totalLength:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 193
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x30

    invoke-static {v1, v4, v0}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 194
    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 195
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    invoke-virtual {p3, v1}, Lorg/snmp4j/security/UsmSecurityParameters;->encodeBER(Ljava/io/OutputStream;)V

    .line 197
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 198
    invoke-virtual {p0}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v5

    add-int/2addr v4, v5

    array-length v5, p2

    add-int v2, v4, v5

    .line 200
    .local v2, secParamsPos:I
    invoke-virtual {p3, v2}, Lorg/snmp4j/security/UsmSecurityParameters;->setSecurityParametersPosition(I)V

    .line 201
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
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

.method private getSecurityName(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/smi/OctetString;
    .registers 5
    .parameter "engineID"
    .parameter "userName"

    .prologue
    .line 515
    invoke-virtual {p2}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 528
    .end local p2
    :goto_6
    return-object p2

    .line 518
    .restart local p2
    :cond_7
    iget-object v1, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v1, p1, p2}, Lorg/snmp4j/security/UsmUserTable;->getUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v0

    .line 519
    .local v0, user:Lorg/snmp4j/security/UsmUserEntry;
    if-eqz v0, :cond_18

    .line 520
    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmUser;->getSecurityName()Lorg/snmp4j/smi/OctetString;

    move-result-object p2

    goto :goto_6

    .line 522
    :cond_18
    invoke-virtual {p0}, Lorg/snmp4j/security/USM;->isEngineDiscoveryEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 523
    iget-object v1, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v1, p2}, Lorg/snmp4j/security/UsmUserTable;->getUser(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_2f

    .line 525
    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmUser;->getSecurityName()Lorg/snmp4j/smi/OctetString;

    move-result-object p2

    goto :goto_6

    .line 528
    :cond_2f
    const/4 p2, 0x0

    goto :goto_6
.end method


# virtual methods
.method public addLocalizedUser([BLorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;[BLorg/snmp4j/smi/OID;[B)Lorg/snmp4j/security/UsmUserEntry;
    .registers 14
    .parameter "engineID"
    .parameter "userName"
    .parameter "authProtocol"
    .parameter "authKey"
    .parameter "privProtocol"
    .parameter "privKey"

    .prologue
    .line 967
    new-instance v0, Lorg/snmp4j/security/UsmUserEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/snmp4j/security/UsmUserEntry;-><init>([BLorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;[BLorg/snmp4j/smi/OID;[B)V

    .line 970
    .local v0, newEntry:Lorg/snmp4j/security/UsmUserEntry;
    iget-object v1, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v1, v0}, Lorg/snmp4j/security/UsmUserTable;->addUser(Lorg/snmp4j/security/UsmUserEntry;)Lorg/snmp4j/security/UsmUserEntry;

    .line 971
    new-instance v1, Lorg/snmp4j/event/UsmUserEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lorg/snmp4j/event/UsmUserEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/security/UsmUserEntry;I)V

    invoke-virtual {p0, v1}, Lorg/snmp4j/security/USM;->fireUsmUserChange(Lorg/snmp4j/event/UsmUserEvent;)V

    .line 973
    return-object v0
.end method

.method public addUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V
    .registers 4
    .parameter "userName"
    .parameter "user"

    .prologue
    .line 792
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/snmp4j/security/USM;->addUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V

    .line 793
    return-void
.end method

.method public addUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V
    .registers 13
    .parameter "userName"
    .parameter "engineID"
    .parameter "user"

    .prologue
    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, authKey:[B
    const/4 v2, 0x0

    .line 811
    .local v2, privKey:[B
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-lez v4, :cond_32

    .line 812
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getAuthenticationProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 813
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->isLocalized()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 814
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getAuthenticationPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    .line 822
    :goto_1e
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getPrivacyProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 823
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->isLocalized()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 824
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getPrivacyPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v2

    .line 837
    :cond_32
    :goto_32
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->isLocalized()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 838
    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getLocalizationEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v3

    .line 843
    .local v3, userEngineID:Lorg/snmp4j/smi/OctetString;
    :goto_3c
    new-instance v1, Lorg/snmp4j/security/UsmUserEntry;

    invoke-direct {v1, p1, v3, p3}, Lorg/snmp4j/security/UsmUserEntry;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V

    .line 845
    .local v1, entry:Lorg/snmp4j/security/UsmUserEntry;
    invoke-virtual {v1, v0}, Lorg/snmp4j/security/UsmUserEntry;->setAuthenticationKey([B)V

    .line 846
    invoke-virtual {v1, v2}, Lorg/snmp4j/security/UsmUserEntry;->setPrivacyKey([B)V

    .line 847
    iget-object v4, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v4, v1}, Lorg/snmp4j/security/UsmUserTable;->addUser(Lorg/snmp4j/security/UsmUserEntry;)Lorg/snmp4j/security/UsmUserEntry;

    .line 848
    new-instance v4, Lorg/snmp4j/event/UsmUserEvent;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v1, v5}, Lorg/snmp4j/event/UsmUserEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/security/UsmUserEntry;I)V

    invoke-virtual {p0, v4}, Lorg/snmp4j/security/USM;->fireUsmUserChange(Lorg/snmp4j/event/UsmUserEvent;)V

    .line 849
    return-void

    .line 817
    .end local v1           #entry:Lorg/snmp4j/security/UsmUserEntry;
    .end local v3           #userEngineID:Lorg/snmp4j/smi/OctetString;
    :cond_56
    iget-object v4, p0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getAuthenticationProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v5

    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getAuthenticationPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v6

    invoke-virtual {p2}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/snmp4j/security/SecurityProtocols;->passwordToKey(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;[B)[B

    move-result-object v0

    goto :goto_1e

    .line 827
    :cond_69
    iget-object v4, p0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getPrivacyProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v5

    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getAuthenticationProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v6

    invoke-virtual {p3}, Lorg/snmp4j/security/UsmUser;->getPrivacyPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v7

    invoke-virtual {p2}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/snmp4j/security/SecurityProtocols;->passwordToKey(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;[B)[B

    move-result-object v2

    goto :goto_32

    .line 841
    :cond_80
    if-nez p2, :cond_88

    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v3}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .restart local v3       #userEngineID:Lorg/snmp4j/smi/OctetString;
    :goto_87
    goto :goto_3c

    .end local v3           #userEngineID:Lorg/snmp4j/smi/OctetString;
    :cond_88
    move-object v3, p2

    goto :goto_87
.end method

.method public declared-synchronized addUsmUserListener(Lorg/snmp4j/event/UsmUserListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 1019
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1021
    .local v0, v:Ljava/util/Vector;
    :goto_b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1022
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1023
    iput-object v0, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 1025
    :cond_16
    monitor-exit p0

    return-void

    .line 1019
    .end local v0           #v:Ljava/util/Vector;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    move-object v0, v1

    goto :goto_b

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 781
    iget-object v0, p0, Lorg/snmp4j/security/USM;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    invoke-virtual {v0, p1}, Lorg/snmp4j/mp/CounterSupport;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 782
    return-void
.end method

.method protected fireUsmUserChange(Lorg/snmp4j/event/UsmUserEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 1046
    iget-object v3, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;

    if-eqz v3, :cond_19

    .line 1047
    iget-object v2, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;

    .line 1048
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1049
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 1050
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/event/UsmUserListener;

    invoke-interface {v3, p1}, Lorg/snmp4j/event/UsmUserListener;->usmUserChange(Lorg/snmp4j/event/UsmUserEvent;)V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1053
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_19
    return-void
.end method

.method public generateRequestMessage(I[BII[B[BILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/asn1/BEROutputStream;)I
    .registers 23
    .parameter "snmpVersion"
    .parameter "globalData"
    .parameter "maxMessageSize"
    .parameter "securityModel"
    .parameter "securityEngineID"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "scopedPDU"
    .parameter "securityParameters"
    .parameter "wholeMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/snmp4j/security/USM;->generateResponseMessage(I[BII[B[BILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/security/SecurityStateReference;Lorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/asn1/BEROutputStream;)I

    move-result v0

    return v0
.end method

.method public generateResponseMessage(I[BII[B[BILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/security/SecurityStateReference;Lorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/asn1/BEROutputStream;)I
    .registers 41
    .parameter "snmpVersion"
    .parameter "globalData"
    .parameter "maxMessageSize"
    .parameter "securityModel"
    .parameter "securityEngineID"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "scopedPDU"
    .parameter "securityStateReference"
    .parameter "securityParameters"
    .parameter "wholeMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    move-object/from16 v27, p10

    check-cast v27, Lorg/snmp4j/security/UsmSecurityParameters;

    .line 302
    .local v27, usmSecurityParams:Lorg/snmp4j/security/UsmSecurityParameters;
    if-eqz p9, :cond_dc

    move-object/from16 v28, p9

    .line 304
    check-cast v28, Lorg/snmp4j/security/UsmSecurityStateReference;

    .line 306
    .local v28, usmSecurityStateReference:Lorg/snmp4j/security/UsmSecurityStateReference;
    invoke-virtual/range {v28 .. v28}, Lorg/snmp4j/security/UsmSecurityStateReference;->getSecurityEngineID()[B

    move-result-object v3

    if-nez v3, :cond_1e

    .line 307
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineID([B)V

    .line 308
    move-object/from16 v0, v28

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmSecurityStateReference;->setSecurityEngineID([B)V

    .line 310
    :cond_1e
    invoke-virtual/range {v28 .. v28}, Lorg/snmp4j/security/UsmSecurityStateReference;->getSecurityName()[B

    move-result-object v3

    if-nez v3, :cond_cd

    .line 311
    new-instance v26, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, v26

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 312
    .local v26, userName:Lorg/snmp4j/smi/OctetString;
    invoke-virtual/range {v26 .. v26}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityStateReference;->setSecurityName([B)V

    .line 313
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmSecurityParameters;->setUserName(Lorg/snmp4j/smi/OctetString;)V

    .line 315
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v3, v1}, Lorg/snmp4j/security/USM;->getSecurityName(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/smi/OctetString;

    move-result-object v24

    .line 318
    .local v24, secName:Lorg/snmp4j/smi/OctetString;
    if-eqz v24, :cond_5d

    invoke-virtual/range {v24 .. v24}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v3

    const/16 v5, 0x20

    if-gt v3, v5, :cond_5d

    .line 320
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmSecurityParameters;->setUserName(Lorg/snmp4j/smi/OctetString;)V

    .line 327
    .end local v24           #secName:Lorg/snmp4j/smi/OctetString;
    .end local v26           #userName:Lorg/snmp4j/smi/OctetString;
    :cond_5d
    :goto_5d
    invoke-virtual/range {v28 .. v28}, Lorg/snmp4j/security/UsmSecurityStateReference;->getAuthenticationProtocol()Lorg/snmp4j/security/AuthenticationProtocol;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V

    .line 329
    invoke-virtual/range {v28 .. v28}, Lorg/snmp4j/security/UsmSecurityStateReference;->getPrivacyProtocol()Lorg/snmp4j/security/PrivacyProtocol;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    .line 331
    invoke-virtual/range {v28 .. v28}, Lorg/snmp4j/security/UsmSecurityStateReference;->getAuthenticationKey()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthenticationKey([B)V

    .line 333
    invoke-virtual/range {v28 .. v28}, Lorg/snmp4j/security/UsmSecurityStateReference;->getPrivacyKey()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setPrivacyKey([B)V

    .line 378
    .end local v28           #usmSecurityStateReference:Lorg/snmp4j/security/UsmSecurityStateReference;
    :goto_81
    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineID()[B

    move-result-object v3

    array-length v3, v3

    const/16 v5, 0x20

    if-le v3, v5, :cond_1ae

    .line 379
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Engine ID too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineID()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Lorg/snmp4j/smi/OctetString;

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineID()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v6}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 384
    const/16 v3, 0x579

    .line 510
    :goto_cc
    return v3

    .line 325
    .restart local v28       #usmSecurityStateReference:Lorg/snmp4j/security/UsmSecurityStateReference;
    :cond_cd
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-virtual/range {v28 .. v28}, Lorg/snmp4j/security/UsmSecurityStateReference;->getSecurityName()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setUserName(Lorg/snmp4j/smi/OctetString;)V

    goto :goto_5d

    .line 336
    .end local v28           #usmSecurityStateReference:Lorg/snmp4j/security/UsmSecurityStateReference;
    :cond_dc
    new-instance v23, Lorg/snmp4j/smi/OctetString;

    invoke-direct/range {v23 .. v23}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 337
    .local v23, secEngineID:Lorg/snmp4j/smi/OctetString;
    if-eqz p5, :cond_ea

    .line 338
    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 340
    :cond_ea
    new-instance v24, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 343
    .restart local v24       #secName:Lorg/snmp4j/smi/OctetString;
    invoke-virtual/range {v23 .. v23}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v3

    if-nez v3, :cond_14d

    .line 344
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/security/USM;->isEngineDiscoveryEnabled()Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 345
    new-instance v25, Lorg/snmp4j/security/UsmUserEntry;

    invoke-direct/range {v25 .. v25}, Lorg/snmp4j/security/UsmUserEntry;-><init>()V

    .line 357
    .local v25, user:Lorg/snmp4j/security/UsmUserEntry;
    :goto_104
    if-nez v25, :cond_158

    .line 358
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_138

    .line 359
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Security name not found for engineID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", securityName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 363
    :cond_138
    const/16 v3, 0x57c

    goto :goto_cc

    .line 348
    .end local v25           #user:Lorg/snmp4j/security/UsmUserEntry;
    :cond_13b
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 349
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "Engine ID unknown and discovery disabled"

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 351
    :cond_14a
    const/16 v3, 0x582

    goto :goto_cc

    .line 355
    :cond_14d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/snmp4j/security/USM;->getUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v25

    .restart local v25       #user:Lorg/snmp4j/security/UsmUserEntry;
    goto :goto_104

    .line 365
    :cond_158
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/security/UsmUser;->getAuthenticationProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/snmp4j/security/SecurityProtocols;->getAuthenticationProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/AuthenticationProtocol;

    move-result-object v13

    .line 367
    .local v13, auth:Lorg/snmp4j/security/AuthenticationProtocol;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/snmp4j/security/UsmUser;->getPrivacyProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/snmp4j/security/SecurityProtocols;->getPrivacyProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/PrivacyProtocol;

    move-result-object v22

    .line 369
    .local v22, priv:Lorg/snmp4j/security/PrivacyProtocol;
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V

    .line 370
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmSecurityParameters;->setPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    .line 371
    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/security/UsmUserEntry;->getAuthenticationKey()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthenticationKey([B)V

    .line 372
    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/security/UsmUserEntry;->getPrivacyKey()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setPrivacyKey([B)V

    .line 373
    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/snmp4j/security/UsmUser;->getSecurityName()Lorg/snmp4j/smi/OctetString;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setUserName(Lorg/snmp4j/smi/OctetString;)V

    .line 374
    invoke-virtual/range {v23 .. v23}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineID([B)V

    goto/16 :goto_81

    .line 386
    .end local v13           #auth:Lorg/snmp4j/security/AuthenticationProtocol;
    .end local v22           #priv:Lorg/snmp4j/security/PrivacyProtocol;
    .end local v23           #secEngineID:Lorg/snmp4j/smi/OctetString;
    .end local v24           #secName:Lorg/snmp4j/smi/OctetString;
    .end local v25           #user:Lorg/snmp4j/security/UsmUserEntry;
    :cond_1ae
    move-object/from16 v0, p6

    array-length v3, v0

    const/16 v5, 0x20

    if-le v3, v5, :cond_1f7

    .line 387
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Security name too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineID()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v6}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 391
    const/16 v3, 0x579

    goto/16 :goto_cc

    .line 394
    :cond_1f7
    const/4 v3, 0x2

    move/from16 v0, p7

    if-lt v0, v3, :cond_210

    .line 395
    if-eqz p9, :cond_21f

    .line 397
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/security/USM;->getEngineBoots()I

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineBoots(I)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/security/USM;->getEngineTime()I

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineTime(I)V

    .line 421
    :cond_210
    :goto_210
    const/4 v3, 0x2

    move/from16 v0, p7

    if-lt v0, v3, :cond_262

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthenticationProtocol()Lorg/snmp4j/security/AuthenticationProtocol;

    move-result-object v3

    if-nez v3, :cond_262

    .line 423
    const/16 v3, 0x57b

    goto/16 :goto_cc

    .line 402
    :cond_21f
    new-instance v23, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 403
    .restart local v23       #secEngineID:Lorg/snmp4j/smi/OctetString;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/snmp4j/security/UsmTimeTable;->getTime(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmTimeEntry;

    move-result-object v20

    .line 404
    .local v20, entry:Lorg/snmp4j/security/UsmTimeEntry;
    if-nez v20, :cond_24f

    .line 405
    new-instance v20, Lorg/snmp4j/security/UsmTimeEntry;

    .end local v20           #entry:Lorg/snmp4j/security/UsmTimeEntry;
    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineBoots()I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineTime()I

    move-result v5

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3, v5}, Lorg/snmp4j/security/UsmTimeEntry;-><init>(Lorg/snmp4j/smi/OctetString;II)V

    .line 411
    .restart local v20       #entry:Lorg/snmp4j/security/UsmTimeEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/snmp4j/security/UsmTimeTable;->addEntry(Lorg/snmp4j/security/UsmTimeEntry;)V

    goto :goto_210

    .line 414
    :cond_24f
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/security/UsmTimeEntry;->getEngineBoots()I

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineBoots(I)V

    .line 415
    invoke-virtual/range {v20 .. v20}, Lorg/snmp4j/security/UsmTimeEntry;->getLatestReceivedTime()I

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineTime(I)V

    goto :goto_210

    .line 426
    .end local v20           #entry:Lorg/snmp4j/security/UsmTimeEntry;
    .end local v23           #secEngineID:Lorg/snmp4j/smi/OctetString;
    :cond_262
    invoke-static/range {p8 .. p8}, Lorg/snmp4j/security/USM;->buildMessageBuffer(Lorg/snmp4j/asn1/BERInputStream;)[B

    move-result-object v4

    .line 428
    .local v4, scopedPduBytes:[B
    const/4 v3, 0x3

    move/from16 v0, p7

    if-ne v0, v3, :cond_34a

    .line 429
    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getPrivacyProtocol()Lorg/snmp4j/security/PrivacyProtocol;

    move-result-object v3

    if-nez v3, :cond_284

    .line 430
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_280

    .line 431
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "Unsupported security level (missing or unsupported privacy protocol)"

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 433
    :cond_280
    const/16 v3, 0x57b

    goto/16 :goto_cc

    .line 435
    :cond_284
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "RFC3414 \u00a73.1.4.a Outgoing message needs to be encrypted"

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 437
    new-instance v12, Lorg/snmp4j/security/DecryptParams;

    invoke-direct {v12}, Lorg/snmp4j/security/DecryptParams;-><init>()V

    .line 438
    .local v12, decryptParams:Lorg/snmp4j/security/DecryptParams;
    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getPrivacyProtocol()Lorg/snmp4j/security/PrivacyProtocol;

    move-result-object v3

    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getPrivacyKey()[B

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineBoots()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineTime()I

    move-result v10

    int-to-long v10, v10

    invoke-interface/range {v3 .. v12}, Lorg/snmp4j/security/PrivacyProtocol;->encrypt([BII[BJJLorg/snmp4j/security/DecryptParams;)[B

    move-result-object v18

    .line 445
    .local v18, encryptedScopedPdu:[B
    if-nez v18, :cond_2bd

    .line 446
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b9

    .line 447
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "Encryption error"

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 449
    :cond_2b9
    const/16 v3, 0x57d

    goto/16 :goto_cc

    .line 451
    :cond_2bd
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    iget-object v5, v12, Lorg/snmp4j/security/DecryptParams;->array:[B

    invoke-direct {v3, v5}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setPrivacyParameters(Lorg/snmp4j/smi/OctetString;)V

    .line 453
    new-instance v19, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 454
    .local v19, encryptedString:Lorg/snmp4j/smi/OctetString;
    new-instance v21, Lorg/snmp4j/asn1/BEROutputStream;

    invoke-virtual/range {v19 .. v19}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lorg/snmp4j/asn1/BEROutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 456
    .local v21, os:Lorg/snmp4j/asn1/BEROutputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 457
    invoke-virtual/range {v21 .. v21}, Lorg/snmp4j/asn1/BEROutputStream;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 465
    .end local v12           #decryptParams:Lorg/snmp4j/security/DecryptParams;
    .end local v18           #encryptedScopedPdu:[B
    .end local v19           #encryptedString:Lorg/snmp4j/smi/OctetString;
    .end local v21           #os:Lorg/snmp4j/asn1/BEROutputStream;
    :goto_2f0
    const/4 v3, 0x2

    move/from16 v0, p7

    if-lt v0, v3, :cond_35c

    .line 467
    const/16 v3, 0xc

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 469
    .local v16, blank:[B
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthenticationParameters(Lorg/snmp4j/smi/OctetString;)V

    .line 470
    new-instance v3, Lorg/snmp4j/smi/Integer32;

    move/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v3, v4, v0, v1}, Lorg/snmp4j/security/USM;->buildWholeMessage(Lorg/snmp4j/smi/Integer32;[B[BLorg/snmp4j/security/UsmSecurityParameters;)[B

    move-result-object v7

    .line 474
    .local v7, wholeMessage:[B
    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthParametersPosition()I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getSecurityParametersPosition()I

    move-result v5

    add-int v15, v3, v5

    .line 478
    .local v15, authParamsPos:I
    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthenticationProtocol()Lorg/snmp4j/security/AuthenticationProtocol;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthenticationKey()[B

    move-result-object v6

    const/4 v8, 0x0

    array-length v9, v7

    new-instance v10, Lorg/snmp4j/security/ByteArrayWindow;

    const/16 v3, 0xc

    invoke-direct {v10, v7, v15, v3}, Lorg/snmp4j/security/ByteArrayWindow;-><init>([BII)V

    invoke-interface/range {v5 .. v10}, Lorg/snmp4j/security/AuthenticationProtocol;->authenticate([B[BIILorg/snmp4j/security/ByteArrayWindow;)Z

    move-result v14

    .line 488
    .local v14, authOK:Z
    if-nez v14, :cond_381

    .line 489
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_346

    .line 490
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "Outgoing message could not be authenticated"

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 492
    :cond_346
    const/16 v3, 0x57f

    goto/16 :goto_cc

    .line 460
    .end local v7           #wholeMessage:[B
    .end local v14           #authOK:Z
    .end local v15           #authParamsPos:I
    .end local v16           #blank:[B
    :cond_34a
    sget-object v3, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v5, "RFC3414 \u00a73.1.4.b Outgoing message is not encrypted"

    invoke-interface {v3, v5}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 461
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v3}, Lorg/snmp4j/smi/OctetString;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setPrivacyParameters(Lorg/snmp4j/smi/OctetString;)V

    goto :goto_2f0

    .line 497
    :cond_35c
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineBoots(I)V

    .line 498
    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v3}, Lorg/snmp4j/smi/OctetString;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthenticationParameters(Lorg/snmp4j/smi/OctetString;)V

    .line 499
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityParameters;->setAuthoritativeEngineTime(I)V

    .line 502
    new-instance v3, Lorg/snmp4j/smi/Integer32;

    move/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v3, v4, v0, v1}, Lorg/snmp4j/security/USM;->buildWholeMessage(Lorg/snmp4j/smi/Integer32;[B[BLorg/snmp4j/security/UsmSecurityParameters;)[B

    move-result-object v7

    .line 506
    .restart local v7       #wholeMessage:[B
    :cond_381
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v5, v7

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    check-cast v17, Ljava/nio/ByteBuffer;

    .line 508
    .local v17, buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 510
    const/4 v3, 0x0

    goto/16 :goto_cc
.end method

.method public getCounterSupport()Lorg/snmp4j/mp/CounterSupport;
    .registers 2

    .prologue
    .line 1063
    iget-object v0, p0, Lorg/snmp4j/security/USM;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    return-object v0
.end method

.method public getEngineBoots()I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmTimeTable;->getEngineBoots()I

    move-result v0

    return v0
.end method

.method public getEngineTime()I
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmTimeTable;->getEngineTime()I

    move-result v0

    return v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x3

    return v0
.end method

.method public getLocalEngineID()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/snmp4j/security/USM;->localEngineID:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getSecurityProtocols()Lorg/snmp4j/security/SecurityProtocols;
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    return-object v0
.end method

.method public getTimeTable()Lorg/snmp4j/security/UsmTimeTable;
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    return-object v0
.end method

.method public getUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;
    .registers 12
    .parameter "engineID"
    .parameter "securityName"

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v0, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 230
    sget-object v0, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "getUser(engineID="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, ", securityName="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lorg/snmp4j/smi/OctetString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 233
    :cond_39
    iget-object v0, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v0, p1, p2}, Lorg/snmp4j/security/UsmUserTable;->getUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v7

    .line 234
    .local v7, entry:Lorg/snmp4j/security/UsmUserEntry;
    if-nez v7, :cond_df

    .line 235
    iget-object v0, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v0, p2}, Lorg/snmp4j/security/UsmUserTable;->getUser(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v7

    .line 236
    if-nez v7, :cond_76

    invoke-virtual {p2}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v0

    if-lez v0, :cond_76

    .line 237
    sget-object v0, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 238
    sget-object v0, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "USM.getUser - User \'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "\' unknown"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 284
    :cond_75
    :goto_75
    return-object v2

    .line 243
    :cond_76
    if-eqz v7, :cond_7e

    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v0

    if-nez v0, :cond_94

    .line 245
    :cond_7e
    new-instance v7, Lorg/snmp4j/security/UsmUserEntry;

    .end local v7           #entry:Lorg/snmp4j/security/UsmUserEntry;
    invoke-direct {v7}, Lorg/snmp4j/security/UsmUserEntry;-><init>()V

    .line 246
    .restart local v7       #entry:Lorg/snmp4j/security/UsmUserEntry;
    invoke-virtual {v7, p2}, Lorg/snmp4j/security/UsmUserEntry;->setUserName(Lorg/snmp4j/smi/OctetString;)V

    .line 247
    new-instance v0, Lorg/snmp4j/security/UsmUser;

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/security/UsmUser;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;)V

    invoke-virtual {v7, v0}, Lorg/snmp4j/security/UsmUserEntry;->setUsmUser(Lorg/snmp4j/security/UsmUser;)V

    move-object v2, v7

    .line 248
    goto :goto_75

    .line 252
    :cond_94
    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUser;->getAuthenticationProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v3

    .line 253
    .local v3, authProtocolOID:Lorg/snmp4j/smi/OID;
    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUser;->getPrivacyProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v5

    .line 254
    .local v5, privProtocolOID:Lorg/snmp4j/smi/OID;
    if-eqz v3, :cond_df

    .line 256
    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUser;->isLocalized()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 257
    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUser;->getAuthenticationPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    .line 265
    .local v4, authKey:[B
    :goto_bc
    const/4 v6, 0x0

    .line 266
    .local v6, privKey:[B
    if-eqz v5, :cond_d5

    .line 267
    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUser;->isLocalized()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 268
    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUser;->getPrivacyPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v6

    .line 277
    :cond_d5
    :goto_d5
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/snmp4j/security/USM;->addLocalizedUser([BLorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;[BLorg/snmp4j/smi/OID;[B)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v7

    .end local v3           #authProtocolOID:Lorg/snmp4j/smi/OID;
    .end local v4           #authKey:[B
    .end local v5           #privProtocolOID:Lorg/snmp4j/smi/OID;
    .end local v6           #privKey:[B
    :cond_df
    move-object v2, v7

    .line 284
    goto :goto_75

    .line 261
    .restart local v3       #authProtocolOID:Lorg/snmp4j/smi/OID;
    .restart local v5       #privProtocolOID:Lorg/snmp4j/smi/OID;
    :cond_e1
    iget-object v0, p0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmUser;->getAuthenticationPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/snmp4j/security/SecurityProtocols;->passwordToKey(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;[B)[B

    move-result-object v4

    .restart local v4       #authKey:[B
    goto :goto_bc

    .line 271
    .restart local v6       #privKey:[B
    :cond_f4
    iget-object v0, p0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual {v7}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/security/UsmUser;->getPrivacyPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v2

    invoke-virtual {v0, v5, v3, v1, v2}, Lorg/snmp4j/security/SecurityProtocols;->passwordToKey(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;[B)[B

    move-result-object v6

    goto :goto_d5
.end method

.method public getUserTable()Lorg/snmp4j/security/UsmUserTable;
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    return-object v0
.end method

.method public isEngineDiscoveryEnabled()Z
    .registers 2

    .prologue
    .line 984
    iget-boolean v0, p0, Lorg/snmp4j/security/USM;->engineDiscoveryEnabled:Z

    return v0
.end method

.method public newSecurityParametersInstance()Lorg/snmp4j/security/SecurityParameters;
    .registers 2

    .prologue
    .line 147
    new-instance v0, Lorg/snmp4j/security/UsmSecurityParameters;

    invoke-direct {v0}, Lorg/snmp4j/security/UsmSecurityParameters;-><init>()V

    return-object v0
.end method

.method public newSecurityStateReference()Lorg/snmp4j/security/SecurityStateReference;
    .registers 2

    .prologue
    .line 151
    new-instance v0, Lorg/snmp4j/security/UsmSecurityStateReference;

    invoke-direct {v0}, Lorg/snmp4j/security/UsmSecurityStateReference;-><init>()V

    return-object v0
.end method

.method public processIncomingMsg(IILorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/security/SecurityModel;ILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/asn1/BEROutputStream;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/security/SecurityStateReference;Lorg/snmp4j/mp/StatusInformation;)I
    .registers 48
    .parameter "snmpVersion"
    .parameter "maxMessageSize"
    .parameter "securityParameters"
    .parameter "securityModel"
    .parameter "securityLevel"
    .parameter "wholeMsg"
    .parameter "securityEngineID"
    .parameter "securityName"
    .parameter "scopedPDU"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "securityStateReference"
    .parameter "statusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    move-object/from16 v33, p3

    check-cast v33, Lorg/snmp4j/security/UsmSecurityParameters;

    .local v33, usmSecurityParameters:Lorg/snmp4j/security/UsmSecurityParameters;
    move-object/from16 v34, p11

    .line 548
    check-cast v34, Lorg/snmp4j/security/UsmSecurityStateReference;

    .line 550
    .local v34, usmSecurityStateReference:Lorg/snmp4j/security/UsmSecurityStateReference;
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineID()[B

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 552
    invoke-static/range {p6 .. p6}, Lorg/snmp4j/security/USM;->buildMessageBuffer(Lorg/snmp4j/asn1/BERInputStream;)[B

    move-result-object v5

    .line 554
    .local v5, message:[B
    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/security/USM;->isEngineDiscoveryEnabled()Z

    move-result v8

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v8}, Lorg/snmp4j/security/UsmTimeTable;->checkEngineID(Lorg/snmp4j/smi/OctetString;Z)I

    move-result v4

    if-eqz v4, :cond_9a

    .line 559
    :cond_2b
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 560
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC3414 \u00a73.2.3 Unknown engine ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 563
    :cond_4f
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineID()[B

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 565
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 567
    if-eqz p12, :cond_97

    .line 568
    new-instance v18, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownEngineIDs:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 571
    .local v18, event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/USM;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 572
    new-instance v4, Lorg/snmp4j/smi/Integer32;

    move/from16 v0, p5

    invoke-direct {v4, v0}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 573
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    .line 576
    .end local v18           #event:Lorg/snmp4j/event/CounterEvent;
    :cond_97
    const/16 v31, 0x582

    .line 777
    :goto_99
    return v31

    .line 579
    :cond_9a
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 581
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getScopedPduPosition()I

    move-result v27

    .line 584
    .local v27, scopedPDUPosition:I
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-gtz v4, :cond_ba

    const/4 v4, 0x1

    move/from16 v0, p5

    if-le v0, v4, :cond_121

    .line 586
    :cond_ba
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/security/USM;->getSecurityName(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/smi/OctetString;

    move-result-object v30

    .line 588
    .local v30, secName:Lorg/snmp4j/smi/OctetString;
    if-nez v30, :cond_138

    .line 589
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 590
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC3414 \u00a73.2.4 Unknown security name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 593
    :cond_ec
    if-eqz p12, :cond_11d

    .line 594
    new-instance v18, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownUserNames:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 596
    .restart local v18       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/USM;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 597
    new-instance v4, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x1

    invoke-direct {v4, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 598
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    .line 601
    .end local v18           #event:Lorg/snmp4j/event/CounterEvent;
    :cond_11d
    const/16 v31, 0x57c

    goto/16 :goto_99

    .line 605
    .end local v30           #secName:Lorg/snmp4j/smi/OctetString;
    :cond_121
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_130

    .line 606
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v8, "Accepting zero length security name"

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 608
    :cond_130
    const/4 v4, 0x0

    new-array v4, v4, [B

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 611
    :cond_138
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-gtz v4, :cond_147

    const/4 v4, 0x1

    move/from16 v0, p5

    if-le v0, v4, :cond_487

    .line 613
    :cond_147
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lorg/snmp4j/security/USM;->getUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v32

    .line 614
    .local v32, user:Lorg/snmp4j/security/UsmUserEntry;
    if-nez v32, :cond_1ba

    .line 615
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_185

    .line 616
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC3414 \u00a73.2.4 Unknown security name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " for engine ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {p7 .. p7}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 620
    :cond_185
    new-instance v18, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownUserNames:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 622
    .restart local v18       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/USM;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 623
    if-eqz p12, :cond_1b6

    .line 624
    new-instance v4, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x1

    invoke-direct {v4, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 625
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    .line 628
    :cond_1b6
    const/16 v31, 0x57c

    goto/16 :goto_99

    .line 631
    .end local v18           #event:Lorg/snmp4j/event/CounterEvent;
    :cond_1ba
    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/security/UsmUserEntry;->getUserName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/snmp4j/security/UsmSecurityStateReference;->setUserName([B)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v8

    invoke-virtual {v8}, Lorg/snmp4j/security/UsmUser;->getAuthenticationProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/snmp4j/security/SecurityProtocols;->getAuthenticationProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/AuthenticationProtocol;

    move-result-object v3

    .line 636
    .local v3, auth:Lorg/snmp4j/security/AuthenticationProtocol;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/security/USM;->securityProtocols:Lorg/snmp4j/security/SecurityProtocols;

    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v8

    invoke-virtual {v8}, Lorg/snmp4j/security/UsmUser;->getPrivacyProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/snmp4j/security/SecurityProtocols;->getPrivacyProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/PrivacyProtocol;

    move-result-object v23

    .line 640
    .local v23, priv:Lorg/snmp4j/security/PrivacyProtocol;
    const/4 v4, 0x2

    move/from16 v0, p5

    if-lt v0, v4, :cond_1ee

    if-eqz v3, :cond_1f5

    :cond_1ee
    const/4 v4, 0x3

    move/from16 v0, p5

    if-lt v0, v4, :cond_24a

    if-nez v23, :cond_24a

    .line 642
    :cond_1f5
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_217

    .line 643
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC3414 \u00a73.2.5 - Unsupported security level: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 646
    :cond_217
    new-instance v18, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnsupportedSecLevels:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 648
    .restart local v18       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/USM;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 649
    new-instance v4, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x1

    invoke-direct {v4, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 650
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    .line 652
    const/16 v31, 0x57b

    goto/16 :goto_99

    .line 654
    .end local v18           #event:Lorg/snmp4j/event/CounterEvent;
    :cond_24a
    const/4 v4, 0x2

    move/from16 v0, p5

    if-lt v0, v4, :cond_473

    .line 655
    if-eqz p12, :cond_301

    .line 656
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthParametersPosition()I

    move-result v4

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getSecurityParametersPosition()I

    move-result v8

    add-int v14, v4, v8

    .line 659
    .local v14, authParamsPos:I
    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/security/UsmUserEntry;->getAuthenticationKey()[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v5

    new-instance v8, Lorg/snmp4j/security/ByteArrayWindow;

    const/16 v9, 0xc

    invoke-direct {v8, v5, v14, v9}, Lorg/snmp4j/security/ByteArrayWindow;-><init>([BII)V

    invoke-interface/range {v3 .. v8}, Lorg/snmp4j/security/AuthenticationProtocol;->isAuthentic([B[BIILorg/snmp4j/security/ByteArrayWindow;)Z

    move-result v15

    .line 664
    .local v15, authentic:Z
    if-nez v15, :cond_2c9

    .line 665
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_296

    .line 666
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC3414 \u00a73.2.6 Wrong digest -> authentication failure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthenticationParameters()Lorg/snmp4j/smi/OctetString;

    move-result-object v9

    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 670
    :cond_296
    new-instance v18, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->usmStatsWrongDigests:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 672
    .restart local v18       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/USM;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 673
    new-instance v4, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x1

    invoke-direct {v4, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 674
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    .line 676
    const/16 v31, 0x580

    goto/16 :goto_99

    .line 678
    .end local v18           #event:Lorg/snmp4j/event/CounterEvent;
    :cond_2c9
    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/security/UsmUserEntry;->getAuthenticationKey()[B

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/snmp4j/security/UsmSecurityStateReference;->setAuthenticationKey([B)V

    .line 679
    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/security/UsmUserEntry;->getPrivacyKey()[B

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/snmp4j/security/UsmSecurityStateReference;->setPrivacyKey([B)V

    .line 680
    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lorg/snmp4j/security/UsmSecurityStateReference;->setAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V

    .line 681
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmSecurityStateReference;->setPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    new-instance v8, Lorg/snmp4j/security/UsmTimeEntry;

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineBoots()I

    move-result v9

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineTime()I

    move-result v10

    move-object/from16 v0, p7

    invoke-direct {v8, v0, v9, v10}, Lorg/snmp4j/security/UsmTimeEntry;-><init>(Lorg/snmp4j/smi/OctetString;II)V

    invoke-virtual {v4, v8}, Lorg/snmp4j/security/UsmTimeTable;->checkTime(Lorg/snmp4j/security/UsmTimeEntry;)I

    move-result v31

    .line 687
    .local v31, status:I
    packed-switch v31, :pswitch_data_49c

    .line 719
    .end local v14           #authParamsPos:I
    .end local v15           #authentic:Z
    .end local v31           #status:I
    :cond_301
    const/4 v4, 0x3

    move/from16 v0, p5

    if-lt v0, v4, :cond_45f

    .line 720
    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getPrivacyParameters()Lorg/snmp4j/smi/OctetString;

    move-result-object v24

    .line 721
    .local v24, privParams:Lorg/snmp4j/smi/OctetString;
    new-instance v13, Lorg/snmp4j/security/DecryptParams;

    invoke-virtual/range {v24 .. v24}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual/range {v24 .. v24}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v9

    invoke-direct {v13, v4, v8, v9}, Lorg/snmp4j/security/DecryptParams;-><init>([BII)V

    .line 724
    .local v13, decryptParams:Lorg/snmp4j/security/DecryptParams;
    :try_start_318
    array-length v4, v5

    sub-int v26, v4, v27

    .line 725
    .local v26, scopedPDUHeaderLength:I
    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v5, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 727
    .local v16, bis:Ljava/nio/ByteBuffer;
    new-instance v25, Lorg/snmp4j/asn1/BERInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 728
    .local v25, scopedPDUHeader:Lorg/snmp4j/asn1/BERInputStream;
    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v20

    .line 729
    .local v20, headerStartingPosition:J
    new-instance v4, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v4}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v7

    .line 731
    .local v7, scopedPDULength:I
    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v8

    sub-long v8, v8, v20

    long-to-int v4, v8

    add-int v6, v27, v4

    .line 734
    .local v6, scopedPDUPayloadPosition:I
    invoke-virtual/range {v25 .. v25}, Lorg/snmp4j/asn1/BERInputStream;->close()V

    .line 735
    const/16 v25, 0x0

    .line 736
    invoke-virtual/range {v32 .. v32}, Lorg/snmp4j/security/UsmUserEntry;->getPrivacyKey()[B

    move-result-object v8

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineBoots()I

    move-result v4

    int-to-long v9, v4

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineTime()I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v4, v23

    invoke-interface/range {v4 .. v13}, Lorg/snmp4j/security/PrivacyProtocol;->decrypt([BII[BJJLorg/snmp4j/security/DecryptParams;)[B

    move-result-object v28

    .line 742
    .local v28, scopedPduBytes:[B
    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 743
    .local v17, buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;->setFilledBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_368} :catch_43e

    .line 771
    .end local v3           #auth:Lorg/snmp4j/security/AuthenticationProtocol;
    .end local v6           #scopedPDUPayloadPosition:I
    .end local v7           #scopedPDULength:I
    .end local v13           #decryptParams:Lorg/snmp4j/security/DecryptParams;
    .end local v16           #bis:Ljava/nio/ByteBuffer;
    .end local v20           #headerStartingPosition:J
    .end local v23           #priv:Lorg/snmp4j/security/PrivacyProtocol;
    .end local v24           #privParams:Lorg/snmp4j/smi/OctetString;
    .end local v25           #scopedPDUHeader:Lorg/snmp4j/asn1/BERInputStream;
    .end local v26           #scopedPDUHeaderLength:I
    .end local v28           #scopedPduBytes:[B
    .end local v32           #user:Lorg/snmp4j/security/UsmUserEntry;
    :goto_368
    move-object/from16 v0, v33

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERMaxLength(I)I

    move-result v22

    .line 773
    .local v22, maxSecParamsOverhead:I
    sub-int v4, p2, v22

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 776
    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/snmp4j/security/UsmSecurityStateReference;->setSecurityName([B)V

    .line 777
    const/16 v31, 0x0

    goto/16 :goto_99

    .line 689
    .end local v17           #buf:Ljava/nio/ByteBuffer;
    .end local v22           #maxSecParamsOverhead:I
    .restart local v3       #auth:Lorg/snmp4j/security/AuthenticationProtocol;
    .restart local v14       #authParamsPos:I
    .restart local v15       #authentic:Z
    .restart local v23       #priv:Lorg/snmp4j/security/PrivacyProtocol;
    .restart local v31       #status:I
    .restart local v32       #user:Lorg/snmp4j/security/UsmUserEntry;
    :pswitch_384
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC3414 \u00a73.2.7.a Not in time window; engineID=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\', engineBoots="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineBoots()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", engineTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {v33 .. v33}, Lorg/snmp4j/security/UsmSecurityParameters;->getAuthoritativeEngineTime()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 695
    new-instance v18, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->usmStatsNotInTimeWindows:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 697
    .restart local v18       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/USM;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 698
    new-instance v4, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x2

    invoke-direct {v4, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 699
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    goto/16 :goto_99

    .line 704
    .end local v18           #event:Lorg/snmp4j/event/CounterEvent;
    :pswitch_3eb
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_40d

    .line 705
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC3414 \u00a73.2.7.b - Unkown engine ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 708
    :cond_40d
    new-instance v18, Lorg/snmp4j/event/CounterEvent;

    sget-object v4, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownEngineIDs:Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/snmp4j/event/CounterEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V

    .line 710
    .restart local v18       #event:Lorg/snmp4j/event/CounterEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/USM;->fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 711
    new-instance v4, Lorg/snmp4j/smi/Integer32;

    const/4 v8, 0x2

    invoke-direct {v4, v8}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V

    .line 712
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/event/CounterEvent;->getCurrentValue()Lorg/snmp4j/smi/Variable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Lorg/snmp4j/mp/StatusInformation;->setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V

    goto/16 :goto_99

    .line 745
    .end local v14           #authParamsPos:I
    .end local v15           #authentic:Z
    .end local v18           #event:Lorg/snmp4j/event/CounterEvent;
    .end local v31           #status:I
    .restart local v13       #decryptParams:Lorg/snmp4j/security/DecryptParams;
    .restart local v24       #privParams:Lorg/snmp4j/smi/OctetString;
    :catch_43e
    move-exception v19

    .line 746
    .local v19, ex:Ljava/lang/Exception;
    sget-object v4, Lorg/snmp4j/security/USM;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "RFC 3414 \u00a73.2.8 Decryption error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 747
    const/16 v31, 0x57e

    goto/16 :goto_99

    .line 751
    .end local v13           #decryptParams:Lorg/snmp4j/security/DecryptParams;
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v24           #privParams:Lorg/snmp4j/smi/OctetString;
    :cond_45f
    array-length v4, v5

    sub-int v29, v4, v27

    .line 752
    .local v29, scopedPduLength:I
    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v5, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 754
    .restart local v17       #buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;->setFilledBuffer(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_368

    .line 758
    .end local v17           #buf:Ljava/nio/ByteBuffer;
    .end local v29           #scopedPduLength:I
    :cond_473
    array-length v4, v5

    sub-int v29, v4, v27

    .line 759
    .restart local v29       #scopedPduLength:I
    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v5, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 761
    .restart local v17       #buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;->setFilledBuffer(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_368

    .line 765
    .end local v3           #auth:Lorg/snmp4j/security/AuthenticationProtocol;
    .end local v17           #buf:Ljava/nio/ByteBuffer;
    .end local v23           #priv:Lorg/snmp4j/security/PrivacyProtocol;
    .end local v29           #scopedPduLength:I
    .end local v32           #user:Lorg/snmp4j/security/UsmUserEntry;
    :cond_487
    array-length v4, v5

    sub-int v29, v4, v27

    .line 766
    .restart local v29       #scopedPduLength:I
    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v5, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 768
    .restart local v17       #buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;->setFilledBuffer(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_368

    .line 687
    nop

    :pswitch_data_49c
    .packed-switch 0x582
        :pswitch_3eb
        :pswitch_384
    .end packed-switch
.end method

.method public removeAllUsers()V
    .registers 4

    .prologue
    .line 942
    iget-object v0, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUserTable;->clear()V

    .line 943
    new-instance v0, Lorg/snmp4j/event/UsmUserEvent;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/snmp4j/event/UsmUserEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/security/UsmUserEntry;I)V

    invoke-virtual {p0, v0}, Lorg/snmp4j/security/USM;->fireUsmUserChange(Lorg/snmp4j/event/UsmUserEvent;)V

    .line 944
    return-void
.end method

.method public removeEngineTime(Lorg/snmp4j/smi/OctetString;)V
    .registers 3
    .parameter "engineID"

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    invoke-virtual {v0, p1}, Lorg/snmp4j/security/UsmTimeTable;->removeEntry(Lorg/snmp4j/smi/OctetString;)V

    .line 1038
    return-void
.end method

.method public removeUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUser;
    .registers 6
    .parameter "engineID"
    .parameter "userName"

    .prologue
    .line 930
    iget-object v1, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v1, p1, p2}, Lorg/snmp4j/security/UsmUserTable;->removeUser(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v0

    .line 931
    .local v0, entry:Lorg/snmp4j/security/UsmUserEntry;
    if-eqz v0, :cond_16

    .line 932
    new-instance v1, Lorg/snmp4j/event/UsmUserEvent;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lorg/snmp4j/event/UsmUserEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/security/UsmUserEntry;I)V

    invoke-virtual {p0, v1}, Lorg/snmp4j/security/USM;->fireUsmUserChange(Lorg/snmp4j/event/UsmUserEvent;)V

    .line 933
    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v1

    .line 935
    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public declared-synchronized removeUsmUserListener(Lorg/snmp4j/event/UsmUserListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 1003
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1004
    iget-object v1, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 1005
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1006
    iput-object v0, p0, Lorg/snmp4j/security/USM;->usmUserListeners:Ljava/util/Vector;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 1008
    .end local v0           #v:Ljava/util/Vector;
    :cond_1a
    monitor-exit p0

    return-void

    .line 1003
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setCounterSupport(Lorg/snmp4j/mp/CounterSupport;)V
    .registers 3
    .parameter "counterSupport"

    .prologue
    .line 1084
    if-nez p1, :cond_8

    .line 1085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1087
    :cond_8
    iput-object p1, p0, Lorg/snmp4j/security/USM;->counterSupport:Lorg/snmp4j/mp/CounterSupport;

    .line 1088
    return-void
.end method

.method public setEngineBoots(I)V
    .registers 3
    .parameter "engineBoots"

    .prologue
    .line 118
    iget-object v0, p0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    invoke-virtual {v0, p1}, Lorg/snmp4j/security/UsmTimeTable;->setEngineBoots(I)V

    .line 119
    return-void
.end method

.method public setEngineDiscoveryEnabled(Z)V
    .registers 2
    .parameter "engineDiscoveryEnabled"

    .prologue
    .line 994
    iput-boolean p1, p0, Lorg/snmp4j/security/USM;->engineDiscoveryEnabled:Z

    .line 995
    return-void
.end method

.method public setLocalEngine(Lorg/snmp4j/smi/OctetString;II)V
    .registers 6
    .parameter "localEngineID"
    .parameter "engineBoots"
    .parameter "engineTime"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/snmp4j/security/USM;->localEngineID:Lorg/snmp4j/smi/OctetString;

    .line 98
    iget-object v0, p0, Lorg/snmp4j/security/USM;->timeTable:Lorg/snmp4j/security/UsmTimeTable;

    new-instance v1, Lorg/snmp4j/security/UsmTimeEntry;

    invoke-direct {v1, p1, p2, p3}, Lorg/snmp4j/security/UsmTimeEntry;-><init>(Lorg/snmp4j/smi/OctetString;II)V

    invoke-virtual {v0, v1}, Lorg/snmp4j/security/UsmTimeTable;->setLocalTime(Lorg/snmp4j/security/UsmTimeEntry;)V

    .line 100
    return-void
.end method

.method public setUsers([Lorg/snmp4j/security/UsmUser;)V
    .registers 7
    .parameter "users"

    .prologue
    .line 877
    if-eqz p1, :cond_5

    array-length v3, p1

    if-nez v3, :cond_b

    .line 878
    :cond_5
    iget-object v3, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v3}, Lorg/snmp4j/security/UsmUserTable;->clear()V

    .line 890
    :goto_a
    return-void

    .line 881
    :cond_b
    new-instance v2, Ljava/util/Vector;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 882
    .local v2, v:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v3, p1

    if-ge v1, v3, :cond_2e

    .line 883
    new-instance v0, Lorg/snmp4j/security/UsmUserEntry;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/snmp4j/security/UsmUser;->getSecurityName()Lorg/snmp4j/smi/OctetString;

    move-result-object v4

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/snmp4j/security/UsmUser;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/security/UsmUser;

    invoke-direct {v0, v4, v3}, Lorg/snmp4j/security/UsmUserEntry;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V

    .line 886
    .local v0, entry:Lorg/snmp4j/security/UsmUserEntry;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 888
    .end local v0           #entry:Lorg/snmp4j/security/UsmUserEntry;
    :cond_2e
    iget-object v3, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v3, v2}, Lorg/snmp4j/security/UsmUserTable;->setUsers(Ljava/util/Collection;)V

    goto :goto_a
.end method

.method public updateUser(Lorg/snmp4j/security/UsmUserEntry;)V
    .registers 5
    .parameter "entry"

    .prologue
    .line 861
    iget-object v1, p0, Lorg/snmp4j/security/USM;->userTable:Lorg/snmp4j/security/UsmUserTable;

    invoke-virtual {v1, p1}, Lorg/snmp4j/security/UsmUserTable;->addUser(Lorg/snmp4j/security/UsmUserEntry;)Lorg/snmp4j/security/UsmUserEntry;

    move-result-object v0

    .line 862
    .local v0, oldEntry:Lorg/snmp4j/security/UsmUserEntry;
    new-instance v2, Lorg/snmp4j/event/UsmUserEvent;

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :goto_b
    invoke-direct {v2, p0, p1, v1}, Lorg/snmp4j/event/UsmUserEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/security/UsmUserEntry;I)V

    invoke-virtual {p0, v2}, Lorg/snmp4j/security/USM;->fireUsmUserChange(Lorg/snmp4j/event/UsmUserEvent;)V

    .line 866
    return-void

    .line 862
    :cond_12
    const/4 v1, 0x3

    goto :goto_b
.end method
