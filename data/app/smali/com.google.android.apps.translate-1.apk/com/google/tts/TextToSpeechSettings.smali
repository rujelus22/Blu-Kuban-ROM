.class public Lcom/google/tts/TextToSpeechSettings;
.super Landroid/preference/PreferenceActivity;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/google/tts/TextToSpeechBeta$OnInitListener;


# static fields
.field private static final DEFAULT_COUNTRY_VAL:Ljava/lang/String; = "USA"

.field private static final DEFAULT_LANG_VAL:Ljava/lang/String; = "eng"

.field private static final DEFAULT_VARIANT_VAL:Ljava/lang/String; = ""

.field private static final FALLBACK_TTS_DEFAULT_SYNTH:Ljava/lang/String; = "com.svox.pico"

.field private static final GET_SAMPLE_TEXT:I = 0x7bf

.field private static final KEY_PLUGIN_ENABLED_PREFIX:Ljava/lang/String; = "ENABLED_"

.field private static final KEY_PLUGIN_SETTINGS_PREFIX:Ljava/lang/String; = "SETTINGS_"

.field private static final KEY_TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"

.field private static final KEY_TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"

.field private static final KEY_TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final KEY_TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field private static final KEY_TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"

.field private static final KEY_TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field private static final KEY_TTS_INSTALL_DATA:Ljava/lang/String; = "tts_install_data"

.field private static final KEY_TTS_PLAY_EXAMPLE:Ljava/lang/String; = "tts_play_example"

.field private static final KEY_TTS_USE_DEFAULT:Ljava/lang/String; = "toggle_use_default_tts_settings"

.field private static final LOCALE_DELIMITER:Ljava/lang/String; = "-"

.field private static final SYSTEM_TTS:Ljava/lang/String; = "com.svox.pico"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechSettings"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mDefaultCountry:Ljava/lang/String;

.field private mDefaultEng:Ljava/lang/String;

.field private mDefaultLanguage:Ljava/lang/String;

.field private mDefaultLocPref:Landroid/preference/ListPreference;

.field private mDefaultLocVariant:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mDefaultSynthPref:Landroid/preference/ListPreference;

.field private mDemoStringIndex:I

.field private mDemoStrings:[Ljava/lang/String;

.field private mEnableDemo:Z

.field private mInstallData:Landroid/preference/Preference;

.field private mPlayExample:Landroid/preference/Preference;

.field private mTts:Lcom/google/tts/TextToSpeechBeta;

.field private mTtsStarted:Z

.field private mUseDefaultPref:Landroid/preference/CheckBoxPreference;

.field private mVoicesMissing:Z

.field private prefs:Landroid/content/SharedPreferences;

.field private prefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 93
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 95
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 97
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 99
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 101
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 103
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 111
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 117
    iput v2, p0, Lcom/google/tts/TextToSpeechSettings;->mDemoStringIndex:I

    .line 119
    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    .line 121
    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechSettings;->mVoicesMissing:Z

    .line 123
    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    .line 125
    iput-boolean v2, p0, Lcom/google/tts/TextToSpeechSettings;->mTtsStarted:Z

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/google/tts/TextToSpeechSettings;)V
    .registers 1
    .parameter

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->loadEngines()V

    return-void
.end method

