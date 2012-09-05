.class public Lcom/sec/dsm/system/osp/AuthUtil;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;,
        Lcom/sec/dsm/system/osp/AuthUtil$Parameter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    return-void
.end method

.method protected static computeSignature(Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 8
    .parameter "keyStr"
    .parameter "src"
    .parameter "isKeyBase64Encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, key:Ljavax/crypto/SecretKey;
    const/4 v1, 0x0

    .line 128
    .local v1, keyBytes:[B
    if-eqz p2, :cond_29

    .line 129
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/dsm/system/osp/Base64;->decode([B)[B

    move-result-object v1

    .line 133
    :goto_e
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .end local v0           #key:Ljavax/crypto/SecretKey;
    const-string v4, "HmacSHA1"

    invoke-direct {v0, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .restart local v0       #key:Ljavax/crypto/SecretKey;
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 136
    .local v2, mac:Ljavax/crypto/Mac;
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 137
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 138
    .local v3, text:[B
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    return-object v4

    .line 131
    .end local v2           #mac:Ljavax/crypto/Mac;
    .end local v3           #text:[B
    :cond_29
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_e
.end method

.method private static decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 371
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 373
    :catch_7
    move-exception v0

    .line 374
    .local v0, wow:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static formEncode(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    .local p0, parameters:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/util/Map$Entry;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 476
    .local v0, b:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/sec/dsm/system/osp/AuthUtil;->formEncode(Ljava/lang/Iterable;Ljava/io/OutputStream;)V

    .line 477
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static formEncode(Ljava/lang/Iterable;Ljava/io/OutputStream;)V
    .registers 7
    .parameter
    .parameter "into"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, parameters:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/util/Map$Entry;>;"
    if-eqz p0, :cond_58

    .line 496
    const/4 v0, 0x1

    .line 497
    .local v0, first:Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 498
    .local v2, parameter:Ljava/util/Map$Entry;
    if-eqz v0, :cond_52

    .line 499
    const/4 v0, 0x0

    .line 503
    :goto_16
    if-eqz v2, :cond_33

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 504
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/dsm/system/osp/AuthUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/dsm/system/osp/AuthUtil;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 508
    :cond_33
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 509
    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 510
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/dsm/system/osp/AuthUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7

    .line 501
    :cond_52
    const/16 v3, 0x26

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_16

    .line 514
    .end local v0           #first:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #parameter:Ljava/util/Map$Entry;
    :cond_58
    return-void
.end method

.method protected static generateRandomToken(I)Ljava/lang/String;
    .registers 5
    .parameter "nLength"

    .prologue
    .line 96
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 97
    .local v2, securerandom:Ljava/security/SecureRandom;
    div-int/lit8 v3, p0, 0x2

    new-array v0, v3, [B

    .line 98
    .local v0, byRandom:[B
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 100
    invoke-static {v0}, Lcom/sec/dsm/system/osp/AuthUtil;->toHex([B)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v3

    .line 105
    .end local v0           #byRandom:[B
    .end local v2           #securerandom:Ljava/security/SecureRandom;
    :goto_11
    return-object v3

    .line 102
    :catch_12
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private static getOSPAuthHttpHeadersFromString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "sAuth"

    .prologue
    .line 315
    const-string v2, "OAuth"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 320
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, authEntries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 322
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 324
    :cond_1d
    return-object v0
.end method

.method private static getParameters(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;>;"
    if-nez p0, :cond_4

    .line 453
    const/4 v1, 0x0

    .line 459
    :cond_3
    return-object v1

    .line 455
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;

    .line 457
    .local v2, parameter:Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;
    iget-object v3, v2, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->value:Ljava/util/Map$Entry;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method protected static getSignSourceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 25
    .parameter "httpMethod"
    .parameter "requestURL"
    .parameter "queryParam"
    .parameter "sAuthorization"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v14, sbSrc:Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v16, "&"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-static/range {p1 .. p1}, Lcom/sec/dsm/system/osp/AuthUtil;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-static/range {p3 .. p3}, Lcom/sec/dsm/system/osp/AuthUtil;->getOSPAuthHttpHeadersFromString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, headers:[Ljava/lang/String;
    if-nez v4, :cond_27

    .line 171
    const-string v16, ""

    .line 220
    :goto_26
    return-object v16

    .line 175
    :cond_27
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v13, parameters:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2d
    array-length v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_a0

    .line 179
    aget-object v16, v4, v5

    const/16 v17, 0x3d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 181
    .local v9, nPos:I
    if-gez v9, :cond_41

    .line 177
    :cond_3e
    :goto_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 185
    :cond_41
    aget-object v16, v4, v5

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 186
    .local v11, pairKey:Ljava/lang/String;
    aget-object v16, v4, v5

    add-int/lit8 v17, v9, 0x1

    aget-object v18, v4, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, pairValue:Ljava/lang/String;
    if-eqz v11, :cond_3e

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    const-string v17, "oauth_signature"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3e

    const-string v16, "realm"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3e

    const-string v16, "OAuth realm"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3e

    .line 192
    new-instance v16, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;

    const-string v17, "\""

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "&quot;"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 197
    .end local v9           #nPos:I
    .end local v11           #pairKey:Ljava/lang/String;
    .end local v12           #pairValue:Ljava/lang/String;
    :cond_a0
    if-eqz p2, :cond_e1

    .line 198
    const-string v16, "\\&"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_ae
    if-ge v6, v8, :cond_e1

    aget-object v7, v2, v6

    .line 199
    .local v7, item:Ljava/lang/String;
    const/16 v16, 0x3d

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 202
    .local v3, equals:I
    if-gez v3, :cond_d0

    .line 203
    invoke-static {v7}, Lcom/sec/dsm/system/osp/AuthUtil;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, name:Ljava/lang/String;
    const/4 v15, 0x0

    .line 209
    .local v15, value:Ljava/lang/String;
    :goto_c1
    new-instance v16, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v15}, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v6, v6, 0x1

    goto :goto_ae

    .line 206
    .end local v10           #name:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_d0
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 207
    .restart local v10       #name:Ljava/lang/String;
    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #value:Ljava/lang/String;
    goto :goto_c1

    .line 212
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #equals:I
    .end local v6           #i$:I
    .end local v7           #item:Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #name:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_e1
    const-string v16, "&"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-static {v13}, Lcom/sec/dsm/system/osp/AuthUtil;->normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/dsm/system/osp/AuthUtil;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    if-eqz p4, :cond_109

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_109

    .line 216
    const-string v16, "&"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :cond_109
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_26
.end method

.method private static isValidURI(Ljava/lang/String;)Z
    .registers 2
    .parameter "uri"

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method private static normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    .local p0, parameters:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/Map$Entry;>;"
    if-nez p0, :cond_5

    .line 391
    const-string v3, ""

    .line 400
    :goto_4
    return-object v3

    .line 393
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 394
    .local v1, p:Ljava/util/List;,"Ljava/util/List<Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 395
    .local v2, parameter:Ljava/util/Map$Entry;
    const-string v3, "oauth_signature"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 396
    new-instance v3, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;

    invoke-direct {v3, v2}, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 399
    .end local v2           #parameter:Ljava/util/Map$Entry;
    :cond_33
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 400
    invoke-static {v1}, Lcom/sec/dsm/system/osp/AuthUtil;->getParameters(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/dsm/system/osp/AuthUtil;->formEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 250
    invoke-static {p0}, Lcom/sec/dsm/system/osp/AuthUtil;->isValidURI(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 251
    const/4 v6, 0x0

    .line 271
    :goto_8
    return-object v6

    .line 254
    :cond_9
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 255
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, scheme:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, authority:Ljava/lang/String;
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v7

    const/16 v8, 0x50

    if-eq v7, v8, :cond_3e

    :cond_2e
    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v7

    const/16 v8, 0x1bb

    if-ne v7, v8, :cond_7b

    :cond_3e
    const/4 v1, 0x1

    .line 259
    .local v1, dropPort:Z
    :goto_3f
    if-eqz v1, :cond_4d

    .line 261
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 262
    .local v2, index:I
    if-ltz v2, :cond_4d

    .line 263
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 266
    .end local v2           #index:I
    :cond_4d
    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_5b

    .line 268
    :cond_59
    const-string v3, "/"

    .line 271
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/dsm/system/osp/AuthUtil;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .end local v1           #dropPort:Z
    .end local v3           #path:Ljava/lang/String;
    :cond_7b
    move v1, v6

    .line 257
    goto :goto_3f
.end method

.method private static percentEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 288
    if-nez p0, :cond_5

    .line 289
    const-string v1, ""

    .line 297
    :goto_4
    return-object v1

    .line 292
    :cond_5
    :try_start_5
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    const-string v3, "%2A"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%7E"

    const-string v3, "~"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%25"

    const-string v3, "%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_2a} :catch_2c

    move-result-object v1

    goto :goto_4

    .line 296
    :catch_2c
    move-exception v0

    .line 297
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "digest"

    .prologue
    .line 230
    const-string v0, "0123456789abcdef"

    .line 232
    .local v0, HEX_DIGITS:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 233
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_b
    array-length v4, p0

    if-ge v2, v4, :cond_28

    .line 234
    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    .line 235
    .local v1, b:I
    ushr-int/lit8 v4, v1, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    and-int/lit8 v5, v1, 0xf

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 237
    .end local v1           #b:I
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static final toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "from"

    .prologue
    .line 522
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
