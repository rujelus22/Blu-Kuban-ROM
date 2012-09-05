.class public abstract Lcom/samsung/client/ISyncmlService$Stub;
.super Landroid/os/Binder;
.source "ISyncmlService.java"

# interfaces
.implements Lcom/samsung/client/ISyncmlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/ISyncmlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/ISyncmlService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.client.ISyncmlService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/client/ISyncmlService;
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
    const-string v1, "com.samsung.client.ISyncmlService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/client/ISyncmlService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/client/ISyncmlService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/client/ISyncmlService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/client/ISyncmlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_1fc

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 46
    :sswitch_a
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v0

    .line 55
    .local v0, _arg0:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 56
    sget-object v4, Lcom/samsung/client/Tsldm_ses_opt_binder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/client/Tsldm_ses_opt_binder;

    .line 61
    .local v1, _arg1:Lcom/samsung/client/Tsldm_ses_opt_binder;
    :goto_2b
    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/ISyncmlService$Stub;->setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I

    move-result v3

    .line 62
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 59
    .end local v1           #_arg1:Lcom/samsung/client/Tsldm_ses_opt_binder;
    .end local v3           #_result:I
    :cond_36
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/samsung/client/Tsldm_ses_opt_binder;
    goto :goto_2b

    .line 68
    .end local v0           #_arg0:Lcom/samsung/client/ISyncmlServiceDMCallback;
    .end local v1           #_arg1:Lcom/samsung/client/Tsldm_ses_opt_binder;
    :sswitch_38
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5e

    .line 75
    sget-object v4, Lcom/samsung/client/Tsldm_start_parm_binder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/client/Tsldm_start_parm_binder;

    .line 80
    .local v2, _arg2:Lcom/samsung/client/Tsldm_start_parm_binder;
    :goto_53
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/ISyncmlService$Stub;->startDMSession(IILcom/samsung/client/Tsldm_start_parm_binder;)I

    move-result v3

    .line 81
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v2           #_arg2:Lcom/samsung/client/Tsldm_start_parm_binder;
    .end local v3           #_result:I
    :cond_5e
    const/4 v2, 0x0

    .restart local v2       #_arg2:Lcom/samsung/client/Tsldm_start_parm_binder;
    goto :goto_53

    .line 87
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Lcom/samsung/client/Tsldm_start_parm_binder;
    :sswitch_60
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/ISyncmlService$Stub;->stopDMSession(II)I

    move-result v3

    .line 93
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 99
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_78
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->shutdownDMSession(I)I

    move-result v3

    .line 103
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 109
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_8d
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->fumoRun(I)I

    move-result v3

    .line 113
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 119
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_a2
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->cancelDownload(I)I

    move-result v3

    .line 123
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 129
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_b7
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->cancelUpdate()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 136
    :sswitch_c4
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->updateFw(I)I

    move-result v3

    .line 140
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_d9
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->fumoAbort()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 153
    :sswitch_e6
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->retryFumoStatus()I

    move-result v3

    .line 155
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 161
    .end local v3           #_result:I
    :sswitch_f7
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->abortFumoStatusRetry()I

    move-result v3

    .line 163
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 169
    .end local v3           #_result:I
    :sswitch_108
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->fumo_pending_check()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 176
    :sswitch_115
    const-string v6, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->areResourcesCleaned()Z

    move-result v3

    .line 178
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_124

    move v4, v5

    :cond_124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 184
    .end local v3           #_result:Z
    :sswitch_129
    const-string v6, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->isBatteryLow()Z

    move-result v3

    .line 186
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v3, :cond_138

    move v4, v5

    :cond_138
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v3           #_result:Z
    :sswitch_13d
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->pauseFumoDownload(I)I

    move-result v3

    .line 196
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 202
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_152
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->resumeFumoDownload(I)I

    move-result v3

    .line 206
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 212
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_167
    const-string v6, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_182

    move v0, v5

    .line 215
    .local v0, _arg0:Z
    :goto_173
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->setHfaInitiated(Z)Z

    move-result v3

    .line 216
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v3, :cond_17d

    move v4, v5

    :cond_17d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_182
    move v0, v4

    .line 214
    goto :goto_173

    .line 222
    :sswitch_184
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v0

    .line 225
    .local v0, _arg0:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->unregisterDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 231
    .end local v0           #_arg0:Lcom/samsung/client/ISyncmlServiceDMCallback;
    :sswitch_199
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v0

    .line 234
    .restart local v0       #_arg0:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 240
    .end local v0           #_arg0:Lcom/samsung/client/ISyncmlServiceDMCallback;
    :sswitch_1ae
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 243
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->sendNIAmessage([B)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 249
    .end local v0           #_arg0:[B
    :sswitch_1bf
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlService$Stub;->resetRadio()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 256
    :sswitch_1cc
    const-string v6, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e0

    move v0, v5

    .line 259
    .local v0, _arg0:Z
    :goto_1d8
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlService$Stub;->setResourcesState(Z)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_1e0
    move v0, v4

    .line 258
    goto :goto_1d8

    .line 265
    :sswitch_1e2
    const-string v4, "com.samsung.client.ISyncmlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/ISyncmlService$Stub;->wimaxSendResponse(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 42
    nop

    :sswitch_data_1fc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_38
        0x3 -> :sswitch_60
        0x4 -> :sswitch_78
        0x5 -> :sswitch_8d
        0x6 -> :sswitch_a2
        0x7 -> :sswitch_b7
        0x8 -> :sswitch_c4
        0x9 -> :sswitch_d9
        0xa -> :sswitch_e6
        0xb -> :sswitch_f7
        0xc -> :sswitch_108
        0xd -> :sswitch_115
        0xe -> :sswitch_129
        0xf -> :sswitch_13d
        0x10 -> :sswitch_152
        0x11 -> :sswitch_167
        0x12 -> :sswitch_184
        0x13 -> :sswitch_199
        0x14 -> :sswitch_1ae
        0x15 -> :sswitch_1bf
        0x16 -> :sswitch_1cc
        0x17 -> :sswitch_1e2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
