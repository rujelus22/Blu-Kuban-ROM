.class public abstract Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;
.super Landroid/os/Binder;
.source "IRemoteInjection.java"

# interfaces
.implements Landroid/app/enterprise/remotecontrol/IRemoteInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/remotecontrol/IRemoteInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.remotecontrol.IRemoteInjection"

.field static final TRANSACTION_injectKeyEvent:I = 0x1

.field static final TRANSACTION_injectPointerEvent:I = 0x2

.field static final TRANSACTION_injectTrackballEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.enterprise.remotecontrol.IRemoteInjection"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/remotecontrol/IRemoteInjection;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.app.enterprise.remotecontrol.IRemoteInjection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_96

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 47
    :sswitch_a
    const-string v4, "android.app.enterprise.remotecontrol.IRemoteInjection"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v5, "android.app.enterprise.remotecontrol.IRemoteInjection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    .line 55
    sget-object v5, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 61
    .local v0, _arg0:Landroid/view/KeyEvent;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    move v1, v3

    .line 62
    .local v1, _arg1:Z
    :goto_2a
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v2

    .line 63
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_34

    move v4, v3

    :cond_34
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 58
    .end local v0           #_arg0:Landroid/view/KeyEvent;
    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_38
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/KeyEvent;
    goto :goto_23

    :cond_3a
    move v1, v4

    .line 61
    goto :goto_2a

    .line 69
    .end local v0           #_arg0:Landroid/view/KeyEvent;
    :sswitch_3c
    const-string v5, "android.app.enterprise.remotecontrol.IRemoteInjection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_64

    .line 72
    sget-object v5, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 78
    .local v0, _arg0:Landroid/view/MotionEvent;
    :goto_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_66

    move v1, v3

    .line 79
    .restart local v1       #_arg1:Z
    :goto_56
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v2

    .line 80
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_60

    move v4, v3

    :cond_60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 75
    .end local v0           #_arg0:Landroid/view/MotionEvent;
    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_64
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/MotionEvent;
    goto :goto_4f

    :cond_66
    move v1, v4

    .line 78
    goto :goto_56

    .line 86
    .end local v0           #_arg0:Landroid/view/MotionEvent;
    :sswitch_68
    const-string v5, "android.app.enterprise.remotecontrol.IRemoteInjection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_91

    .line 89
    sget-object v5, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 95
    .restart local v0       #_arg0:Landroid/view/MotionEvent;
    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_93

    move v1, v3

    .line 96
    .restart local v1       #_arg1:Z
    :goto_82
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v2

    .line 97
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_8c

    move v4, v3

    :cond_8c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 92
    .end local v0           #_arg0:Landroid/view/MotionEvent;
    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_91
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/MotionEvent;
    goto :goto_7b

    :cond_93
    move v1, v4

    .line 95
    goto :goto_82

    .line 43
    nop

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_68
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
