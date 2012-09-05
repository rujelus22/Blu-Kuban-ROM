.class public Lcom/android/exchange/adapter/EasActivator;
.super Ljava/lang/Object;
.source "EasActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EasActivator$ASAPullParser;,
        Lcom/android/exchange/adapter/EasActivator$ASABaseParser;,
        Lcom/android/exchange/adapter/EasActivator$IASAParser;
    }
.end annotation


# static fields
.field static final Xmlreq_elem:[Ljava/lang/String;

.field private static mChecksum:Ljava/lang/String;

.field private static mCountryCode:Ljava/lang/String;

.field private static mDeviceModelName:Ljava/lang/String;

.field private static mImei:Ljava/lang/String;

.field private static mMsisdnNumber:Ljava/lang/String;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mUTCTimestamp:Ljava/lang/String;

.field private static xmlReqBuffer:Ljava/lang/StringBuffer;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 407
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<?xml version=\"1.0\" ?>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<methodCall>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<methodName>activesync.activate</methodName>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<params>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<param>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<value>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<struct>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<name>imei</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "<name>msisdn</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "<name>mcc</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<name>model_name</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<name>timestamp</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<name>email</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "<name>live</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<name>checksum</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "</struct>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "</value>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "</param>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "</params>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "</methodCall>"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    .line 89
    iput-object p1, p0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/exchange/adapter/EasActivator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    return-void
.end method

.method static buffer_append_elem(ILjava/lang/String;)V
    .registers 4
    .parameter "i"
    .parameter "a"

    .prologue
    .line 417
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "<member>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "<value>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "</value>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "</member>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    return-void
.end method

.method static byteToHex(B)Ljava/lang/String;
    .registers 5
    .parameter "b"

    .prologue
    .line 355
    const/16 v2, 0x10

    new-array v1, v2, [C

    fill-array-data v1, :array_20

    .line 358
    .local v1, hexDigit:[C
    const/4 v2, 0x2

    new-array v0, v2, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    .line 361
    .local v0, array:[C
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 355
    :array_20
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method static bytesToHex([B)Ljava/lang/String;
    .registers 4
    .parameter "b"

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 349
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/exchange/adapter/EasActivator;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 350
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "key"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, digest:Ljava/lang/String;
    const-string v0, "HmacSha1"

    .line 376
    .local v0, algorithm:Ljava/lang/String;
    const/4 v3, 0x0

    .line 379
    .local v3, digestByteArray:[B
    :try_start_4
    const-string v9, "UTF8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_26

    move-result-object v5

    .line 387
    .local v5, keyByteArray:[B
    :try_start_a
    const-string v9, "UTF8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_33

    move-result-object v7

    .line 395
    .local v7, messageByteArray:[B
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v8, v5, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 398
    .local v8, secretkey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 399
    .local v6, mac:Ljavax/crypto/Mac;
    invoke-virtual {v6, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 401
    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 402
    invoke-static {v3}, Lcom/android/exchange/adapter/EasActivator;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 404
    .end local v1           #digest:Ljava/lang/String;
    .end local v5           #keyByteArray:[B
    .end local v6           #mac:Ljavax/crypto/Mac;
    .end local v7           #messageByteArray:[B
    .end local v8           #secretkey:Ljavax/crypto/spec/SecretKeySpec;
    .local v2, digest:Ljava/lang/String;
    :goto_25
    return-object v2

    .line 380
    .end local v2           #digest:Ljava/lang/String;
    .restart local v1       #digest:Ljava/lang/String;
    :catch_26
    move-exception v4

    .line 381
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 382
    const-string v9, "ExchangeActivation"

    const-string v10, "computeHmacSha1 cannot get key byte"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 383
    .end local v1           #digest:Ljava/lang/String;
    .restart local v2       #digest:Ljava/lang/String;
    goto :goto_25

    .line 388
    .end local v2           #digest:Ljava/lang/String;
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #digest:Ljava/lang/String;
    .restart local v5       #keyByteArray:[B
    :catch_33
    move-exception v4

    .line 389
    .restart local v4       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 390
    const-string v9, "ExchangeActivation"

    const-string v10, "computeHmacSha1 cannot get message byte"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 391
    .end local v1           #digest:Ljava/lang/String;
    .restart local v2       #digest:Ljava/lang/String;
    goto :goto_25
.end method

.method private getChecksum()Z
    .registers 7

    .prologue
    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, noError:Z
    const/4 v4, 0x0

    sput-object v4, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    .line 326
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, messageBuffer:Ljava/lang/StringBuffer;
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mDeviceModelName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mUTCTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    const-string v4, "user@companyx.com"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const-string v4, "Y"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, messageValue:Ljava/lang/String;
    :try_start_2d
    const-string v4, "procuring nay end happiness allowance assurance frankness"

    invoke-static {v4, v2}, Lcom/android/exchange/adapter/EasActivator;->computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    .line 337
    const-string v4, "ExchangeActivation"

    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/security/GeneralSecurityException; {:try_start_2d .. :try_end_3e} :catch_42

    if-eqz v4, :cond_41

    .line 339
    const/4 v3, 0x1

    .line 343
    :cond_41
    :goto_41
    return v3

    .line 340
    :catch_42
    move-exception v0

    .line 341
    .local v0, e:Ljava/security/GeneralSecurityException;
    const-string v4, "ExchangeActivation"

    const-string v5, "getChecksum cannot complete"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method private getDate()V
    .registers 4

    .prologue
    .line 179
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 180
    .local v1, lv_localDate:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, lv_formatter_UTC:Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 182
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/exchange/adapter/EasActivator;->mUTCTimestamp:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private getDeviceInfo()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, noError:Z
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v5, Lcom/android/exchange/adapter/EasActivator;->mDeviceModelName:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasActivator;->getDate()V

    .line 132
    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 144
    .local v3, phoneType:I
    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    .line 145
    sget-boolean v5, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v5, :cond_35

    .line 146
    const-string v5, "ExchangeActivation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Phone device, mImei : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_35
    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    .line 153
    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    if-nez v5, :cond_45

    .line 154
    const-string v5, "000000000000"

    sput-object v5, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    .line 155
    :cond_45
    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    if-eqz v5, :cond_4d

    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    if-nez v5, :cond_55

    .line 156
    :cond_4d
    const-string v4, "ExchangeActivation"

    const-string v5, "getDeviceInfo - Can not get device info imei or isdn"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v1           #noError:Z
    :goto_54
    return v1

    .line 160
    .restart local v1       #noError:Z
    :cond_55
    :try_start_55
    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, operatorInfo:Ljava/lang/String;
    if-eqz v2, :cond_65

    .line 165
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_65} :catch_67

    :cond_65
    move v1, v4

    .line 174
    goto :goto_54

    .line 167
    .end local v2           #operatorInfo:Ljava/lang/String;
    :catch_67
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ExchangeActivation"

    const-string v6, "getDeviceInfo - Can not get country code!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v5, "000"

    sput-object v5, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;

    move v1, v4

    .line 171
    goto :goto_54
.end method

.method private getLicenseKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .parameter "urlServerToConnect"
    .parameter "xmlContentToSend"

    .prologue
    .line 194
    const/4 v11, 0x0

    .line 195
    .local v11, noError:Z
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 196
    .local v7, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 198
    .local v8, httppost:Lorg/apache/http/client/methods/HttpPost;
    const/4 v15, 0x0

    .line 199
    .local v15, response:Lorg/apache/http/HttpResponse;
    const/4 v9, 0x0

    .line 200
    .local v9, instream:Ljava/io/InputStream;
    const-string v10, "unknown"

    .line 202
    .local v10, license_key:Ljava/lang/String;
    const-string v18, "content-type"

    const-string v19, "application/x-www-form-urlencoded"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v18, "user-agent"

    const-string v19, "text/xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v18, "accept"

    const-string v19, "text/xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :try_start_32
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v18, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v6, entity:Lorg/apache/http/entity/StringEntity;
    const-string v18, "application/xml"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v8, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/utility/ProxyUtils;->getPort(Landroid/content/Context;)I

    move-result v14

    .line 215
    .local v14, proxyPort:I
    const-string v18, "PROXY1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Proxy Host: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v18, "PROXY1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Proxy port: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz v13, :cond_a4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a4

    if-ltz v14, :cond_a4

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v8, v13, v14}, Lcom/android/exchange/EasSyncService;->addProxyParamsIfProxySet(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;I)V

    .line 223
    :cond_a4
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_a7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_32 .. :try_end_a7} :catch_103
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_a7} :catch_10f

    move-result-object v15

    .line 232
    .end local v6           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v13           #proxyHost:Ljava/lang/String;
    .end local v14           #proxyPort:I
    :goto_a8
    if-eqz v15, :cond_16e

    .line 233
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, statusInfo:Ljava/lang/String;
    const-string v18, "ExchangeActivation"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 236
    .local v3, code:I
    const-string v18, "ExchangeActivation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Device activation response: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v3, v0, :cond_18b

    .line 239
    const-string v18, "Content-Length"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 240
    .local v4, content_len:Lorg/apache/http/Header;
    if-eqz v4, :cond_f9

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_11b

    .line 241
    :cond_f9
    const-string v18, "ExchangeActivation"

    const-string v19, "getLicenseKey - http response has no content"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v18, 0x0

    .line 277
    .end local v3           #code:I
    .end local v4           #content_len:Lorg/apache/http/Header;
    .end local v17           #statusInfo:Ljava/lang/String;
    :goto_102
    return-object v18

    .line 224
    :catch_103
    move-exception v5

    .line 225
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 226
    const-string v18, "ExchangeActivation"

    const-string v19, "getLicenseKey - http post ClientProtocolException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 227
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_10f
    move-exception v5

    .line 228
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 229
    const-string v18, "ExchangeActivation"

    const-string v19, "getLicenseKey - http post IOException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 244
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #code:I
    .restart local v4       #content_len:Lorg/apache/http/Header;
    .restart local v17       #statusInfo:Ljava/lang/String;
    :cond_11b
    const-string v18, "ExchangeActivation"

    const-string v19, "getLicenseKey - http response status = 200"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_122
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 250
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 251
    new-instance v12, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;-><init>(Lcom/android/exchange/adapter/EasActivator;)V

    .line 252
    .local v12, parser:Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
    invoke-virtual {v12, v9}, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v16

    .line 253
    .local v16, responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 254
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    .local v2, checksum:Ljava/lang/String;
    const-string v18, "ExchangeActivation"

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v18, "ExchangeActivation"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/exchange/adapter/EasActivator;->verifyLicenseLey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17a

    .line 258
    const-string v18, "ExchangeActivation"

    const-string v19, "getLicenseKey - Licensekey verification success."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_16d} :catch_182

    .line 259
    const/4 v11, 0x1

    .line 273
    .end local v2           #checksum:Ljava/lang/String;
    .end local v3           #code:I
    .end local v4           #content_len:Lorg/apache/http/Header;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #parser:Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
    .end local v16           #responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #statusInfo:Ljava/lang/String;
    :cond_16e
    :goto_16e
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 274
    if-eqz v11, :cond_1a6

    move-object/from16 v18, v10

    .line 275
    goto :goto_102

    .line 261
    .restart local v2       #checksum:Ljava/lang/String;
    .restart local v3       #code:I
    .restart local v4       #content_len:Lorg/apache/http/Header;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #parser:Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
    .restart local v16       #responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17       #statusInfo:Ljava/lang/String;
    :cond_17a
    :try_start_17a
    const-string v18, "ExchangeActivation"

    const-string v19, "getLicenseKey - Licensekey verification failed."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_181} :catch_182

    goto :goto_16e

    .line 263
    .end local v2           #checksum:Ljava/lang/String;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #parser:Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
    .end local v16           #responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_182
    move-exception v5

    .line 264
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "ExchangeActivation"

    const-string v19, "getLicenseKey - http response has no license"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 268
    .end local v4           #content_len:Lorg/apache/http/Header;
    .end local v5           #e:Ljava/lang/Exception;
    :cond_18b
    const-string v18, "ExchangeActivation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getLicenseKey - http response status "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 277
    .end local v3           #code:I
    .end local v17           #statusInfo:Ljava/lang/String;
    :cond_1a6
    const/16 v18, 0x0

    goto/16 :goto_102
.end method

.method private verifyLicenseLey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "licensekeyStr"
    .parameter "checksumStr"

    .prologue
    .line 281
    const/4 v3, 0x0

    .line 283
    .local v3, noError:Z
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v4, v3

    .line 307
    .end local v3           #noError:Z
    .local v4, noError:I
    :goto_6
    return v4

    .line 286
    .end local v4           #noError:I
    .restart local v3       #noError:Z
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 289
    .local v1, licensekey:[B
    if-eqz v1, :cond_51

    .line 292
    :try_start_d
    const-string v5, "procuring nay end happiness allowance assurance frankness"

    invoke-static {v5, p1}, Lcom/android/exchange/adapter/EasActivator;->computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, myChecksum:Ljava/lang/String;
    const-string v5, "ExchangeActivation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v5, "ExchangeActivation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_43} :catch_53

    .line 300
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 301
    const-string v5, "ExchangeActivation"

    const-string v6, "verify_licensekey - verify license key success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v3, 0x1

    .end local v2           #myChecksum:Ljava/lang/String;
    :cond_51
    :goto_51
    move v4, v3

    .line 307
    .restart local v4       #noError:I
    goto :goto_6

    .line 295
    .end local v4           #noError:I
    :catch_53
    move-exception v0

    .line 296
    .local v0, e:Ljava/security/GeneralSecurityException;
    const-string v5, "ExchangeActivation"

    const-string v6, "verify_licensekey - can not complete computeHmacSha1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 297
    .restart local v4       #noError:I
    goto :goto_6

    .line 304
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    .end local v4           #noError:I
    .restart local v2       #myChecksum:Ljava/lang/String;
    :cond_5d
    const-string v5, "ExchangeActivation"

    const-string v6, "verify_licensekey - verify license key fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method static xmlReqBuffer_setup()Ljava/lang/String;
    .registers 3

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    .line 433
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const/4 v0, 0x7

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 440
    const/16 v0, 0x8

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 441
    const/16 v0, 0x9

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 442
    const/16 v0, 0xa

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mDeviceModelName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 443
    const/16 v0, 0xb

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mUTCTimestamp:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 444
    const/16 v0, 0xc

    const-string v1, "user@companyx.com"

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 445
    const/16 v0, 0xd

    const-string v1, "Y"

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 446
    const/16 v0, 0xe

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 447
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public actionActivateDevice()Ljava/lang/String;
    .registers 5

    .prologue
    .line 102
    const-string v1, "https://api.samsungapps.com/activesync/activate/activesync"

    .line 103
    .local v1, urlServerToConnect:Ljava/lang/String;
    const/4 v0, 0x0

    .line 106
    .local v0, license:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasActivator;->getDeviceInfo()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 107
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasActivator;->getChecksum()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 108
    invoke-static {}, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer_setup()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, xmlContentToSend:Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 110
    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/EasActivator;->getLicenseKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .end local v2           #xmlContentToSend:Ljava/lang/String;
    :cond_19
    return-object v0
.end method
