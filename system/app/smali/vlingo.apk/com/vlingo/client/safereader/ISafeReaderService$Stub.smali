.class public abstract Lcom/vlingo/client/safereader/ISafeReaderService$Stub;
.super Landroid/os/Binder;
.source "ISafeReaderService.java"

# interfaces
.implements Lcom/vlingo/client/safereader/ISafeReaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/ISafeReaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/ISafeReaderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vlingo.client.safereader.ISafeReaderService"

.field static final TRANSACTION_addTTSListener:I = 0x13

.field static final TRANSACTION_cancelReadback:I = 0xb

.field static final TRANSACTION_getCurrentMessageContext:I = 0x12

.field static final TRANSACTION_isSafeReaderEnabled:I = 0xd

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_reloadOnboardTTS:I = 0x8

.field static final TRANSACTION_removeNotificationWithID:I = 0x11

.field static final TRANSACTION_removeTTSListener:I = 0x14

.field static final TRANSACTION_resume:I = 0x5

.field static final TRANSACTION_setBluetoothConnected:I = 0x10

.field static final TRANSACTION_setFeature:I = 0xc

.field static final TRANSACTION_setIntFeature:I = 0xa

.field static final TRANSACTION_setLanguage:I = 0xe

.field static final TRANSACTION_setVoice:I = 0xf

.field static final TRANSACTION_skipCurrentlyPlayingItem:I = 0x9

.field static final TRANSACTION_speak:I = 0x7

.field static final TRANSACTION_speakCompoundRequests:I = 0x6

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_stopPlayback:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p0, p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/safereader/ISafeReaderService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/vlingo/client/safereader/ISafeReaderService;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/vlingo/client/safereader/ISafeReaderService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
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

    .line 40
    sparse-switch p1, :sswitch_data_198

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 44
    :sswitch_a
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 49
    :sswitch_10
    const-string v5, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    move v0, v3

    .line 52
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->start(Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_23
    move v0, v4

    .line 51
    goto :goto_1c

    .line 58
    :sswitch_25
    const-string v5, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    move v0, v3

    .line 61
    .restart local v0       #_arg0:Z
    :goto_31
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->stop(Z)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_38
    move v0, v4

    .line 60
    goto :goto_31

    .line 67
    :sswitch_3a
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->stopPlayback()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    :sswitch_46
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->pause(I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    .end local v0           #_arg0:I
    :sswitch_56
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->resume(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 92
    .end local v0           #_arg0:I
    :sswitch_66
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    sget-object v4, Lcom/vlingo/client/core/tts/TTSDemand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 95
    .local v0, _arg0:[Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->speakCompoundRequests([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 101
    .end local v0           #_arg0:[Lcom/vlingo/client/core/tts/TTSDemand;
    :sswitch_7a
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_95

    .line 104
    sget-object v4, Lcom/vlingo/client/core/tts/TTSDemand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 109
    .local v0, _arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :goto_8d
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 107
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_95
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    goto :goto_8d

    .line 115
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/TTSDemand;
    :sswitch_97
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->reloadOnboardTTS()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 122
    :sswitch_a4
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->skipCurrentlyPlayingItem()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 129
    :sswitch_b1
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->setIntFeature(II)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_c6
    const-string v5, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_da

    move v0, v3

    .line 143
    .local v0, _arg0:Z
    :goto_d2
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->cancelReadback(Z)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_da
    move v0, v4

    .line 142
    goto :goto_d2

    .line 149
    :sswitch_dc
    const-string v5, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f4

    move v1, v3

    .line 154
    .local v1, _arg1:Z
    :goto_ec
    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->setFeature(IZ)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg1:Z
    :cond_f4
    move v1, v4

    .line 153
    goto :goto_ec

    .line 160
    .end local v0           #_arg0:I
    :sswitch_f6
    const-string v5, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->isSafeReaderEnabled()Z

    move-result v2

    .line 162
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v2, :cond_105

    move v4, v3

    :cond_105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 168
    .end local v2           #_result:Z
    :sswitch_10a
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->setLanguage(I)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 177
    .end local v0           #_arg0:I
    :sswitch_11b
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->setVoice(I)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 186
    .end local v0           #_arg0:I
    :sswitch_12c
    const-string v5, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_140

    move v0, v3

    .line 189
    .local v0, _arg0:Z
    :goto_138
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->setBluetoothConnected(Z)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    :cond_140
    move v0, v4

    .line 188
    goto :goto_138

    .line 195
    :sswitch_142
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->removeNotificationWithID(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 204
    .end local v0           #_arg0:I
    :sswitch_153
    const-string v5, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->getCurrentMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v2

    .line 206
    .local v2, _result:Lcom/vlingo/client/safereader/MessageContext;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v2, :cond_169

    .line 208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v2, p3, v3}, Lcom/vlingo/client/safereader/MessageContext;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 212
    :cond_169
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 218
    .end local v2           #_result:Lcom/vlingo/client/safereader/MessageContext;
    :sswitch_16e
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/vlingo/client/core/tts/ITTSListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/core/tts/ITTSListener;

    move-result-object v0

    .line 222
    .local v0, _arg0:Lcom/vlingo/client/core/tts/ITTSListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 229
    .end local v0           #_arg0:Lcom/vlingo/client/core/tts/ITTSListener;
    .end local v1           #_arg1:I
    :sswitch_187
    const-string v4, "com.vlingo.client.safereader.ISafeReaderService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->removeTTSListener(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 40
    :sswitch_data_198
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_46
        0x5 -> :sswitch_56
        0x6 -> :sswitch_66
        0x7 -> :sswitch_7a
        0x8 -> :sswitch_97
        0x9 -> :sswitch_a4
        0xa -> :sswitch_b1
        0xb -> :sswitch_c6
        0xc -> :sswitch_dc
        0xd -> :sswitch_f6
        0xe -> :sswitch_10a
        0xf -> :sswitch_11b
        0x10 -> :sswitch_12c
        0x11 -> :sswitch_142
        0x12 -> :sswitch_153
        0x13 -> :sswitch_16e
        0x14 -> :sswitch_187
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
