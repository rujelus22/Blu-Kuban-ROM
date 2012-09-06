.class public Lcom/google/android/apps/translate/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field private static final DEFAULT_EN_FROM:Ljava/lang/String; = "en"

.field private static final DEFAULT_EN_TO:Ljava/lang/String; = "es"

.field private static final DEFAULT_OTHER_FROM:Ljava/lang/String; = "en"

.field private static final EMPTY_ENTRY:Ljava/lang/String; = ""

.field public static final KEY_CONVERSATION_LANGUAGE_LEFT:Ljava/lang/String; = "key_convlang_left"

.field public static final KEY_CONVERSATION_LANGUAGE_RIGHT:Ljava/lang/String; = "key_convlang_right"

.field public static final KEY_CURRENT_VERSION_CODE:Ljava/lang/String; = "key_version_code"

.field public static final KEY_ENABLE_CAMERA_LOGGING:Ljava/lang/String; = "key_enable_camera_logging"

.field public static final KEY_ENABLE_CONVERSATION_CONFIRM:Ljava/lang/String; = "key_enable_conversation_confirm"

.field public static final KEY_ENABLE_DUAL_MODE:Ljava/lang/String; = "key_enable_dual_mode"

.field public static final KEY_ENABLE_INSTANT_TRANSLATION:Ljava/lang/String; = "key_enable_instant_translation"

.field public static final KEY_ENABLE_OFFLINE_TRANSLATE:Ljava/lang/String; = "key_enable_offline_translate_mode"

.field public static final KEY_ENABLE_STREAMING_CONVERSATION:Ljava/lang/String; = "key_enable_streaming_conversation"

.field public static final KEY_EULA_ACCEPTED:Ljava/lang/String; = "key_eula_accepted"

.field public static final KEY_FAVORITE_ORDER:Ljava/lang/String; = "key_favorite_order"

.field public static final KEY_HANDWRITING_LANGUAGE_DEFVALUE_PREFIX:Ljava/lang/String; = "default_handwriting_language_"

.field public static final KEY_HISTORY_ORDER:Ljava/lang/String; = "key_history_order"

.field public static final KEY_HOME_FIRST_RUN:Ljava/lang/String; = "key_home_first_run"

.field public static final KEY_INPUT_TEXT:Ljava/lang/String; = "key_input_text"

.field public static final KEY_LANGUAGE_FROM:Ljava/lang/String; = "key_language_from"

.field public static final KEY_LANGUAGE_LIST_WITH_LOCALE:Ljava/lang/String; = "key_language_list_with_locale"

.field public static final KEY_LANGUAGE_TO:Ljava/lang/String; = "key_language_to"

.field public static final KEY_PREFER_NETWORK_TTS:Ljava/lang/String; = "key_prefer_network_tts"

.field public static final KEY_RECENT_CONVERSATION_LANGUAGE_LEFT:Ljava/lang/String; = "key_recent_convlang_left"

.field public static final KEY_RECENT_CONVERSATION_LANGUAGE_RIGHT:Ljava/lang/String; = "key_recent_convlang_right"

.field public static final KEY_RECENT_LANGUAGE_FROM:Ljava/lang/String; = "key_recent_language_from"

.field public static final KEY_RECENT_LANGUAGE_TO:Ljava/lang/String; = "key_recent_language_to"

.field public static final KEY_SHOW_CAMERA_LOGGING_DIALOG:Ljava/lang/String; = "key_show_camera_logging_dialog"

.field public static final KEY_SUPPORTED_VOICE_INPUT_LANGS:Ljava/lang/String; = "key_supported_voice_input_langs"

.field public static final KEY_TRANSLATE_SETTING:Ljava/lang/String; = "key_title_settings"

.field private static final LANGUAGE_SEPARATOR:Ljava/lang/String; = "\t"

.field private static final LOGMSG_CANNOT_GET_DEFAULT_PREFVALUE:Ljava/lang/String; = "Failed to get the default preference value for key="

.field private static final MAX_RECENT_PAIRS:I = 0x3

