.class public interface abstract Lcom/google/android/music/dl/IDownloadManager;
.super Ljava/lang/Object;
.source "IDownloadManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/IDownloadManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAvailableFreeSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTotalSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isDownloading()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isKeepOnDownloaderOn()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract logStreamingStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract streamSong(Lcom/google/android/music/dl/ContentIdentifier;[Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;[Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
