.class public abstract Lorg/snmp4j/security/AuthGeneric;
.super Ljava/lang/Object;
.source "AuthGeneric.java"

# interfaces
.implements Lorg/snmp4j/security/AuthenticationProtocol;


# static fields
.field static class$org$snmp4j$security$AuthGeneric:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private digestLength:I

.field private protoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lorg/snmp4j/security/AuthGeneric;->class$org$snmp4j$security$AuthGeneric:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.security.AuthGeneric"

    invoke-static {v0}, Lorg/snmp4j/security/AuthGeneric;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/AuthGeneric;->class$org$snmp4j$security$AuthGeneric:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/security/AuthGeneric;->class$org$snmp4j$security$AuthGeneric:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "protoName"
    .parameter "digestLength"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    .line 44
    iput p2, p0, Lorg/snmp4j/security/AuthGeneric;->digestLength:I

    .line 45
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
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


# virtual methods
.method public authenticate([B[BIILorg/snmp4j/security/ByteArrayWindow;)Z
    .registers 14
    .parameter "authenticationKey"
    .parameter "message"
    .parameter "messageOffset"
    .parameter "messageLength"
    .parameter "digest"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0x40

    .line 74
    invoke-virtual {p0}, Lorg/snmp4j/security/AuthGeneric;->getDigestObject()Ljava/security/MessageDigest;

    move-result-object v3

    .line 77
    .local v3, md:Ljava/security/MessageDigest;
    new-array v1, v6, [B

    .line 78
    .local v1, k_ipad:[B
    new-array v2, v6, [B

    .line 81
    .local v2, k_opad:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v7, :cond_16

    .line 82
    const/4 v5, 0x0

    invoke-virtual {p5, v0, v5}, Lorg/snmp4j/security/ByteArrayWindow;->set(IB)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 96
    :cond_16
    const/4 v0, 0x0

    :goto_17
    array-length v5, p1

    if-ge v0, v5, :cond_2b

    .line 97
    aget-byte v5, p1, v0

    xor-int/lit8 v5, v5, 0x36

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 98
    aget-byte v5, p1, v0

    xor-int/lit8 v5, v5, 0x5c

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 100
    :cond_2b
    array-length v0, p1

    :goto_2c
    if-ge v0, v6, :cond_39

    .line 101
    const/16 v5, 0x36

    aput-byte v5, v1, v0

    .line 102
    const/16 v5, 0x5c

    aput-byte v5, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 106
    :cond_39
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 107
    invoke-virtual {v3, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    .line 108
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 110
    .local v4, newDigest:[B
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 111
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 112
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 116
    const/4 v0, 0x0

    :goto_51
    if-ge v0, v7, :cond_5b

    .line 117
    aget-byte v5, v4, v0

    invoke-virtual {p5, v0, v5}, Lorg/snmp4j/security/ByteArrayWindow;->set(IB)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 119
    :cond_5b
    const/4 v5, 0x1

    return v5
.end method

.method public changeDelta([B[B[B)[B
    .registers 18
    .parameter "oldKey"
    .parameter "newKey"
    .parameter "random"

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/snmp4j/security/AuthGeneric;->getDigestObject()Ljava/security/MessageDigest;

    move-result-object v3

    .line 152
    .local v3, hash:Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    .line 154
    .local v2, digestLength:I
    sget-object v10, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v10}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_89

    .line 155
    sget-object v10, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "oldKey: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v12, p1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v12}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 157
    sget-object v10, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "newKey: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v12}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 159
    sget-object v10, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "random: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v12}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 162
    :cond_89
    array-length v10, p1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v11

    div-int v4, v10, v11

    .line 164
    .local v4, iterations:I
    new-instance v9, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v9, p1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 165
    .local v9, tmp:Lorg/snmp4j/smi/OctetString;
    new-instance v1, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v1}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 166
    .local v1, delta:Lorg/snmp4j/smi/OctetString;
    const/4 v6, 0x0

    .local v6, k:I
    :goto_9d
    if-ge v6, v4, :cond_d1

    .line 167
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/snmp4j/smi/OctetString;->append([B)V

    .line 168
    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 170
    new-array v10, v2, [B

    invoke-virtual {v1, v10}, Lorg/snmp4j/smi/OctetString;->append([B)V

    .line 171
    const/4 v8, 0x0

    .local v8, kk:I
    :goto_b8
    if-ge v8, v2, :cond_ce

    .line 172
    mul-int v10, v6, v2

    add-int/2addr v10, v8

    invoke-virtual {v9, v8}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v11

    mul-int v12, v6, v2

    add-int/2addr v12, v8

    aget-byte v12, p2, v12

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {v1, v10, v11}, Lorg/snmp4j/smi/OctetString;->set(IB)V

    .line 171
    add-int/lit8 v8, v8, 0x1

    goto :goto_b8

    .line 166
    :cond_ce
    add-int/lit8 v6, v6, 0x1

    goto :goto_9d

    .line 177
    .end local v8           #kk:I
    :cond_d1
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/snmp4j/smi/OctetString;->append([B)V

    .line 178
    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 179
    new-instance v9, Lorg/snmp4j/smi/OctetString;

    .end local v9           #tmp:Lorg/snmp4j/smi/OctetString;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    const/4 v11, 0x0

    array-length v12, p1

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-direct {v9, v10, v11, v12}, Lorg/snmp4j/smi/OctetString;-><init>([BII)V

    .line 180
    .restart local v9       #tmp:Lorg/snmp4j/smi/OctetString;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_ee
    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v10

    if-ge v5, v10, :cond_105

    .line 181
    invoke-virtual {v9, v5}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v10

    mul-int v11, v4, v2

    add-int/2addr v11, v5

    aget-byte v11, p2, v11

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-virtual {v9, v5, v10}, Lorg/snmp4j/smi/OctetString;->set(IB)V

    .line 180
    add-int/lit8 v5, v5, 0x1

    goto :goto_ee

    .line 183
    :cond_105
    move-object/from16 v0, p3

    array-length v10, v0

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-array v7, v10, [B

    .line 184
    .local v7, keyChange:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    move-object/from16 v0, p3

    invoke-static {v0, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v13

    invoke-static {v10, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v9}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v13

    invoke-static {v10, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    sget-object v10, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v10}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_170

    .line 191
    sget-object v10, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "keyChange:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v12, v7}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v12}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 194
    :cond_170
    return-object v7
.end method

.method public getDigestLength()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lorg/snmp4j/security/AuthGeneric;->digestLength:I

    return v0
.end method

.method protected getDigestObject()Ljava/security/MessageDigest;
    .registers 6

    .prologue
    .line 60
    :try_start_0
    iget-object v2, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 66
    .local v1, md:Ljava/security/MessageDigest;
    return-object v1

    .line 62
    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_7
    move-exception v0

    .line 63
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " not supported in this VM."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hash([B)[B
    .registers 4
    .parameter "data"

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/snmp4j/security/AuthGeneric;->getDigestObject()Ljava/security/MessageDigest;

    move-result-object v0

    .line 242
    .local v0, md:Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 243
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public hash([BII)[B
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/snmp4j/security/AuthGeneric;->getDigestObject()Ljava/security/MessageDigest;

    move-result-object v0

    .line 248
    .local v0, md:Ljava/security/MessageDigest;
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 249
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public isAuthentic([B[BIILorg/snmp4j/security/ByteArrayWindow;)Z
    .registers 12
    .parameter "authenticationKey"
    .parameter "message"
    .parameter "messageOffset"
    .parameter "messageLength"
    .parameter "digest"

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xc

    .line 128
    new-instance v0, Lorg/snmp4j/security/ByteArrayWindow;

    new-array v2, v5, [B

    invoke-direct {v0, v2, v1, v5}, Lorg/snmp4j/security/ByteArrayWindow;-><init>([BII)V

    .line 131
    .local v0, origDigest:Lorg/snmp4j/security/ByteArrayWindow;
    invoke-virtual {p5}, Lorg/snmp4j/security/ByteArrayWindow;->getValue()[B

    move-result-object v2

    invoke-virtual {p5}, Lorg/snmp4j/security/ByteArrayWindow;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lorg/snmp4j/security/ByteArrayWindow;->getValue()[B

    move-result-object v4

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-virtual/range {p0 .. p5}, Lorg/snmp4j/security/AuthGeneric;->authenticate([B[BIILorg/snmp4j/security/ByteArrayWindow;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 140
    :goto_1f
    return v1

    :cond_20
    invoke-virtual {p5, v0, v5}, Lorg/snmp4j/security/ByteArrayWindow;->equals(Lorg/snmp4j/security/ByteArrayWindow;I)Z

    move-result v1

    goto :goto_1f
.end method

.method public passwordToKey(Lorg/snmp4j/smi/OctetString;[B)[B
    .registers 14
    .parameter "passwordString"
    .parameter "engineID"

    .prologue
    const/16 v9, 0x40

    .line 199
    invoke-virtual {p0}, Lorg/snmp4j/security/AuthGeneric;->getDigestObject()Ljava/security/MessageDigest;

    move-result-object v4

    .line 202
    .local v4, md:Ljava/security/MessageDigest;
    new-array v0, v9, [B

    .line 203
    .local v0, buf:[B
    const/4 v6, 0x0

    .line 204
    .local v6, password_index:I
    const/4 v1, 0x0

    .line 205
    .local v1, count:I
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v5

    .line 208
    .local v5, password:[B
    :goto_e
    const/high16 v8, 0x10

    if-ge v1, v8, :cond_2a

    .line 209
    const/4 v3, 0x0

    .local v3, i:I
    move v7, v6

    .end local v6           #password_index:I
    .local v7, password_index:I
    :goto_14
    if-ge v3, v9, :cond_23

    .line 212
    add-int/lit8 v6, v7, 0x1

    .end local v7           #password_index:I
    .restart local v6       #password_index:I
    array-length v8, v5

    rem-int v8, v7, v8

    aget-byte v8, v5, v8

    aput-byte v8, v0, v3

    .line 209
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6           #password_index:I
    .restart local v7       #password_index:I
    goto :goto_14

    .line 214
    :cond_23
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 215
    add-int/lit8 v1, v1, 0x40

    move v6, v7

    .end local v7           #password_index:I
    .restart local v6       #password_index:I
    goto :goto_e

    .line 217
    .end local v3           #i:I
    :cond_2a
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 218
    .local v2, digest:[B
    sget-object v8, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 219
    sget-object v8, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "First digest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    new-instance v10, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v10, v2}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v10}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 227
    :cond_5d
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 228
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 229
    invoke-virtual {v4, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 230
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 231
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 232
    sget-object v8, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 233
    sget-object v8, Lorg/snmp4j/security/AuthGeneric;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lorg/snmp4j/security/AuthGeneric;->protoName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "localized key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    new-instance v10, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v10, v2}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v10}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 237
    :cond_9c
    return-object v2
.end method