.field private static final PAIR_SEPARATOR:Ljava/lang/String; = "\t"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRecentLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "lang"
    .parameter "key"

    .prologue
    .line 144
    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 167
    :cond_8
    :goto_8
    return-void

    .line 148
    :cond_9
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v8, p2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, oldLangs:[Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 153
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/4 v4, 0x1

    .line 156
    .local v4, numRecent:I
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_31
    if-ge v2, v3, :cond_38

    aget-object v5, v0, v2

    .line 157
    .local v5, oldLang:Ljava/lang/String;
    const/4 v8, 0x3

    if-lt v4, v8, :cond_43

    .line 165
    .end local v5           #oldLang:Ljava/lang/String;
    :cond_38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, p2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8

    .line 160
    .restart local v5       #oldLang:Ljava/lang/String;
    :cond_43
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    .line 161
    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v4, v4, 0x1

    .line 156
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_31
.end method

.method public static getCameraLogging(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 398
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_enable_camera_logging"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_enable_camera_logging:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getConversationInputConfirm(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 380
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_enable_conversation_confirm"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_enable_conversation_confirm:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getConversationLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)[Lcom/google/android/apps/translate/Language;
    .registers 8
    .parameter "context"
    .parameter "languageList"

    .prologue
    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v4, "key_convlang_left"

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Profile;->getDefaultFromLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, left:Ljava/lang/String;
    const-string v4, "key_convlang_right"

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Profile;->getDefaultToLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, right:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Lcom/google/android/apps/translate/Language;

    .line 135
    .local v2, results:[Lcom/google/android/apps/translate/Language;
    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v5

    aput-object v5, v2, v4

    .line 136
    const/4 v4, 0x1

    invoke-virtual {p1, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v5

    aput-object v5, v2, v4

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile conversation from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 140
    return-object v2
.end method

.method public static getCurrentVersionCode(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 346
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_version_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getDefaultFromLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "languageList"

    .prologue
    .line 243
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->isEnglishLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "en"

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "en"

    goto :goto_c
.end method

.method private static getDefaultToLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "languageList"

    .prologue
    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 253
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->isEnglishLocale(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 254
    const-string v1, "es"

    .line 257
    :cond_c
    :goto_c
    return-object v1

    .line 256
    :cond_d
    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, shortName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v1, "es"

    goto :goto_c
.end method

.method public static getDualMode(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 371
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_enable_dual_mode"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_enable_dual_mode:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFavoriteOrder(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 476
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_favorite_order"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFromShortLangNameFromHandwritingLangShortName(Lcom/google/android/apps/translate/Languages;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "languageList"
    .parameter "handwritingShortLangName"

    .prologue
    .line 597
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 598
    invoke-static {p0}, Lcom/google/android/apps/translate/Languages;->getDefaultChineseFromLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object p1

    .line 600
    .end local p1
    :cond_14
    return-object p1
.end method

.method public static getHandwritingLangShortNameFromFromShortLangName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "fromShortLangName"

    .prologue
    .line 608
    const-string v0, "zh-CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "zh-TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 610
    :cond_10
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 612
    .end local p0
    :cond_16
    return-object p0
.end method

.method private static getHandwritingLanguageDefaultValueKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "shortLangName"

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default_handwriting_language_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHistoryOrder(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 456
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_history_order"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInputText(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 504
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_input_text"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstantTranslation(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 389
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_enable_instant_translation"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_enable_instant_translation:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLanguageList(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 283
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Profile;->getLanguageList(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageList(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_language_list_with_locale_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, key:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)[Lcom/google/android/apps/translate/Language;
    .registers 8
    .parameter "context"
    .parameter "languageList"

    .prologue
    .line 109
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v4, "key_language_from"

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Profile;->getDefaultFromLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, from:Ljava/lang/String;
    const-string v4, "key_language_to"

    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Profile;->getDefaultToLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, to:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Lcom/google/android/apps/translate/Language;

    .line 116
    .local v2, results:[Lcom/google/android/apps/translate/Language;
    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v5

    aput-object v5, v2, v4

    .line 117
    const/4 v4, 0x1

    invoke-virtual {p1, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v5

    aput-object v5, v2, v4

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 121
    return-object v2
.end method

.method public static getOfflineTranslate(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 362
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_enable_offline_translate_mode"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_enable_offline_translate_mode:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferNetworkTts(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 445
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_prefer_network_tts"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_prefer_network_tts:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getRecentConversationLanguages(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;
    .registers 12
    .parameter "context"
    .parameter "recentKey"
    .parameter "languages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v7, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, result:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 227
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_16
    if-ge v1, v3, :cond_34

    aget-object v5, v0, v1

    .line 228
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 229
    .local v2, lang:Lcom/google/android/apps/translate/Language;
    const-string v7, "key_recent_convlang_left"

    if-ne p1, v7, :cond_2b

    .line 230
    invoke-virtual {p2, v5}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .line 234
    :cond_23
    :goto_23
    if-eqz v2, :cond_28

    .line 235
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 231
    :cond_2b
    const-string v7, "key_recent_convlang_right"

    if-ne p1, v7, :cond_23

    .line 232
    invoke-virtual {p2, v5}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    goto :goto_23

    .line 238
    .end local v2           #lang:Lcom/google/android/apps/translate/Language;
    .end local v5           #name:Ljava/lang/String;
    :cond_34
    return-object v4
.end method

.method public static getRecentConversationLeftLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;
    .registers 3
    .parameter "context"
    .parameter "languages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    const-string v0, "key_recent_convlang_left"

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/translate/Profile;->getRecentConversationLanguages(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentConversationRightLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;
    .registers 3
    .parameter "context"
    .parameter "languages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "key_recent_convlang_right"

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/translate/Profile;->getRecentConversationLanguages(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentFromLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;
    .registers 3
    .parameter "context"
    .parameter "languages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "key_recent_language_from"

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/translate/Profile;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getRecentLanguages(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;
    .registers 12
    .parameter "context"
    .parameter "recentKey"
    .parameter "languages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v7, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, result:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 208
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_16
    if-ge v1, v3, :cond_34

    aget-object v5, v0, v1

    .line 209
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 210
    .local v2, lang:Lcom/google/android/apps/translate/Language;
    const-string v7, "key_recent_language_from"

    if-ne p1, v7, :cond_2b

    .line 211
    invoke-virtual {p2, v5}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .line 215
    :cond_23
    :goto_23
    if-eqz v2, :cond_28

    .line 216
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 212
    :cond_2b
    const-string v7, "key_recent_language_to"

    if-ne p1, v7, :cond_23

    .line 213
    invoke-virtual {p2, v5}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    goto :goto_23

    .line 219
    .end local v2           #lang:Lcom/google/android/apps/translate/Language;
    .end local v5           #name:Ljava/lang/String;
    :cond_34
    return-object v4
.end method

.method public static getRecentToLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;
    .registers 3
    .parameter "context"
    .parameter "languages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "key_recent_language_to"

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/translate/Profile;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getShowCameraLoggingDialog(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 417
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_show_camera_logging_dialog"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_show_camera_logging_dialog:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getStreamingConversation(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 436
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_enable_streaming_conversation"

    sget v2, Lcom/google/android/apps/translate/R$string;->default_enable_streaming_conversation:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSupportedVoiceLanguages(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_supported_voice_input_langs"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, languagesString:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 548
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 550
    :goto_1e
    return-object v1

    :cond_1f
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1e
.end method

.method public static getVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "lang"

    .prologue
    .line 522
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCameraSupported(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 558
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_a

    .line 563
    :cond_9
    :goto_9
    return v1

    .line 561
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 563
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_9

    const-string v2, "android.hardware.camera"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9
.end method

.method private static isEnglishLocale(Ljava/util/Locale;)Z
    .registers 3
    .parameter "locale"

    .prologue
    .line 264
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEulaAccepted(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 310
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_eula_accepted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHandwritingSupported(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Z
    .registers 9
    .parameter "context"
    .parameter "lang"

    .prologue
    const/4 v4, 0x0

    .line 570
    if-eqz p1, :cond_d

    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->isHandwritingSupported()Z

    move-result v5

    if-nez v5, :cond_e

    .line 589
    :cond_d
    :goto_d
    return v4

    .line 574
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/translate/Profile;->getHandwritingLangShortNameFromFromShortLangName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, handwritingShortLangName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/translate/Profile;->getHandwritingLanguageDefaultValueKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, defValueKey:Ljava/lang/String;
    :try_start_1a
    const-class v5, Lcom/google/android/apps/translate/R$string;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1f} :catch_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a .. :try_end_1f} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1f} :catch_3a

    move-result-object v2

    .line 581
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    goto :goto_d

    .line 582
    .end local v2           #field:Ljava/lang/reflect/Field;
    :catch_22
    move-exception v1

    .line 583
    .local v1, e:Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get the default preference value for key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 586
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3a
    move-exception v1

    .line 587
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get the default preference value for key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 584
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_52
    move-exception v5

    goto :goto_d
.end method

.method public static isHomeFirstRun(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 318
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_home_first_run"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static resetFirstRunFlags(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Profile;->setHomeFirstRun(Landroid/content/Context;Z)Z

    .line 355
    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Profile;->setEulaAccepted(Landroid/content/Context;Z)V

    .line 356
    return-void
.end method

.method public static setCameraLogging(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "enableLogging"

    .prologue
    .line 407
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_enable_camera_logging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    return-void
.end method

.method public static setConversationLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 6
    .parameter "context"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 89
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 103
    :goto_4
    return-void

    .line 92
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1d

    .line 95
    const-string v1, "key_convlang_left"

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v1, "key_recent_convlang_left"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/translate/Profile;->addRecentLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    .line 98
    :cond_1d
    if-eqz p2, :cond_2d

    .line 99
    const-string v1, "key_convlang_right"

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v1, "key_recent_convlang_right"

    invoke-static {p0, p2, v1}, Lcom/google/android/apps/translate/Profile;->addRecentLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    .line 102
    :cond_2d
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method public static setCurrentVersionCode(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "versionCode"

    .prologue
    .line 336
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_version_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    return-void
.end method

.method public static setEulaAccepted(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "accepted"

    .prologue
    .line 300
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_eula_accepted"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    return-void
.end method

.method public static setFavoriteOrder(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "order"

    .prologue
    .line 484
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_favorite_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void
.end method

.method public static setHistoryOrder(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "order"

    .prologue
    .line 464
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_history_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 468
    return-void
.end method

.method public static setHomeFirstRun(Landroid/content/Context;Z)Z
    .registers 4
    .parameter "context"
    .parameter "firstRun"

    .prologue
    .line 326
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_home_first_run"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setInputText(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "text"

    .prologue
    .line 494
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_input_text"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    return-void
.end method

.method public static setLanguageList(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .parameter "context"
    .parameter "languageList"
    .parameter "locale"

    .prologue
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_language_list_with_locale_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, key:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    return-void
.end method

.method public static setLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 6
    .parameter "context"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_language_from"

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v1, "key_language_to"

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    const-string v1, "key_recent_language_from"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/translate/Profile;->addRecentLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    .line 82
    const-string v1, "key_recent_language_to"

    invoke-static {p0, p2, v1}, Lcom/google/android/apps/translate/Profile;->addRecentLanguage(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static setShowCameraLoggingDialog(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "showDialog"

    .prologue
    .line 426
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_show_camera_logging_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    return-void
.end method

.method public static setSupportedVoiceLanguages(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, languages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 532
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 535
    .end local v1           #language:Ljava/lang/String;
    :cond_1e
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_supported_voice_input_langs"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 539
    return-void
.end method

.method public static setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "lang"
    .parameter "voiceLang"

    .prologue
    .line 512
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 516
    return-void
.end method
