.class public Lcom/sprint/dsa/DeviceAuthenticator;
.super Ljava/lang/Object;
.source "DeviceAuthenticator.java"


# static fields
.field private static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss Z"


# instance fields
.field private mLastAuthenticationError:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static createExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "token"
    .parameter "nai"
    .parameter "meid"
    .parameter "decryptedText"
    .parameter "reason"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auth Token \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, msg:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' decrypted to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-static {p3}, Lcom/sprint/dsa/Util;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with nai=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', meid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x20

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 150
    .local v0, keyLength:I
    if-ge v0, v3, :cond_2c

    .line 151
    :goto_9
    if-ne v0, v3, :cond_c

    .line 161
    :goto_b
    return-object p1

    .line 152
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    rsub-int/lit8 v2, v0, 0x20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 153
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_9

    .line 158
    :cond_2c
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_b
.end method

.method private static getBitString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "key"

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 174
    .local v2, digits:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_15

    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 175
    :cond_15
    const/16 v1, 0x8

    .line 177
    .local v1, currPos:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_18
    const/16 v6, 0x8

    if-lt v4, v6, :cond_1f

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 178
    :cond_1f
    rem-int/lit8 v5, v1, 0x8

    .line 179
    .local v5, pos:I
    if-eqz v5, :cond_25

    .line 180
    rsub-int/lit8 v5, v5, 0x8

    .line 181
    :cond_25
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shr-int/2addr v6, v5

    and-int/lit8 v0, v6, 0x1

    .line 182
    .local v0, bit:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v1, v1, -0x1

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_18
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 200
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 201
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-lt v1, v2, :cond_e

    .line 205
    return-object v0

    .line 202
    :cond_e
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 203
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 202
    aput-byte v4, v0, v3

    .line 201
    add-int/lit8 v1, v1, 0x2

    goto :goto_b
.end method


# virtual methods
.method public createAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .registers 11
    .parameter "nai"
    .parameter "deviceKey"
    .parameter "timestamp"

    .prologue
    .line 54
    new-instance v0, Lcom/sprint/dsa/AES;

    const/16 v4, 0x8

    invoke-direct {v0, v4}, Lcom/sprint/dsa/AES;-><init>(I)V

    .line 56
    .local v0, aes:Lcom/sprint/dsa/AES;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 57
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, toEncode:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sprint/dsa/DeviceAuthenticator;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/dsa/DeviceAuthenticator;->getBitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, genKey:Ljava/lang/String;
    const/16 v4, 0x100

    invoke-virtual {v0, v3, v1, v4}, Lcom/sprint/dsa/AES;->encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getLastAuthenticationError()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;

    return-object v0
.end method

.method public validateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)Z
    .registers 25
    .parameter "token"
    .parameter "nai"
    .parameter "deviceKey"
    .parameter "timestamp"
    .parameter "timestampWindow"

    .prologue
    .line 84
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;

    .line 85
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 86
    new-instance v3, Lcom/sprint/dsa/AES;

    const/16 v14, 0x8

    invoke-direct {v3, v14}, Lcom/sprint/dsa/AES;-><init>(I)V

    .line 87
    .local v3, aes:Lcom/sprint/dsa/AES;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sprint/dsa/DeviceAuthenticator;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, key:Ljava/lang/String;
    invoke-static {v12}, Lcom/sprint/dsa/DeviceAuthenticator;->getBitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, genKey:Ljava/lang/String;
    const/16 v14, 0x100

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10, v14}, Lcom/sprint/dsa/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, decryptedText:Ljava/lang/String;
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, "/"

    invoke-direct {v13, v5, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v13, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-nez v14, :cond_45

    .line 93
    const-string v14, "No data"

    .line 92
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5, v14}, Lcom/sprint/dsa/DeviceAuthenticator;->createExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;

    .line 94
    const/4 v14, 0x0

    .line 126
    :goto_44
    return v14

    .line 96
    :cond_45
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, decryptedNai:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_76

    .line 99
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Invalid NAI \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 100
    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 98
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5, v14}, Lcom/sprint/dsa/DeviceAuthenticator;->createExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;

    .line 101
    const/4 v14, 0x0

    goto :goto_44

    .line 103
    :cond_76
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-nez v14, :cond_8e

    .line 105
    const-string v14, "No timestamp"

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5, v14}, Lcom/sprint/dsa/DeviceAuthenticator;->createExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;

    .line 106
    const/4 v14, 0x0

    goto :goto_44

    .line 108
    :cond_8e
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, decryptedTimestamp:Ljava/lang/String;
    :try_start_92
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v14, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 112
    .local v11, incomingTimestamp:Ljava/util/Date;
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v7, v14, v16

    .line 113
    .local v7, difference:J
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v14, v14, p5

    if-lez v14, :cond_f9

    .line 115
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Decrypted Timestamp ("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") more than "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 117
    move-wide/from16 v0, p5

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 118
    const-string v15, " ms away from current timestamp ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 119
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5, v14}, Lcom/sprint/dsa/DeviceAuthenticator;->createExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;
    :try_end_ea
    .catch Ljava/text/ParseException; {:try_start_92 .. :try_end_ea} :catch_ed

    .line 120
    const/4 v14, 0x0

    goto/16 :goto_44

    .line 122
    .end local v7           #difference:J
    .end local v11           #incomingTimestamp:Ljava/util/Date;
    :catch_ed
    move-exception v9

    .line 123
    .local v9, ex:Ljava/text/ParseException;
    invoke-virtual {v9}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprint/dsa/DeviceAuthenticator;->mLastAuthenticationError:Ljava/lang/String;

    .line 124
    const/4 v14, 0x0

    goto/16 :goto_44

    .line 126
    .end local v9           #ex:Ljava/text/ParseException;
    .restart local v7       #difference:J
    .restart local v11       #incomingTimestamp:Ljava/util/Date;
    :cond_f9
    const/4 v14, 0x1

    goto/16 :goto_44
.end method
