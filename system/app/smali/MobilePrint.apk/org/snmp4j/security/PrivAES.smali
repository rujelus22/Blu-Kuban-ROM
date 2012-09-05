.class public abstract Lorg/snmp4j/security/PrivAES;
.super Ljava/lang/Object;
.source "PrivAES.java"

# interfaces
.implements Lorg/snmp4j/security/PrivacyProtocol;


# static fields
.field private static final DECRYPT_PARAMS_LENGTH:I = 0x8

.field static class$org$snmp4j$security$PrivAES:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private keyBytes:I

.field protected salt:Lorg/snmp4j/security/Salt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lorg/snmp4j/security/PrivAES;->class$org$snmp4j$security$PrivAES:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.security.PrivAES"

    invoke-static {v0}, Lorg/snmp4j/security/PrivAES;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/PrivAES;->class$org$snmp4j$security$PrivAES:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/security/PrivAES;->class$org$snmp4j$security$PrivAES:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "keyBytes"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x10

    if-eq p1, v0, :cond_30

    const/16 v0, 0x18

    if-eq p1, v0, :cond_30

    const/16 v0, 0x20

    if-eq p1, v0, :cond_30

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Only 128, 192 and 256 bit AES is allowed. Requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_30
    iput p1, p0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    .line 64
    invoke-static {}, Lorg/snmp4j/security/Salt;->getInstance()Lorg/snmp4j/security/Salt;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/security/PrivAES;->salt:Lorg/snmp4j/security/Salt;

    .line 65
    return-void
.end method

