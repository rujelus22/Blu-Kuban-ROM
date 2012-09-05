.class public abstract Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;
.super Landroid/os/Binder;
.source "ISnsImageCacheService.java"

# interfaces
.implements Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_86

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->registerCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)I

    move-result v2

    .line 51
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 57
    .end local v0           #_arg0:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    .end local v2           #_result:I
    :sswitch_28
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->unregisterCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 66
    .end local v0           #_arg0:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    :sswitch_3c
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->getImage(ILjava/lang/String;)I

    move-result v2

    .line 72
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_54
    const-string v5, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->cancelAllImages(I)Z

    move-result v2

    .line 82
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_67

    move v3, v4

    :cond_67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_6b
    const-string v5, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->cancelImageByReqId(II)Z

    move-result v2

    .line 94
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_82

    move v3, v4

    :cond_82
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 38
    :sswitch_data_86
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_54
        0x5 -> :sswitch_6b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
