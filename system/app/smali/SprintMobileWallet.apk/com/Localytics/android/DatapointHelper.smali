.class public final Lcom/Localytics/android/DatapointHelper;
.super Ljava/lang/Object;
.source "DatapointHelper.java"


# static fields
.field public static final ACTION_CREATE:Ljava/lang/String; = "  a: c\n"

.field public static final ACTION_OPTIN:Ljava/lang/String; = "  a: optin\n"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "  a: u\n"

.field public static final CONTROLLER_EVENT:Ljava/lang/String; = "- c: ev\n"

.field public static final CONTROLLER_OPT:Ljava/lang/String; = "- c: optin\n"

.field public static final CONTROLLER_SESSION:Ljava/lang/String; = "- c: se\n"

.field public static final EVENT_ATTRIBUTE:Ljava/lang/String; = "   attrs:\n"

.field private static final LOG_PREFIX:Ljava/lang/String; = "(DatapointHelper) "

.field public static final OBJECT_EVENT_DP:Ljava/lang/String; = "  ev:\n"

.field public static final OBJECT_OPT:Ljava/lang/String; = "  optin:\n"

.field public static final OBJECT_SESSION_DP:Ljava/lang/String; = "  se:\n"

.field public static final PARAM_APP_UUID:Ljava/lang/String; = "au"

.field public static final PARAM_APP_VERSION:Ljava/lang/String; = "av"

.field public static final PARAM_CARRIER_MEID:Ljava/lang/String; = "meid"

.field public static final PARAM_CLIENT_CLOSED_TIME:Ljava/lang/String; = "ctc"

.field public static final PARAM_CLIENT_TIME:Ljava/lang/String; = "ct"

.field public static final PARAM_DATA_CONNECTION:Ljava/lang/String; = "dac"

.field public static final PARAM_DEVICE_COUNTRY:Ljava/lang/String; = "dc"

.field public static final PARAM_DEVICE_MAKE:Ljava/lang/String; = "dma"

.field public static final PARAM_DEVICE_MODEL:Ljava/lang/String; = "dmo"

.field public static final PARAM_DEVICE_PLATFORM:Ljava/lang/String; = "dp"

.field public static final PARAM_DEVICE_UUID:Ljava/lang/String; = "du"

.field public static final PARAM_EVENT_NAME:Ljava/lang/String; = "n"

.field public static final PARAM_LIBRARY_VERSION:Ljava/lang/String; = "lv"

.field public static final PARAM_LOCALE:Ljava/lang/String; = "dl"

.field public static final PARAM_LOCALE_COUNTRY:Ljava/lang/String; = "dlc"

.field public static final PARAM_LOCALE_LANGUAGE:Ljava/lang/String; = "dll"

.field public static final PARAM_LOCATION_LAT:Ljava/lang/String; = "lat"

.field public static final PARAM_LOCATION_LNG:Ljava/lang/String; = "lng"

.field public static final PARAM_LOCATION_SOURCE:Ljava/lang/String; = "ls"

.field public static final PARAM_NETWORK_CARRIER:Ljava/lang/String; = "nca"

.field public static final PARAM_NETWORK_COUNTRY:Ljava/lang/String; = "nc"

.field public static final PARAM_NETWORK_MCC:Ljava/lang/String; = "mcc"

.field public static final PARAM_NETWORK_MNC:Ljava/lang/String; = "mnc"

.field public static final PARAM_OPT_VALUE:Ljava/lang/String; = "optin"

.field public static final PARAM_OS_VERSION:Ljava/lang/String; = "dov"

.field public static final PARAM_SESSION_UUID:Ljava/lang/String; = "su"

.field public static final PARAM_UUID:Ljava/lang/String; = "u"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "rawString"

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 290
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "\""

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, parseString:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 293
    .local v2, startRead:I
    const/4 v3, 0x0

    .line 294
    .local v3, stopRead:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 296
    .local v0, bufferLength:I
    if-nez p0, :cond_2f

    .line 298
    const-string v4, ""

    .line 323
    :goto_15
    return-object v4

    .line 305
    :cond_16
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_22

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_40

    .line 307
    :cond_22
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    move v2, v3

    .line 317
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    .line 303
    :cond_2f
    if-lt v3, v0, :cond_16

    .line 320
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    .line 312
    :cond_40
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-nez v4, :cond_2d

    .line 314
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    add-int/lit8 v2, v3, 0x1

    goto :goto_2d
.end method

.method public static formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "paramName"
    .parameter "paramValue"
    .parameter "paramIndent"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x80

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_d

    .line 160
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 162
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_17

    .line 166
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 170
    :cond_17
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v1, formattedString:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, currentIndent:I
    :goto_1d
    if-lt v0, p2, :cond_3c

    .line 176
    invoke-static {p0}, Lcom/Localytics/android/DatapointHelper;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-static {p1}, Lcom/Localytics/android/DatapointHelper;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    :cond_3c
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "appContext"

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 260
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    .line 264
    :goto_f
    return-object v2

    .line 262
    :catch_10
    move-exception v0

    .line 264
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "unknown"

    goto :goto_f
.end method

.method public static getGlobalDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "appContext"

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, systemId:Ljava/lang/String;
    if-nez v4, :cond_e

    .line 212
    :goto_d
    return-object v5

    .line 204
    :cond_e
    :try_start_e
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 205
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 206
    .local v0, digest:[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 207
    .local v2, hashedNumber:Ljava/math/BigInteger;
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_2d} :catch_2f

    move-object v5, v6

    goto :goto_d

    .line 210
    .end local v0           #digest:[B
    .end local v2           #hashedNumber:Ljava/math/BigInteger;
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_2f
    move-exception v1

    .line 212
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_d
.end method

.method public static getNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4
    .parameter "appContext"
    .parameter "telephonyManager"

    .prologue
    .line 226
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 231
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    :try_start_8
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_11

    move-result v1

    if-eqz v1, :cond_12

    .line 233
    const-string v1, "wifi"

    .line 246
    :goto_10
    return-object v1

    .line 236
    :catch_11
    move-exception v1

    .line 238
    :cond_12
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 246
    const-string v1, "none"

    goto :goto_10

    .line 240
    :pswitch_1c
    const-string v1, "edge"

    goto :goto_10

    .line 241
    :pswitch_1f
    const-string v1, "GPRS"

    goto :goto_10

    .line 242
    :pswitch_22
    const-string v1, "UMTS"

    goto :goto_10

    .line 243
    :pswitch_25
    const-string v1, "unknown"

    goto :goto_10

    .line 238
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1f
        :pswitch_1c
        :pswitch_22
    .end packed-switch
.end method

.method public static getTimeAsDatetime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss-00:00"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 276
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
