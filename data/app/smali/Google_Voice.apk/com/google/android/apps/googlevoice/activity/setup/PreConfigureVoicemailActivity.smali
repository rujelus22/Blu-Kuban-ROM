.class public Lcom/google/android/apps/googlevoice/activity/setup/PreConfigureVoicemailActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;
.source "PreConfigureVoicemailActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestart()V
    .registers 2

    .prologue
    .line 18
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 19
    const-string v0, "PreConfigureVoicemailActivity.onRestart()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 21
    :cond_9
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->onRestart()V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/PreConfigureVoicemailActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/PreConfigureVoicemailActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->configureVoicemailActivityDidRestart(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V

    .line 25
    :cond_1d
    return-void
.end method
