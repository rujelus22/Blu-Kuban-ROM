.class public interface abstract Lcom/google/android/finsky/download/DownloadQueue;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# virtual methods
.method public abstract add(Lcom/google/android/finsky/download/InternalDownload;)V
.end method

.method public abstract addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
.end method

.method public abstract addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V
.end method

.method public abstract cancel(Lcom/google/android/finsky/download/Download;)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract getAllDownloads()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/Download;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;
.end method

.method public abstract getDownloadByUrl(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;
.end method

.method public abstract getNotificationHelper()Lcom/google/android/finsky/utils/Notifier;
.end method

.method public abstract getUriUrlMap()Lcom/google/android/finsky/download/DownloadUriUrlMap;
.end method

.method public abstract removeListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
.end method

.method public abstract setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V
.end method
