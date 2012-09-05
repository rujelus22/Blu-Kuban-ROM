.class public Lcom/swype/android/connect/settings/ConnectPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ConnectPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setInboxCount()V
    .registers 5

    .prologue
    .line 82
    const-string v0, "pref_messages"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "ConnectPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 85
    invoke-static {v2}, Lcom/swype/android/connect/manager/MessageManager;->loadSystemMessages(Landroid/content/SharedPreferences;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 86
    if-lez v2, :cond_3f

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_3f
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x80

    const/4 v3, 0x1

    .line 44
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "pref_messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.settings.MessagesActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 78
    :goto_1d
    return v0

    .line 52
    :cond_1e
    const-string v1, "pref_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.settings.ConnectVersionActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 56
    goto :goto_1d

    .line 59
    :cond_35
    const-string v1, "pref_privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.settings.ConnectPrivacyActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 63
    goto :goto_1d

    .line 65
    :cond_4c
    const-string v1, "pref_connect_enable_data_connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 66
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ENABLE_DATA_CONNECTION_PREF"

    invoke-static {v1, v2, v0}, Lcom/swype/android/connect/util/FilePreference;->saveBoolPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.RefreshConnectData"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v3

    .line 71
    goto :goto_1d

    .line 73
    :cond_6f
    const-string v1, "pref_refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.RefreshConnect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v3

    .line 76
    goto :goto_1d

    .line 78
    :cond_83
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1d
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 25
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_9

    .line 26
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 29
    :cond_9
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->addPreferencesFromResource(I)V

    .line 30
    invoke-direct {p0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->setInboxCount()V

    .line 32
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ENABLE_DATA_CONNECTION_PREF"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/swype/android/connect/util/FilePreference;->readBoolPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .local v0, enableConnection:Z
    const-string v3, "pref_connect_enable_data_connection"

    invoke-virtual {p0, v3}, Lcom/swype/android/connect/settings/ConnectPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 35
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_2a

    .line 36
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 38
    :cond_2a
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 39
    return-void
.end method
