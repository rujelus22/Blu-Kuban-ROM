.class public Lcom/swype/android/settings/SwypeSettings;
.super Landroid/preference/PreferenceActivity;
.source "SwypeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/swype/android/service/SwypeConnect$ConnectionListener;


# static fields
.field public static DEBUG:Z = false

.field public static final INTENT_KEY_IS_LAUNCHED_BY_IME:Ljava/lang/String; = "launched_by_ime"

.field private static progress:I


# instance fields
.field final NEED_CELLULAR_DATA:I

.field final THIRD_PARTY_DIALOG:I

.field private app:Lcom/swype/android/inputmethod/SwypeApplication;

.field private connectRemoved:Z

.field private core:Lcom/swype/android/jni/SwypeCore;

.field private filter:Landroid/content/IntentFilter;

.field private hasInternet:Z

.field private hideUDBManagerForIMELangs:Z

.field private isCoreStarted:Z

.field private isLaunchedByIME:Z

.field private final mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private showLangOptionsPreference:Z

.field private showSelectIMEPreference:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    .line 56
    sput v0, Lcom/swype/android/settings/SwypeSettings;->progress:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->isCoreStarted:Z

    .line 49
    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->connectRemoved:Z

    .line 50
    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->hasInternet:Z

    .line 64
    new-instance v0, Lcom/swype/android/settings/SwypeSettings$1;

    invoke-direct {v0, p0}, Lcom/swype/android/settings/SwypeSettings$1;-><init>(Lcom/swype/android/settings/SwypeSettings;)V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    invoke-direct {v0, p0, p0}, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;-><init>(Landroid/content/Context;Lcom/swype/android/service/SwypeConnect$ConnectionListener;)V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lcom/swype/android/settings/SwypeSettings;->THIRD_PARTY_DIALOG:I

    .line 293
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/settings/SwypeSettings;->NEED_CELLULAR_DATA:I

    return-void
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    sput p0, Lcom/swype/android/settings/SwypeSettings;->progress:I

    return p0
.end method

