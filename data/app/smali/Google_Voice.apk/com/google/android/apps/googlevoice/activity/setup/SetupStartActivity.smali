.class public Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;
.super Landroid/app/Activity;
.source "SetupStartActivity.java"


# static fields
.field private static final DEVICE_SETUP_SAVED_STATE:Ljava/lang/String; = "com.google.android.apps.googlevoice.setupStartActivity.deviceSetup"

.field public static final EXTRA_DEVICE_SETUP:Ljava/lang/String; = "com.google.android.apps.googlevoice.DEVICE_SETUP"

.field static final INSTANCE_STATE_SAVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SAVED"


# instance fields
.field private deviceSetup:Z

.field private flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

.field log:Lcom/google/android/apps/common/log/GLog;

.field private setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->deviceSetup:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object v2, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 51
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSetupFlowManager()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->log:Lcom/google/android/apps/common/log/GLog;

    .line 54
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setContentView(Landroid/view/View;)V

    .line 56
    if-eqz p1, :cond_2f

    const-string v2, "com.google.android.apps.googlevoice.SAVED"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_64

    .line 59
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    invoke-interface {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;->createSetupFlow(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.google.android.apps.googlevoice.DEVICE_SETUP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->deviceSetup:Z

    .line 61
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    iget-boolean v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->deviceSetup:Z

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->setDeviceSetup(Z)V

    .line 62
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->startFlow(Landroid/content/Intent;)V
    :try_end_54
    .catch Lcom/google/android/apps/googlevoice/activity/setup/DuplicateSetupFlowException; {:try_start_2f .. :try_end_54} :catch_55

    .line 80
    :goto_54
    return-void

    .line 63
    :catch_55
    move-exception v1

    .line 64
    .local v1, e:Lcom/google/android/apps/googlevoice/activity/setup/DuplicateSetupFlowException;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "Duplicate Setup Flow!"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setResult(I)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->finish()V

    goto :goto_54

    .line 71
    .end local v1           #e:Lcom/google/android/apps/googlevoice/activity/setup/DuplicateSetupFlowException;
    :cond_64
    :try_start_64
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;->getSetupFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    .line 72
    const-string v2, "com.google.android.apps.googlevoice.DEVICE_SETUP"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->deviceSetup:Z

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    iget-boolean v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->deviceSetup:Z

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->setDeviceSetup(Z)V
    :try_end_7c
    .catch Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException; {:try_start_64 .. :try_end_7c} :catch_7d

    goto :goto_54

    .line 74
    :catch_7d
    move-exception v1

    .line 75
    .local v1, e:Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "Setup Flow missing!"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->finish()V

    goto :goto_54
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;->clearSetupFlow()V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    if-eqz v0, :cond_1b

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getResultExtra()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->finish()V

    .line 91
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "com.google.android.apps.googlevoice.SAVED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v0, "com.google.android.apps.googlevoice.setupStartActivity.deviceSetup"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;->deviceSetup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method
