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
    .registers 14
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
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ee

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 42
    :sswitch_a
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 50
    .local v1, _arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginFailed(J)V

    goto :goto_9

    .line 55
    .end local v1           #_arg0:J
    :sswitch_1d
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 58
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginSucceeded(J)V

    goto :goto_9

    .line 63
    .end local v1           #_arg0:J
    :sswitch_2a
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 67
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 69
    .local v3, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    move-object v0, p0

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyNewMessages(JJI)V

    goto :goto_9

    .line 75
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    .end local v5           #_arg2:I
    :sswitch_40
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 78
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IAccountService$Stub;->resetNewMessageCount(J)V

    goto :goto_9

    .line 83
    .end local v1           #_arg0:J
    :sswitch_4d
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 87
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 88
    .restart local v3       #_arg1:J
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifySendFailedOutOfMemoryError(JJ)V

    goto :goto_9

    .line 93
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    :sswitch_5e
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 97
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 99
    .restart local v3       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    move v5, v8

    .line 101
    .local v5, _arg2:Z
    :cond_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg3:Ljava/lang/String;
    move-object v0, p0

    .line 102
    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifySendResult(JJZLjava/lang/String;)V

    goto :goto_9

    .line 107
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    .end local v5           #_arg2:Z
    .end local v6           #_arg3:Ljava/lang/String;
    :sswitch_7b
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->accountDeleted()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 114
    :sswitch_87
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->restoreAccountsIfNeeded()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 121
    :sswitch_94
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 124
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IAccountService$Stub;->getAccountColor(J)I

    move-result v7

    .line 125
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 131
    .end local v1           #_arg0:J
    .end local v7           #_result:I
    :sswitch_a9
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 135
    .local v7, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v7, :cond_c3

    .line 137
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 141
    :cond_c3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 147
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_c8
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 155
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_d9
    const-string v0, "com.android.emailcommon.service.IAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->getDeviceIdForWifi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_40
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_5e
        0x7 -> :sswitch_7b
        0x8 -> :sswitch_87
        0x9 -> :sswitch_94
        0xa -> :sswitch_a9
        0xb -> :sswitch_c8
        0xc -> :sswitch_d9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
