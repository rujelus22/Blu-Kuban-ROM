.class public abstract Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;
.super Landroid/os/Binder;
.source "ISnsImageCacheCallback.java"

# interfaces
.implements Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.snsimagecache.ISnsImageCacheCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.sec.android.app.snsimagecache.ISnsImageCacheCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_3e

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_8
    return v6

    .line 42
    :sswitch_9
    const-string v0, "com.sec.android.app.snsimagecache.ISnsImageCacheCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v0, "com.sec.android.app.snsimagecache.ISnsImageCacheCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    move v2, v6

    .line 53
    .local v2, _arg1:Z
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 54
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 60
    .local v3, _arg2:Landroid/net/Uri;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 62
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;->onImageGetResponse(IZLandroid/net/Uri;ILjava/lang/String;)V

    goto :goto_8

    .line 51
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/net/Uri;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    :cond_3a
    const/4 v2, 0x0

    goto :goto_1f

    .line 57
    .restart local v2       #_arg1:Z
    :cond_3c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/Uri;
    goto :goto_2d

    .line 38
    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method