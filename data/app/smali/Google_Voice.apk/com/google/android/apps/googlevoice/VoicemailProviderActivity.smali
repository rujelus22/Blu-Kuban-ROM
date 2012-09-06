.class public Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;
.super Landroid/app/Activity;
.source "VoicemailProviderActivity.java"


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final EXTRA_DIVERSION_NUMBER:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final EXTRA_DIVERSION_NUMBER_TIME:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final EXTRA_PROVIDER_TO_IGNORE:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field public static final EXTRA_SIGNOUT:Ljava/lang/String; = "com.android.phone.Signout"

.field public static final EXTRA_VOICEMAIL_NUMBER:Ljava/lang/String; = "com.android.phone.VoicemailNumber"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static chooseVoicemailProviderIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter "context"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static resetVoicemailProviderIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 8
    .parameter "context"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 56
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, componentName:Landroid/content/ComponentName;
    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 61
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.phone.ProviderToIgnore"

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_20

    move-result-object v4

    .line 66
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    :goto_1f
    return-object v4

    .line 63
    :catch_20
    move-exception v2

    .line 64
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Could not get package name!"

    invoke-static {v4, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    const/4 v4, 0x0

    goto :goto_1f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/high16 v3, 0x200

    .line 36
    const v1, 0x1030010

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;->setTheme(I)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object v1, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    .line 43
    .local v0, voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v1

    sget-object v2, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v1, v2, :cond_32

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;->finish()V

    .line 52
    return-void

    .line 48
    :cond_32
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e
.end method
