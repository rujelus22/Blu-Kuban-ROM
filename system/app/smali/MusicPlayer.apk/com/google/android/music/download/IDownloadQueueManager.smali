.class public interface abstract Lcom/google/android/music/download/IDownloadQueueManager;
.super Ljava/lang/Object;
.source "IDownloadQueueManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/IDownloadQueueManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract download(Ljava/util/List;Lcom/google/android/music/download/IDownloadProgressListener;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/download/DownloadRequest;",
            ">;",
            "Lcom/google/android/music/download/IDownloadProgressListener;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
