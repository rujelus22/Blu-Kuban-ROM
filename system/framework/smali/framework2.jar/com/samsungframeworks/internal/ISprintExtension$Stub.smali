.class public abstract Lcom/samsungframeworks/internal/ISprintExtension$Stub;
.super Landroid/os/Binder;
.source "ISprintExtension.java"

# interfaces
.implements Lcom/samsungframeworks/internal/ISprintExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/ISprintExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/ISprintExtension$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsungframeworks.internal.ISprintExtension"

.field static final TRANSACTION_GetGPSState:I = 0x17

.field static final TRANSACTION_IsBluetoothEnabled:I = 0x13

.field static final TRANSACTION_IsCameraEnabled:I = 0x14

.field static final TRANSACTION_IsEncryptDeviceEnabled:I = 0x15

.field static final TRANSACTION_IsEncryptSDCardEnable:I = 0x16

.field static final TRANSACTION_IsHotspotEnabled:I = 0x18

.field static final TRANSACTION_IsUSBDriveEnabled:I = 0x19

.field static final TRANSACTION_IsUSBPortEnabled:I = 0x1a

.field static final TRANSACTION_IsWiFiEnabled:I = 0x1b

.field static final TRANSACTION_Reboot:I = 0x1c

.field static final TRANSACTION_SetDisableBluetooth:I = 0x1d

.field static final TRANSACTION_SetDisableCamera:I = 0x1e

.field static final TRANSACTION_SetDisableHotspot:I = 0x1f

.field static final TRANSACTION_SetDisableUSBDrive:I = 0x20

.field static final TRANSACTION_SetDisableUSBPort:I = 0x21

.field static final TRANSACTION_SetDisableWifi:I = 0x22

.field static final TRANSACTION_SetEncryptDevice:I = 0x23

.field static final TRANSACTION_SetEncryptSDCard:I = 0x24

.field static final TRANSACTION_SetGPS:I = 0x25

.field static final TRANSACTION_disableScreenTimeout:I = 0xd

.field static final TRANSACTION_enableScreenTimeout:I = 0xe

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x10

.field static final TRANSACTION_getDataProfile:I = 0x3

.field static final TRANSACTION_getString:I = 0x1

.field static final TRANSACTION_getVoiceMailCount:I = 0x11

.field static final TRANSACTION_reboot:I = 0xf

.field static final TRANSACTION_registerHFA:I = 0xc

.field static final TRANSACTION_release:I = 0x5

.field static final TRANSACTION_releaseDSAProxy:I = 0x7

.field static final TRANSACTION_requestDataProfile:I = 0x4

.field static final TRANSACTION_resetVoiceMailCount:I = 0x12

.field static final TRANSACTION_setDSAProxy:I = 0x6

.field static final TRANSACTION_setString:I = 0x2

.field static final TRANSACTION_startCIDC:I = 0x8

.field static final TRANSACTION_startCIFUMO:I = 0x9

.field static final TRANSACTION_startCIPRL:I = 0xa

.field static final TRANSACTION_startHFA:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p0, p0, v0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;
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
    const-string v1, "com.samsungframeworks.internal.ISprintExtension"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/samsungframeworks/internal/ISprintExtension;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/samsungframeworks/internal/ISprintExtension$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_21e

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 57
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->setString(ILjava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 68
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_37
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->getDataProfile()I

    move-result v2

    .line 70
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 76
    .end local v2           #_result:I
    :sswitch_47
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->requestDataProfile(I)I

    move-result v2

    .line 80
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 86
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_5b
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->release()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 93
    :sswitch_67
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->setDSAProxy(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_7b
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->releaseDSAProxy()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 111
    :sswitch_87
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startCIDC()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 118
    :sswitch_94
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startCIFUMO()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 125
    :sswitch_a1
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startCIPRL()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 132
    :sswitch_ae
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->startHFA()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 139
    :sswitch_bb
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->registerHFA()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 146
    :sswitch_c8
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->disableScreenTimeout()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 153
    :sswitch_d5
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->enableScreenTimeout()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 160
    :sswitch_e2
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->reboot()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 167
    :sswitch_ef
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 175
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_100
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->getVoiceMailCount()I

    move-result v2

    .line 177
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 183
    .end local v2           #_result:I
    :sswitch_111
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->resetVoiceMailCount()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 190
    :sswitch_11e
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsBluetoothEnabled()V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 197
    :sswitch_12b
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsCameraEnabled()V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 204
    :sswitch_138
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsEncryptDeviceEnabled()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 211
    :sswitch_145
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsEncryptSDCardEnable()V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 218
    :sswitch_152
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->GetGPSState()I

    move-result v2

    .line 220
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 226
    .end local v2           #_result:I
    :sswitch_163
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsHotspotEnabled()V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 233
    :sswitch_170
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsUSBDriveEnabled()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 240
    :sswitch_17d
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsUSBPortEnabled()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 247
    :sswitch_18a
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->IsWiFiEnabled()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 254
    :sswitch_197
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->Reboot()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 261
    :sswitch_1a4
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetDisableBluetooth()V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 268
    :sswitch_1b1
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetDisableCamera()V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 275
    :sswitch_1be
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetDisableHotspot()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 282
    :sswitch_1cb
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetDisableUSBDrive()V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 289
    :sswitch_1d8
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetDisableUSBPort()V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 296
    :sswitch_1e5
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetDisableWifi()V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 303
    :sswitch_1f2
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetEncryptDevice()V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 310
    :sswitch_1ff
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetEncryptSDCard()V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 317
    :sswitch_20c
    const-string v4, "com.samsungframeworks.internal.ISprintExtension"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->SetGPS(I)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 38
    nop

    :sswitch_data_21e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x4 -> :sswitch_47
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_67
        0x7 -> :sswitch_7b
        0x8 -> :sswitch_87
        0x9 -> :sswitch_94
        0xa -> :sswitch_a1
        0xb -> :sswitch_ae
        0xc -> :sswitch_bb
        0xd -> :sswitch_c8
        0xe -> :sswitch_d5
        0xf -> :sswitch_e2
        0x10 -> :sswitch_ef
        0x11 -> :sswitch_100
        0x12 -> :sswitch_111
        0x13 -> :sswitch_11e
        0x14 -> :sswitch_12b
        0x15 -> :sswitch_138
        0x16 -> :sswitch_145
        0x17 -> :sswitch_152
        0x18 -> :sswitch_163
        0x19 -> :sswitch_170
        0x1a -> :sswitch_17d
        0x1b -> :sswitch_18a
        0x1c -> :sswitch_197
        0x1d -> :sswitch_1a4
        0x1e -> :sswitch_1b1
        0x1f -> :sswitch_1be
        0x20 -> :sswitch_1cb
        0x21 -> :sswitch_1d8
        0x22 -> :sswitch_1e5
        0x23 -> :sswitch_1f2
        0x24 -> :sswitch_1ff
        0x25 -> :sswitch_20c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
