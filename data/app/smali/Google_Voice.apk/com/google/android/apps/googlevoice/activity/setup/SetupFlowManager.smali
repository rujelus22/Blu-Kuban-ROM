.class public interface abstract Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;
.super Ljava/lang/Object;
.source "SetupFlowManager.java"


# virtual methods
.method public abstract clearSetupFlow()V
.end method

.method public abstract createSetupFlow(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/activity/setup/DuplicateSetupFlowException;
        }
    .end annotation
.end method

.method public abstract getSetupFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException;
        }
    .end annotation
.end method

.method public abstract restoreSetupFlow(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
.end method
