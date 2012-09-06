.class public interface abstract Lcom/google/android/apps/googlevoice/system/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"


# virtual methods
.method public abstract createPartialWakeLock(Ljava/lang/Class;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;"
        }
    .end annotation
.end method

.method public abstract createWifiLock(Ljava/lang/Class;)Lcom/google/android/apps/googlevoice/system/LockWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/googlevoice/system/LockWrapper;"
        }
    .end annotation
.end method

.method public abstract getSharedPartialWakeLock(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
.end method
