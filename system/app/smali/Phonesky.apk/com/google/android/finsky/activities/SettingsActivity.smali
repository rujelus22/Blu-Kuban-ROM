.class public Lcom/google/android/finsky/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDestroyed:Z

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mSettings:Landroid/content/SharedPreferences;

.field private mUserSettingsEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
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
    .registers 7
    .parameter "newPasscode"

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 244
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pin_code"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v2, "purchase-lock"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "purchase-lock"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 250
    .local v1, purchaseLock:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    invoke-static {v0}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    .line 258
    .end local v1           #purchaseLock:Landroid/preference/CheckBoxPreference;
    :goto_29
    return-void

    .line 254
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2a
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pin_code"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-static {v0}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_29
.end method

.method private configureAboutSection(Landroid/preference/PreferenceScreen;)V
    .registers 8
    .parameter "preferenceScreen"

    .prologue
    .line 261
    const-string v3, "build-version"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 262
    .local v0, buildVersion:Landroid/preference/Preference;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v2

    .line 263
    .local v2, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, marketVersionName:Ljava/lang/String;
    const v3, 0x7f0701c7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method private configureAdPrefsSection(Landroid/preference/PreferenceScreen;)V
    .registers 10
    .parameter "preferenceScreen"

    .prologue
    .line 303
    const-string v5, "admob-ad"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 305
    .local v3, preference:Landroid/preference/CheckBoxPreference;
    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->INTEREST_BASED_ADS_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/google/android/finsky/activities/SettingsActivity;->setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V

    .line 307
    const-string v5, "admob-ad-desc"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/LinkPreference;

    .line 309
    .local v1, admobMore:Lcom/google/android/finsky/utils/LinkPreference;
    const v5, 0x7f040082

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/utils/LinkPreference;->setLayoutResource(I)V

    .line 310
    sget-object v5, Lcom/google/android/finsky/config/G;->adPrefsLearnMoreUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, adPrefsLearnMoreUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/ads/AdSettings;->getSigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, sigString:Ljava/lang/String;
    if-eqz v4, :cond_4e

    .line 313
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

    .line 315
    :cond_4e
    const v5, 0x7f0701d4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, descriptionText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/utils/LinkPreference;->setLink(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method private configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "preferenceScreen"

    .prologue
    .line 373
    const-string v1, "auto-add-shortcuts"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 375
    .local v0, autoAddShortcuts:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    return-void
.end method

.method private configureAutoUpdateByDefault(Landroid/preference/PreferenceScreen;)V
    .registers 5
    .parameter "preferenceScreen"

    .prologue
    .line 366
    const-string v2, "auto-update-by-default"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 368
    .local v0, autoUpdateByDefault:Landroid/preference/CheckBoxPreference;
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 369
    .local v1, value:Ljava/lang/Boolean;
    if-nez v1, :cond_17

    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    return-void

    .line 369
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_13
.end method

.method private configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "preferenceScreen"

    .prologue
    .line 354
    const-string v1, "update-notifications"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 356
    .local v0, updateNotifications:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    return-void
.end method

.method private configureUpdateOverWifiOnly(Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "preferenceScreen"

    .prologue
    .line 360
    const-string v1, "update-over-wifi-only"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 362
    .local v0, updateOverWifiOnly:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 363
    return-void
.end method

.method private configureUserControlsSection(Landroid/preference/PreferenceScreen;)V
    .registers 9
    .parameter "preferenceScreen"

    .prologue
    .line 273
    sget-object v4, Lcom/google/android/finsky/config/G;->vendingHideContentRating:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 274
    .local v1, hideContentRating:Z
    if-eqz v1, :cond_17

    .line 275
    const-string v4, "content-level"

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 276
    .local v0, contentLevel:Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    .end local v0           #contentLevel:Landroid/preference/Preference;
    :cond_17
    iget-object v4, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "purchase-lock"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 279
    .local v3, purchaseLock:Z
    const-string v4, "purchase-lock"

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 281
    .local v2, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->syncUserControlsState()V

    .line 284
    return-void
.end method

.method private getCurrentPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyPreferences;->getCurrentPasscode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V
    .registers 6
    .parameter "preference"
    .parameter "isChecked"

    .prologue
    .line 334
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 337
    new-instance v0, Lcom/google/android/finsky/ads/AdSettings;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/ads/AdSettings;-><init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V

    .line 338
    .local v0, settings:Lcom/google/android/finsky/ads/AdSettings;
    new-instance v1, Lcom/google/android/finsky/activities/SettingsActivity$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/finsky/activities/SettingsActivity$1;-><init>(Lcom/google/android/finsky/activities/SettingsActivity;ZLandroid/preference/CheckBoxPreference;)V

    new-instance v2, Lcom/google/android/finsky/activities/SettingsActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/finsky/activities/SettingsActivity$2;-><init>(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/finsky/ads/AdSettings;->enableInterestBasedAds(ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 351
    return-void
.end method

.method private setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "isEnabled"

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 329
    :goto_4
    return-void

    .line 327
    :cond_5
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private setupActionBar()V
    .registers 3

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const v1, 0x7f070193

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private syncUserControlsState()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    const-string v1, "unlock-settings"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    if-nez v1, :cond_3f

    move v1, v2

    :goto_d
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 294
    const-string v1, "content-level"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    if-eqz v1, :cond_41

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getCurrentPin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    move v0, v2

    .line 297
    .local v0, enablePurchaseLock:Z
    :goto_2a
    const-string v1, "purchase-lock"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 299
    const-string v1, "change-passcode"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    return-void

    .end local v0           #enablePurchaseLock:Z
    :cond_3f
    move v1, v3

    .line 291
    goto :goto_d

    :cond_41
    move v0, v3

    .line 296
    goto :goto_2a
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x21

    const/4 v3, -0x1

    .line 209
    const/16 v2, 0x1e

    if-ne p1, v2, :cond_12

    if-ne p2, v3, :cond_12

    .line 210
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->setResult(I)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    .line 236
    :goto_11
    return-void

    .line 213
    :cond_12
    const/16 v2, 0x1f

    if-ne p1, v2, :cond_1f

    if-ne p2, v3, :cond_1f

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    .line 215
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->syncUserControlsState()V

    goto :goto_11

    .line 217
    :cond_1f
    const/16 v2, 0x20

    if-ne p1, v2, :cond_44

    if-ne p2, v3, :cond_44

    .line 218
    const-string v2, "new-pin"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, newPin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 221
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->changePasscode(Ljava/lang/String;)V

    goto :goto_11

    .line 225
    :cond_36
    const v2, 0x7f07018e

    const-string v3, "new-pin"

    const/4 v4, 0x0

    invoke-static {p0, v2, v1, v3, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 227
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11

    .line 230
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newPin:Ljava/lang/String;
    :cond_44
    if-ne p1, v5, :cond_52

    if-ne p2, v3, :cond_52

    .line 232
    const-string v2, "new-pin"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->changePasscode(Ljava/lang/String;)V

    goto :goto_11

    .line 235
    :cond_52
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x7

    .line 82
    invoke-static {}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->shouldUseSystemActionBar()Z

    move-result v0

    .line 83
    .local v0, useSystemActionBar:Z
    if-eqz v0, :cond_53

    const/16 v1, 0x8

    :goto_a
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->requestWindowFeature(I)Z

    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-nez v0, :cond_1c

    .line 87
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x7f040001

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 89
    :cond_1c
    const v1, 0x7f0400b6

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->addPreferencesFromResource(I)V

    .line 90
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "settings"

    invoke-interface {v1, v4, v4, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyPreferences;->getPreferencesFile()Lcom/google/android/finsky/config/PreferenceFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 94
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    if-nez v1, :cond_55

    .line 96
    const-string v1, "Exit SettingsActivity - no current account."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    .line 104
    :goto_52
    return-void

    :cond_53
    move v1, v2

    .line 83
    goto :goto_a

    .line 100
    :cond_55
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->setupActionBar()V

    .line 103
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getCurrentPin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    goto :goto_52
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mDestroyed:Z

    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 142
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 139
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->onBackPressed()V

    .line 140
    const/4 v0, 0x1

    goto :goto_b

    .line 137
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v3, "admob-ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 152
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 153
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V

    move v0, v1

    .line 204
    :cond_19
    :goto_19
    return v0

    .line 154
    :cond_1a
    const-string v3, "update-notifications"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 155
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 156
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v1

    .line 157
    goto :goto_19

    :cond_33
    const-string v3, "auto-update-by-default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 158
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 159
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v1

    .line 161
    goto :goto_19

    :cond_55
    const-string v3, "update-over-wifi-only"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 162
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 163
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v1

    .line 164
    goto :goto_19

    :cond_6e
    const-string v3, "auto-add-shortcuts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 165
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 166
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v1

    .line 167
    goto :goto_19

    :cond_87
    const-string v3, "clear-history"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 168
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    move v0, v1

    .line 170
    goto/16 :goto_19

    :cond_9d
    const-string v3, "purchase-lock"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 171
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 172
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 174
    const-string v3, "purchase-lock"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-static {v2}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    goto/16 :goto_19

    .line 177
    :cond_bb
    const-string v3, "unlock-settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 178
    const v2, 0x7f070190

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getCurrentPin()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 180
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 181
    goto/16 :goto_19

    :cond_d6
    const-string v3, "content-level"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 182
    const-class v0, Lcom/google/android/finsky/activities/ContentFilterActivity;

    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/finsky/utils/IntentUtils;->createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 188
    goto/16 :goto_19

    :cond_f0
    const-string v3, "change-passcode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 189
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getCurrentPin()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_116

    move v2, v1

    .line 191
    :goto_103
    if-eqz v2, :cond_118

    const v0, 0x7f07018c

    .line 193
    :goto_108
    const-string v3, "new-pin"

    invoke-static {p0, v0, v4, v3, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 195
    const/16 v2, 0x20

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 196
    goto/16 :goto_19

    :cond_116
    move v2, v0

    .line 190
    goto :goto_103

    .line 191
    :cond_118
    const v0, 0x7f07018d

    goto :goto_108

    .line 196
    :cond_11c
    const-string v3, "os-licenses"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 197
    const v0, 0x7f070187

    const-string v2, "file:///android_asset/licenses.html"

    invoke-static {p0, v0, v2}, Lcom/google/android/finsky/activities/WebViewDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 200
    goto/16 :goto_19
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 117
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoUpdateByDefault(Landroid/preference/PreferenceScreen;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUpdateOverWifiOnly(Landroid/preference/PreferenceScreen;)V

    .line 121
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUserControlsSection(Landroid/preference/PreferenceScreen;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAdPrefsSection(Landroid/preference/PreferenceScreen;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAboutSection(Landroid/preference/PreferenceScreen;)V

    .line 124
    return-void
.end method
