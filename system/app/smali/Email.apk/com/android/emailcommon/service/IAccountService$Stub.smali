.class public abstract Lcom/android/emailcommon/service/IAccountService$Stub;
.super Landroid/os/Binder;
.source "IAccountService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;
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
    const-string v1, "com.android.emailcommon.service.IAccountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/emailcommon/service/IAccountService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IAccountService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_80

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 42
    :sswitch_9
    const-string v5, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v5, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 50
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginFailed(J)V

    goto :goto_8

    .line 55
    .end local v0           #_arg0:J
    :sswitch_1c
    const-string v5, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 58
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginSucceeded(J)V

    goto :goto_8

    .line 63
    .end local v0           #_arg0:J
    :sswitch_29
    const-string v5, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/emailcommon/service/IAccountService$Stub;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_3d
    const-string v5, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 77
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->getAccountColor(J)I

    move-result v3

    .line 78
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 84
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_51
    const-string v5, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IAccountService$Stub;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 88
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_6a

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 94
    :cond_6a
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_6f
    const-string v5, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_29
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_51
        0x6 -> :sswitch_6f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
