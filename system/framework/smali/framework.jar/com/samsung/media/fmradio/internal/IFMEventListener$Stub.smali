.class public abstract Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;
.super Landroid/os/Binder;
.source "IFMEventListener.java"

# interfaces
.implements Lcom/samsung/media/fmradio/internal/IFMEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/internal/IFMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.media.fmradio.internal.IFMEventListener"

.field static final TRANSACTION_earPhoneConnected:I = 0x8

.field static final TRANSACTION_earPhoneDisconnected:I = 0x9

.field static final TRANSACTION_onAFReceived:I = 0xe

.field static final TRANSACTION_onAFStarted:I = 0xd

.field static final TRANSACTION_onChannelFound:I = 0x3

.field static final TRANSACTION_onOff:I = 0x2

.field static final TRANSACTION_onOn:I = 0x1

.field static final TRANSACTION_onRDSDisabled:I = 0xc

.field static final TRANSACTION_onRDSEnabled:I = 0xb

.field static final TRANSACTION_onRDSReceived:I = 0xa

.field static final TRANSACTION_onScanFinished:I = 0x6

.field static final TRANSACTION_onScanStarted:I = 0x4

.field static final TRANSACTION_onScanStopped:I = 0x5

.field static final TRANSACTION_onTune:I = 0x7

.field static final TRANSACTION_volumeLock:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;
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
    const-string v1, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_d2

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_8
    return v5

    .line 47
    :sswitch_9
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onOn()V

    goto :goto_8

    .line 58
    :sswitch_18
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onOff(I)V

    goto :goto_8

    .line 66
    .end local v0           #_arg0:I
    :sswitch_25
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 69
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onChannelFound(J)V

    goto :goto_8

    .line 74
    .end local v0           #_arg0:J
    :sswitch_32
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanStarted()V

    goto :goto_8

    .line 80
    :sswitch_3b
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, _arg0_length:I
    if-gez v2, :cond_4e

    .line 84
    const/4 v0, 0x0

    .line 89
    .local v0, _arg0:[J
    :goto_47
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanStopped([J)V

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_8

    .line 87
    .end local v0           #_arg0:[J
    :cond_4e
    new-array v0, v2, [J

    .restart local v0       #_arg0:[J
    goto :goto_47

    .line 95
    .end local v0           #_arg0:[J
    .end local v2           #_arg0_length:I
    :sswitch_51
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .restart local v2       #_arg0_length:I
    if-gez v2, :cond_64

    .line 99
    const/4 v0, 0x0

    .line 104
    .restart local v0       #_arg0:[J
    :goto_5d
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanFinished([J)V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_8

    .line 102
    .end local v0           #_arg0:[J
    :cond_64
    new-array v0, v2, [J

    .restart local v0       #_arg0:[J
    goto :goto_5d

    .line 110
    .end local v0           #_arg0:[J
    .end local v2           #_arg0_length:I
    :sswitch_67
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 113
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onTune(J)V

    goto :goto_8

    .line 118
    .end local v0           #_arg0:J
    :sswitch_74
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->earPhoneConnected()V

    goto :goto_8

    .line 124
    :sswitch_7d
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->earPhoneDisconnected()V

    goto :goto_8

    .line 130
    :sswitch_86
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 134
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 142
    .end local v0           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_9c
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSEnabled()V

    goto/16 :goto_8

    .line 148
    :sswitch_a6
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSDisabled()V

    goto/16 :goto_8

    .line 154
    :sswitch_b0
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onAFStarted()V

    goto/16 :goto_8

    .line 160
    :sswitch_ba
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 163
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onAFReceived(J)V

    goto/16 :goto_8

    .line 168
    .end local v0           #_arg0:J
    :sswitch_c8
    const-string v6, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->volumeLock()V

    goto/16 :goto_8

    .line 43
    :sswitch_data_d2
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_18
        0x3 -> :sswitch_25
        0x4 -> :sswitch_32
        0x5 -> :sswitch_3b
        0x6 -> :sswitch_51
        0x7 -> :sswitch_67
        0x8 -> :sswitch_74
        0x9 -> :sswitch_7d
        0xa -> :sswitch_86
        0xb -> :sswitch_9c
        0xc -> :sswitch_a6
        0xd -> :sswitch_b0
        0xe -> :sswitch_ba
        0xf -> :sswitch_c8
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
