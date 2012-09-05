.class public Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;
.super Ljava/lang/Object;
.source "AccuweatherUiUtil.java"


# instance fields
.field private iconGroups_Main:[[I

.field private localeArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v0, 0x14

    new-array v0, v0, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_184

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_18c

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_196

    aput-object v1, v0, v7

    new-array v1, v5, [I

    const/16 v2, 0xb

    aput v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v8, [I

    fill-array-data v1, :array_1a0

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v5, [I

    const/16 v3, 0xe

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [I

    fill-array-data v2, :array_1ac

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [I

    fill-array-data v2, :array_1b6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [I

    const/16 v3, 0x12

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [I

    fill-array-data v2, :array_1be

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [I

    fill-array-data v2, :array_1c6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [I

    fill-array-data v2, :array_1ce

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [I

    const/16 v3, 0x1d

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [I

    fill-array-data v2, :array_1d8

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [I

    const/16 v3, 0x1e

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [I

    const/16 v3, 0x1f

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [I

    const/16 v3, 0x20

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v5, [I

    const/16 v3, 0x21

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v8, [I

    fill-array-data v2, :array_1e2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [I

    const/16 v3, 0x26

    aput v3, v2, v4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->iconGroups_Main:[[I

    .line 169
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "en#en-US"

    aput-object v1, v0, v4

    const-string v1, "en_US#en-us"

    aput-object v1, v0, v5

    const-string v1, "en_GB#en-gb"

    aput-object v1, v0, v7

    const-string v1, "es#es"

    aput-object v1, v0, v6

    const-string v1, "fr#fr"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "da#da"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pt#pt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nl#nl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "nb#no"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "it#it"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de#de"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sv#sv"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fi#fi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "zh#zh-cn"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "zh_CN#zh-cn"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "zh_TW#zh-tw"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sk#sk"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ro#ro"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cs#cs"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hu#hu"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pl#pl"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pt_BR#pt-br"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "hi#in"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ru#ru"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ar#ar"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "el#el"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ja#ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ko#ka"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "tr#tr"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "fr_CA#fr-ca"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "iw#he"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->localeArray:[Ljava/lang/String;

    return-void

    .line 100
    :array_184
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_18c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_196
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ac
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_1b6
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_1be
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    :array_1c6
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ce
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1d8
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_1e2
    .array-data 0x4
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private findLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "loc"

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->localeArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 223
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->localeArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, vals:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    .line 225
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 226
    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 231
    .end local v1           #vals:[Ljava/lang/String;
    :goto_20
    return-object v2

    .line 222
    .restart local v1       #vals:[Ljava/lang/String;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v1           #vals:[Ljava/lang/String;
    :cond_24
    const/4 v2, 0x0

    goto :goto_20
.end method


# virtual methods
.method public convertImageGroup_Main(I)I
    .registers 5
    .parameter "iconNum"

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->iconGroups_Main:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 160
    const/4 v1, 0x0

    .local v1, j:I
    :goto_7
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->iconGroups_Main:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 161
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->iconGroups_Main:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, p1, :cond_17

    .line 166
    .end local v0           #i:I
    .end local v1           #j:I
    :goto_16
    return v0

    .line 160
    .restart local v0       #i:I
    .restart local v1       #j:I
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 159
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v1           #j:I
    :cond_1d
    const/4 v0, -0x1

    goto :goto_16
.end method

.method public getDayNight(I)I
    .registers 11
    .parameter "icon"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    .line 237
    new-array v0, v7, [[I

    const/4 v5, 0x0

    new-array v6, v8, [I

    fill-array-data v6, :array_3e

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const/16 v6, 0x20

    new-array v6, v6, [I

    fill-array-data v6, :array_4e

    aput-object v6, v0, v5

    const/4 v5, 0x2

    new-array v6, v8, [I

    fill-array-data v6, :array_92

    aput-object v6, v0, v5

    .line 240
    .local v0, aa:[[I
    new-array v3, v7, [I

    fill-array-data v3, :array_a2

    .line 242
    .local v3, res:[I
    const/4 v4, 0x0

    .line 244
    .local v4, result:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    array-length v5, v0

    if-ge v1, v5, :cond_3b

    .line 246
    const/4 v2, 0x0

    .local v2, j:I
    :goto_29
    aget-object v5, v0, v1

    array-length v5, v5

    if-ge v2, v5, :cond_38

    .line 248
    aget-object v5, v0, v1

    aget v5, v5, v2

    if-ne p1, v5, :cond_35

    .line 250
    move v4, v1

    .line 246
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 244
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 254
    .end local v2           #j:I
    :cond_3b
    aget v5, v3, v4

    return v5

    .line 237
    :array_3e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_4e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_92
    .array-data 0x4
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
    .end array-data

    .line 240
    :array_a2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getLanguageString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "context"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, localeString:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->findLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_23

    .line 212
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->findLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    if-nez v1, :cond_23

    .line 214
    const-string v2, "en-us"

    .line 218
    :goto_22
    return-object v2

    :cond_23
    move-object v2, v1

    goto :goto_22
.end method

.method public getSmallImage(I)I
    .registers 3
    .parameter "iconnum"

    .prologue
    .line 14
    packed-switch p1, :pswitch_data_58

    .line 97
    :pswitch_3
    const v0, 0x7f02005a

    :goto_6
    return v0

    .line 18
    :pswitch_7
    const v0, 0x7f02005a

    .line 19
    .local v0, imageId:I
    goto :goto_6

    .line 23
    .end local v0           #imageId:I
    :pswitch_b
    const v0, 0x7f02005c

    .line 24
    .restart local v0       #imageId:I
    goto :goto_6

    .line 28
    .end local v0           #imageId:I
    :pswitch_f
    const v0, 0x7f02005e

    .line 29
    .restart local v0       #imageId:I
    goto :goto_6

    .line 31
    .end local v0           #imageId:I
    :pswitch_13
    const v0, 0x7f020060

    .line 32
    .restart local v0       #imageId:I
    goto :goto_6

    .line 37
    .end local v0           #imageId:I
    :pswitch_17
    const v0, 0x7f020062

    .line 38
    .restart local v0       #imageId:I
    goto :goto_6

    .line 40
    .end local v0           #imageId:I
    :pswitch_1b
    const v0, 0x7f020064

    .line 41
    .restart local v0       #imageId:I
    goto :goto_6

    .line 45
    .end local v0           #imageId:I
    :pswitch_1f
    const v0, 0x7f020066

    .line 46
    .restart local v0       #imageId:I
    goto :goto_6

    .line 49
    .end local v0           #imageId:I
    :pswitch_23
    const v0, 0x7f020068

    .line 50
    .restart local v0       #imageId:I
    goto :goto_6

    .line 52
    .end local v0           #imageId:I
    :pswitch_27
    const v0, 0x7f02006a

    .line 53
    .restart local v0       #imageId:I
    goto :goto_6

    .line 56
    .end local v0           #imageId:I
    :pswitch_2b
    const v0, 0x7f02006c

    .line 57
    .restart local v0       #imageId:I
    goto :goto_6

    .line 60
    .end local v0           #imageId:I
    :pswitch_2f
    const v0, 0x7f02006e

    .line 61
    .restart local v0       #imageId:I
    goto :goto_6

    .line 65
    .end local v0           #imageId:I
    :pswitch_33
    const v0, 0x7f020070

    .line 66
    .restart local v0       #imageId:I
    goto :goto_6

    .line 70
    .end local v0           #imageId:I
    :pswitch_37
    const v0, 0x7f020072

    .line 71
    .restart local v0       #imageId:I
    goto :goto_6

    .line 73
    .end local v0           #imageId:I
    :pswitch_3b
    const v0, 0x7f020074

    .line 74
    .restart local v0       #imageId:I
    goto :goto_6

    .line 76
    .end local v0           #imageId:I
    :pswitch_3f
    const v0, 0x7f020076

    .line 77
    .restart local v0       #imageId:I
    goto :goto_6

    .line 79
    .end local v0           #imageId:I
    :pswitch_43
    const v0, 0x7f020078

    .line 80
    .restart local v0       #imageId:I
    goto :goto_6

    .line 82
    .end local v0           #imageId:I
    :pswitch_47
    const v0, 0x7f02007a

    .line 83
    .restart local v0       #imageId:I
    goto :goto_6

    .line 85
    .end local v0           #imageId:I
    :pswitch_4b
    const v0, 0x7f02007c

    .line 86
    .restart local v0       #imageId:I
    goto :goto_6

    .line 91
    .end local v0           #imageId:I
    :pswitch_4f
    const v0, 0x7f02007e

    .line 92
    .restart local v0       #imageId:I
    goto :goto_6

    .line 94
    .end local v0           #imageId:I
    :pswitch_53
    const v0, 0x7f020080

    .line 95
    .restart local v0       #imageId:I
    goto :goto_6

    .line 14
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_33
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_3
        :pswitch_3
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_53
        :pswitch_17
        :pswitch_17
        :pswitch_1f
        :pswitch_1f
        :pswitch_2b
        :pswitch_33
    .end packed-switch
.end method
