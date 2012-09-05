.class public Lcom/sec/android/app/myfiles/activity/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private mHomeDirectoryPref:Landroid/preference/Preference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowFileExtensionPref:Landroid/preference/CheckBoxPreference;

.field private mShowHiddenFilesPref:Landroid/preference/CheckBoxPreference;

.field private mbNeedRefresh:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mbNeedRefresh:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/myfiles/activity/SettingsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mbNeedRefresh:Z

    return p1
.end method

.method private getTitlePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 159
    const-string v0, "/mnt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 161
    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 185
    :cond_11
    return-object p1
.end method

.method private init()V
    .registers 3

    .prologue
    .line 113
    const-string v0, "show_hidden_files"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowHiddenFilesPref:Landroid/preference/CheckBoxPreference;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowHiddenFilesPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getShowHiddenStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowHiddenFilesPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/sec/android/app/myfiles/activity/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity$1;-><init>(Lcom/sec/android/app/myfiles/activity/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string v0, "show_file_extension"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowFileExtensionPref:Landroid/preference/CheckBoxPreference;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowFileExtensionPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getShowExtStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowFileExtensionPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/sec/android/app/myfiles/activity/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity$2;-><init>(Lcom/sec/android/app/myfiles/activity/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    const-string v0, "home_directory"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mHomeDirectoryPref:Landroid/preference/Preference;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mHomeDirectoryPref:Landroid/preference/Preference;

    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getHomeDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->getTitlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method private setBroadcastReceiver()V
    .registers 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/sec/android/app/myfiles/activity/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity$3;-><init>(Lcom/sec/android/app/myfiles/activity/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    const/4 v2, -0x1

    if-ne p2, v2, :cond_42

    .line 269
    const/4 v2, 0x7

    if-ne p1, v2, :cond_42

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v2

    const-string v3, "home_directory_path"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setHomeDirectory(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mHomeDirectoryPref:Landroid/preference/Preference;

    const-string v3, "home_directory_path"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->getTitlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    const-string v2, "MyFiles"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 279
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "home_directory"

    const-string v3, "home_directory_path"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_42
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mbNeedRefresh:Z

    if-eqz v0, :cond_f

    .line 245
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->setResult(I)V

    .line 253
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->finish()V

    .line 257
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 259
    return-void

    .line 249
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->setResult(I)V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "SettingsActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->addPreferencesFromResource(I)V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->init()V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->setBroadcastReceiver()V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 325
    const-string v0, "SettingsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    :cond_13
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 339
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 295
    const-string v2, "SettingsActivity"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowHiddenFilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setShowHiddenStatus(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowFileExtensionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setShowExtStatus(Z)V

    .line 305
    const-string v2, "MyFiles"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 307
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "show_hidden_files"

    iget-object v3, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowHiddenFilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    const-string v2, "show_file_extension"

    iget-object v3, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mShowFileExtensionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 319
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x7

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mHomeDirectoryPref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string v1, "uri"

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "operation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
