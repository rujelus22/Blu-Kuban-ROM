.class public Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;
.super Landroid/preference/PreferenceActivity;
.source "SwypeInputMethodSettingsLanguages.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/swype/android/service/SwypeConnect$ConnectionListener;
.implements Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;


# static fields
.field public static final EXTRA_CHOOSE_CURRENT:Ljava/lang/String; = "choose_current"

.field private static downloadLanguages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final NEED_CELLULAR_DATA:I

.field private app:Lcom/swype/android/inputmethod/SwypeApplication;

.field private choiceList:Landroid/preference/ListPreference;

.field private core:Lcom/swype/android/jni/SwypeCore;

.field private currentDownload:Ljava/lang/String;

.field private currentLanguage:Ljava/lang/String;

.field private final filter:Landroid/content/IntentFilter;

.field private hasInternet:Z

.field private isCoreStarted:Z

.field private langGroup:Landroid/preference/PreferenceGroup;

.field private final mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

.field private final mProgressReceiver:Landroid/content/BroadcastReceiver;

.field private final mRefreshReceiver:Landroid/content/BroadcastReceiver;

.field private status:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.connect.DownloadLanguageProgress"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->filter:Landroid/content/IntentFilter;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->status:Ljava/util/HashMap;

    .line 67
    new-instance v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;

    invoke-direct {v0, p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;-><init>(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    invoke-direct {v0, p0, p0}, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;-><init>(Landroid/content/Context;Lcom/swype/android/service/SwypeConnect$ConnectionListener;)V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    .line 105
    new-instance v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$2;

    invoke-direct {v0, p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$2;-><init>(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    const/4 v0, 0x1

    iput v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->NEED_CELLULAR_DATA:I

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentDownload:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->setupPreferences()V

    return-void
.end method

.method private getLanguageList()Lcom/swype/android/jni/SwypeCore$LanguageList;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 476
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v0

    .line 477
    iget-object v1, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v1, v1

    .line 479
    new-instance v2, Ljava/util/TreeMap;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 480
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/swype/android/service/SwypeConnect;->getInstalledLanguageCount(Landroid/content/Context;)I

    move-result v3

    .line 481
    new-instance v4, Lcom/swype/android/jni/SwypeCore$LanguageList;

    invoke-direct {v4}, Lcom/swype/android/jni/SwypeCore$LanguageList;-><init>()V

    .line 482
    if-lez v3, :cond_75

    move v3, v7

    .line 483
    :goto_23
    if-ge v3, v1, :cond_33

    .line 484
    iget-object v5, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 486
    :cond_33
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    .line 487
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    .line 488
    new-array v1, v1, [Z

    iput-object v1, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    .line 489
    iget-object v1, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move v2, v7

    .line 490
    :goto_5a
    iget-object v3, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_74

    .line 491
    iget-object v3, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 492
    if-ltz v3, :cond_71

    .line 493
    iget-object v5, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    iget-object v6, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    aget-boolean v3, v6, v3

    aput-boolean v3, v5, v2

    .line 490
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_74
    move-object v0, v4

    .line 499
    :cond_75
    return-object v0
.end method

.method private setupPreferences()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 380
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 383
    :cond_11
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->addPreferencesFromResource(I)V

    .line 384
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 386
    const-string v0, "pref_language_choice_list"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    .line 387
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 389
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isConnect()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 390
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "pref_manage_languages"

    invoke-virtual {p0, v3}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "pref_download_languages"

    invoke-virtual {p0, v3}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    :cond_4c
    invoke-static {p0}, Lcom/swype/android/service/SwypeConnect;->getInstalledLanguages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_a3

    array-length v0, v0

    if-lez v0, :cond_a3

    .line 398
    const-string v0, "pref_download_languages"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 399
    if-eqz v2, :cond_62

    if-eqz v0, :cond_62

    .line 400
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v3, 0x49

    invoke-virtual {v0, v3, v4}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    .line 423
    if-nez v0, :cond_79

    .line 424
    const-string v0, "pref_download_languages"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 425
    if-eqz v2, :cond_79

    if-eqz v0, :cond_79

    .line 426
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_79
    const-string v0, "pref_active_languages"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    .line 431
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->populateLanguages()V

    .line 434
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "choose_current"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 435
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getOrder()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 437
    :cond_a2
    return-void

    .line 404
    :cond_a3
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->isLanguageListReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 405
    const-string v0, "pref_download_languages"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 406
    invoke-static {p0}, Lcom/swype/android/service/SwypeConnect;->getAvailableLanguages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 407
    if-eqz v3, :cond_bc

    array-length v3, v3

    if-gtz v3, :cond_d1

    .line 408
    :cond_bc
    if-eqz v2, :cond_c3

    if-eqz v0, :cond_c3

    .line 409
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 415
    :cond_c3
    :goto_c3
    const-string v0, "pref_manage_languages"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 416
    if-eqz v2, :cond_62

    if-eqz v0, :cond_62

    .line 417
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_62

    .line 411
    :cond_d1
    if-eqz v2, :cond_c3

    if-eqz v0, :cond_c3

    .line 412
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_c3
.end method

.method private startSwypeCore()V
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 467
    return-void
.end method


# virtual methods
.method public getMax(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 512
    const/16 v0, 0x64

    return v0
.end method

.method public getProgress(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 504
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 505
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 507
    :goto_18
    return v0

    .restart local p0
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public onConnectionChanged(Z)V
    .registers 2
    .parameter "isConnected"

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->hasInternet:Z

    .line 472
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->setupPreferences()V

    .line 473
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    .line 115
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    .line 116
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->isCoreStarted:Z

    .line 119
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-static {p0, v0}, Lcom/swype/android/widget/Themes;->setActivityTheme(Landroid/app/Activity;Lcom/swype/android/jni/SwypeCore;)V

    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 350
    packed-switch p1, :pswitch_data_4c

    .line 374
    const/4 v2, 0x0

    :goto_4
    return-object v2

    .line 352
    :pswitch_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 353
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v2, 0x7f0700c1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 355
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    const/4 v2, -0x1

    new-instance v3, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$3;

    invoke-direct {v3, p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$3;-><init>(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    const/4 v2, -0x2

    new-instance v3, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$4;

    invoke-direct {v3, p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$4;-><init>(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v2, v0

    .line 371
    goto :goto_4

    .line 350
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->persistInactiveLanguages()V

    .line 155
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 270
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5e

    .line 273
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->persistInactiveLanguages()V

    .line 277
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentLanguage:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->setMessageLanguage(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    move v2, v7

    :goto_21
    if-ge v2, v1, :cond_c1

    .line 283
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_53

    .line 284
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 285
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 286
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 287
    const v3, 0x7f0700b0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 288
    iget-object v3, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    :cond_53
    :goto_53
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    .line 290
    :cond_57
    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 291
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 299
    :cond_5e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    move v4, v7

    :goto_6f
    if-ge v4, v3, :cond_a0

    .line 302
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9a

    .line 303
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 304
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne p1, v0, :cond_9e

    move v6, v8

    :goto_8a
    if-eq v5, v6, :cond_9a

    .line 305
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_9a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6f

    :cond_9e
    move v6, v7

    .line 304
    goto :goto_8a

    .line 310
    :cond_a0
    iget-object v3, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 314
    :cond_c1
    return v8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 319
    iget-object v2, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SwypeApplication;->getConnect()Lcom/swype/android/service/SwypeConnect;

    move-result-object v0

    .line 321
    .local v0, connect:Lcom/swype/android/service/SwypeConnect;
    if-eqz p2, :cond_1b

    iget-object v2, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->status:Ljava/util/HashMap;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->status:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 322
    const/4 v2, 0x0

    .line 343
    :goto_1a
    return v2

    .line 325
    :cond_1b
    if-eqz p2, :cond_42

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_download_languages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 326
    if-eqz v0, :cond_2e

    .line 327
    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->startConnectImmediately()V

    .line 329
    :cond_2e
    iget-boolean v2, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->hasInternet:Z

    if-eqz v2, :cond_3e

    .line 330
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.swype.android.connect.settings.DownloadLanguagesActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->startActivity(Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    :goto_3c
    move v2, v4

    .line 335
    goto :goto_1a

    .line 333
    :cond_3e
    invoke-virtual {p0, v4}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->showDialog(I)V

    goto :goto_3c

    .line 336
    :cond_42
    instance-of v2, p2, Lcom/swype/android/settings/ProgressBarPreference;

    if-nez v2, :cond_62

    instance-of v2, p2, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_73

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_manage_languages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_language_choice_list"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_62
    iget-boolean v2, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->hasInternet:Z

    if-nez v2, :cond_73

    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/service/SwypeConnect;->isDataConnectionPermitted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 341
    invoke-virtual {p0, v4}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->showDialog(I)V

    .line 343
    :cond_73
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1a
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 126
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->isCoreStarted:Z

    if-nez v0, :cond_f

    .line 127
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->isCoreStarted:Z

    .line 130
    :cond_f
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->populateLanguages()V

    .line 131
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mConnectivityReceiver:Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;

    sget-object v1, Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/swype/android/service/SwypeConnect;->refreshFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-static {p0}, Lcom/swype/android/service/SwypeConnect;->checkInternetStatus(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->hasInternet:Z

    .line 143
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->setupPreferences()V

    .line 144
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 160
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->isCoreStarted:Z

    if-eqz v0, :cond_f

    .line 161
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->isCoreStarted:Z

    .line 164
    :cond_f
    return-void
.end method

.method protected persistInactiveLanguages()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 440
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getLanguageList()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_4d

    .line 443
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4a

    .line 444
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 445
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_44

    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_36

    .line 447
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    :cond_36
    sub-int v0, v5, v4

    .line 450
    iget-object v6, v1, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_44

    .line 451
    iget-object v6, v1, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    move v0, v4

    .line 442
    :goto_45
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_11

    .line 456
    :cond_4a
    add-int/lit8 v0, v4, 0x1

    goto :goto_45

    .line 459
    :cond_4d
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->setListOfInactiveLanguages(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method protected populateLanguages()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 172
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getMessageLanguage(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentLanguage:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getLanguageList()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v2

    .line 175
    iget-object v0, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v3, v0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v7

    .line 179
    :goto_1d
    if-ge v4, v3, :cond_36

    .line 180
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_33

    .line 181
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 186
    :cond_36
    iget-object v4, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    new-array v5, v7, [Ljava/lang/CharSequence;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 192
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->getDownloadingLanguagesStatus(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->status:Ljava/util/HashMap;

    .line 193
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->status:Ljava/util/HashMap;

    if-eqz v0, :cond_fe

    .line 194
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->status:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 196
    iget-boolean v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->hasInternet:Z

    if-eqz v1, :cond_f6

    .line 197
    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->status:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    const-string v6, "LANGUAGE_STATUS_DOWNLOADING"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 199
    new-instance v5, Lcom/swype/android/settings/ProgressBarPreference;

    invoke-direct {v5, p0}, Lcom/swype/android/settings/ProgressBarPreference;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v5, p0}, Lcom/swype/android/settings/ProgressBarPreference;->setStore(Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;)V

    .line 201
    const/16 v1, 0x64

    invoke-virtual {v5, v1}, Lcom/swype/android/settings/ProgressBarPreference;->setMax(I)V

    .line 202
    sget-object v1, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 203
    sget-object v1, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/swype/android/settings/ProgressBarPreference;->setProgress(I)V

    .line 208
    :goto_c2
    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentDownload:Ljava/lang/String;

    move-object v1, v5

    .line 218
    :goto_c5
    iget-object v5, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v5, v0}, Lcom/swype/android/jni/SwypeCore;->getDisplayNameFromLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    if-nez v5, :cond_ce

    move-object v5, v0

    .line 222
    :cond_ce
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_79

    .line 205
    :cond_da
    invoke-virtual {v5, v7}, Lcom/swype/android/settings/ProgressBarPreference;->setProgress(I)V

    goto :goto_c2

    .line 209
    :cond_de
    const-string v6, "LANGUAGE_STATUS_INSTALLING"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 210
    const v1, 0x7f0700c0

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(I)V

    move-object v1, v5

    goto :goto_c5

    .line 213
    :cond_ee
    const v1, 0x7f0700bf

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(I)V

    move-object v1, v5

    .line 215
    goto :goto_c5

    .line 216
    :cond_f6
    const v1, 0x7f0700bc

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(I)V

    move-object v1, v5

    goto :goto_c5

    .line 227
    :cond_fe
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->downloadLanguages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    :cond_103
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getConnect()Lcom/swype/android/service/SwypeConnect;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_19c

    .line 234
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->getLanguagesBeingRemoved(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_19c

    .line 236
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 237
    array-length v4, v0

    move v5, v7

    :goto_11c
    if-ge v5, v4, :cond_126

    aget-object v6, v0, v5

    .line 238
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto :goto_11c

    :cond_126
    move-object v0, v1

    :goto_127
    move v1, v7

    .line 244
    :goto_128
    if-ge v1, v3, :cond_19b

    .line 245
    if-eqz v0, :cond_157

    iget-object v4, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_157

    .line 246
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 247
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 248
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    const v5, 0x7f0700c5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 250
    iget-object v5, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 244
    :goto_154
    add-int/lit8 v1, v1, 0x1

    goto :goto_128

    .line 252
    :cond_157
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 254
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 255
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    aget-boolean v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    iget-object v5, v2, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_195

    .line 259
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 260
    const v5, 0x7f0700b0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 261
    iget-object v5, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->choiceList:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    :cond_195
    iget-object v5, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->langGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_154

    .line 266
    :cond_19b
    return-void

    :cond_19c
    move-object v0, v8

    goto :goto_127
.end method
