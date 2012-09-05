.class public final Lcom/google/android/youtube/core/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final NON_STANDARD_VEVO_CHANNELS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO_SECONDS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->ZERO_SECONDS:Ljava/lang/String;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "mariannefaithfull"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "sylver"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ingrooves"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "davidbisbal"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "barryip"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "avantgarde"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TAPBackFromTheDead"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "mirandaMurphy"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "scarsonbroadway"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "staracademy6"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Metalblade1982"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "portishead"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "EdubbOnline"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "fabiano"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Nordman"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "UniversalTest"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "taiji"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "NIKP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "oranjuicejones"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "universalmusicmexico"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "hayleywestenra"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ryanbingham"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SylviaMcNair"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "melissaetheridge"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "monacibuddisti"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "NolwennLeroy"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "paolobrera"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TAPUNWIGGED"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "TheDissociatives"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "emimusic"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "parlophone"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "capitolmusic"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "capitolrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "virginrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "mutechannel"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "muteusa"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->NON_STANDARD_VEVO_CHANNELS:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 592
    if-eqz p0, :cond_7

    .line 593
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 595
    :goto_6
    return v0

    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static asString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 303
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static asUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter "s"

    .prologue
    .line 294
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method

.method public static formatMetadataKeywords(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "rawKeywords"
    .parameter "maxTotalLength"
    .parameter "defaultKeyword"

    .prologue
    .line 634
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[<>]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    const-string v6, ","

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 637
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ",;"

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_26
    :goto_26
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 639
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, token:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 641
    .local v1, length:I
    const/4 v4, 0x2

    if-gt v4, v1, :cond_26

    const/16 v4, 0x1e

    if-gt v1, v4, :cond_26

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v4, p1, :cond_26

    .line 643
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 646
    .end local v1           #length:I
    .end local v2           #token:Ljava/lang/String;
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 648
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v3           #tokenizer:Ljava/util/StringTokenizer;
    :goto_54
    return-object v4

    :cond_55
    const/4 v4, 0x0

    invoke-static {v4, p1, p2}, Lcom/google/android/youtube/core/utils/Util;->formatMetadataString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_54
.end method

.method public static formatMetadataString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"
    .parameter "maxLength"
    .parameter "defaultValue"

    .prologue
    .line 608
    if-ltz p1, :cond_d

    const/4 v0, 0x1

    :goto_3
    const-string v1, "maxLength must be non-negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 609
    invoke-static {p0, p1, p2}, Lcom/google/android/youtube/core/utils/Util;->formatMetadataStringInternal(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 608
    :cond_d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static formatMetadataStringInternal(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"
    .parameter "maxLength"
    .parameter "defaultValue"

    .prologue
    .line 613
    const-string v0, "defaultValue may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    if-nez p0, :cond_8

    .line 616
    move-object p0, p2

    .line 620
    :cond_8
    const-string v0, "[<>]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 622
    if-ltz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_1d

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 626
    :cond_1d
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 3
    .parameter "context"

    .prologue
    .line 113
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 552
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 553
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    .line 556
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_10
    return v2

    .line 554
    :catch_11
    move-exception v0

    .line 555
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "could not retrieve application version name"

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static getDeviceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "context"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 183
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_f

    .line 184
    :cond_c
    const-string v2, "Disconnected"

    .line 191
    :cond_e
    :goto_e
    return-object v2

    .line 186
    :cond_f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, subType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method public static getRFC3339()Ljava/text/SimpleDateFormat;
    .registers 3

    .prologue
    .line 348
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 349
    .local v0, RFC_3339:Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 350
    return-object v0
.end method

.method public static getRFC3339TZ()Ljava/text/SimpleDateFormat;
    .registers 3

    .prologue
    .line 354
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, country:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 257
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_f

    .line 258
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .end local v0           #country:Ljava/lang/String;
    :goto_15
    return-object v0

    .restart local v0       #country:Ljava/lang/String;
    :cond_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static isChargeableNetwork(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 161
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_e

    .line 162
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_12

    .line 173
    :cond_e
    :goto_e
    :sswitch_e
    return v1

    .line 168
    :sswitch_f
    const/4 v1, 0x1

    goto :goto_e

    .line 162
    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_f
        0x1 -> :sswitch_e
        0x6 -> :sswitch_e
        0x9 -> :sswitch_e
    .end sparse-switch
.end method

.method public static isFastNetwork(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 125
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1b

    .line 126
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_1e

    move v1, v2

    .line 156
    :goto_10
    :sswitch_10
    return v1

    .line 132
    :sswitch_11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_30

    :pswitch_18
    goto :goto_10

    :pswitch_19
    move v1, v2

    .line 147
    goto :goto_10

    :cond_1b
    move v1, v2

    .line 156
    goto :goto_10

    .line 126
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_10
        0x6 -> :sswitch_10
        0x9 -> :sswitch_10
    .end sparse-switch

    .line 132
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public static isFileUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 743
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 566
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 567
    .local v1, screenSize:I
    const/4 v2, 0x2

    if-le v1, v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static isMobileNetworkCapable(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 200
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 120
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isVevoChannel(Ljava/lang/String;)Z
    .registers 4
    .parameter "channelName"

    .prologue
    const/4 v0, 0x1

    .line 473
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vevo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 478
    :cond_d
    :goto_d
    return v0

    .line 475
    :cond_e
    sget-object v1, Lcom/google/android/youtube/core/utils/Util;->NON_STANDARD_VEVO_CHANNELS:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 478
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isWiFiNetwork(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 178
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_e

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .registers 4
    .parameter "s"
    .parameter "defaultValue"

    .prologue
    .line 333
    if-eqz p0, :cond_a

    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_b

    move-result p1

    .line 335
    .end local p1
    :cond_a
    :goto_a
    return p1

    .line 334
    .restart local p1
    :catch_b
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_a
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 4
    .parameter "s"
    .parameter "defaultValue"

    .prologue
    .line 311
    if-eqz p0, :cond_a

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_b

    move-result p1

    .line 313
    .end local p1
    :cond_a
    :goto_a
    return p1

    .line 312
    .restart local p1
    :catch_b
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_a
.end method

.method public static probablyLowEndDevice(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/GservicesUtil;->getDeviceTier(Landroid/content/ContentResolver;)I

    move-result v2

    packed-switch v2, :pswitch_data_34

    .line 232
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 234
    .local v0, display:Landroid/view/Display;
    if-nez v0, :cond_1e

    .line 238
    .end local v0           #display:Landroid/view/Display;
    :goto_1b
    :pswitch_1b
    return v4

    :pswitch_1c
    move v4, v3

    .line 228
    goto :goto_1b

    .line 237
    .restart local v0       #display:Landroid/view/Display;
    :cond_1e
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 238
    .local v1, smallestScreenSize:I
    const/16 v2, 0x167

    if-gt v1, v2, :cond_31

    move v2, v3

    :goto_2f
    move v4, v2

    goto :goto_1b

    :cond_31
    move v2, v4

    goto :goto_2f

    .line 224
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method private static removeTimeZoneColon(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x3

    .line 387
    .local v0, colonIndex:I
    if-gez v0, :cond_9

    .line 393
    .end local p0
    :cond_8
    :goto_8
    return-object p0

    .line 390
    .restart local p0
    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_8

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static secondsToString(I)Ljava/lang/String;
    .registers 8
    .parameter "secs"

    .prologue
    const/4 v6, 0x1

    .line 88
    div-int/lit8 v1, p0, 0x3c

    .line 89
    .local v1, mins:I
    div-int/lit8 v0, v1, 0x3c

    .line 90
    .local v0, hours:I
    if-lez v0, :cond_9

    .line 91
    rem-int/lit8 v1, v1, 0x3c

    .line 93
    :cond_9
    rem-int/lit8 p0, p0, 0x3c

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, secsStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_28

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    :cond_28
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, minsStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_45

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_45
    if-lez v0, :cond_69

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    :goto_68
    return-object v4

    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_68
.end method

.method public static shrinkDirSize(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 22
    .parameter "dirPath"
    .parameter "filesSuffix"
    .parameter "limit"

    .prologue
    .line 494
    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-lez v14, :cond_4b

    const/4 v14, 0x1

    :goto_7
    const-string v15, "limit may not be <= 0"

    invoke-static {v14, v15}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 495
    const-string v14, "dirPath may not be empty"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 496
    const-string v14, "suffix may not be null"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v4, dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a directory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 499
    new-instance v9, Lcom/google/android/youtube/core/utils/Util$1;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/google/android/youtube/core/utils/Util$1;-><init>(Ljava/lang/String;)V

    .line 505
    .local v9, filter:Ljava/io/FileFilter;
    invoke-virtual {v4, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 506
    .local v8, files:[Ljava/io/File;
    if-nez v8, :cond_4d

    .line 547
    :cond_4a
    :goto_4a
    return-void

    .line 494
    .end local v4           #dir:Ljava/io/File;
    .end local v8           #files:[Ljava/io/File;
    .end local v9           #filter:Ljava/io/FileFilter;
    :cond_4b
    const/4 v14, 0x0

    goto :goto_7

    .line 510
    .restart local v4       #dir:Ljava/io/File;
    .restart local v8       #files:[Ljava/io/File;
    .restart local v9       #filter:Ljava/io/FileFilter;
    :cond_4d
    const/4 v13, 0x0

    .line 511
    .local v13, size:I
    move-object v2, v8

    .local v2, arr$:[Ljava/io/File;
    array-length v11, v2

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_51
    if-ge v10, v11, :cond_60

    aget-object v5, v2, v10

    .line 512
    .local v5, file:Ljava/io/File;
    int-to-long v14, v13

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v14, v14, v16

    long-to-int v13, v14

    .line 511
    add-int/lit8 v10, v10, 0x1

    goto :goto_51

    .line 514
    .end local v5           #file:Ljava/io/File;
    :cond_60
    int-to-long v14, v13

    cmp-long v14, v14, p2

    if-gez v14, :cond_8e

    .line 515
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dir is below limit, no need to shrink: [size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", limit="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto :goto_4a

    .line 518
    :cond_8e
    new-instance v14, Lcom/google/android/youtube/core/utils/Util$2;

    invoke-direct {v14}, Lcom/google/android/youtube/core/utils/Util$2;-><init>()V

    invoke-static {v8, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 532
    move v12, v13

    .line 533
    .local v12, newSize:I
    const/4 v3, 0x0

    .line 534
    .local v3, deletedFilesCount:I
    move-object v2, v8

    array-length v11, v2

    const/4 v10, 0x0

    :goto_9b
    if-ge v10, v11, :cond_4a

    aget-object v5, v2, v10

    .line 535
    .restart local v5       #file:Ljava/io/File;
    int-to-long v14, v12

    cmp-long v14, v14, p2

    if-ltz v14, :cond_b6

    .line 536
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 537
    .local v6, fileSize:J
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_b3

    .line 538
    int-to-long v14, v12

    sub-long/2addr v14, v6

    long-to-int v12, v14

    .line 539
    add-int/lit8 v3, v3, 0x1

    .line 534
    :cond_b3
    add-int/lit8 v10, v10, 0x1

    goto :goto_9b

    .line 542
    .end local v6           #fileSize:J
    :cond_b6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dir shrunk: [deleted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", previousSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", limit="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto/16 :goto_4a
.end method

.method public static splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "s"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 588
    :cond_a
    return-object v4

    .line 584
    :cond_b
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 585
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_16
    if-ge v1, v3, :cond_a

    aget-object v2, v0, v1

    .line 586
    .local v2, integer:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "value"

    .prologue
    .line 358
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :try_start_3
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->getRFC3339()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_a} :catch_c

    move-result-object v1

    .line 372
    :goto_b
    return-object v1

    .line 362
    :catch_c
    move-exception v1

    .line 367
    :try_start_d
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->removeTimeZoneColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->getRFC3339TZ()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_b

    .line 369
    :catch_1a
    move-exception v0

    .line 370
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RFC3339 date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"

    .prologue
    .line 660
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"

    .prologue
    .line 667
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUtf8Bytes(Ljava/lang/String;)[B
    .registers 3
    .parameter "str"

    .prologue
    .line 675
    :try_start_0
    const-string v1, "utf8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 676
    :catch_7
    move-exception v0

    .line 678
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static wipeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14
    .parameter "db"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 701
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v1

    const-string v0, "name"

    aput-object v0, v2, v4

    .line 702
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "sqlite_master"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 704
    .local v8, cursor:Landroid/database/Cursor;
    :cond_19
    :goto_19
    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 705
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 706
    .local v12, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 707
    .local v10, name:Ljava/lang/String;
    const-string v0, "sqlite_sequence"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_19 .. :try_end_4d} :catchall_6a

    move-result-object v11

    .line 711
    .local v11, sql:Ljava/lang/String;
    :try_start_4e
    invoke-virtual {p0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6a
    .catch Landroid/database/SQLException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_19

    .line 712
    :catch_52
    move-exception v9

    .line 713
    .local v9, e:Landroid/database/SQLException;
    :try_start_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error executing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_53 .. :try_end_69} :catchall_6a

    goto :goto_19

    .line 718
    .end local v9           #e:Landroid/database/SQLException;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #sql:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :catchall_6a
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 720
    return-void
.end method

.method private static xmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"

    .prologue
    .line 653
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
