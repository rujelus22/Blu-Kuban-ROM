.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
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
    const-string v1, "com.android.emailcommon.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_198

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 42
    :sswitch_a
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v8, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_33

    .line 50
    sget-object v8, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/HostAuth;

    .line 55
    .local v1, _arg0:Lcom/android/emailcommon/provider/HostAuth;
    :goto_23
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v6

    .line 56
    .local v6, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v6, :cond_35

    .line 58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 53
    .end local v1           #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    .end local v6           #_result:Landroid/os/Bundle;
    :cond_33
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_23

    .line 62
    .restart local v6       #_result:Landroid/os/Bundle;
    :cond_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v1           #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    .end local v6           #_result:Landroid/os/Bundle;
    :sswitch_39
    const-string v8, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 72
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4d

    move v3, v7

    .line 73
    .local v3, _arg1:Z
    :goto_49
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->startSync(JZ)V

    goto :goto_9

    .end local v3           #_arg1:Z
    :cond_4d
    move v3, v0

    .line 72
    goto :goto_49

    .line 78
    .end local v1           #_arg0:J
    :sswitch_4f
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 81
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->stopSync(J)V

    goto :goto_9

    .line 86
    .end local v1           #_arg0:J
    :sswitch_5c
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 89
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMore(J)V

    goto :goto_9

    .line 94
    .end local v1           #_arg0:J
    :sswitch_69
    const-string v8, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 98
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7d

    move v3, v7

    .line 99
    .restart local v3       #_arg1:Z
    :goto_79
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(JZ)V

    goto :goto_9

    .end local v3           #_arg1:Z
    :cond_7d
    move v3, v0

    .line 98
    goto :goto_79

    .line 104
    .end local v1           #_arg0:J
    :sswitch_7f
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 107
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    goto/16 :goto_9

    .line 112
    .end local v1           #_arg0:J
    :sswitch_8d
    const-string v8, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 116
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->createFolder(JLjava/lang/String;)Z

    move-result v6

    .line 118
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v6, :cond_a4

    move v0, v7

    :cond_a4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_a9
    const-string v8, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 128
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteFolder(JLjava/lang/String;)Z

    move-result v6

    .line 130
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v6, :cond_c0

    move v0, v7

    :cond_c0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_c5
    const-string v8, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 140
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->renameFolder(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 144
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v6, :cond_e0

    move v0, v7

    :cond_e0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 150
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_e5
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    .line 153
    .local v1, _arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 159
    .end local v1           #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    :sswitch_fa
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    goto/16 :goto_9

    .line 167
    .end local v1           #_arg0:I
    :sswitch_108
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 170
    .local v1, _arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->hostChanged(J)V

    goto/16 :goto_9

    .line 175
    .end local v1           #_arg0:J
    :sswitch_116
    const-string v8, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 181
    .local v6, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v6, :cond_134

    .line 183
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 187
    :cond_134
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 193
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Landroid/os/Bundle;
    :sswitch_139
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 197
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .local v3, _arg1:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    goto/16 :goto_9

    .line 203
    .end local v1           #_arg0:J
    .end local v3           #_arg1:I
    :sswitch_14b
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 206
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteAccountPIMData(J)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 212
    .end local v1           #_arg0:J
    :sswitch_15c
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->getApiLevel()I

    move-result v6

    .line 214
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 220
    .end local v6           #_result:I
    :sswitch_16d
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 224
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_195

    .line 225
    sget-object v0, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/service/SearchParams;

    .line 231
    .local v3, _arg1:Lcom/android/emailcommon/service/SearchParams;
    :goto_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg2:J
    move-object v0, p0

    .line 232
    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService$Stub;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v6

    .line 233
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 228
    .end local v3           #_arg1:Lcom/android/emailcommon/service/SearchParams;
    .end local v4           #_arg2:J
    .end local v6           #_result:I
    :cond_195
    const/4 v3, 0x0

    .restart local v3       #_arg1:Lcom/android/emailcommon/service/SearchParams;
    goto :goto_184

    .line 38
    nop

    :sswitch_data_198
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_39
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7f
        0x7 -> :sswitch_8d
        0x8 -> :sswitch_a9
        0x9 -> :sswitch_c5
        0xa -> :sswitch_e5
        0xb -> :sswitch_fa
        0xc -> :sswitch_108
        0xd -> :sswitch_116
        0xe -> :sswitch_139
        0xf -> :sswitch_14b
        0x10 -> :sswitch_15c
        0x11 -> :sswitch_16d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
