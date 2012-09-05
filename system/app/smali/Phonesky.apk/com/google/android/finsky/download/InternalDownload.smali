.class public interface abstract Lcom/google/android/finsky/download/InternalDownload;
.super Ljava/lang/Object;
.source "InternalDownload.java"

# interfaces
.implements Lcom/google/android/finsky/download/Download;


# virtual methods
.method public abstract createDownloadRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRequest;
.end method

.method public abstract getActiveObbDownloads()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpStatus()I
.end method

.method public abstract getNext()Lcom/google/android/finsky/download/InternalDownload;
.end method

.method public abstract getObb()Lcom/google/android/finsky/download/obb/Obb;
.end method

.method public abstract getRequestedDestination()Landroid/net/Uri;
.end method

.method public abstract getSize()J
.end method

.method public abstract getState()Lcom/google/android/finsky/download/Download$DownloadState;
.end method

.method public abstract getWrappedObb(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/download/obb/Obb;
.end method

.method public abstract getWrappedObbDownloads()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract internalGetContentUri()Landroid/net/Uri;
.end method

.method public abstract isObb()Z
.end method

.method public abstract setContentUri(Landroid/net/Uri;)V
.end method

.method public abstract setHttpStatus(I)V
.end method

.method public abstract setNext(Lcom/google/android/finsky/download/InternalDownload;)V
.end method

.method public abstract setProgress(Lcom/google/android/finsky/download/DownloadProgress;)V
.end method

.method public abstract setState(Lcom/google/android/finsky/download/Download$DownloadState;)V
.end method
