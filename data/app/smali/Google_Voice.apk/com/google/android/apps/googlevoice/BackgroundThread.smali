.class public interface abstract Lcom/google/android/apps/googlevoice/BackgroundThread;
.super Ljava/lang/Object;
.source "BackgroundThread.java"


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract quitAfterProcessingQueue(Ljava/lang/Runnable;)V
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract quitImmediately(Ljava/lang/Runnable;)V
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract runInBackground(Ljava/lang/Runnable;)V
.end method
