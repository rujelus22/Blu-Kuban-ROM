.class public abstract Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;
.super Landroid/os/Binder;
.source "ISyncmlServiceDMCallback.java"

# interfaces
.implements Lcom/samsung/client/ISyncmlServiceDMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/ISyncmlServiceDMCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/ISyncmlServiceDMCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/client/ISyncmlServiceDMCallback;
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
    const-string v1, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/client/ISyncmlServiceDMCallback;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/samsung/client/ISyncmlServiceDMCallback;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_c0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 47
    :sswitch_9
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->app_session_prog_cb(III)V

    goto :goto_8

    .line 64
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_24
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->fumo_dl_progress(III)V

    goto :goto_8

    .line 76
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_39
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->fumo_update_fw(ILjava/lang/String;)V

    goto :goto_8

    .line 86
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4a
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->set_instance_id(I)V

    goto :goto_8

    .line 94
    .end local v0           #_arg0:I
    :sswitch_57
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->fumo_pending_response(I)V

    goto :goto_8

    .line 102
    .end local v0           #_arg0:I
    :sswitch_64
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->device_reboot()V

    goto :goto_8

    .line 108
    :sswitch_6d
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 111
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->at_omadm_commands([B)V

    goto :goto_8

    .line 116
    .end local v0           #_arg0:[B
    :sswitch_7a
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->ipc_layer_unavailable()V

    goto :goto_8

    .line 122
    :sswitch_83
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->send_status(I)V

    goto/16 :goto_8

    .line 130
    .end local v0           #_arg0:I
    :sswitch_91
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->san_auth_err()V

    goto/16 :goto_8

    .line 136
    :sswitch_9b
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 140
    .local v0, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 142
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->wimaxProcessRilResponse(B[BI)V

    goto/16 :goto_8

    .line 148
    .end local v0           #_arg0:B
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:I
    :sswitch_b1
    const-string v4, "com.samsung.client.ISyncmlServiceDMCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/client/ISyncmlServiceDMCallback$Stub;->set_session_type(I)V

    goto/16 :goto_8

    .line 43
    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_57
        0x6 -> :sswitch_64
        0x7 -> :sswitch_6d
        0x8 -> :sswitch_7a
        0x9 -> :sswitch_83
        0xa -> :sswitch_91
        0xb -> :sswitch_9b
        0xc -> :sswitch_b1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
