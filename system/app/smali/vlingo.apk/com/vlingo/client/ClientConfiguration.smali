.class public Lcom/vlingo/client/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field public static final ACTION_BAR:I = 0x3

.field private static final ANDROID_RADIO_PKG:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final ANSWERS:I = 0x5

.field public static final AUTO_PUNCTUATION:I = 0x10

.field public static final FACEBOOK:I = 0xd

.field public static final FM_RADIO:I = 0x12

.field public static final FOURSQUARE:I = 0xb

.field private static final HOME_KEY_DOUBLE:Ljava/lang/String; = "1"

.field public static final IN_CAR:I = 0x2

.field public static final LOCALSEARCH:I = 0xa

.field public static final MOTION:I = 0x14

.field public static final MOVIES:I = 0x6

.field public static final NAVIGATION:I = 0xf

.field private static final PROPERTY_KEY:Ljava/lang/String; = "ro.vlingo.launch.key"

.field public static final RESTAURANTS:I = 0x7

.field public static final SAFEREADER:I = 0x1

.field private static final SAMSUNG_RADIO_PKG:Ljava/lang/String; = "com.samsung.app.fmradio"

.field private static final SEARCH_KEY_LONG:Ljava/lang/String; = "2"

.field public static final SEARCH_LONG_PRESS:I = 0x11

.field public static final SOCIAL:I = 0xe

.field public static final SUPERDIALER:I = 0x9

.field public static final TRAVEL:I = 0x8

.field public static final TTS:I = 0x4

.field public static final TUTORIAL:I = 0x13

.field public static final TWITTER:I = 0xc

.field private static final epic2Model:Ljava/lang/String; = "SPH-D705"

.field private static final gaudiModel:Ljava/lang/String; = "SPH-D710"

.field private static final model250K:Ljava/lang/String; = "SHW-M250K"

.field private static final model250L:Ljava/lang/String; = "SHW-M250L"

