.class public Lcom/android/exchange/adapter/EasBase64EncodedURI;
.super Ljava/lang/Object;
.source "EasBase64EncodedURI.java"


# instance fields
.field mCmd:[B

.field mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mExtra:Ljava/lang/String;

.field mExtraCmd:Ljava/lang/String;

.field mHostAddress:Ljava/lang/String;

.field mLocale:[B

.field mPolicyKey:Ljava/lang/String;

.field mProtocol:[B

.field mSsl:Z

.field mTrustSsl:Z

.field mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "ssl"
    .parameter "trustSsl"
    .parameter "hostAddress"
    .parameter "userName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 605
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, v4, [B

    const/16 v1, 0x79

    aput-byte v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    .line 80
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 86
    const-string v0, "Android"

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 92
    new-array v0, v4, [B

    const/16 v1, 0x17

    aput-byte v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    .line 104
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mLocale:[B

    .line 608
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mSsl:Z

    .line 611
    iput-boolean p2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mTrustSsl:Z

    .line 614
    iput-object p3, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mHostAddress:Ljava/lang/String;

    .line 617
    iput-object p4, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mUserName:Ljava/lang/String;

    .line 620
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 623
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 626
    return-void

    .line 125
    nop

    :array_38
    .array-data 0x1
        0x9t
        0x4t
    .end array-data
.end method

.method private encodeUriString()Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 816
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 819
    .local v10, policyByte:[B
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v9, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-byte v18, v9, v17

    .line 828
    .local v9, optionsByte:[B
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v7, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-byte v18, v7, v17

    .line 843
    .local v7, length:[B
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mSsl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_138

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mTrustSsl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_134

    const-string v17, "httpts"

    :goto_3a
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mHostAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mSsl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13c

    const-string v17, ":443"

    :goto_5c
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/Microsoft-Server-ActiveSync"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 858
    .local v15, us:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mLocale:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_140

    .line 882
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 921
    :goto_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_18f

    .line 927
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    :goto_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_26b

    .line 1023
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1062
    :goto_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v9, v1}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v9, v1}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 1077
    const/16 v17, 0x0

    aget-byte v17, v9, v17

    if-eqz v17, :cond_f3

    .line 1083
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1089
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1095
    const/16 v17, 0x0

    aget-byte v17, v9, v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1116
    :cond_f3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1119
    .local v3, byteData:[B
    const-string v4, "Fix It"

    .line 1121
    .local v4, encoded:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    .end local v4           #encoded:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1125
    .restart local v4       #encoded:Ljava/lang/String;
    const-string v17, "EasBase64EncodedURI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "encoded: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1131
    return-object v15

    .line 843
    .end local v3           #byteData:[B
    .end local v4           #encoded:Ljava/lang/String;
    .end local v15           #us:Ljava/lang/String;
    :cond_134
    const-string v17, "https"

    goto/16 :goto_3a

    :cond_138
    const-string v17, "http"

    goto/16 :goto_3a

    :cond_13c
    const-string v17, ""

    goto/16 :goto_5c

    .line 888
    .restart local v15       #us:Ljava/lang/String;
    :cond_140
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 894
    const/16 v17, 0x0

    aget-byte v17, v7, v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17d

    .line 897
    const/16 v17, 0x0

    aget-byte v17, v7, v17

    add-int/lit8 v8, v17, -0x10

    .line 900
    .local v8, lengthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 903
    const/16 v17, 0x0

    const/16 v18, 0x10

    aput-byte v18, v7, v17

    .line 909
    .end local v8           #lengthExtra:I
    :cond_17d
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_9e

    .line 933
    :cond_18f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 936
    .local v16, zeroPolicy:Z
    if-eqz v16, :cond_1b6

    .line 939
    const/4 v6, 0x1

    .local v6, i:I
    :goto_19e
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v6, v0, :cond_1ab

    .line 942
    const/16 v17, 0x0

    aput-byte v17, v10, v6

    .line 939
    add-int/lit8 v6, v6, 0x1

    goto :goto_19e

    .line 948
    :cond_1ab
    const/16 v17, 0x0

    const/16 v18, 0x4

    aput-byte v18, v10, v17

    .line 951
    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_ad

    .line 957
    .end local v6           #i:I
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 960
    .local v12, policyKeyValue:J
    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    .line 963
    .local v11, policyKeyString:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 969
    .local v14, size:I
    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v14, v0, :cond_1db

    .line 975
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_ad

    .line 981
    :cond_1db
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1dc
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v6, v0, :cond_20c

    .line 984
    rsub-int/lit8 v17, v6, 0x4

    mul-int/lit8 v18, v6, 0x2

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->hex2int(C)C

    move-result v18

    shl-int/lit8 v18, v18, 0x4

    mul-int/lit8 v19, v6, 0x2

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->hex2int(C)C

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v10, v17

    .line 981
    add-int/lit8 v6, v6, 0x1

    goto :goto_1dc

    .line 993
    :cond_20c
    const/16 v17, 0x0

    const/16 v18, 0x4

    aput-byte v18, v10, v17

    .line 996
    const-string v17, "EasBase64EncodedURI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "policyByte: length["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-byte v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-byte v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    aget-byte v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x3

    aget-byte v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x4

    aget-byte v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_ad

    .line 1029
    .end local v6           #i:I
    .end local v11           #policyKeyString:Ljava/lang/String;
    .end local v12           #policyKeyValue:J
    .end local v14           #size:I
    .end local v16           #zeroPolicy:Z
    :cond_26b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 1035
    const/16 v17, 0x0

    aget-byte v17, v7, v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2a8

    .line 1038
    const/16 v17, 0x0

    aget-byte v17, v7, v17

    add-int/lit8 v5, v17, -0x10

    .line 1041
    .local v5, extra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 1044
    const/16 v17, 0x0

    const/16 v18, 0x10

    aput-byte v18, v7, v17

    .line 1050
    .end local v5           #extra:I
    :cond_2a8
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_bc
.end method

.method private getCommandCode(Ljava/lang/String;)B
    .registers 4
    .parameter "command"

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, cmd:Ljava/lang/String;
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 293
    const/4 v1, 0x0

    .line 434
    :goto_d
    return v1

    .line 296
    :cond_e
    const-string v1, "sendmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 299
    const/4 v1, 0x1

    goto :goto_d

    .line 302
    :cond_18
    const-string v1, "smartforward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 305
    const/4 v1, 0x2

    goto :goto_d

    .line 308
    :cond_22
    const-string v1, "smartreply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 311
    const/4 v1, 0x3

    goto :goto_d

    .line 314
    :cond_2c
    const-string v1, "getattachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 317
    const/4 v1, 0x4

    goto :goto_d

    .line 320
    :cond_36
    const-string v1, "gethierarchy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 323
    const/4 v1, 0x5

    goto :goto_d

    .line 326
    :cond_40
    const-string v1, "createcollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 329
    const/4 v1, 0x6

    goto :goto_d

    .line 332
    :cond_4a
    const-string v1, "deletecollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 335
    const/4 v1, 0x7

    goto :goto_d

    .line 338
    :cond_54
    const-string v1, "movecollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 341
    const/16 v1, 0x8

    goto :goto_d

    .line 344
    :cond_5f
    const-string v1, "foldersync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 347
    const/16 v1, 0x9

    goto :goto_d

    .line 350
    :cond_6a
    const-string v1, "foldercreate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 353
    const/16 v1, 0xa

    goto :goto_d

    .line 356
    :cond_75
    const-string v1, "folderdelete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 359
    const/16 v1, 0xb

    goto :goto_d

    .line 362
    :cond_80
    const-string v1, "folderupdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 365
    const/16 v1, 0xc

    goto :goto_d

    .line 368
    :cond_8b
    const-string v1, "moveitems"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 371
    const/16 v1, 0xd

    goto/16 :goto_d

    .line 374
    :cond_97
    const-string v1, "getitemestimate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 377
    const/16 v1, 0xe

    goto/16 :goto_d

    .line 380
    :cond_a3
    const-string v1, "meetingresponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 383
    const/16 v1, 0xf

    goto/16 :goto_d

    .line 386
    :cond_af
    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 389
    const/16 v1, 0x10

    goto/16 :goto_d

    .line 392
    :cond_bb
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 395
    const/16 v1, 0x11

    goto/16 :goto_d

    .line 398
    :cond_c7
    const-string v1, "ping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 401
    const/16 v1, 0x12

    goto/16 :goto_d

    .line 404
    :cond_d3
    const-string v1, "itemoperations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 407
    const/16 v1, 0x13

    goto/16 :goto_d

    .line 410
    :cond_df
    const-string v1, "provision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 413
    const/16 v1, 0x14

    goto/16 :goto_d

    .line 416
    :cond_eb
    const-string v1, "resolverecipients"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 419
    const/16 v1, 0x15

    goto/16 :goto_d

    .line 422
    :cond_f7
    const-string v1, "validatecert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 425
    const/16 v1, 0x16

    goto/16 :goto_d

    .line 434
    :cond_103
    const/16 v1, 0x17

    goto/16 :goto_d
.end method

.method private getParameterTag(Ljava/lang/String;)B
    .registers 4
    .parameter "parameters"

    .prologue
    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, paramName:Ljava/lang/String;
    const-string v1, "attachmentname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 524
    const/4 v1, 0x0

    .line 593
    :goto_d
    return v1

    .line 527
    :cond_e
    const-string v1, "collectionid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 530
    const/4 v1, 0x1

    goto :goto_d

    .line 533
    :cond_18
    const-string v1, "collectionname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 536
    const/4 v1, 0x2

    goto :goto_d

    .line 539
    :cond_22
    const-string v1, "itemid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 542
    const/4 v1, 0x3

    goto :goto_d

    .line 545
    :cond_2c
    const-string v1, "longid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 548
    const/4 v1, 0x4

    goto :goto_d

    .line 551
    :cond_36
    const-string v1, "parentid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 554
    const/4 v1, 0x5

    goto :goto_d

    .line 557
    :cond_40
    const-string v1, "occurrence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 560
    const/4 v1, 0x6

    goto :goto_d

    .line 563
    :cond_4a
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 566
    const/4 v1, 0x7

    goto :goto_d

    .line 569
    :cond_54
    const-string v1, "roundtripid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 572
    const/16 v1, 0x8

    goto :goto_d

    .line 575
    :cond_5f
    const-string v1, "saveinsent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 578
    const/16 v1, 0x17

    goto :goto_d

    .line 581
    :cond_6a
    const-string v1, "acceptmultipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 584
    const/16 v1, 0x27

    goto :goto_d

    .line 593
    :cond_75
    const/16 v1, 0x3f

    goto :goto_d
.end method

.method public static hex2int(C)C
    .registers 3
    .parameter "b"

    .prologue
    .line 759
    const/16 v1, 0x61

    if-lt p0, v1, :cond_b

    .line 762
    add-int/lit8 v1, p0, -0x57

    int-to-char v0, v1

    .line 774
    .local v0, num:C
    :goto_7
    and-int/lit8 v1, v0, 0xf

    int-to-char v0, v1

    .line 777
    return v0

    .line 768
    .end local v0           #num:C
    :cond_b
    add-int/lit8 v1, p0, -0x30

    int-to-char v0, v1

    .restart local v0       #num:C
    goto :goto_7
.end method

.method private writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V
    .registers 16
    .parameter "buf"
    .parameter "optionsByte"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    if-nez p3, :cond_3

    .line 1338
    :cond_2
    return-void

    .line 1158
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1161
    .local v0, extraLen:I
    const/4 v10, 0x1

    new-array v1, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-byte v11, v1, v10

    .line 1173
    .local v1, length:[B
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1176
    :goto_13
    if-lez v0, :cond_2

    .line 1185
    const/16 v10, 0x26

    invoke-virtual {p3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1188
    .local v3, myLength:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_6f

    .line 1191
    const/4 v10, 0x0

    invoke-virtual {p3, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, myExtra:Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1215
    :goto_29
    const/16 v10, 0x3d

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 1218
    .local v9, tagLength:I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_32

    .line 1227
    :cond_32
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1230
    .local v5, paramsTag:Ljava/lang/String;
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1239
    .local v7, paramsValue:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [B

    const/4 v10, 0x0

    const/16 v11, 0x3f

    aput-byte v11, v8, v10

    .line 1248
    .local v8, tag:[B
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getParameterTag(Ljava/lang/String;)B

    move-result v6

    .line 1251
    .local v6, paramsTagByte:I
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_50

    .line 1260
    :cond_50
    const/4 v10, 0x0

    and-int/lit8 v11, v6, 0xf

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 1263
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_76

    .line 1272
    and-int/lit8 v10, v6, 0x30

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v4, v10

    .line 1275
    .local v4, optionValueByte:B
    const/4 v10, 0x0

    aget-byte v11, p2, v10

    or-int/2addr v11, v4

    int-to-byte v11, v11

    aput-byte v11, p2, v10

    .line 1323
    .end local v4           #optionValueByte:B
    :goto_68
    if-eqz p3, :cond_2

    .line 1332
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1335
    goto :goto_13

    .line 1203
    .end local v2           #myExtra:Ljava/lang/String;
    .end local v5           #paramsTag:Ljava/lang/String;
    .end local v6           #paramsTagByte:I
    .end local v7           #paramsValue:Ljava/lang/String;
    .end local v8           #tag:[B
    .end local v9           #tagLength:I
    :cond_6f
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1206
    .restart local v2       #myExtra:Ljava/lang/String;
    const/4 p3, 0x0

    goto :goto_29

    .line 1287
    .restart local v5       #paramsTag:Ljava/lang/String;
    .restart local v6       #paramsTagByte:I
    .restart local v7       #paramsValue:Ljava/lang/String;
    .restart local v8       #tag:[B
    .restart local v9       #tagLength:I
    :cond_76
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1293
    if-nez v7, :cond_80

    .line 1299
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_68

    .line 1305
    :cond_80
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 1308
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1311
    invoke-direct {p0, p1, v7}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_68
.end method

.method private writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    if-eqz p2, :cond_b

    .line 792
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 795
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 801
    .end local v0           #data:[B
    :cond_b
    return-void
.end method


# virtual methods
.method public getUriString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .parameter "protocolVersion"
    .parameter "cmd"
    .parameter "extra"
    .parameter "deviceId"
    .parameter "policyKey"
    .parameter "deviceType"

    .prologue
    .line 644
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 647
    .local v6, version:D
    const-wide/high16 v8, 0x402c

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_54

    .line 654
    iget-object v8, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    const/4 v9, 0x0

    const/16 v10, -0x74

    aput-byte v10, v8, v9

    .line 669
    :goto_11
    const/16 v8, 0x26

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 672
    .local v1, cmdLength:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_25

    .line 675
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 678
    const/4 v8, 0x0

    invoke-virtual {p2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 684
    :cond_25
    iget-object v8, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    const/4 v9, 0x0

    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getCommandCode(Ljava/lang/String;)B

    move-result v10

    aput-byte v10, v8, v9

    .line 687
    iput-object p3, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 690
    iput-object p4, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 693
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    .line 696
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 702
    iget-object v8, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 705
    .local v4, idLength:I
    const/16 v8, 0x10

    if-le v4, v8, :cond_4e

    .line 708
    add-int/lit8 v5, v4, -0x10

    .line 711
    .local v5, index:I
    iget-object v8, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 723
    .end local v5           #index:I
    :cond_4e
    const/4 v3, 0x0

    .line 729
    .local v3, encodedURI:Ljava/lang/String;
    :try_start_4f
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->encodeUriString()Ljava/lang/String;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5c

    move-result-object v3

    .line 744
    :goto_53
    return-object v3

    .line 660
    .end local v1           #cmdLength:I
    .end local v3           #encodedURI:Ljava/lang/String;
    .end local v4           #idLength:I
    :cond_54
    iget-object v8, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    const/4 v9, 0x0

    const/16 v10, 0x79

    aput-byte v10, v8, v9

    goto :goto_11

    .line 732
    .restart local v1       #cmdLength:I
    .restart local v3       #encodedURI:Ljava/lang/String;
    .restart local v4       #idLength:I
    :catch_5c
    move-exception v2

    .line 738
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53
.end method
