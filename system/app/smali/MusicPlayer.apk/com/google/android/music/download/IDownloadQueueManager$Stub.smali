.class public abstract Lcom/google/android/music/download/IDownloadQueueManager$Stub;
.super Landroid/os/Binder;
.source "IDownloadQueueManager.java"

# interfaces
.implements Lcom/google/android/music/download/IDownloadQueueManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/IDownloadQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/IDownloadQueueManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.music.download.IDownloadQueueManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/download/IDownloadQueueManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/download/IDownloadQueueManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.google.android.music.download.IDownloadQueueManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/music/download/IDownloadQueueManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/google/android/music/download/IDownloadQueueManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/google/android/music/download/IDownloadQueueManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/music/download/IDownloadQueueManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_2e

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 45
    :sswitch_9
    const-string v4, "com.google.android.music.download.IDownloadQueueManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v4, "com.google.android.music.download.IDownloadQueueManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    sget-object v4, Lcom/google/android/music/download/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/download/DownloadRequest;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/download/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/download/IDownloadProgressListener;

    move-result-object v1

    .line 56
    .local v1, _arg1:Lcom/google/android/music/download/IDownloadProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/download/IDownloadQueueManager$Stub;->download(Ljava/util/List;Lcom/google/android/music/download/IDownloadProgressListener;I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
