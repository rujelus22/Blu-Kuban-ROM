.class public Lcom/swype/android/connect/settings/ConnectVersionActivity;
.super Landroid/preference/PreferenceActivity;
.source "ConnectVersionActivity.java"


# static fields
.field private static final TERMSOFUSE_DIALOG:I = 0x2

.field private static final VERSION_DIALOG:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getConnectLicenseType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DEVICE_LENGTH"

    invoke-static {v1, v2}, Lcom/swype/android/connect/manager/DeviceManager;->getSavedProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 176
    if-eqz v1, :cond_1e

    .line 177
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_1e
    return-object v0
.end method

.method private getConnectStatus()Ljava/lang/String;
    .registers 8

    .prologue
    const v6, 0x7f070029

    .line 155
    const-string v4, "ConnectPrefs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 156
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v6}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, licenseToken:Ljava/lang/String;
    const-string v4, "LICENSE_STATUS"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, licenseStatus:Ljava/lang/String;
    invoke-static {v3}, Lcom/swype/android/connect/manager/LicenseManager;->isLicenseValid(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 160
    .local v0, licenseId:I
    const-string v4, "LOCKED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 161
    const v4, 0x7f07002a

    invoke-virtual {p0, v4}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_29
    :goto_29
    return-object v2

    .line 162
    :cond_2a
    const/4 v4, 0x2

    if-ne v0, v4, :cond_32

    .line 163
    invoke-virtual {p0, v6}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 164
    :cond_32
    const/4 v4, 0x1

    if-ne v0, v4, :cond_29

    .line 165
    const v4, 0x7f070028

    invoke-virtual {p0, v4}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_29
.end method

.method private getConnectSwyperId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/manager/DeviceManager;->getSavedSwyperId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method private getConnectVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "3.0"

    return-object v0
.end method

.method private loadSettings()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method private saveSettings()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method private updatePreferences()V
    .registers 3

    .prologue
    .line 69
    const-string v0, "pref_license_status"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getConnectStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    const-string v0, "pref_license_type"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getConnectLicenseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    const-string v0, "pref_swyper_id"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getConnectSwyperId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->addPreferencesFromResource(I)V

    .line 37
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_72

    .line 147
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 106
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Connect Version"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getConnectVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/swype/android/connect/settings/ConnectVersionActivity$1;

    invoke-direct {v2, p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity$1;-><init>(Lcom/swype/android/connect/settings/ConnectVersionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 120
    :pswitch_28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 123
    :try_start_32
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 125
    if-lez v3, :cond_57

    .line 126
    new-array v3, v3, [B

    .line 127
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 128
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 129
    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_57} :catch_6f

    .line 136
    :cond_57
    :goto_57
    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/swype/android/connect/settings/ConnectVersionActivity$2;

    invoke-direct {v2, p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity$2;-><init>(Lcom/swype/android/connect/settings/ConnectVersionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    :catch_6f
    move-exception v1

    goto :goto_57

    .line 101
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5
        :pswitch_28
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 54
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, prefKey:Ljava/lang/String;
    const-string v1, "pref_terms_use"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 87
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->showDialog(I)V

    move v1, v2

    .line 96
    :goto_12
    return v1

    .line 91
    :cond_13
    const-string v1, "pref_connect_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 92
    invoke-virtual {p0, v2}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->showDialog(I)V

    move v1, v2

    .line 93
    goto :goto_12

    .line 96
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_12
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 42
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 47
    invoke-direct {p0}, Lcom/swype/android/connect/settings/ConnectVersionActivity;->updatePreferences()V

    .line 49
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 61
    return-void
.end method
