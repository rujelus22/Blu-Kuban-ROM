.class public Lcom/google/android/finsky/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mDestroyed:Z

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mUserSettingsEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/SettingsActivity;->setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private changePasscode(Ljava/lang/String;)V
    .registers 6
    .parameter "newPasscode"

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 263
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 265
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "purchase-lock"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 269
    .local v0, purchaseLock:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    .end local v0           #purchaseLock:Landroid/preference/CheckBoxPreference;
    :goto_24
    return-void

    .line 272
    :cond_25
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method private configureAboutSection(Landroid/preference/PreferenceScreen;)V
    .registers 8
    .parameter "preferenceScreen"

    .prologue
    .line 277
    const-string v3, "build-version"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 278
    .local v0, buildVersion:Landroid/preference/Preference;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    .line 279
    .local v2, repository:Lcom/google/android/finsky/appstate/PackageStateRepository;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, marketVersionName:Ljava/lang/String;
    const v3, 0x7f070202

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method private configureAdPrefsSection(Landroid/preference/PreferenceScreen;)V
    .registers 10
    .parameter "preferenceScreen"

    .prologue
    .line 319
    const-string v5, "admob-ad"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 321
    .local v3, preference:Landroid/preference/CheckBoxPreference;
    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->INTEREST_BASED_ADS_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/google/android/finsky/activities/SettingsActivity;->setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V

    .line 323
    const-string v5, "admob-ad-desc"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/LinkPreference;

    .line 325
    .local v1, admobMore:Lcom/google/android/finsky/utils/LinkPreference;
    const v5, 0x7f04008f

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/utils/LinkPreference;->setLayoutResource(I)V

    .line 326
    sget-object v5, Lcom/google/android/finsky/config/G;->adPrefsLearnMoreUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    .local v0, adPrefsLearnMoreUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/ads/AdSettings;->getSigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, sigString:Ljava/lang/String;
    if-eqz v4, :cond_4e

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?sig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_4e
    const v5, 0x7f070211

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, descriptionText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/utils/LinkPreference;->setLink(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method private configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "preferenceScreen"

    .prologue
    .line 401
    const-string v1, "auto-add-shortcuts"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 403
    .local v0, autoAddShortcuts:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    return-void
.end method

.method private configureAutoUpdateByDefault(Landroid/preference/PreferenceScreen;)V
    .registers 5
    .parameter "preferenceScreen"

    .prologue
    .line 394
    const-string v2, "auto-update-by-default"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 396
    .local v0, autoUpdateByDefault:Landroid/preference/CheckBoxPreference;
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 397
    .local v1, value:Ljava/lang/Boolean;
    if-nez v1, :cond_17

    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 398
    return-void

    .line 397
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_13
.end method

.method private configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "preferenceScreen"

    .prologue
    .line 370
    const-string v1, "update-notifications"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 372
    .local v0, updateNotifications:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    return-void
.end method

.method private configureUpdateOverWifiOnly(Landroid/preference/PreferenceScreen;)V
    .registers 5
    .parameter "preferenceScreen"

    .prologue
    .line 376
    const-string v2, "update-over-wifi-only"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 378
    .local v1, updateOverWifiOnly:Landroid/preference/CheckBoxPreference;
    if-nez v1, :cond_b

    .line 391
    :goto_a
    return-void

    .line 382
    :cond_b
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->hasMobileNetwork()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 383
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_a

    .line 386
    :cond_29
    const-string v2, "category-general"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 388
    .local v0, generalCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a
.end method

.method private configureUserControlsSection(Landroid/preference/PreferenceScreen;)V
    .registers 6
    .parameter "preferenceScreen"

    .prologue
    .line 288
    sget-object v3, Lcom/google/android/finsky/config/G;->vendingHideContentRating:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 289
    .local v1, hideContentRating:Z
    if-eqz v1, :cond_17

    .line 290
    const-string v3, "content-level"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 291
    .local v0, contentLevel:Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    .end local v0           #contentLevel:Landroid/preference/Preference;
    :cond_17
    const-string v3, "purchase-lock"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 295
    .local v2, preference:Landroid/preference/CheckBoxPreference;
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->syncUserControlsState()V

    .line 298
    return-void
.end method

.method private processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V
    .registers 6
    .parameter "preference"
    .parameter "isChecked"

    .prologue
    .line 350
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 353
    new-instance v0, Lcom/google/android/finsky/ads/AdSettings;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/ads/AdSettings;-><init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V

    .line 354
    .local v0, settings:Lcom/google/android/finsky/ads/AdSettings;
    new-instance v1, Lcom/google/android/finsky/activities/SettingsActivity$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/finsky/activities/SettingsActivity$1;-><init>(Lcom/google/android/finsky/activities/SettingsActivity;ZLandroid/preference/CheckBoxPreference;)V

    new-instance v2, Lcom/google/android/finsky/activities/SettingsActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/finsky/activities/SettingsActivity$2;-><init>(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/finsky/ads/AdSettings;->enableInterestBasedAds(ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 367
    return-void
.end method

.method private setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "isEnabled"

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 345
    :goto_4
    return-void

    .line 343
    :cond_5
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private setupActionBar()V
    .registers 3

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const v1, 0x7f0701cc

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private syncUserControlsState()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 306
    const-string v1, "unlock-settings"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    if-nez v1, :cond_43

    move v1, v2

    :goto_d
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    const-string v1, "content-level"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 311
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    if-eqz v1, :cond_45

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    move v0, v2

    .line 313
    .local v0, enablePurchaseLock:Z
    :goto_2e
    const-string v1, "purchase-lock"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    const-string v1, "change-passcode"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 316
    return-void

    .end local v0           #enablePurchaseLock:Z
    :cond_43
    move v1, v3

    .line 306
    goto :goto_d

    :cond_45
    move v0, v3

    .line 311
    goto :goto_2e
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 226
    const/16 v2, 0x1e

    if-ne p1, v2, :cond_18

    if-ne p2, v3, :cond_18

    .line 227
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 228
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->setResult(I)V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    .line 255
    :goto_17
    return-void

    .line 231
    :cond_18
    const/16 v2, 0x1f

    if-ne p1, v2, :cond_25

    if-ne p2, v3, :cond_25

    .line 232
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    .line 233
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->syncUserControlsState()V

    goto :goto_17

    .line 235
    :cond_25
    const/16 v2, 0x20

    if-ne p1, v2, :cond_50

    if-ne p2, v3, :cond_50

    .line 236
    const-string v2, "new-pin"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, newPin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 239
    invoke-direct {p0, v4}, Lcom/google/android/finsky/activities/SettingsActivity;->changePasscode(Ljava/lang/String;)V

    goto :goto_17

    .line 243
    :cond_3b
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v3, "pinLock.confirm"

    invoke-interface {v2, v4, v4, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const v2, 0x7f0701c6

    const-string v3, "new-pin"

    const/4 v4, 0x0

    invoke-static {p0, v2, v1, v3, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_17

    .line 249
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newPin:Ljava/lang/String;
    :cond_50
    if-ne p1, v5, :cond_5e

    if-ne p2, v3, :cond_5e

    .line 251
    const-string v2, "new-pin"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->changePasscode(Ljava/lang/String;)V

    goto :goto_17

    .line 254
    :cond_5e
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x7

    .line 80
    invoke-static {}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->shouldUseSystemActionBar()Z

    move-result v1

    .line 81
    .local v1, useSystemActionBar:Z
    if-eqz v1, :cond_4c

    const/16 v2, 0x8

    :goto_a
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->requestWindowFeature(I)Z

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    if-nez v1, :cond_1b

    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v4, 0x7f04

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 87
    :cond_1b
    const v2, 0x7f0400fe

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->addPreferencesFromResource(I)V

    .line 88
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 89
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v3, "settings"

    invoke-interface {v2, v5, v5, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    if-nez v2, :cond_4e

    .line 93
    const-string v2, "Exit SettingsActivity - no current account."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    .line 106
    :goto_4b
    return-void

    :cond_4c
    move v2, v3

    .line 81
    goto :goto_a

    .line 97
    :cond_4e
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->setupActionBar()V

    .line 99
    if-nez p1, :cond_55

    .line 100
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 104
    :cond_55
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 105
    .local v0, emptyPin:Z
    const-string v2, "unlocked"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    goto :goto_4b
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mDestroyed:Z

    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 148
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->onBackPressed()V

    .line 149
    const/4 v0, 0x1

    goto :goto_b

    .line 146
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 158
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v3, "admob-ad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 163
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 164
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V

    move v0, v1

    .line 217
    :goto_19
    if-eqz v0, :cond_23

    .line 218
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 221
    :cond_23
    return v2

    .line 165
    :cond_24
    const-string v3, "update-notifications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 166
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 167
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v1

    .line 168
    goto :goto_19

    :cond_3d
    const-string v3, "auto-update-by-default"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 169
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 170
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 173
    goto :goto_19

    :cond_5f
    const-string v3, "update-over-wifi-only"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 174
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 175
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 177
    goto :goto_19

    :cond_78
    const-string v3, "auto-add-shortcuts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 178
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 179
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 181
    goto :goto_19

    :cond_91
    const-string v3, "clear-history"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 182
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    move v0, v1

    .line 184
    goto/16 :goto_19

    :cond_a7
    const-string v3, "purchase-lock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 185
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 186
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 188
    goto/16 :goto_19

    :cond_c1
    const-string v3, "unlock-settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 189
    const v3, 0x7f0701c8

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v3, v0, v5, v1}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 191
    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v4, "pinLock.unlockSettings"

    invoke-interface {v3, v5, v5, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 v3, 0x1f

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 193
    goto/16 :goto_19

    :cond_e7
    const-string v3, "content-level"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 194
    const-class v0, Lcom/google/android/finsky/activities/ContentFilterActivity;

    const-string v3, "authAccount"

    iget-object v4, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-static {p0, v0, v3, v4}, Lcom/google/android/finsky/utils/IntentUtils;->createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    const/16 v3, 0x1e

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 200
    goto/16 :goto_19

    :cond_101
    const-string v3, "change-passcode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 201
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_132

    move v3, v2

    .line 203
    :goto_118
    if-eqz v3, :cond_134

    const v0, 0x7f0701c4

    .line 205
    :goto_11d
    const-string v4, "new-pin"

    invoke-static {p0, v0, v5, v4, v3}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 207
    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v4, "pinLock.set"

    invoke-interface {v3, v5, v5, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v3, 0x20

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 209
    goto/16 :goto_19

    :cond_132
    move v3, v1

    .line 202
    goto :goto_118

    .line 203
    :cond_134
    const v0, 0x7f0701c5

    goto :goto_11d

    .line 209
    :cond_138
    const-string v3, "os-licenses"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 210
    const v0, 0x7f0701bf

    const-string v3, "file:///android_asset/licenses.html"

    invoke-static {p0, v0, v3}, Lcom/google/android/finsky/activities/WebViewDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 213
    goto/16 :goto_19

    :cond_14f
    move v0, v1

    .line 214
    goto/16 :goto_19
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 126
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoUpdateByDefault(Landroid/preference/PreferenceScreen;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V

    .line 129
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUpdateOverWifiOnly(Landroid/preference/PreferenceScreen;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUserControlsSection(Landroid/preference/PreferenceScreen;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAdPrefsSection(Landroid/preference/PreferenceScreen;)V

    .line 132
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAboutSection(Landroid/preference/PreferenceScreen;)V

    .line 133
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "unlocked"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method
