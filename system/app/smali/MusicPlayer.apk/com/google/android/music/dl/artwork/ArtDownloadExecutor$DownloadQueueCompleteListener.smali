.class public interface abstract Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;
.super Ljava/lang/Object;
.source "ArtDownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadQueueCompleteListener"
.end annotation


# virtual methods
.method public abstract onDownloadArtworkFile(JLjava/io/File;)V
.end method

.method public abstract onDownloadQueueCompleted()V
.end method
