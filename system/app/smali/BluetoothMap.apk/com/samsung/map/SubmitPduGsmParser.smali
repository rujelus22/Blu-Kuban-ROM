.class public Lcom/samsung/map/SubmitPduGsmParser;
.super Ljava/lang/Object;
.source "SubmitPduGsmParser.java"


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    .line 89
    iput v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    .line 90
    iput v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->mUserDataSeptetPadding:I

    .line 91
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .registers 16
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    const/4 v10, 0x0

    .line 160
    iget v4, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    .line 161
    .local v4, offset:I
    iget-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    aget-byte v9, v9, v4

    and-int/lit16 v8, v9, 0xff

    .line 162
    .local v8, userDataLength:I
    const/4 v3, 0x0

    .line 163
    .local v3, headerSeptets:I
    const/4 v7, 0x0

    .line 165
    .local v7, userDataHeaderLength:I
    if-eqz p1, :cond_68

    .line 166
    iget-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aget-byte v9, v9, v5

    and-int/lit16 v7, v9, 0xff

    .line 168
    new-array v6, v7, [B

    .line 169
    .local v6, udh:[B
    iget-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    invoke-static {v9, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 171
    add-int/2addr v4, v7

    .line 173
    add-int/lit8 v9, v7, 0x1

    mul-int/lit8 v2, v9, 0x8

    .line 174
    .local v2, headerBits:I
    div-int/lit8 v3, v2, 0x7

    .line 175
    rem-int/lit8 v9, v2, 0x7

    if-lez v9, :cond_54

    const/4 v9, 0x1

    :goto_30
    add-int/2addr v3, v9

    .line 176
    mul-int/lit8 v9, v3, 0x7

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->mUserDataSeptetPadding:I

    .line 180
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :goto_36
    if-eqz p2, :cond_56

    .line 186
    iget-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    array-length v9, v9

    sub-int v0, v9, v4

    .line 198
    .local v0, bufferLen:I
    :cond_3d
    :goto_3d
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->userData:[B

    .line 199
    iget-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    iget-object v11, p0, Lcom/samsung/map/SubmitPduGsmParser;->userData:[B

    iget-object v12, p0, Lcom/samsung/map/SubmitPduGsmParser;->userData:[B

    array-length v12, v12

    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput v4, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    .line 202
    if-eqz p2, :cond_64

    .line 204
    sub-int v1, v8, v3

    .line 206
    .local v1, count:I
    if-gez v1, :cond_62

    .line 209
    .end local v1           #count:I
    :goto_53
    return v10

    .end local v0           #bufferLen:I
    .restart local v2       #headerBits:I
    .restart local v6       #udh:[B
    :cond_54
    move v9, v10

    .line 175
    goto :goto_30

    .line 192
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :cond_56
    if-eqz p1, :cond_60

    add-int/lit8 v9, v7, 0x1

    :goto_5a
    sub-int v0, v8, v9

    .line 193
    .restart local v0       #bufferLen:I
    if-gez v0, :cond_3d

    .line 194
    const/4 v0, 0x0

    goto :goto_3d

    .end local v0           #bufferLen:I
    :cond_60
    move v9, v10

    .line 192
    goto :goto_5a

    .restart local v0       #bufferLen:I
    .restart local v1       #count:I
    :cond_62
    move v10, v1

    .line 206
    goto :goto_53

    .line 209
    .end local v1           #count:I
    :cond_64
    iget-object v9, p0, Lcom/samsung/map/SubmitPduGsmParser;->userData:[B

    array-length v10, v9

    goto :goto_53

    .end local v0           #bufferLen:I
    .end local v4           #offset:I
    .restart local v5       #offset:I
    :cond_68
    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_36
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 6

    .prologue
    .line 140
    iget-object v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    iget v4, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 141
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 143
    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    iget v4, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 145
    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    .line 147
    return-object v2
.end method

.method getByte()I
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    iget v1, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/samsung/map/SubmitPduGsmParser;->getByte()I

    move-result v0

    .line 104
    .local v0, len:I
    if-nez v0, :cond_d

    .line 106
    const/4 v1, 0x0

    .line 117
    .local v1, ret:Ljava/lang/String;
    :goto_7
    iget v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    .line 119
    return-object v1

    .line 110
    .end local v1           #ret:Ljava/lang/String;
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    iget v4, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7

    .line 111
    .end local v1           #ret:Ljava/lang/String;
    :catch_16
    move-exception v2

    .line 112
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "SubmitPduParser"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7
.end method

.method getUserData()[B
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->userData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .registers 9
    .parameter "septetCount"

    .prologue
    const/4 v4, 0x0

    .line 251
    iget-object v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    iget v1, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    iget v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, ret:Ljava/lang/String;
    iget v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    .line 255
    return-object v6
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/map/SubmitPduGsmParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 269
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/map/SubmitPduGsmParser;->pdu:[B

    iget v3, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_11

    .line 275
    .local v1, ret:Ljava/lang/String;
    :goto_b
    iget v2, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/samsung/map/SubmitPduGsmParser;->cur:I

    .line 276
    return-object v1

    .line 270
    .end local v1           #ret:Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 271
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 272
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "SubmitPduParser"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