.field private static final model250S:Ljava/lang/String; = "SHW-M250S"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageSpecificSetting(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "setting_name"
    .parameter "defaultValue"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLanguageSpecificSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "setting_name"
    .parameter "defaultValue"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is12HourClock()Z
    .registers 1

    .prologue
    .line 144
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isChineseBuild()Z
    .registers 2

    .prologue
    .line 148
    const-string v0, "Preinstall Free"

    const-string v1, "Preinstall Free China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(I)Z
    .registers 7
    .parameter "flag"

    .prologue
    const/16 v5, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, toReturn:Z
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v1

    .line 65
    .local v1, isChina:Z
    packed-switch p0, :pswitch_data_fe

    .line 131
    :goto_c
    return v2

    .line 67
    :pswitch_d
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "client_config_safereader"

    invoke-static {v5, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v2, v3

    .line 68
    :goto_1c
    goto :goto_c

    :cond_1d
    move v2, v4

    .line 67
    goto :goto_1c

    .line 70
    :pswitch_1f
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isInCarMode()Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v5, "client_config_in_car"

    invoke-static {v5, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2f

    move v2, v3

    .line 71
    :goto_2e
    goto :goto_c

    :cond_2f
    move v2, v4

    .line 70
    goto :goto_2e

    .line 73
    :pswitch_31
    const-string v3, "client_config_action_bar"

    invoke-static {v3, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 74
    goto :goto_c

    .line 76
    :pswitch_38
    const-string v4, "client_config_tts"

    invoke-static {v4, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 77
    goto :goto_c

    .line 79
    :pswitch_3f
    const-string v3, "client_config_answers"

    invoke-static {v3, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 80
    goto :goto_c

    .line 82
    :pswitch_46
    const-string v3, "client_config_movies"

    invoke-static {v3, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 83
    goto :goto_c

    .line 85
    :pswitch_4d
    const-string v3, "client_config_restaurants"

    invoke-static {v3, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 86
    goto :goto_c

    .line 88
    :pswitch_54
    const-string v3, "client_config_travel"

    invoke-static {v3, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 89
    goto :goto_c

    .line 91
    :pswitch_5b
    const-string v3, "client_config_superdialer"

    invoke-static {v3, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 92
    goto :goto_c

    .line 95
    :pswitch_62
    const/4 v2, 0x1

    .line 96
    goto :goto_c

    .line 98
    :pswitch_64
    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_74

    const-string v5, "client_config_foursquare"

    invoke-static {v5, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_74

    move v2, v3

    .line 99
    :goto_73
    goto :goto_c

    :cond_74
    move v2, v4

    .line 98
    goto :goto_73

    .line 101
    :pswitch_76
    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_86

    const-string v5, "client_config_twitter"

    invoke-static {v5, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_86

    move v2, v3

    .line 102
    :goto_85
    goto :goto_c

    :cond_86
    move v2, v4

    .line 101
    goto :goto_85

    .line 104
    :pswitch_88
    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_99

    const-string v5, "client_config_facebook"

    invoke-static {v5, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_99

    move v2, v3

    .line 105
    :goto_97
    goto/16 :goto_c

    :cond_99
    move v2, v4

    .line 104
    goto :goto_97

    .line 107
    :pswitch_9b
    const-string v5, "client_config_social"

    if-nez v1, :cond_a5

    :goto_9f
    invoke-static {v5, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 108
    goto/16 :goto_c

    :cond_a5
    move v3, v4

    .line 107
    goto :goto_9f

    .line 110
    :pswitch_a7
    const-string v5, "client_config_navigation"

    if-nez v1, :cond_b1

    :goto_ab
    invoke-static {v5, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 111
    goto/16 :goto_c

    :cond_b1
    move v3, v4

    .line 110
    goto :goto_ab

    .line 113
    :pswitch_b3
    const-string v4, "client_config_auto_punctuation"

    invoke-static {v4, v3}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 114
    goto/16 :goto_c

    .line 116
    :pswitch_bb
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->useSearchLongPress()Z

    move-result v2

    .line 117
    goto/16 :goto_c

    .line 119
    :pswitch_c1
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    .line 120
    .local v0, context:Landroid/content/Context;
    const-string v5, "com.samsung.app.fmradio"

    invoke-static {v0, v5, v4}, Lcom/vlingo/client/util/PackageUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_d5

    const-string v5, "com.sec.android.app.fm"

    invoke-static {v0, v5, v4}, Lcom/vlingo/client/util/PackageUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d8

    :cond_d5
    move v2, v3

    .line 121
    :goto_d6
    goto/16 :goto_c

    :cond_d8
    move v2, v4

    .line 120
    goto :goto_d6

    .line 123
    .end local v0           #context:Landroid/content/Context;
    :pswitch_da
    const-string v3, "client_config_tutorial"

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSetting(Ljava/lang/String;Z)Z

    move-result v2

    .line 124
    goto/16 :goto_c

    .line 126
    :pswitch_f7
    if-nez v1, :cond_fc

    move v2, v3

    :goto_fa
    goto/16 :goto_c

    :cond_fc
    move v2, v4

    goto :goto_fa

    .line 65
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_d
        :pswitch_1f
        :pswitch_31
        :pswitch_38
        :pswitch_3f
        :pswitch_46
        :pswitch_4d
        :pswitch_54
        :pswitch_5b
        :pswitch_62
        :pswitch_64
        :pswitch_76
        :pswitch_88
        :pswitch_9b
        :pswitch_a7
        :pswitch_b3
        :pswitch_bb
        :pswitch_c1
        :pswitch_da
        :pswitch_f7
    .end packed-switch
.end method

.method public static isEpic2Phone()Z
    .registers 2

    .prologue
    .line 177
    invoke-static {}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->myModel()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, phoneModel:Ljava/lang/String;
    const-string v1, "SPH-D705"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 179
    const/4 v1, 0x1

    .line 181
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isGaudiPhone()Z
    .registers 2

    .prologue
    .line 188
    invoke-static {}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->myModel()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, phoneModel:Ljava/lang/String;
    const-string v1, "SPH-D710"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 190
    const/4 v1, 0x1

    .line 192
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isJKBuild()Z
    .registers 2

    .prologue
    .line 152
    const-string v0, "Preinstall Free"

    const-string v1, "Preinstall Free JK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRussianBuild()Z
    .registers 2

    .prologue
    .line 156
    const-string v0, "Preinstall Free"

    const-string v1, "Preinstall Free Russian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVisible(I)Z
    .registers 2
    .parameter "flag"

    .prologue
    .line 223
    invoke-static {p0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    .line 224
    .local v0, toReturn:Z
    packed-switch p0, :pswitch_data_c

    .line 235
    :goto_7
    return v0

    .line 226
    :pswitch_8
    const/4 v0, 0x1

    .line 227
    goto :goto_7

    .line 229
    :pswitch_a
    const/4 v0, 0x1

    goto :goto_7

    .line 224
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public static smsMethod()I
    .registers 2

    .prologue
    .line 200
    invoke-static {}, Lcom/vlingo/client/android/core/deviceinfo/AndroidPhoneInfo;->myModel()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, phoneModel:Ljava/lang/String;
    const-string v1, "SHW-M250S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "SHW-M250L"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 202
    :cond_14
    const/4 v1, 0x2

    .line 206
    :goto_15
    return v1

    .line 203
    :cond_16
    const-string v1, "SHW-M250K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 204
    const/4 v1, 0x3

    goto :goto_15

    .line 206
    :cond_20
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public static trySamsungMemoDBSave(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 19
    .parameter "context"
    .parameter "memo"

    .prologue
    .line 239
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_a

    .line 240
    :cond_8
    const/4 v15, 0x0

    .line 276
    :goto_9
    return v15

    .line 242
    :cond_a
    const-string v10, "title"

    .line 243
    .local v10, KEY_TITLE:Ljava/lang/String;
    const-string v4, "content"

    .line 244
    .local v4, KEY_CONTENT:Ljava/lang/String;
    const-string v3, "color"

    .line 245
    .local v3, KEY_COLOR:Ljava/lang/String;
    const-string v8, "modify_t"

    .line 246
    .local v8, KEY_MODIFY:Ljava/lang/String;
    const-string v5, "create_t"

    .line 248
    .local v5, KEY_CREATE:Ljava/lang/String;
    const-string v6, "delete_flag"

    .line 249
    .local v6, KEY_DELETEFLAG:Ljava/lang/String;
    const-string v9, "synch_t"

    .line 250
    .local v9, KEY_SYNCHTIME:Ljava/lang/String;
    const-string v7, "locked"

    .line 252
    .local v7, KEY_LOCKED:Ljava/lang/String;
    const-string v2, "content://com.samsung.sec.android/memo"

    .line 253
    .local v2, CONTENT_URI_PATH:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 256
    .local v13, time:J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v11, cv:Landroid/content/ContentValues;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v10, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v11, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    const-string v15, "false"

    invoke-virtual {v11, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v15, "false"

    invoke-virtual {v11, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :try_start_65
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v15, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_6e

    .line 272
    const/4 v15, 0x1

    goto :goto_9

    .line 273
    :catch_6e
    move-exception v12

    .line 276
    .local v12, e:Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_9
.end method

.method public static useSearchLongPress()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 164
    :try_start_1
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 165
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 166
    .local v2, get:Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.vlingo.launch.key"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "1"

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, ret:Ljava/lang/String;
    const-string v5, "2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_34

    move-result v4

    .line 172
    .end local v2           #get:Ljava/lang/reflect/Method;
    .end local v3           #ret:Ljava/lang/String;
    :goto_33
    return v4

    .line 169
    :catch_34
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method
