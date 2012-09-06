.class public Lcom/google/android/apps/googlevoice/AndroidActivityManager;
.super Ljava/lang/Object;
.source "AndroidActivityManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ActivityManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startChooseVoicemailProviderActivity(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 118
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;->chooseVoicemailProviderIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public startClientLoginServiceLoginActivityForResult(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter "activity"
    .parameter "requestCode"
    .parameter "account"
    .parameter "password"
    .parameter "silent"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.ACCOUNT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.PASSWORD"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.LOGIN_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.SILENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method

.method public startGoogleLoginServiceLoginActivityForResult(Landroid/app/Activity;ILjava/lang/String;Z)V
    .registers 8
    .parameter "activity"
    .parameter "requestCode"
    .parameter "account"
    .parameter "silent"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.ACCOUNT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.LOGIN_SERVICE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.SILENT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method

.method public startPushNotificationSettingActivityForResult(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 6
    .parameter "activity"
    .parameter "requestCode"
    .parameter "action"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    return-void
.end method

.method public startSetupAddAccountActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public startSetupCarrierProvisionActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public startSetupCarrierProvisionWelcomeActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public startSetupChoosePhoneActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public startSetupConfigureVoicemailActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public startSetupMakingCallsActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public startSetupMessageActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public startSetupPreConfigureVoicemailActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/PreConfigureVoicemailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public startSetupSignInActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public startSetupVoicemailPinActivity(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public startSyncSettingsActivityForResult(Landroid/app/Activity;I)V
    .registers 5
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method
