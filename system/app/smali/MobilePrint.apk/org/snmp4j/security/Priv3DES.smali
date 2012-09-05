.class public Lorg/snmp4j/security/Priv3DES;
.super Ljava/lang/Object;
.source "Priv3DES.java"

# interfaces
.implements Lorg/snmp4j/security/PrivacyProtocol;


# static fields
.field private static final DECRYPT_PARAMS_LENGTH:I = 0x8

.field public static final ID:Lorg/snmp4j/smi/OID;

.field static class$org$snmp4j$security$Priv3DES:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field protected salt:Lorg/snmp4j/security/Salt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.6.3.10.1.2.3"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/snmp4j/security/Priv3DES;->ID:Lorg/snmp4j/smi/OID;

    .line 52
    sget-object v0, Lorg/snmp4j/security/Priv3DES;->class$org$snmp4j$security$Priv3DES:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-string v0, "org.snmp4j.security.Priv3DES"

    invoke-static {v0}, Lorg/snmp4j/security/Priv3DES;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/Priv3DES;->class$org$snmp4j$security$Priv3DES:Ljava/lang/Class;

    :goto_15
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_1c
    sget-object v0, Lorg/snmp4j/security/Priv3DES;->class$org$snmp4j$security$Priv3DES:Ljava/lang/Class;

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lorg/snmp4j/security/Salt;->getInstance()Lorg/snmp4j/security/Salt;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/security/Priv3DES;->salt:Lorg/snmp4j/security/Salt;

    .line 57
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 52
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
    .registers 21
    .parameter "cryptedData"
    .parameter "offset"
    .parameter "length"
    .parameter "decryptionKey"
    .parameter "engineBoots"
    .parameter "engineTime"
    .parameter "decryptParams"

    .prologue
    .line 150
    rem-int/lit8 v8, p3, 0x8

    if-nez v8, :cond_10

    const/16 v8, 0x8

    if-lt p3, v8, :cond_10

    move-object/from16 v0, p9

    iget v8, v0, Lorg/snmp4j/security/DecryptParams;->length:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_43

    .line 153
    :cond_10
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Length ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ") is not multiple of 8 or decrypt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "params has not length 8 ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object/from16 v0, p9

    iget v10, v0, Lorg/snmp4j/security/DecryptParams;->length:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 158
    :cond_43
    array-length v8, p4

    const/16 v9, 0x20

    if-ge v8, v9, :cond_87

    .line 159
    sget-object v8, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Wrong Key length: need at least 32 bytes, is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    array-length v10, p4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " bytes."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 162
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "decryptionKey has illegal length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    array-length v10, p4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " (should be at least 32)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 167
    :cond_87
    const/16 v8, 0x8

    new-array v5, v8, [B

    .line 170
    .local v5, iv:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8c
    const/16 v8, 0x8

    if-ge v4, v8, :cond_a1

    .line 171
    add-int/lit8 v8, v4, 0x18

    aget-byte v8, p4, v8

    move-object/from16 v0, p9

    iget-object v9, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    aget-byte v9, v9, v4

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 174
    :cond_a1
    const/4 v2, 0x0

    .line 177
    .local v2, decryptedData:[B
    :try_start_a2
    const-string v8, "DESede/CBC/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 178
    .local v1, alg:Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v8, 0x0

    const/16 v9, 0x18

    const-string v10, "DESede"

    invoke-direct {v7, p4, v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 180
    .local v7, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 181
    .local v6, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v1, v8, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 182
    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_be} :catch_c0

    move-result-object v2

    .line 191
    .end local v1           #alg:Ljavax/crypto/Cipher;
    .end local v6           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v7           #key:Ljavax/crypto/spec/SecretKeySpec;
    :cond_bf
    :goto_bf
    return-object v2

    .line 184
    :catch_c0
    move-exception v3

    .line 185
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 186
    sget-object v8, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v8}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 187
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bf
.end method

.method public encrypt([BII[BJJLorg/snmp4j/security/DecryptParams;)[B
    .registers 29
    .parameter "unencryptedData"
    .parameter "offset"
    .parameter "length"
    .parameter "encryptionKey"
    .parameter "engineBoots"
    .parameter "engineTime"
    .parameter "decryptParams"

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/snmp4j/security/Priv3DES;->salt:Lorg/snmp4j/security/Salt;

    invoke-virtual {v5}, Lorg/snmp4j/security/Salt;->getNext()J

    move-result-wide v5

    long-to-int v14, v5

    .line 68
    .local v14, mySalt:I
    move-object/from16 v0, p4

    array-length v5, v0

    const/16 v6, 0x20

    if-ge v5, v6, :cond_53

    .line 69
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Wrong Key length: need at least 32 bytes, is "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, p4

    array-length v15, v0

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v15, " bytes."

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 72
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "encryptionKey has illegal length "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, p4

    array-length v15, v0

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v15, " (should be at least 32)."

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_53
    move-object/from16 v0, p9

    iget-object v5, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    if-eqz v5, :cond_61

    move-object/from16 v0, p9

    iget v5, v0, Lorg/snmp4j/security/DecryptParams;->length:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_69

    .line 78
    :cond_61
    const/16 v5, 0x8

    new-array v5, v5, [B

    move-object/from16 v0, p9

    iput-object v5, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    .line 80
    :cond_69
    const/16 v5, 0x8

    move-object/from16 v0, p9

    iput v5, v0, Lorg/snmp4j/security/DecryptParams;->length:I

    .line 81
    const/4 v5, 0x0

    move-object/from16 v0, p9

    iput v5, v0, Lorg/snmp4j/security/DecryptParams;->offset:I

    .line 84
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 85
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Preparing decrypt_params."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 87
    :cond_83
    const/4 v10, 0x0

    .local v10, i:I
    :goto_84
    const/4 v5, 0x4

    if-ge v10, v5, :cond_ab

    .line 88
    move-object/from16 v0, p9

    iget-object v5, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    rsub-int/lit8 v6, v10, 0x3

    const-wide/16 v15, 0xff

    mul-int/lit8 v17, v10, 0x8

    shr-long v17, p5, v17

    and-long v15, v15, v17

    long-to-int v15, v15

    int-to-byte v15, v15

    aput-byte v15, v5, v6

    .line 89
    move-object/from16 v0, p9

    iget-object v5, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    rsub-int/lit8 v6, v10, 0x7

    mul-int/lit8 v15, v10, 0x8

    shr-int v15, v14, v15

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v5, v6

    .line 87
    add-int/lit8 v10, v10, 0x1

    goto :goto_84

    .line 92
    :cond_ab
    const/16 v5, 0x8

    new-array v11, v5, [B

    .line 95
    .local v11, iv:[B
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 96
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Preparing iv for encryption."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 98
    :cond_be
    const/4 v10, 0x0

    :goto_bf
    const/16 v5, 0x8

    if-ge v10, v5, :cond_d4

    .line 99
    add-int/lit8 v5, v10, 0x18

    aget-byte v5, p4, v5

    move-object/from16 v0, p9

    iget-object v6, v0, Lorg/snmp4j/security/DecryptParams;->array:[B

    aget-byte v6, v6, v10

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v11, v10

    .line 98
    add-int/lit8 v10, v10, 0x1

    goto :goto_bf

    .line 102
    :cond_d4
    const/4 v7, 0x0

    .line 106
    .local v7, encryptedData:[B
    :try_start_d5
    const-string v5, "DESede/CBC/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 107
    .local v3, alg:Ljavax/crypto/Cipher;
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x0

    const/16 v6, 0x18

    const-string v15, "DESede"

    move-object/from16 v0, p4

    invoke-direct {v13, v0, v5, v6, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 109
    .local v13, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v12, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v12, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 110
    .local v12, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v13, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 113
    rem-int/lit8 v5, p3, 0x8

    if-nez v5, :cond_10e

    .line 114
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_fd} :catch_13e

    move-result-object v7

    .line 137
    .end local v3           #alg:Ljavax/crypto/Cipher;
    .end local v12           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v13           #key:Ljavax/crypto/spec/SecretKeySpec;
    :cond_fe
    :goto_fe
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 138
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Encryption finished."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 140
    :cond_10d
    return-object v7

    .line 117
    .restart local v3       #alg:Ljavax/crypto/Cipher;
    .restart local v12       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v13       #key:Ljavax/crypto/spec/SecretKeySpec;
    :cond_10e
    :try_start_10e
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 118
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v6, "Using padding."

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 121
    :cond_11d
    div-int/lit8 v5, p3, 0x8

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x8

    new-array v7, v5, [B

    .line 122
    const/16 v5, 0x8

    new-array v4, v5, [B

    .line 124
    .local v4, tmp:[B
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2, v7}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v8

    .line 126
    .local v8, encryptedLength:I
    const/4 v5, 0x0

    rem-int/lit8 v6, p3, 0x8

    rsub-int/lit8 v6, v6, 0x8

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_13b} :catch_13e

    move-result v5

    add-int/2addr v5, v8

    goto :goto_fe

    .line 130
    .end local v3           #alg:Ljavax/crypto/Cipher;
    .end local v4           #tmp:[B
    .end local v8           #encryptedLength:I
    .end local v12           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v13           #key:Ljavax/crypto/spec/SecretKeySpec;
    :catch_13e
    move-exception v9

    .line 131
    .local v9, e:Ljava/lang/Exception;
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5, v9}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 132
    sget-object v5, Lorg/snmp4j/security/Priv3DES;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 133
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fe
.end method

.method public extendShortKey([BLorg/snmp4j/smi/OctetString;[BLorg/snmp4j/security/AuthenticationProtocol;)[B
    .registers 12
    .parameter "shortKey"
    .parameter "password"
    .parameter "engineID"
    .parameter "authProtocol"

    .prologue
    const/4 v6, 0x0

    .line 225
    array-length v3, p1

    .line 226
    .local v3, length:I
    invoke-virtual {p0}, Lorg/snmp4j/security/Priv3DES;->getMinKeyLength()I

    move-result v4

    new-array v1, v4, [B

    .line 227
    .local v1, extendedKey:[B
    array-length v4, p1

    invoke-static {p1, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :goto_c
    invoke-virtual {p0}, Lorg/snmp4j/security/Priv3DES;->getMinKeyLength()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 230
    new-instance v4, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v4, v1, v6, v3}, Lorg/snmp4j/smi/OctetString;-><init>([BII)V

    invoke-interface {p4, v4, p3}, Lorg/snmp4j/security/AuthenticationProtocol;->passwordToKey(Lorg/snmp4j/smi/OctetString;[B)[B

    move-result-object v2

    .line 233
    .local v2, key:[B
    invoke-virtual {p0}, Lorg/snmp4j/security/Priv3DES;->getMinKeyLength()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {p4}, Lorg/snmp4j/security/AuthenticationProtocol;->getDigestLength()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    .local v0, copyBytes:I
    invoke-static {v2, v6, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    add-int/2addr v3, v0

    .line 237
    goto :goto_c

    .line 238
    .end local v0           #copyBytes:I
    .end local v2           #key:[B
    :cond_2d
    return-object v1
.end method

.method public getDecryptParamsLength()I
    .registers 2

    .prologue
    .line 215
    const/16 v0, 0x8

    return v0
.end method

.method public getEncryptedLength(I)I
    .registers 3
    .parameter "scopedPDULength"

    .prologue
    .line 204
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_5

    .line 207
    .end local p1
    :goto_4
    return p1

    .restart local p1
    :cond_5
    div-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 p1, v0, 0x8

    goto :goto_4
.end method

.method public getID()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 200
    sget-object v0, Lorg/snmp4j/security/Priv3DES;->ID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public getMaxKeyLength()I
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/snmp4j/security/Priv3DES;->getMinKeyLength()I

    move-result v0

    return v0
.end method

.method public getMinKeyLength()I
    .registers 2

    .prologue
    .line 211
    const/16 v0, 0x20

    return v0
.end method
