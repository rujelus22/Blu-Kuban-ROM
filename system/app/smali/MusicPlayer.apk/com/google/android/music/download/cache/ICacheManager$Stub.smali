.class public abstract Lcom/google/android/music/download/cache/ICacheManager$Stub;
.super Landroid/os/Binder;
.source "ICacheManager.java"

# interfaces
.implements Lcom/google/android/music/download/cache/ICacheManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/cache/ICacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/cache/ICacheManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.google.android.music.download.cache.ICacheManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/download/cache/ICacheManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/download/cache/ICacheManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.google.android.music.download.cache.ICacheManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/music/download/cache/ICacheManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/google/android/music/download/cache/ICacheManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/google/android/music/download/cache/ICacheManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/music/download/cache/ICacheManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_78

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 46
    :sswitch_9
    const-string v4, "com.google.android.music.download.cache.ICacheManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v4, "com.google.android.music.download.cache.ICacheManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 54
    sget-object v4, Lcom/google/android/music/download/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/download/DownloadRequest;

    .line 59
    .local v0, _arg0:Lcom/google/android/music/download/DownloadRequest;
    :goto_22
    invoke-virtual {p0, v0}, Lcom/google/android/music/download/cache/ICacheManager$Stub;->getCacheFilePath(Lcom/google/android/music/download/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 57
    .end local v0           #_arg0:Lcom/google/android/music/download/DownloadRequest;
    .end local v1           #_result:Ljava/lang/String;
    :cond_2d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/download/DownloadRequest;
    goto :goto_22

    .line 66
    .end local v0           #_arg0:Lcom/google/android/music/download/DownloadRequest;
    :sswitch_2f
    const-string v4, "com.google.android.music.download.cache.ICacheManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/music/download/cache/ICacheManager$Stub;->getAvailableFreeStorageSpaceInBytes()J

    move-result-wide v1

    .line 68
    .local v1, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 74
    .end local v1           #_result:J
    :sswitch_3f
    const-string v4, "com.google.android.music.download.cache.ICacheManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/download/cache/ICacheManager$Stub;->getTotalStorageSpaceInBytes()J

    move-result-wide v1

    .line 76
    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 82
    .end local v1           #_result:J
    :sswitch_4f
    const-string v4, "com.google.android.music.download.cache.ICacheManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/download/cache/IDeleteFilter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/download/cache/IDeleteFilter;

    move-result-object v0

    .line 85
    .local v0, _arg0:Lcom/google/android/music/download/cache/IDeleteFilter;
    invoke-virtual {p0, v0}, Lcom/google/android/music/download/cache/ICacheManager$Stub;->registerDeleteFilter(Lcom/google/android/music/download/cache/IDeleteFilter;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 91
    .end local v0           #_arg0:Lcom/google/android/music/download/cache/IDeleteFilter;
    :sswitch_63
    const-string v4, "com.google.android.music.download.cache.ICacheManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/download/cache/IDeleteFilter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/download/cache/IDeleteFilter;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Lcom/google/android/music/download/cache/IDeleteFilter;
    invoke-virtual {p0, v0}, Lcom/google/android/music/download/cache/ICacheManager$Stub;->unregisterDeleteFilter(Lcom/google/android/music/download/cache/IDeleteFilter;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 42
    nop

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_63
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
