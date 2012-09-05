.class public Lcom/android/browser/preferences/AdvancedPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "AdvancedPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 62
    const-string v0, "AdvancedPreferencesFragment"

    iput-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private getTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "enumName"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 362
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 365
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_1d

    .line 366
    const-string v3, ""

    .line 375
    :goto_1c
    return-object v3

    .line 369
    :cond_1d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v3, v0

    if-ge v1, v3, :cond_2f

    .line 370
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 371
    aget-object v3, v2, v1

    goto :goto_1c

    .line 369
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 375
    :cond_2f
    const-string v3, ""

    goto :goto_1c
.end method

.method private getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "enumName"

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 342
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 345
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_1d

    .line 346
    const-string v3, ""

    .line 355
    :goto_1c
    return-object v3

    .line 349
    :cond_1d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v3, v0

    if-ge v1, v3, :cond_2f

    .line 350
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 351
    aget-object v3, v2, v1

    goto :goto_1c

    .line 349
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 355
    :cond_2f
    const-string v3, ""

    goto :goto_1c
.end method

.method private getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "enumName"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 322
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f080065

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 323
    .local v4, visualNames:[Ljava/lang/CharSequence;
    const v5, 0x7f080068

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 326
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_1d

    .line 327
    const-string v5, ""

    .line 337
    :goto_1c
    return-object v5

    .line 330
    :cond_1d
    array-length v2, v0

    .line 331
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v2, :cond_2f

    .line 332
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 333
    aget-object v5, v4, v1

    goto :goto_1c

    .line 331
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 337
    :cond_2f
    const-string v5, ""

    goto :goto_1c
.end method

.method private updateAdvancedEDMPref()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 213
    .local v2, lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v0

    .line 215
    .local v0, lBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;
    if-eqz v0, :cond_3d

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getJavaScriptSetting()Z

    move-result v3

    if-nez v3, :cond_28

    .line 218
    const-string v3, "enable_javascript"

    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 219
    .restart local v1       #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 222
    :cond_28
    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getPopupsSetting()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 223
    const-string v3, "block_popup_windows"

    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 224
    .restart local v1       #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 228
    .end local v1           #lCheckBoxPref:Landroid/preference/CheckBoxPreference;
    :cond_3d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->addPreferencesFromResource(I)V

    .line 75
    const-string v0, "website_settings"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 77
    const-class v3, Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 79
    const-string v0, "default_zoom"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "default_zoom"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    const-string v0, "default_text_encoding"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "default_text_encoding"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    const-string v0, "reset_default_preferences"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    const-string v0, "search_engine"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_72

    .line 96
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 100
    :cond_72
    const-string v0, "plugin_state"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 109
    const-string v0, "download_default_storyage"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 110
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_9b

    .line 113
    invoke-virtual {v4}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "storage"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 118
    :cond_9b
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 119
    array-length v6, v5

    move v3, v2

    move v0, v2

    .line 120
    :goto_a4
    if-ge v3, v6, :cond_fe

    .line 121
    aget-object v7, v5, v3

    .line 122
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    .line 123
    if-eqz v8, :cond_e1

    .line 124
    const-string v9, "sd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e1

    .line 125
    iget-object v8, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    const-string v8, "mounted"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 127
    iget-object v7, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate : mounted = %s "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 120
    :cond_e1
    :goto_e1
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 131
    :cond_e4
    iget-object v7, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate : false mounted = %s "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 132
    goto :goto_e1

    .line 140
    :cond_fe
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "download_default_storyage"

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    if-ne v0, v1, :cond_163

    .line 145
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    const-string v0, "PHONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 148
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    const-string v1, "onCreate : StorageName is PHONE, haveSDCard"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v3}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    :cond_12a
    :goto_12a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 166
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->addPreferencesFromResource(I)V

    .line 167
    const-string v0, "browser_version"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getBrowserVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    :cond_14b
    return-void

    .line 151
    :cond_14c
    const-string v0, "MEMORY_CARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 152
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    const-string v1, "onCreate : StorageName is MEMORY_CARD"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0, v3}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12a

    .line 156
    :cond_163
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    const-string v1, "onCreate : StorageName is PHONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "PHONE"

    .line 158
    invoke-direct {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_12a
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 233
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_11

    .line 236
    const-string v0, "PageContentPreferencesFragment"

    const-string v1, "onPreferenceChange called from detached fragment!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 317
    :cond_10
    :goto_10
    return v1

    .line 240
    :cond_11
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_zoom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 241
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 243
    :cond_27
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_text_encoding"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 244
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 246
    :cond_3d
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "reset_default_preferences"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 247
    check-cast p2, Ljava/lang/Boolean;

    .line 248
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_176

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v2, "--restart--"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 253
    :cond_63
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "plugin_state"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "search_engine"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 255
    :cond_7b
    check-cast p1, Landroid/preference/ListPreference;

    .line 256
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    move v1, v2

    .line 258
    goto :goto_10

    .line 261
    :cond_87
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "download_default_storyage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 267
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_a5

    .line 268
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "storage"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 272
    :cond_a5
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 273
    array-length v5, v4

    move v3, v2

    move v0, v2

    .line 274
    :goto_ae
    if-ge v3, v5, :cond_108

    .line 275
    aget-object v6, v4, v3

    .line 276
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    .line 277
    if-eqz v7, :cond_eb

    .line 278
    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 279
    iget-object v7, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 281
    iget-object v6, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange : mounted = %s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 274
    :cond_eb
    :goto_eb
    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    .line 285
    :cond_ee
    iget-object v6, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange : false mounted = %s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 286
    goto :goto_eb

    .line 292
    :cond_108
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 294
    check-cast p2, Ljava/lang/String;

    .line 295
    if-ne v0, v1, :cond_159

    .line 296
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 298
    const-string v0, "PHONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 299
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    const-string v2, "onPreferenceChange : StorageName is PHONE, haveSDCard"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto/16 :goto_10

    .line 303
    :cond_135
    const-string v0, "MEMORY_CARD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 304
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    const-string v2, "onPreferenceChange : StorageName is MEMORY_CARD"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto/16 :goto_10

    .line 309
    :cond_159
    const-string v0, "PHONE"

    .line 310
    invoke-direct {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->LOGTAG:Ljava/lang/String;

    const-string v2, "onPreferenceChange():StorageName is PHONE"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto/16 :goto_10

    :cond_176
    move v1, v2

    .line 317
    goto/16 :goto_10
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 185
    const-string v1, "website_settings"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 187
    .local v0, websiteSettings:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 188
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    new-instance v2, Lcom/android/browser/preferences/AdvancedPreferencesFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment$1;-><init>(Lcom/android/browser/preferences/AdvancedPreferencesFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 196
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    new-instance v2, Lcom/android/browser/preferences/AdvancedPreferencesFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment$2;-><init>(Lcom/android/browser/preferences/AdvancedPreferencesFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 205
    invoke-direct {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updateAdvancedEDMPref()V

    .line 207
    return-void
.end method

.method updateListPreferenceSummary(Landroid/preference/ListPreference;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method
