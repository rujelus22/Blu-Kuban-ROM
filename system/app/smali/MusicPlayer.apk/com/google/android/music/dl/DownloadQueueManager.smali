.class public interface abstract Lcom/google/android/music/dl/DownloadQueueManager;
.super Ljava/lang/Object;
.source "DownloadQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;
    }
.end annotation


# virtual methods
.method public abstract cancelAll()V
.end method

.method public abstract download(Lcom/google/android/music/dl/DownloadOrder;)V
.end method

.method public abstract getCurrentDownloads()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
.end method

.method public abstract isDownloading()Z
.end method

.method public abstract replaceCurrentStream(Lcom/google/android/music/dl/DownloadOrder;)V
.end method

.method public abstract setEmptyQueueListener(Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract start()V
.end method

.method public abstract stream(Lcom/google/android/music/dl/DownloadOrder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/dl/DownloadOrder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;)V"
        }
    .end annotation
.end method
