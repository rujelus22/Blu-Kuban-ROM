.class public Lcom/android/mms/ui/ChannelUtils;
.super Ljava/lang/Object;
.source "ChannelUtils.java"


# static fields
.field private static cbAllOn:Z

.field private static cbSelectedOn:Z

.field private static languages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private static msgId:[S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    .line 39
    sput-boolean v1, Lcom/android/mms/ui/ChannelUtils;->cbAllOn:Z

    .line 41
    sput-boolean v1, Lcom/android/mms/ui/ChannelUtils;->cbSelectedOn:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .parameter "context"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"

    .prologue
    .line 218
    invoke-static {p0, p1}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 219
    const/4 v1, 0x0

    .line 230
    :goto_7
    return v1

    .line 222
    :cond_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "is_checked"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 227
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static appendId(Ljava/lang/Long;)Landroid/net/Uri;
    .registers 4
    .parameter "id"

    .prologue
    .line 283
    sget-object v0, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static checkLanguage(Landroid/content/SharedPreferences;)V
    .registers 12
    .parameter "prefs"

    .prologue
    const/4 v10, 0x0

    .line 47
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 49
    const-string v8, "pref_key_german"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 50
    .local v3, isGerman:Z
    if-eqz v3, :cond_15

    .line 51
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_GERMAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_15
    const-string v8, "pref_key_english"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    .local v1, isEnglish:Z
    if-eqz v1, :cond_24

    .line 55
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_24
    const-string v8, "pref_key_italian"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 58
    .local v4, isItalian:Z
    if-eqz v4, :cond_33

    .line 59
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ITALIAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_33
    const-string v8, "pref_key_french"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 62
    .local v2, isFrench:Z
    if-eqz v2, :cond_42

    .line 63
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_FRENCH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_42
    const-string v8, "pref_key_spanish"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 66
    .local v6, isSpanish:Z
    if-eqz v6, :cond_51

    .line 67
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SPANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_51
    const-string v8, "pref_key_swedish"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 70
    .local v7, isSwedish:Z
    if-eqz v7, :cond_60

    .line 71
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SWEDISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_60
    const-string v8, "pref_key_danish"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    .local v0, isDanish:Z
    if-eqz v0, :cond_6f

    .line 75
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_6f
    const-string v8, "pref_key_portuguese"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 78
    .local v5, isPortuguese:Z
    if-eqz v5, :cond_7e

    .line 79
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_PORTUGUESE:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_7e
    return-void
.end method

.method public static getChannelId(Landroid/content/Context;)[S
    .registers 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "channel_id"

    aput-object v3, v2, v8

    const-string v3, "is_checked=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 103
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [S

    sput-object v0, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    .line 105
    const/4 v6, 0x0

    .local v6, chid:I
    :goto_27
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_3d

    .line 106
    sget-object v0, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v0, v6

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_45

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 110
    :cond_3d
    if-eqz v7, :cond_42

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_42
    sget-object v0, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    return-object v0

    .line 110
    .end local v6           #chid:I
    :catchall_45
    move-exception v0

    if-eqz v7, :cond_4b

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v0
.end method

.method public static getCheckedCount(Landroid/content/Context;)I
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "is_checked"

    aput-object v5, v2, v3

    const-string v3, "is_checked=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_26

    move-result v6

    .line 128
    if-eqz v7, :cond_25

    .line 129
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_25
    return v6

    .line 128
    :catchall_26
    move-exception v0

    if-eqz v7, :cond_2c

    .line 129
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2c
    throw v0
.end method

.method public static getIdbyChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .registers 11
    .parameter "context"
    .parameter "channelid"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_51

    .line 172
    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3b

    .line 173
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_56

    move-result-object v0

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :goto_3a
    return-object v0

    .line 175
    :cond_3b
    :try_start_3b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 176
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_56

    move-result-object v0

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    :cond_4e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3a

    .line 179
    :catchall_56
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "channelid"

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 151
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 154
    .local v6, count:I
    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2e

    move-result v6

    .line 156
    if-eqz v7, :cond_2a

    .line 157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_2a
    if-nez v6, :cond_35

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_2d
    return v0

    .line 156
    :catchall_2e
    move-exception v0

    if-eqz v7, :cond_34

    .line 157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_34
    throw v0

    .line 163
    :cond_35
    const/4 v0, 0x1

    goto :goto_2d
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .parameter "context"
    .parameter "id"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 271
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "is_checked"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x1

    return v1
.end method

.method public static removeChannel(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public static removeChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "channelid"

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public static setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 15
    .parameter "context"
    .parameter "sharedpref"

    .prologue
    const/16 v12, 0x3e7

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 287
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 288
    .local v6, smsManager:Landroid/telephony/SmsManager;
    const-string v7, "pref_key_cb_settings_activation"

    invoke-interface {p1, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 290
    .local v0, cbStatus:Z
    const-string v7, "pref_cb_my_channel_enabled_count"

    invoke-interface {p1, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 292
    .local v1, chCount:I
    const-string v7, "pref_key_cb_channel_selection"

    const-string v8, "All channels"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, chSelection:Ljava/lang/String;
    const/4 v5, 0x1

    .line 295
    .local v5, selectId:C
    const-string v7, "My channel"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 296
    const/4 v5, 0x2

    .line 298
    :cond_26
    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->checkLanguage(Landroid/content/SharedPreferences;)V

    .line 300
    const-string v7, "Mms/ChannelUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCbSettings : cbStatus :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", chSelection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", chCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-boolean v7, Lcom/android/mms/ui/ChannelUtils;->cbAllOn:Z

    if-ne v7, v11, :cond_5e

    .line 305
    invoke-virtual {v6, v10, v12}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 306
    sput-boolean v10, Lcom/android/mms/ui/ChannelUtils;->cbAllOn:Z

    .line 308
    :cond_5e
    sget-boolean v7, Lcom/android/mms/ui/ChannelUtils;->cbSelectedOn:Z

    if-ne v7, v11, :cond_9a

    .line 309
    const/4 v4, 0x0

    .local v4, j:I
    :goto_63
    sget-object v7, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    array-length v7, v7

    if-ge v4, v7, :cond_98

    .line 310
    const-string v7, "Mms/ChannelUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msgId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    aget-short v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v7, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    aget-short v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 313
    :cond_98
    sput-boolean v10, Lcom/android/mms/ui/ChannelUtils;->cbSelectedOn:Z

    .line 316
    .end local v4           #j:I
    :cond_9a
    if-ne v0, v11, :cond_ec

    .line 317
    const-string v7, "My channel"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 318
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a5
    invoke-static {p0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v7

    array-length v7, v7

    if-ge v3, v7, :cond_eb

    .line 320
    const-string v7, "Mms/ChannelUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getChannelId(context)["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v9

    aget-short v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {p0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v7

    aget-short v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 322
    sput-boolean v11, Lcom/android/mms/ui/ChannelUtils;->cbSelectedOn:Z

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    .line 327
    .end local v3           #i:I
    :cond_e2
    sget-boolean v7, Lcom/android/mms/ui/ChannelUtils;->cbAllOn:Z

    if-nez v7, :cond_eb

    .line 328
    invoke-virtual {v6, v10, v12}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    .line 329
    sput-boolean v11, Lcom/android/mms/ui/ChannelUtils;->cbAllOn:Z

    .line 352
    :cond_eb
    :goto_eb
    return-void

    .line 334
    :cond_ec
    sget-boolean v7, Lcom/android/mms/ui/ChannelUtils;->cbAllOn:Z

    if-ne v7, v11, :cond_eb

    .line 335
    invoke-virtual {v6, v10, v12}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 336
    sput-boolean v10, Lcom/android/mms/ui/ChannelUtils;->cbAllOn:Z

    goto :goto_eb
.end method

.method public static updateSubscription(Landroid/content/Context;II)V
    .registers 8
    .parameter "context"
    .parameter "channelid"
    .parameter "value"

    .prologue
    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    return-void
.end method
