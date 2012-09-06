.class public interface abstract Lcom/google/android/music/dl/IDownloadProgressListener;
.super Ljava/lang/Object;
.source "IDownloadProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/IDownloadProgressListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDownloadProgress(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
