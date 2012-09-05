.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
.super Landroid/os/Binder;
.source "IInfoListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
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
    const-string v1, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_64

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 45
    :sswitch_9
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    .line 53
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 58
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;
    :goto_22
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 56
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;
    goto :goto_22

    .line 64
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;
    :sswitch_2b
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    .line 67
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    .line 72
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 70
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;
    :cond_45
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;
    goto :goto_3e

    .line 78
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;
    :sswitch_47
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_61

    .line 81
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 86
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    :goto_5a
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 84
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    :cond_61
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    goto :goto_5a

    .line 41
    nop

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_47
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