.method public static asHex([B)Ljava/lang/String;
    .registers 2
    .parameter "buf"

    .prologue
    .line 207
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0, p0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
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
.method public decrypt([BII[BJJLorg/snmp4j/security/DecryptParams;)[B
    .registers 23
    .parameter "cryptedData"
    .parameter "offset"
    .parameter "length"
    .parameter "decryptionKey"
    .parameter "engineBoots"
    .parameter "engineTime"
    .parameter "decryptParams"

    .prologue
    .line 141
    const/16 v8, 0x10

    new-array v5, v8, [B

    .line 143
    .local v5, initVect:[B
    move-object/from16 v0, p4

    array-length v8, v0

    iget v9, p0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    if-ge v8, v9, :cond_39

    .line 144
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Needed key length is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget v10, p0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ". Got only "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object/from16 v0, p4

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 151
    :cond_39
    const/4 v8, 0x0

    const/16 v9, 0x18

    shr-long v9, p5, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 152
    const/4 v8, 0x1

    const/16 v9, 0x10

    shr-long v9, p5, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 153
    const/4 v8, 0x2

    const/16 v9, 0x8

    shr-long v9, p5, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 154
    const/4 v8, 0x3

    const-wide/16 v9, 0xff

    and-long v9, v9, p5

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 155
    const/4 v8, 0x4

    const/16 v9, 0x18

    shr-long v9, p7, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 156
    const/4 v8, 0x5

    const/16 v9, 0x10

    shr-long v9, p7, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 157
    const/4 v8, 0x6

    const/16 v9, 0x8

    shr-long v9, p7, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 158
    const/4 v8, 0x7

    const-wide/16 v9, 0xff

    and-long v9, v9, p7

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 159
    const/4 v4, 0x0

    .local v4, i:I
    :goto_94
    const/16 v8, 0x8

    if-ge v4, v8, :cond_aa

    .line 160
    add-int/lit8 v8, v4, 0x8

    move-object/from16 v0, p9

    iget-object v9, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    move-object/from16 v0, p9

    iget v10, v0, Lorg/snmp4j/security/DecryptParams;->offset:I

    add-int/2addr v10, v4

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 163
    :cond_aa
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 164
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "initVect is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v5}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 167
    :cond_ce
    const/4 v2, 0x0

    .line 170
    .local v2, decryptedData:[B
    :try_start_cf
    const-string v8, "AES/CFB/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 171
    .local v1, alg:Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v8, 0x0

    iget v9, p0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    const-string v10, "AES"

    move-object/from16 v0, p4

    invoke-direct {v7, v0, v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 173
    .local v7, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 174
    .local v6, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v1, v8, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 175
    move/from16 v0, p3

    invoke-virtual {v1, p1, p2, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 177
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_16c

    .line 178
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "aes decrypt: Data to decrypt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {p1}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 180
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "aes decrypt: used key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 182
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "aes decrypt: used privacy_params "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object/from16 v0, p9

    iget-object v10, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    invoke-static {v10}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 185
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "aes decrypt: decrypted Data  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v2}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_16c} :catch_16d

    .line 193
    .end local v1           #alg:Ljavax/crypto/Cipher;
    .end local v6           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v7           #key:Ljavax/crypto/spec/SecretKeySpec;
    :cond_16c
    :goto_16c
    return-object v2

    .line 189
    :catch_16d
    move-exception v3

    .line 190
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Decrypt Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_16c
.end method

.method public encrypt([BII[BJJLorg/snmp4j/security/DecryptParams;)[B
    .registers 28
    .parameter "unencryptedData"
    .parameter "offset"
    .parameter "length"
    .parameter "encryptionKey"
    .parameter "engineBoots"
    .parameter "engineTime"
    .parameter "decryptParams"

    .prologue
    .line 71
    const/16 v13, 0x10

    new-array v7, v13, [B

    .line 72
    .local v7, initVect:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/snmp4j/security/PrivAES;->salt:Lorg/snmp4j/security/Salt;

    invoke-virtual {v13}, Lorg/snmp4j/security/Salt;->getNext()J

    move-result-wide v11

    .line 74
    .local v11, my_salt:J
    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    if-ge v13, v14, :cond_45

    .line 75
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Needed key length is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ". Got only "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p4

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 81
    :cond_45
    move-object/from16 v0, p9

    iget-object v13, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    if-eqz v13, :cond_53

    move-object/from16 v0, p9

    iget v13, v0, Lorg/snmp4j/security/DecryptParams;->length:I

    const/16 v14, 0x8

    if-ge v13, v14, :cond_5b

    .line 83
    :cond_53
    const/16 v13, 0x8

    new-array v13, v13, [B

    move-object/from16 v0, p9

    iput-object v13, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    .line 85
    :cond_5b
    const/16 v13, 0x8

    move-object/from16 v0, p9

    iput v13, v0, Lorg/snmp4j/security/DecryptParams;->length:I

    .line 86
    const/4 v13, 0x0

    move-object/from16 v0, p9

    iput v13, v0, Lorg/snmp4j/security/DecryptParams;->offset:I

    .line 89
    const/4 v13, 0x0

    const/16 v14, 0x18

    shr-long v14, p5, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 90
    const/4 v13, 0x1

    const/16 v14, 0x10

    shr-long v14, p5, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 91
    const/4 v13, 0x2

    const/16 v14, 0x8

    shr-long v14, p5, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 92
    const/4 v13, 0x3

    const-wide/16 v14, 0xff

    and-long v14, v14, p5

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 93
    const/4 v13, 0x4

    const/16 v14, 0x18

    shr-long v14, p7, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 94
    const/4 v13, 0x5

    const/16 v14, 0x10

    shr-long v14, p7, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 95
    const/4 v13, 0x6

    const/16 v14, 0x8

    shr-long v14, p7, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 96
    const/4 v13, 0x7

    const-wide/16 v14, 0xff

    and-long v14, v14, p7

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    .line 97
    const/16 v6, 0x38

    .local v6, i:I
    const/16 v9, 0x8

    .local v9, j:I
    :goto_ca
    if-ltz v6, :cond_da

    .line 98
    shr-long v13, v11, v6

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 97
    add-int/lit8 v6, v6, -0x8

    add-int/lit8 v9, v9, 0x1

    goto :goto_ca

    .line 100
    :cond_da
    const/4 v6, 0x0

    :goto_db
    const/16 v13, 0x8

    if-ge v6, v13, :cond_ec

    .line 101
    move-object/from16 v0, p9

    iget-object v13, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    add-int/lit8 v14, v6, 0x8

    aget-byte v14, v7, v14

    aput-byte v14, v13, v6

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_db

    .line 103
    :cond_ec
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v13}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_110

    .line 104
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "initVect is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static {v7}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 108
    :cond_110
    const/4 v5, 0x0

    .line 111
    .local v5, encryptedData:[B
    :try_start_111
    const-string v13, "AES/CFB/NoPadding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 112
    .local v3, alg:Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    const-string v15, "AES"

    move-object/from16 v0, p4

    invoke-direct {v10, v0, v13, v14, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 114
    .local v10, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 115
    .local v8, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v13, 0x1

    invoke-virtual {v3, v13, v10, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 116
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 118
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v13}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1b4

    .line 119
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "aes encrypt: Data to encrypt "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 121
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "aes encrypt: used key "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static/range {p4 .. p4}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 123
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "aes encrypt: created privacy_params "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p9

    iget-object v15, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    invoke-static {v15}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 126
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "aes encrypt: encrypted Data  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static {v5}, Lorg/snmp4j/security/PrivAES;->asHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_1b4} :catch_1b5

    .line 134
    .end local v3           #alg:Ljavax/crypto/Cipher;
    .end local v8           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v10           #key:Ljavax/crypto/spec/SecretKeySpec;
    :cond_1b4
    :goto_1b4
    return-object v5

    .line 130
    :catch_1b5
    move-exception v4

    .line 131
    .local v4, e:Ljava/lang/Exception;
    sget-object v13, Lorg/snmp4j/security/PrivAES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Encrypt Exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_1b4
.end method

.method public extendShortKey([BLorg/snmp4j/smi/OctetString;[BLorg/snmp4j/security/AuthenticationProtocol;)[B
    .registers 12
    .parameter "shortKey"
    .parameter "password"
    .parameter "engineID"
    .parameter "authProtocol"

    .prologue
    const/4 v6, 0x0

    .line 228
    invoke-virtual {p0}, Lorg/snmp4j/security/PrivAES;->getMinKeyLength()I

    move-result v5

    new-array v1, v5, [B

    .line 229
    .local v1, extKey:[B
    array-length v4, p1

    .line 230
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v4, :cond_23

    .line 231
    aget-byte v5, p1, v3

    aput-byte v5, v1, v3

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 241
    .local v2, hash:[B
    :cond_12
    array-length v5, v1

    sub-int v0, v5, v4

    .line 242
    .local v0, bytesToCopy:I
    invoke-interface {p4}, Lorg/snmp4j/security/AuthenticationProtocol;->getDigestLength()I

    move-result v5

    if-le v0, v5, :cond_1f

    .line 243
    invoke-interface {p4}, Lorg/snmp4j/security/AuthenticationProtocol;->getDigestLength()I

    move-result v0

    .line 245
    :cond_1f
    invoke-static {v2, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    add-int/2addr v4, v0

    .line 234
    .end local v0           #bytesToCopy:I
    .end local v2           #hash:[B
    :cond_23
    array-length v5, v1

    if-ge v4, v5, :cond_2d

    .line 236
    invoke-interface {p4, v1, v6, v4}, Lorg/snmp4j/security/AuthenticationProtocol;->hash([BII)[B

    move-result-object v2

    .line 238
    .restart local v2       #hash:[B
    if-nez v2, :cond_12

    .line 239
    const/4 v1, 0x0

    .line 252
    .end local v1           #extKey:[B
    .end local v2           #hash:[B
    :cond_2d
    return-object v1
.end method

.method public getDecryptParamsLength()I
    .registers 2

    .prologue
    .line 219
    const/16 v0, 0x8

    return v0
.end method

.method public getEncryptedLength(I)I
    .registers 2
    .parameter "scopedPDULength"

    .prologue
    .line 197
    return p1
.end method

.method public getMaxKeyLength()I
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/snmp4j/security/PrivAES;->getMinKeyLength()I

    move-result v0

    return v0
.end method

.method public getMinKeyLength()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lorg/snmp4j/security/PrivAES;->keyBytes:I

    return v0
.end method
