.class public interface abstract Lcom/google/android/apps/googlevoice/UpdateStateManager;
.super Ljava/lang/Object;
.source "UpdateStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/UpdateStateManager$State;,
        Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;)V
.end method

.method public abstract getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
.end method

.method public abstract removeListener(Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;)V
.end method

.method public abstract setUpdateState(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V
.end method