.method private addEngineSpecificSettings()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 198
    const-string v10, "tts_engines_section"

    invoke-virtual {p0, v10}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 199
    .local v2, enginesCategory:Landroid/preference/PreferenceGroup;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.START_TTS_ENGINE"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, intent:Landroid/content/Intent;
    new-array v1, v14, [Landroid/content/pm/ResolveInfo;

    .line 201
    .local v1, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 202
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v1, [Landroid/content/pm/ResolveInfo;

    .line 203
    .restart local v1       #enginesArray:[Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    array-length v10, v1

    if-lt v3, v10, :cond_25

    .line 232
    return-void

    .line 204
    :cond_25
    const-string v8, ""

    .line 205
    .local v8, prefKey:Ljava/lang/String;
    aget-object v10, v1, v3

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 206
    .local v5, pluginPackageName:Ljava/lang/String;
    aget-object v10, v1, v3

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.svox.pico"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5e

    .line 207
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, chkbxPref:Landroid/preference/CheckBoxPreference;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ENABLED_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 210
    aget-object v10, v1, v3

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    .end local v0           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_5e
    invoke-direct {p0, v5}, Lcom/google/tts/TextToSpeechSettings;->pluginHasSettings(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a8

    .line 214
    new-instance v7, Landroid/preference/Preference;

    invoke-direct {v7, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 215
    .local v7, pref:Landroid/preference/Preference;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SETTINGS_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 217
    aget-object v10, v1, v3

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 219
    const v11, 0x7f07001c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aget-object v13, v1, v3

    invoke-virtual {v13, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v14

    .line 218
    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v10, Lcom/google/tts/TextToSpeechSettings$1;

    invoke-direct {v10, p0, v5}, Lcom/google/tts/TextToSpeechSettings$1;-><init>(Lcom/google/tts/TextToSpeechSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 203
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v9           #settingsLabel:Ljava/lang/CharSequence;
    :cond_a8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21
.end method

.method private checkVoiceData()V
    .registers 8

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 292
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 296
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1b

    .line 303
    return-void

    .line 297
    :cond_1b
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 298
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 299
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const/16 v5, 0x7b9

    invoke-virtual {p0, v2, v5}, Lcom/google/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private getSampleText()V
    .registers 9

    .prologue
    const/16 v7, 0x7bf

    .line 330
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 331
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v5, "language"

    iget-object v6, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v5, "country"

    iget-object v6, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v5, "variant"

    iget-object v6, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 340
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_59

    .line 351
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    const-string v6, "com.svox.pico"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_58

    .line 352
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_58

    .line 353
    const-string v5, "com.google.tts"

    const-string v6, "com.google.tts.GetSampleText"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v2, v7}, Lcom/google/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 357
    :cond_58
    return-void

    .line 341
    :cond_59
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 342
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 343
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v2, v7}, Lcom/google/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b
.end method

.method private hasLangPref()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 708
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "tts_default_lang"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_14

    .line 722
    :cond_13
    :goto_13
    return v3

    .line 713
    :cond_14
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "tts_default_country"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 718
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "tts_default_variant"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, variant:Ljava/lang/String;
    if-eqz v2, :cond_13

    move v3, v4

    .line 722
    goto :goto_13
.end method

.method private initClickers()V
    .registers 2

    .prologue
    .line 245
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 246
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 248
    const-string v0, "tts_install_data"

    invoke-virtual {p0, v0}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 249
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 250
    return-void
.end method

.method private initDefaultLang()V
    .registers 4

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->hasLangPref()Z

    move-result v0

    if-nez v0, :cond_f

    .line 677
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->isCurrentLocSupported()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 679
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->useCurrentLocAsDefault()V

    .line 691
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "tts_default_lang"

    const-string v2, "eng"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "tts_default_country"

    const-string v2, "USA"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "tts_default_variant"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    iget-object v2, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDemoStringIndex:I

    .line 698
    iget v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDemoStringIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_62

    .line 699
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDemoStringIndex:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 701
    :cond_62
    return-void

    .line 683
    :cond_63
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->useSupportedLocAsDefault()V

    goto :goto_f
.end method

.method private initDefaultSettings()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 259
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 260
    .local v2, useDefault:I
    const-string v3, "toggle_use_default_tts_settings"

    invoke-virtual {p0, v3}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 261
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "toggle_use_default_tts_settings"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 262
    iget-object v6, p0, Lcom/google/tts/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    if-ne v2, v4, :cond_7d

    move v3, v4

    :goto_1e
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    const-string v3, "tts_default_synth"

    invoke-virtual {p0, v3}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 267
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->loadEngines()V

    .line 268
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "tts_default_synth"

    const-string v5, "com.svox.pico"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, engine:Ljava/lang/String;
    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 273
    const-string v3, "tts_default_rate"

    invoke-virtual {p0, v3}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 274
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "tts_default_rate"

    iget v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 275
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    const-string v3, "tts_default_lang"

    invoke-virtual {p0, v3}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 282
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->initDefaultLang()V

    .line 283
    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    return-void

    .end local v0           #engine:Ljava/lang/String;
    :cond_7d
    move v3, v5

    .line 262
    goto :goto_1e
.end method

.method private installVoiceData()V
    .registers 8

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 311
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 316
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_20

    .line 323
    return-void

    .line 317
    :cond_20
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 318
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 319
    iget-object v5, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v2}, Lcom/google/tts/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    .line 316
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method private isCurrentLocSupported()Z
    .registers 4

    .prologue
    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 731
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, currentLocID:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_32

    const/4 v1, 0x1

    :goto_31
    return v1

    :cond_32
    const/4 v1, 0x0

    goto :goto_31
.end method

.method private loadEngines()V
    .registers 18

    .prologue
    .line 760
    const-string v14, "tts_default_synth"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 764
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.START_TTS_ENGINE"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v6, intent:Landroid/content/Intent;
    const/4 v14, 0x0

    new-array v2, v14, [Landroid/content/pm/ResolveInfo;

    .line 766
    .local v2, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/google/tts/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 767
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v8, v6, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v2, [Landroid/content/pm/ResolveInfo;

    .line 768
    .restart local v2       #enginesArray:[Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v12, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v1, ""

    .line 771
    .local v1, enabledEngines:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_34
    array-length v14, v2

    if-lt v5, v14, :cond_96

    .line 787
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v15, "tts_enabled_plugins"

    invoke-interface {v14, v15, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 790
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v4, v14, [Ljava/lang/CharSequence;

    .line 791
    .local v4, entriesArray:[Ljava/lang/CharSequence;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v13, v14, [Ljava/lang/CharSequence;

    .line 793
    .local v13, valuesArray:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v15, "tts_default_synth"

    const-string v16, "com.svox.pico"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 798
    .local v10, selectedEngine:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v14, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v11

    .line 799
    .local v11, selectedEngineIndex:I
    const/4 v14, -0x1

    if-ne v11, v14, :cond_8e

    .line 800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    const-string v15, "com.svox.pico"

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v11

    .line 802
    :cond_8e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v14, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 803
    return-void

    .line 772
    .end local v4           #entriesArray:[Ljava/lang/CharSequence;
    .end local v10           #selectedEngine:Ljava/lang/String;
    .end local v11           #selectedEngineIndex:I
    .end local v13           #valuesArray:[Ljava/lang/CharSequence;
    :cond_96
    aget-object v14, v2, v5

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 773
    .local v7, pluginPackageName:Ljava/lang/String;
    const-string v14, "com.svox.pico"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b3

    .line 774
    aget-object v14, v2, v5

    invoke-virtual {v14, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_b0
    :goto_b0
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 777
    :cond_b3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ENABLED_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 777
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 779
    .local v9, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v9, :cond_b0

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_b0

    .line 780
    aget-object v14, v2, v5

    invoke-virtual {v14, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b0
.end method

.method private parseLocaleInfo(Ljava/lang/String;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 654
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .local v0, tokenizer:Ljava/util/StringTokenizer;
    const-string v1, ""

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 656
    const-string v1, ""

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 657
    const-string v1, ""

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 658
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 659
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 661
    :cond_23
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 662
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 664
    :cond_33
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 665
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 667
    :cond_43
    return-void
.end method

.method private pluginHasSettings(Ljava/lang/String;)Z
    .registers 6
    .parameter "pluginPackageName"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 236
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, i:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".EngineSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 239
    const/4 v2, 0x1

    .line 241
    :goto_28
    return v2

    :cond_29
    const/4 v2, 0x0

    goto :goto_28
.end method

.method private updateWidgetState()V
    .registers 3

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 648
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 650
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/google/tts/TextToSpeechSettings;->mVoicesMissing:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 651
    return-void
.end method

.method private useCurrentLocAsDefault()V
    .registers 5

    .prologue
    .line 741
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 742
    .local v0, currentLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "tts_default_lang"

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "tts_default_country"

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 744
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "tts_default_variant"

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 745
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 746
    return-void
.end method

.method private useSupportedLocAsDefault()V
    .registers 4

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "tts_default_lang"

    const-string v2, "eng"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "tts_default_country"

    const-string v2, "USA"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 755
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "tts_default_variant"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 756
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 24
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 395
    const/16 v15, 0x7b9

    move/from16 v0, p1

    if-ne v0, v15, :cond_287

    .line 396
    if-nez p3, :cond_16

    .line 400
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    .line 401
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mVoicesMissing:Z

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/google/tts/TextToSpeechSettings;->updateWidgetState()V

    .line 536
    :cond_15
    :goto_15
    return-void

    .line 406
    :cond_16
    const-string v15, "availableVoices"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 407
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "unavailableVoices"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 414
    .local v14, unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    const-string v16, "com.svox.pico"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_74

    .line 415
    sget-object v15, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ge v15, v0, :cond_74

    .line 416
    sget-object v15, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_74

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .restart local v2       #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .restart local v14       #unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-gez p2, :cond_86

    .line 420
    const-string v15, "deu-DEU"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v15, "eng-GBR"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v15, "eng-USA"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v15, "spa-ESP"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    const-string v15, "fra-FRA"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    const-string v15, "ita-ITA"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_74
    :goto_74
    if-eqz v2, :cond_78

    if-nez v14, :cond_a5

    .line 441
    :cond_78
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    .line 442
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mVoicesMissing:Z

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/google/tts/TextToSpeechSettings;->updateWidgetState()V

    goto :goto_15

    .line 427
    :cond_86
    const-string v15, "deu-DEU"

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const-string v15, "eng-GBR"

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v15, "eng-USA"

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v15, "spa-ESP"

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const-string v15, "fra-FRA"

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v15, "ita-ITA"

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 446
    :cond_a5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_27b

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-nez v15, :cond_be

    .line 448
    new-instance v15, Lcom/google/tts/TextToSpeechBeta;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/google/tts/TextToSpeechBeta;-><init>(Landroid/content/Context;Lcom/google/tts/TextToSpeechBeta$OnInitListener;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    .line 450
    :cond_be
    const-string v15, "tts_default_lang"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    .line 451
    .local v13, ttsLanguagePref:Landroid/preference/ListPreference;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v4, v15, [Ljava/lang/CharSequence;

    .line 452
    .local v4, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v5, v15, [Ljava/lang/CharSequence;

    .line 453
    .local v5, entryValues:[Ljava/lang/CharSequence;
    const/4 v11, -0x1

    .line 454
    .local v11, selectedLanguageIndex:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 455
    .local v12, selectedLanguagePref:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_100

    .line 456
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 456
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 459
    :cond_100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_127

    .line 460
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 460
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 463
    :cond_127
    const/4 v6, 0x0

    .local v6, i:I
    :goto_128
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v6, v15, :cond_210

    .line 482
    invoke-virtual {v13, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {v13, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 484
    const/4 v15, -0x1

    if-le v11, v15, :cond_13a

    .line 485
    invoke-virtual {v13, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 487
    :cond_13a
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    new-instance v16, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {v15 .. v16}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    move-result v8

    .line 491
    .local v8, languageResult:I
    if-gez v8, :cond_200

    .line 492
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 493
    .local v3, currentLocale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 494
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 495
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 496
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    new-instance v16, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {v15 .. v16}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    move-result v8

    .line 501
    if-gez v8, :cond_1cc

    .line 502
    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/tts/TextToSpeechSettings;->parseLocaleInfo(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    new-instance v16, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {v15 .. v16}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    .line 506
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v16, "tts_default_lang"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v16, "tts_default_country"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v16, "tts_default_variant"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    .end local v3           #currentLocale:Ljava/util/Locale;
    .end local v4           #entries:[Ljava/lang/CharSequence;
    .end local v5           #entryValues:[Ljava/lang/CharSequence;
    .end local v6           #i:I
    .end local v8           #languageResult:I
    .end local v11           #selectedLanguageIndex:I
    .end local v12           #selectedLanguagePref:Ljava/lang/String;
    .end local v13           #ttsLanguagePref:Landroid/preference/ListPreference;
    :cond_200
    :goto_200
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_281

    .line 516
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mVoicesMissing:Z

    .line 521
    :goto_20b
    invoke-direct/range {p0 .. p0}, Lcom/google/tts/TextToSpeechSettings;->updateWidgetState()V

    goto/16 :goto_15

    .line 464
    .restart local v4       #entries:[Ljava/lang/CharSequence;
    .restart local v5       #entryValues:[Ljava/lang/CharSequence;
    .restart local v6       #i:I
    .restart local v11       #selectedLanguageIndex:I
    .restart local v12       #selectedLanguagePref:Ljava/lang/String;
    .restart local v13       #ttsLanguagePref:Landroid/preference/ListPreference;
    :cond_210
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 465
    .local v7, langCountryVariant:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 466
    .local v9, loc:Ljava/util/Locale;
    array-length v15, v7

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_249

    .line 467
    new-instance v9, Ljava/util/Locale;

    .end local v9           #loc:Ljava/util/Locale;
    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-direct {v9, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 474
    .restart local v9       #loc:Ljava/util/Locale;
    :cond_22c
    :goto_22c
    if-eqz v9, :cond_245

    .line 475
    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v6

    .line 476
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    aput-object v15, v5, v6

    .line 477
    aget-object v15, v5, v6

    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_245

    .line 478
    move v11, v6

    .line 463
    :cond_245
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_128

    .line 468
    :cond_249
    array-length v15, v7

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_25f

    .line 469
    new-instance v9, Ljava/util/Locale;

    .end local v9           #loc:Ljava/util/Locale;
    const/4 v15, 0x0

    aget-object v15, v7, v15

    const/16 v16, 0x1

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v9       #loc:Ljava/util/Locale;
    goto :goto_22c

    .line 470
    :cond_25f
    array-length v15, v7

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_22c

    .line 471
    new-instance v9, Ljava/util/Locale;

    .end local v9           #loc:Ljava/util/Locale;
    const/4 v15, 0x0

    aget-object v15, v7, v15

    const/16 v16, 0x1

    aget-object v16, v7, v16

    .line 472
    const/16 v17, 0x2

    aget-object v17, v7, v17

    .line 471
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v9, v15, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v9       #loc:Ljava/util/Locale;
    goto :goto_22c

    .line 512
    .end local v4           #entries:[Ljava/lang/CharSequence;
    .end local v5           #entryValues:[Ljava/lang/CharSequence;
    .end local v6           #i:I
    .end local v7           #langCountryVariant:[Ljava/lang/String;
    .end local v9           #loc:Ljava/util/Locale;
    .end local v11           #selectedLanguageIndex:I
    .end local v12           #selectedLanguagePref:Ljava/lang/String;
    .end local v13           #ttsLanguagePref:Landroid/preference/ListPreference;
    :cond_27b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    goto :goto_200

    .line 518
    :cond_281
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/tts/TextToSpeechSettings;->mVoicesMissing:Z

    goto :goto_20b

    .line 522
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_287
    const/16 v15, 0x7bf

    move/from16 v0, p1

    if-ne v0, v15, :cond_15

    .line 523
    if-nez p2, :cond_2c3

    .line 524
    const v15, 0x7f070015

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 525
    .local v10, sample:Ljava/lang/String;
    if-eqz p3, :cond_2ac

    const-string v15, "sampleText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2ac

    .line 526
    const-string v15, "sampleText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 528
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-eqz v15, :cond_15

    .line 529
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v10, v0, v1}, Lcom/google/tts/TextToSpeechBeta;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_15

    .line 533
    .end local v10           #sample:Ljava/lang/String;
    :cond_2c3
    const-string v15, "TextToSpeechSettings"

    const-string v16, "Did not have a sample string for the requested language"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    .line 139
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 141
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/google/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 143
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->addEngineSpecificSettings()V

    .line 145
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDemoStrings:[Ljava/lang/String;

    .line 147
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/tts/TextToSpeechSettings;->setVolumeControlStream(I)V

    .line 149
    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    .line 150
    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechSettings;->mTtsStarted:Z

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 153
    .local v0, currentLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 154
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 157
    new-instance v1, Lcom/google/tts/TextToSpeechBeta;

    invoke-direct {v1, p0, p0}, Lcom/google/tts/TextToSpeechBeta;-><init>(Landroid/content/Context;Lcom/google/tts/TextToSpeechBeta$OnInitListener;)V

    iput-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-eqz v0, :cond_c

    .line 193
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    invoke-virtual {v0}, Lcom/google/tts/TextToSpeechBeta;->shutdown()V

    .line 195
    :cond_c
    return-void
.end method

.method public onInit(II)V
    .registers 9
    .parameter "status"
    .parameter "version"

    .prologue
    const/4 v5, 0x1

    .line 363
    if-nez p1, :cond_67

    .line 364
    iput-boolean v5, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    .line 365
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 366
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 368
    :cond_13
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 369
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 371
    :cond_21
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 372
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 374
    :cond_2c
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->initDefaultSettings()V

    .line 375
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    .line 376
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    iget v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/tts/TextToSpeechBeta;->setSpeechRate(F)I

    .line 377
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/tts/TextToSpeechBeta;->setEngineByPackageNameExtended(Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->initClickers()V

    .line 379
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->updateWidgetState()V

    .line 380
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->checkVoiceData()V

    .line 381
    iput-boolean v5, p0, Lcom/google/tts/TextToSpeechSettings;->mTtsStarted:Z

    .line 382
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_63
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->updateWidgetState()V

    .line 388
    return-void

    .line 384
    :cond_67
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen failed to initialize successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    goto :goto_63
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 164
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 166
    :cond_18
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 167
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 169
    :cond_2d
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 170
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 172
    :cond_42
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 539
    const-string v4, "toggle_use_default_tts_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    move-object v4, p2

    .line 541
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    move v3, v5

    .line 542
    .local v3, value:I
    :cond_18
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "toggle_use_default_tts_settings"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 543
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 544
    const-string v4, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TTS use default settings is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v3           #value:I
    .end local p2
    :cond_3c
    :goto_3c
    return v5

    .line 545
    .restart local p2
    :cond_3d
    const-string v4, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 547
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 549
    :try_start_51
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "tts_default_rate"

    iget v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 550
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 551
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-eqz v4, :cond_6e

    .line 552
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    iget v6, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/google/tts/TextToSpeechBeta;->setSpeechRate(F)I

    .line 554
    :cond_6e
    const-string v4, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TTS default rate is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_84} :catch_85

    goto :goto_3c

    .line 555
    :catch_85
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TextToSpeechSettings"

    const-string v6, "could not persist default TTS rate setting"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 558
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_8e
    const-string v4, "tts_default_lang"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 560
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, resolver:Landroid/content/ContentResolver;
    move-object v4, p2

    .line 561
    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/tts/TextToSpeechSettings;->parseLocaleInfo(Ljava/lang/String;)V

    .line 562
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "tts_default_lang"

    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "tts_default_country"

    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 564
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "tts_default_variant"

    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 567
    const-string v4, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TTS default lang/country/variant set to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 568
    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 567
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-eqz v4, :cond_106

    .line 570
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    new-instance v6, Ljava/util/Locale;

    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/google/tts/TextToSpeechBeta;->setLanguage(Ljava/util/Locale;)I

    .line 572
    :cond_106
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 573
    .local v1, newIndex:I
    const-string v4, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " selected is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v4, -0x1

    if-le v1, v4, :cond_129

    .end local v1           #newIndex:I
    :goto_125
    iput v1, p0, Lcom/google/tts/TextToSpeechSettings;->mDemoStringIndex:I

    goto/16 :goto_3c

    .restart local v1       #newIndex:I
    :cond_129
    move v1, v3

    goto :goto_125

    .line 575
    .end local v1           #newIndex:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .restart local p2
    :cond_12b
    const-string v4, "tts_default_synth"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 576
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 577
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "tts_default_synth"

    iget-object v7, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 578
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 579
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    if-eqz v4, :cond_160

    .line 580
    iget-object v4, p0, Lcom/google/tts/TextToSpeechSettings;->mTts:Lcom/google/tts/TextToSpeechBeta;

    iget-object v6, p0, Lcom/google/tts/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/tts/TextToSpeechBeta;->setEngineByPackageNameExtended(Ljava/lang/String;)I

    .line 581
    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechSettings;->mEnableDemo:Z

    .line 582
    iput-boolean v3, p0, Lcom/google/tts/TextToSpeechSettings;->mVoicesMissing:Z

    .line 583
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->updateWidgetState()V

    .line 584
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->checkVoiceData()V

    .line 586
    :cond_160
    const-string v4, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The default synth is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 596
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v1, :cond_9

    .line 599
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->getSampleText()V

    .line 609
    :goto_8
    return v0

    .line 602
    :cond_9
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    if-ne p1, v1, :cond_14

    .line 603
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->installVoiceData()V

    .line 606
    invoke-virtual {p0}, Lcom/google/tts/TextToSpeechSettings;->finish()V

    goto :goto_8

    .line 609
    :cond_14
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 614
    instance-of v4, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6b

    move-object v0, p2

    .line 615
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 616
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toggle_use_default_tts_settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 617
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 618
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 619
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    const v5, 0x1040014

    .line 619
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 621
    const v5, 0x1080027

    .line 620
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 622
    const v5, 0x7f07001a

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/google/tts/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 623
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    .line 624
    new-instance v5, Lcom/google/tts/TextToSpeechSettings$2;

    invoke-direct {v5, p0, v0}, Lcom/google/tts/TextToSpeechSettings$2;-><init>(Lcom/google/tts/TextToSpeechSettings;Landroid/preference/CheckBoxPreference;)V

    .line 623
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 629
    const/high16 v4, 0x104

    .line 630
    new-instance v5, Lcom/google/tts/TextToSpeechSettings$3;

    invoke-direct {v5, p0}, Lcom/google/tts/TextToSpeechSettings$3;-><init>(Lcom/google/tts/TextToSpeechSettings;)V

    .line 629
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 633
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 634
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 641
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v1           #d:Landroid/app/AlertDialog;
    :goto_66
    return v2

    .line 636
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_67
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->loadEngines()V

    goto :goto_66

    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_6b
    move v2, v3

    .line 641
    goto :goto_66
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 177
    iget-boolean v0, p0, Lcom/google/tts/TextToSpeechSettings;->mTtsStarted:Z

    if-eqz v0, :cond_10

    .line 183
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->initClickers()V

    .line 184
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->updateWidgetState()V

    .line 185
    invoke-direct {p0}, Lcom/google/tts/TextToSpeechSettings;->checkVoiceData()V

    .line 187
    :cond_10
    return-void
.end method
