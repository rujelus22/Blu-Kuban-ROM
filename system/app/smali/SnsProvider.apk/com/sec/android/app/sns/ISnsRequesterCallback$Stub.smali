.class public abstract Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
.super Landroid/os/Binder;
.source "ISnsRequesterCallback.java"

# interfaces
.implements Lcom/sec/android/app/sns/ISnsRequesterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/ISnsRequesterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.sns.ISnsRequesterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequesterCallback;
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
    const-string v1, "com.sec.android.app.sns.ISnsRequesterCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/sns/ISnsRequesterCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/app/sns/ISnsRequesterCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    .line 38
    sparse-switch p1, :sswitch_data_5c

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 42
    :sswitch_8
    const-string v0, "com.sec.android.app.sns.ISnsRequesterCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_7

    .line 47
    :sswitch_f
    const-string v0, "com.sec.android.app.sns.ISnsRequesterCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    const/4 v2, 0x1

    .line 53
    .local v2, _arg1:Z
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58

    const/4 v3, 0x1

    .line 55
    .local v3, _arg2:Z
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 56
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 62
    .local v4, _arg3:Landroid/net/Uri;
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 68
    .local v7, _arg6:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 69
    .local v10, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    .line 71
    .local v8, _arg7:Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg8:Ljava/lang/String;
    move-object v0, p0

    .line 72
    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;->onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    goto :goto_7

    .line 51
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Landroid/net/Uri;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:I
    .end local v8           #_arg7:Ljava/util/Map;
    .end local v9           #_arg8:Ljava/lang/String;
    .end local v10           #cl:Ljava/lang/ClassLoader;
    :cond_56
    const/4 v2, 0x0

    goto :goto_1f

    .line 53
    .restart local v2       #_arg1:Z
    :cond_58
    const/4 v3, 0x0

    goto :goto_26

    .line 59
    .restart local v3       #_arg2:Z
    :cond_5a
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/net/Uri;
    goto :goto_34

    .line 38
    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
