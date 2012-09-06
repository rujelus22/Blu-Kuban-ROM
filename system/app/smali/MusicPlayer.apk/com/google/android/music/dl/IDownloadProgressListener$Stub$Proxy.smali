.class Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDownloadProgressListener.java"

# interfaces
.implements Lcom/google/android/music/dl/IDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/IDownloadProgressListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDownloadProgress(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    .registers 10
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.google.android.music.dl.IDownloadProgressListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_31

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/music/dl/ContentIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v2, p0, Lcom/google/android/music/dl/IDownloadProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_36

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    return-void

    .line 94
    :cond_31
    const/4 v2, 0x0

    :try_start_32
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_17

    .line 103
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
