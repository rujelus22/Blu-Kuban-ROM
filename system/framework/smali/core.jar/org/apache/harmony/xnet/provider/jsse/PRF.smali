.class public Lorg/apache/harmony/xnet/provider/jsse/PRF;
.super Ljava/lang/Object;
.source "PRF.java"


# static fields
.field private static logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected static md5:Ljava/security/MessageDigest;

.field private static md5_mac:Ljavax/crypto/Mac;

.field private static md5_mac_length:I

.field protected static sha:Ljava/security/MessageDigest;

.field private static sha_mac:Ljavax/crypto/Mac;

.field private static sha_mac_length:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "prf"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized computePRF([B[B[B[B)V
    .registers 20
    .parameter "out"
    .parameter "secret"
    .parameter "str_byts"
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 106
    const-class v12, Lorg/apache/harmony/xnet/provider/jsse/PRF;

    monitor-enter v12

    :try_start_3
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    if-nez v10, :cond_a

    .line 107
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->init()V

    .line 124
    :cond_a
    if-eqz p1, :cond_11

    move-object/from16 v0, p1

    array-length v10, v0

    if-nez v10, :cond_12e

    .line 125
    :cond_11
    const/16 v10, 0x8

    new-array v0, v10, [B

    move-object/from16 p1, v0

    .line 126
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "HmacMD5"

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .local v3, keyMd5:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "HmacSHA1"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 139
    .local v4, keySha1:Ljavax/crypto/spec/SecretKeySpec;
    :goto_29
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v10, :cond_e3

    .line 140
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "secret["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 142
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "label["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    array-length v13, v0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 143
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 144
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "seed["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    array-length v13, v0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 146
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "MD5 key:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 147
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    invoke-virtual {v10, v11, v13, v14, v15}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 148
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "SHA1 key:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    invoke-virtual {v4}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    invoke-virtual {v10, v11, v13, v14, v15}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 152
    :cond_e3
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 153
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 155
    const/4 v7, 0x0

    .line 156
    .local v7, pos:I
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 157
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 158
    .local v1, hash:[B
    :goto_fd
    move-object/from16 v0, p0

    array-length v10, v0

    if-ge v7, v10, :cond_161

    .line 159
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 160
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 161
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 162
    sget v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    add-int/2addr v10, v7

    move-object/from16 v0, p0

    array-length v11, v0

    if-ge v10, v11, :cond_151

    .line 163
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v7}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 164
    sget v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    add-int/2addr v7, v10

    .line 171
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    goto :goto_fd

    .line 129
    .end local v1           #hash:[B
    .end local v3           #keyMd5:Ljavax/crypto/spec/SecretKeySpec;
    .end local v4           #keySha1:Ljavax/crypto/spec/SecretKeySpec;
    .end local v7           #pos:I
    :cond_12e
    move-object/from16 v0, p1

    array-length v10, v0

    shr-int/lit8 v5, v10, 0x1

    .line 130
    .local v5, length:I
    move-object/from16 v0, p1

    array-length v10, v0

    and-int/lit8 v6, v10, 0x1

    .line 131
    .local v6, offset:I
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v10, 0x0

    add-int v11, v5, v6

    const-string v13, "HmacMD5"

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10, v11, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 133
    .restart local v3       #keyMd5:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    add-int v10, v5, v6

    const-string v11, "HmacSHA1"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .restart local v4       #keySha1:Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_29

    .line 166
    .end local v5           #length:I
    .end local v6           #offset:I
    .restart local v1       #hash:[B
    .restart local v7       #pos:I
    :cond_151
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    array-length v13, v0

    sub-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-static {v10, v11, v0, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_161
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v10, :cond_179

    .line 174
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "P_MD5:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 175
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    sget v11, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 178
    :cond_179
    const/4 v7, 0x0

    .line 179
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 180
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 182
    :goto_189
    move-object/from16 v0, p0

    array-length v10, v0

    if-ge v7, v10, :cond_1ce

    .line 183
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 184
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 185
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v9

    .line 186
    .local v9, sha1hash:[B
    const/4 v2, 0x0

    .local v2, i:I
    move v8, v7

    .end local v7           #pos:I
    .local v8, pos:I
    :goto_1a4
    sget v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    if-ge v2, v10, :cond_1c1

    const/4 v10, 0x1

    move v11, v10

    :goto_1aa
    move-object/from16 v0, p0

    array-length v10, v0

    if-ge v8, v10, :cond_1c4

    const/4 v10, 0x1

    :goto_1b0
    and-int/2addr v10, v11

    if-eqz v10, :cond_1c6

    .line 187
    add-int/lit8 v7, v8, 0x1

    .end local v8           #pos:I
    .restart local v7       #pos:I
    aget-byte v10, p0, v8

    aget-byte v11, v9, v2

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p0, v8

    .line 186
    add-int/lit8 v2, v2, 0x1

    move v8, v7

    .end local v7           #pos:I
    .restart local v8       #pos:I
    goto :goto_1a4

    :cond_1c1
    const/4 v10, 0x0

    move v11, v10

    goto :goto_1aa

    :cond_1c4
    const/4 v10, 0x0

    goto :goto_1b0

    .line 190
    :cond_1c6
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    move v7, v8

    .end local v8           #pos:I
    .restart local v7       #pos:I
    goto :goto_189

    .line 193
    .end local v2           #i:I
    .end local v9           #sha1hash:[B
    :cond_1ce
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v10, :cond_1e6

    .line 194
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "PRF:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 195
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    sget v11, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_1e6
    .catchall {:try_start_3 .. :try_end_1e6} :catchall_1e8

    .line 197
    :cond_1e6
    monitor-exit v12

    return-void

    .line 106
    .end local v1           #hash:[B
    .end local v3           #keyMd5:Ljavax/crypto/spec/SecretKeySpec;
    .end local v4           #keySha1:Ljavax/crypto/spec/SecretKeySpec;
    .end local v7           #pos:I
    :catchall_1e8
    move-exception v10

    monitor-exit v12

    throw v10
.end method

.method static declared-synchronized computePRF_SSLv3([B[B[B)V
    .registers 11
    .parameter "out"
    .parameter "secret"
    .parameter "seed"

    .prologue
    .line 72
    const-class v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;

    monitor-enter v6

    :try_start_3
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    if-nez v5, :cond_a

    .line 73
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->init()V

    .line 75
    :cond_a
    const/4 v3, 0x0

    .line 76
    .local v3, pos:I
    const/4 v1, 0x1

    .local v1, iteration:I
    move v2, v1

    .line 78
    .end local v1           #iteration:I
    .local v2, iteration:I
    :goto_d
    array-length v5, p0

    if-ge v3, v5, :cond_56

    .line 79
    new-array v4, v2, [B

    .line 80
    .local v4, pref:[B
    add-int/lit8 v1, v2, 0x1

    .end local v2           #iteration:I
    .restart local v1       #iteration:I
    add-int/lit8 v5, v2, 0x40

    int-to-byte v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 81
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 82
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v5, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v5, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 84
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v5, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 87
    .local v0, digest:[B
    add-int/lit8 v5, v3, 0x10

    array-length v7, p0

    if-le v5, v7, :cond_4d

    .line 88
    const/4 v5, 0x0

    array-length v7, p0

    sub-int/2addr v7, v3

    invoke-static {v0, v5, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    array-length v3, p0

    :goto_4b
    move v2, v1

    .line 94
    .end local v1           #iteration:I
    .restart local v2       #iteration:I
    goto :goto_d

    .line 91
    .end local v2           #iteration:I
    .restart local v1       #iteration:I
    :cond_4d
    const/4 v5, 0x0

    const/16 v7, 0x10

    invoke-static {v0, v5, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_58

    .line 92
    add-int/lit8 v3, v3, 0x10

    goto :goto_4b

    .line 95
    .end local v0           #digest:[B
    .end local v1           #iteration:I
    .end local v4           #pref:[B
    .restart local v2       #iteration:I
    :cond_56
    monitor-exit v6

    return-void

    .line 72
    .end local v2           #iteration:I
    .end local v3           #pos:I
    :catchall_58
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static init()V
    .registers 5

    .prologue
    const/16 v4, 0x50

    .line 45
    :try_start_2
    const-string v1, "HmacMD5"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    .line 46
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_12} :catch_33

    .line 53
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    sput v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    .line 54
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    sput v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    .line 56
    :try_start_22
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    .line 57
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_41

    .line 63
    return-void

    .line 47
    :catch_33
    move-exception v0

    .line 48
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "There is no provider of HmacSHA1 or HmacMD5 algorithms installed in the system"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    .line 58
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_41
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Could not initialize the Digest Algorithms."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method
