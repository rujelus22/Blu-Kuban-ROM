.class public interface abstract Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;
.super Ljava/lang/Object;
.source "RemoteImageLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/image/RemoteImageLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoadCompleteListener"
.end annotation


# virtual methods
.method public abstract onChangeViewMode(Z)V
.end method

.method public abstract onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
.end method

.method public abstract onStartLoad()V
.end method
