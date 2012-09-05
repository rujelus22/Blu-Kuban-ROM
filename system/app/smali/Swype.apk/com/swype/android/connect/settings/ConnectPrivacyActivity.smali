.class public Lcom/swype/android/connect/settings/ConnectPrivacyActivity;
.super Landroid/preference/PreferenceActivity;
.source "ConnectPrivacyActivity.java"


# static fields
.field private static final LEARNMODE_DIALOG:I = 0x2

.field private static final PRIVACY_DIALOG:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f07001e

    const v5, 0x104000a

    .line 96
    packed-switch p1, :pswitch_data_92

    .line 158
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 101
    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 104
    :try_start_15
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 106
    if-lez v3, :cond_3a

    .line 107
    new-array v3, v3, [B

    .line 108
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 109
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 110
    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3a} :catch_90

    .line 117
    :cond_3a
    :goto_3a
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/swype/android/connect/settings/ConnectPrivacyActivity$1;

    invoke-direct {v1, p0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity$1;-><init>(Lcom/swype/android/connect/settings/ConnectPrivacyActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 130
    :pswitch_4c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 133
    :try_start_56
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 135
    if-lez v3, :cond_7b

    .line 136
    new-array v3, v3, [B

    .line 137
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 138
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 139
    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_7b} :catch_8e

    .line 146
    :cond_7b
    :goto_7b
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/swype/android/connect/settings/ConnectPrivacyActivity$2;

    invoke-direct {v1, p0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity$2;-><init>(Lcom/swype/android/connect/settings/ConnectPrivacyActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    :catch_8e
    move-exception v1

    goto :goto_7b

    :catch_90
    move-exception v1

    goto :goto_3a

    .line 96
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_b
        :pswitch_4c
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "pref_messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.settings.MessagesPreferenceActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 92
    :goto_1d
    return v0

    .line 75
    :cond_1e
    const-string v1, "pref_connect_privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 76
    invoke-virtual {p0, v3}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->showDialog(I)V

    move v0, v3

    .line 77
    goto :goto_1d

    .line 80
    :cond_2b
    const-string v1, "pref_learn_more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->showDialog(I)V

    move v0, v3

    .line 82
    goto :goto_1d

    .line 85
    :cond_39
    const-string v1, "pref_enhance_swype"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 86
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ENABLE_DATA_COLLECTION_PREF"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v3

    .line 89
    goto :goto_1d

    .line 92
    :cond_5d
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1d
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
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_a

    .line 48
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 50
    :cond_a
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->addPreferencesFromResource(I)V

    .line 52
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    const-string v1, "ENABLE_DATA_COLLECTION_PREF"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "DEVICE_LENGTH"

    invoke-static {v0, v2}, Lcom/swype/android/connect/manager/DeviceManager;->getSavedProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 56
    const-string v0, "pref_enhance_swype"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/ConnectPrivacyActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 58
    if-eqz v0, :cond_3e

    .line 59
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    if-nez v2, :cond_42

    move v1, v3

    :goto_3b
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 63
    :cond_3e
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 64
    return-void

    .line 60
    :cond_42
    const/4 v1, 0x0

    goto :goto_3b
.end method
