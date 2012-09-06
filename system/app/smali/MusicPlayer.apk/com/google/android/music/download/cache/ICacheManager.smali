.class public interface abstract Lcom/google/android/music/download/cache/ICacheManager;
.super Ljava/lang/Object;
.source "ICacheManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/cache/ICacheManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAvailableFreeStorageSpaceInBytes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCacheFilePath(Lcom/google/android/music/download/DownloadRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTotalStorageSpaceInBytes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerDeleteFilter(Lcom/google/android/music/download/cache/IDeleteFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterDeleteFilter(Lcom/google/android/music/download/cache/IDeleteFilter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
