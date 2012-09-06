.class public Lcom/google/android/apps/translate/TranslateApplication;
.super Landroid/app/Application;
.source "TranslateApplication.java"

# interfaces
.implements Lcom/google/android/apps/translate/DonutTtsCallback;


# instance fields
.field private mConvShowIntroMessage:Z

.field private mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

.field private final mOnTtsChanged:Landroid/content/BroadcastReceiver;

.field private final mOnVoiceSupportedLanguagesResult:Landroid/content/BroadcastReceiver;

.field private mPreferences:Landroid/content/SharedPreferences;

.field final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mShowIntroMessage:Z

.field mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

.field private mTts:Lcom/google/android/apps/translate/MyTts;

.field private mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mShowIntroMessage:Z

    .line 30
    iput-boolean v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mConvShowIntroMessage:Z

    .line 32
    new-instance v0, Lcom/google/android/apps/translate/TranslateApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/TranslateApplication$1;-><init>(Lcom/google/android/apps/translate/TranslateApplication;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 42
    new-instance v0, Lcom/google/android/apps/translate/TranslateApplication$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/TranslateApplication$2;-><init>(Lcom/google/android/apps/translate/TranslateApplication;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mOnTtsChanged:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Lcom/google/android/apps/translate/TranslateApplication$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/TranslateApplication$3;-><init>(Lcom/google/android/apps/translate/TranslateApplication;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mOnVoiceSupportedLanguagesResult:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/TranslateApplication;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/translate/TranslateApplication;->reloadSupportedVoiceInputLanguages()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/TranslateApplication;)Lcom/google/android/apps/translate/MyTts;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;

    return-object v0
.end method

.method private initializeTranslateManager()V
    .registers 2

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/apps/translate/TranslateManagerImpl;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/TranslateManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    invoke-interface {v0}, Lcom/google/android/apps/translate/TranslateManager;->initialize()V

    .line 166
    return-void
.end method

.method private initializeTts()V
    .registers 2

    .prologue
    .line 169
    const-string v0, "initialize TTS"

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/google/android/apps/translate/MyTts;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/MyTts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/MyTts;->setCallback(Lcom/google/android/apps/translate/DonutTtsCallback;)V

    .line 172
    return-void
.end method

.method private reloadSupportedVoiceInputLanguages()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/VoiceInputHelper;->reloadVoiceInputLanguageMap()V

    .line 161
    return-void
.end method


# virtual methods
.method public endAndReportAppCsiTimer()V
    .registers 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "init"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/CsiTimer;->end([Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/CsiTimer;->report(Landroid/content/Context;)V

    .line 193
    new-instance v0, Lcom/google/android/apps/translate/CsiTimer;

    const-string v1, "app"

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    .line 194
    return-void
.end method

.method public getConvShowIntroMessage()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-boolean v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mConvShowIntroMessage:Z

    if-eqz v1, :cond_8

    .line 220
    iput-boolean v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mConvShowIntroMessage:Z

    .line 221
    const/4 v0, 0x1

    .line 223
    :cond_8
    return v0
.end method

.method public getMyTts()Lcom/google/android/apps/translate/MyTts;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;

    return-object v0
.end method

.method public getShowIntroMessage()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-boolean v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mShowIntroMessage:Z

    if-eqz v1, :cond_8

    .line 210
    iput-boolean v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mShowIntroMessage:Z

    .line 211
    const/4 v0, 0x1

    .line 213
    :cond_8
    return v0
.end method

.method public getTranslateManager()Lcom/google/android/apps/translate/TranslateManager;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    return-object v0
.end method

.method public getVoiceInputHelper()Lcom/google/android/apps/translate/VoiceInputHelper;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    invoke-static {p0}, Lcom/google/android/apps/translate/Profile;->getLanguageList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 138
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getLanguagesFromServerAsync(Landroid/content/Context;)V

    .line 140
    :cond_10
    return-void
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 98
    new-instance v1, Lcom/google/android/apps/translate/CsiTimer;

    const-string v2, "app"

    invoke-direct {v1, v2}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "init"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/CsiTimer;->begin([Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mOnVoiceSupportedLanguagesResult:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1}, Lcom/google/android/apps/translate/VoiceInputHelper;->getSupportedLanguages(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 106
    new-instance v1, Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    .line 108
    invoke-direct {p0}, Lcom/google/android/apps/translate/TranslateApplication;->initializeTranslateManager()V

    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/translate/TranslateApplication;->initializeTts()V

    .line 111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mPreferences:Landroid/content/SharedPreferences;

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/translate/TranslateApplication;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/translate/TranslateApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/translate/TranslateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/ExternalFonts;->initialize(Landroid/content/res/AssetManager;Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->generateUserAgentName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Translate;->setUserAgent(Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getLanguagesFromServerAsync(Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mOnTtsChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/translate/TranslateApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method public onInit(Z)V
    .registers 2
    .parameter "succeed"

    .prologue
    .line 204
    return-void
.end method

.method public onTerminate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateApplication;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mOnTtsChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/TranslateApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    if-eqz v0, :cond_1b

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    invoke-interface {v0}, Lcom/google/android/apps/translate/TranslateManager;->deinitialize()V

    .line 150
    iput-object v2, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 153
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;

    if-eqz v0, :cond_26

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/MyTts;->shutdown()V

    .line 155
    iput-object v2, p0, Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;

    .line 157
    :cond_26
    return-void
.end method

.method public resetAppCsiTimer()V
    .registers 3

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/apps/translate/CsiTimer;

    const-string v1, "app"

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication;->mCsiTimer:Lcom/google/android/apps/translate/CsiTimer;

    .line 199
    return-void
.end method