.method static synthetic access$100(Lcom/swype/android/settings/SwypeSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->setupPreferences()V

    return-void
.end method

.method private configureConnectPreference(Landroid/preference/Preference;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getConnect()Lcom/swype/android/service/SwypeConnect;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->isUpgradeDownloading()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 383
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->hasInternet:Z

    if-eqz v0, :cond_51

    .line 384
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    new-instance v0, Lcom/swype/android/settings/ProgressBarPreference;

    invoke-direct {v0, p0}, Lcom/swype/android/settings/ProgressBarPreference;-><init>(Landroid/content/Context;)V

    .line 387
    sget v1, Lcom/swype/android/settings/SwypeSettings;->progress:I

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/ProgressBarPreference;->setProgress(I)V

    .line 388
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/ProgressBarPreference;->setMax(I)V

    .line 394
    :goto_2c
    const-string v1, "connectUpgrade"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 395
    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 396
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 397
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v1, v0

    move v0, v3

    .line 426
    :goto_43
    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->connectRemoved:Z

    if-eqz v0, :cond_50

    .line 427
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_50
    return-void

    .line 391
    :cond_51
    const v0, 0x7f0700bc

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    move-object v0, p1

    goto :goto_2c

    .line 398
    :cond_59
    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->isUpgradeInstalling()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 400
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 401
    const v0, 0x7f0700b5

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v2

    move-object v1, p1

    goto :goto_43

    .line 403
    :cond_6f
    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->isUpgradeInstallReady()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 404
    sput v3, Lcom/swype/android/settings/SwypeSettings;->progress:I

    .line 408
    const-string v0, "connectInstall"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 409
    const v0, 0x7f0700b4

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 410
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->canInstallUpgrade(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 411
    const v0, 0x7f0700b8

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 415
    :goto_92
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    move v0, v2

    move-object v1, p1

    goto :goto_43

    .line 413
    :cond_98
    const v0, 0x7f0700b7

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_92

    .line 416
    :cond_9f
    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->isUpgradeDownloadReady()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 417
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    move v0, v3

    move-object v1, p1

    goto :goto_43

    .line 420
    :cond_ab
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->connectRemoved:Z

    if-nez v0, :cond_ba

    if-eqz p1, :cond_ba

    .line 421
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    iput-boolean v2, p0, Lcom/swype/android/settings/SwypeSettings;->connectRemoved:Z

    :cond_ba
    move v0, v3

    move-object v1, p1

    goto :goto_43
.end method

.method private handleConnectUpgradeNotification(Landroid/preference/Preference;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 357
    if-nez v0, :cond_1b

    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->startActivity(Landroid/content/Intent;)V

    .line 371
    :goto_1a
    return-void

    .line 363
    :cond_1b
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getConnect()Lcom/swype/android/service/SwypeConnect;

    move-result-object v0

    .line 364
    if-eqz p2, :cond_30

    if-eqz v0, :cond_30

    .line 365
    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->downloadUpgrade()V

    .line 369
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->setupPreferences()V

    goto :goto_1a

    .line 366
    :cond_30
    if-eqz v0, :cond_2c

    .line 367
    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->installUpgrade()V

    goto :goto_2c
.end method

.method private sendImeShow()V
    .registers 3

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->isLaunchedByIME:Z

    if-eqz v0, :cond_15

    .line 207
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_15

    .line 209
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    :cond_15
    return-void
.end method

.method private setupPreferences()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launched_by_ime"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->isLaunchedByIME:Z

    .line 254
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "Swype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwypeSettings.setupPreferences(): launched from ime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/swype/android/settings/SwypeSettings;->isLaunchedByIME:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2c
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->showSelectIMEPreference:Z

    .line 256
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->hideUDBManagerForIMELangs:Z

    .line 259
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->isLaunchedByIME:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    :cond_4e
    move v0, v4

    :goto_4f
    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->showLangOptionsPreference:Z

    .line 261
    iput-boolean v3, p0, Lcom/swype/android/settings/SwypeSettings;->connectRemoved:Z

    .line 262
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_62

    .line 264
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 267
    :cond_62
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->addPreferencesFromResource(I)V

    .line 269
    const-string v0, "inputmethod"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    const-string v0, "connectUpgrade"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 272
    const-string v1, "inputmethod"

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/SwypeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 273
    iget-boolean v2, p0, Lcom/swype/android/settings/SwypeSettings;->showSelectIMEPreference:Z

    if-nez v2, :cond_8a

    if-eqz v1, :cond_8a

    .line 274
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    :cond_8a
    const-string v1, "language_select"

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/SwypeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 277
    iget-boolean v2, p0, Lcom/swype/android/settings/SwypeSettings;->showLangOptionsPreference:Z

    if-nez v2, :cond_9d

    if-eqz v1, :cond_9d

    .line 278
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_9d
    if-eqz v0, :cond_bf

    .line 282
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 283
    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getConnect()Lcom/swype/android/service/SwypeConnect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/service/SwypeConnect;->isConnectStarted()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 284
    :cond_b6
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    iput-boolean v4, p0, Lcom/swype/android/settings/SwypeSettings;->connectRemoved:Z

    .line 290
    :cond_bf
    :goto_bf
    return-void

    :cond_c0
    move v0, v3

    .line 259
    goto :goto_4f

    .line 287
    :cond_c2
    invoke-direct {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->configureConnectPreference(Landroid/preference/Preference;)V

    goto :goto_bf
.end method

.method private startSwypeCore()V
    .registers 5

    .prologue
    .line 219
    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    if-nez v1, :cond_10

    .line 220
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    .line 222
    :cond_10
    iget-boolean v1, p0, Lcom/swype/android/settings/SwypeSettings;->isCoreStarted:Z

    if-nez v1, :cond_2d

    .line 223
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getCurrentScreenDefinition(Landroid/content/Context;I)Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v0

    .line 224
    .local v0, currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;
    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v2

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getType()Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/swype/android/jni/SwypeCore;->onCreate(ILjava/lang/String;)V

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/settings/SwypeSettings;->isCoreStarted:Z

    .line 227
    .end local v0           #currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;
    :cond_2d
    return-void
.end method

.method private stopSwypeCore()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    if-eqz v0, :cond_c

    .line 234
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    .line 237
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->isCoreStarted:Z

    .line 238
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->sendImeShow()V

    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 200
    return-void
.end method

.method public onConnectionChanged(Z)V
    .registers 2
    .parameter "isConnected"

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/swype/android/settings/SwypeSettings;->hasInternet:Z

    .line 436
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->setupPreferences()V

    .line 437
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 85
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "Swype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwypeSettings.onCreate(): bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1c
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    iput-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.inputmethod.SwypeSettings"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->filter:Landroid/content/IntentFilter;

    .line 89
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.connect.Refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->startSwypeCore()V

    .line 92
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-static {p0, v0}, Lcom/swype/android/widget/Themes;->setActivityTheme(Landroid/app/Activity;Lcom/swype/android/jni/SwypeCore;)V

    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->setupPreferences()V

    .line 96
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const v7, 0x104000a

    const/high16 v6, 0x104

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 297
    packed-switch p1, :pswitch_data_8a

    .line 343
    const/4 v2, 0x0

    :goto_b
    return-object v2

    .line 299
    :pswitch_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 300
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v2, 0x7f0700ba

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 302
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    new-instance v2, Lcom/swype/android/settings/SwypeSettings$2;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/SwypeSettings$2;-><init>(Lcom/swype/android/settings/SwypeSettings;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    new-instance v2, Lcom/swype/android/settings/SwypeSettings$3;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/SwypeSettings$3;-><init>(Lcom/swype/android/settings/SwypeSettings;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v2, v0

    .line 318
    goto :goto_b

    .line 321
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #msg:Ljava/lang/String;
    :pswitch_4b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 322
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    const v2, 0x7f0700c1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 324
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    .restart local v1       #msg:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    new-instance v2, Lcom/swype/android/settings/SwypeSettings$4;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/SwypeSettings$4;-><init>(Lcom/swype/android/settings/SwypeSettings;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 334
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v2, Lcom/swype/android/settings/SwypeSettings$5;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/SwypeSettings$5;-><init>(Lcom/swype/android/settings/SwypeSettings;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v2, v0

    .line 340
    goto :goto_b

    .line 297
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_4b
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 241
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "Swype"

    const-string v1, "SwypeSettings.onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_b
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/SwypeSettings;->setIntent(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 155
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "Swype"

    const-string v1, "SwypeSettings.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_b
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 159
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, "inputmethod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 165
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    if-eqz p0, :cond_1b

    .line 167
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_1b
    move v0, v2

    .line 193
    :goto_1c
    return v0

    .line 171
    :cond_1d
    const-string v1, "connectUpgrade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 172
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 173
    if-nez v0, :cond_36

    .line 175
    invoke-virtual {p0, v2}, Lcom/swype/android/settings/SwypeSettings;->showDialog(I)V

    :goto_34
    move v0, v2

    .line 181
    goto :goto_1c

    .line 176
    :cond_36
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->hasInternet:Z

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->isDataConnectionPermitted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 177
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->showDialog(I)V

    goto :goto_34

    .line 179
    :cond_49
    invoke-direct {p0, p1, v2}, Lcom/swype/android/settings/SwypeSettings;->handleConnectUpgradeNotification(Landroid/preference/Preference;Z)V

    goto :goto_34

    .line 183
    :cond_4d
    const-string v1, "connectInstall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 184
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->canInstallUpgrade(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 185
    invoke-direct {p0, p1, v3}, Lcom/swype/android/settings/SwypeSettings;->handleConnectUpgradeNotification(Landroid/preference/Preference;Z)V

    :cond_62
    move v0, v2

    .line 187
    goto :goto_1c

    :cond_64
    move v0, v2

    .line 193
    goto :goto_1c
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 141
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "Swype"

    const-string v1, "SwypeSettings.onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_b
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 143
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->startSwypeCore()V

    .line 144
    return-void
.end method

.method public onResume()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Swype"

    const-string v1, "SwypeSettings.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/settings/SwypeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    sget-object v1, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/settings/SwypeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-static {p0}, Lcom/swype/android/service/SwypeConnect;->checkInternetStatus(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeSettings;->hasInternet:Z

    .line 113
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->setupPreferences()V

    .line 116
    const-string v0, "settings_dictionary"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 117
    iget-boolean v1, p0, Lcom/swype/android/settings/SwypeSettings;->hideUDBManagerForIMELangs:Z

    if-eqz v1, :cond_5f

    if-eqz v0, :cond_5f

    .line 119
    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    if-eqz v1, :cond_63

    .line 120
    iget-object v1, p0, Lcom/swype/android/settings/SwypeSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_63

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 124
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "chinese"

    aput-object v3, v2, v7

    const-string v3, "japanese"

    aput-object v3, v2, v8

    array-length v3, v2

    move v4, v7

    :goto_50
    if-ge v4, v3, :cond_63

    aget-object v5, v2, v4

    .line 128
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_60

    move v1, v7

    .line 135
    :goto_5c
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    :cond_5f
    return-void

    .line 124
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_63
    move v1, v8

    goto :goto_5c
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 100
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "Swype"

    const-string v1, "SwypeSettings.onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_b
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 103
    iget-object v0, p0, Lcom/swype/android/settings/SwypeSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->checkLocaleChange()V

    .line 104
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 148
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "Swype"

    const-string v1, "SwypeSettings.onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_b
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 150
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeSettings;->stopSwypeCore()V

    .line 151
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 78
    sget-boolean v0, Lcom/swype/android/settings/SwypeSettings;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "Swype"

    const-string v1, "SwypeSettings.startActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_b
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
