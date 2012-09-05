.class public abstract Landroid/app/enterprise/IRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IRestrictionPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IRestrictionPolicy"

.field static final TRANSACTION_allowFactoryReset:I = 0x21

.field static final TRANSACTION_allowSettingsChanges:I = 0x29

.field static final TRANSACTION_isBackgroundDataEnabled:I = 0x26

.field static final TRANSACTION_isBackupAllowed:I = 0x1e

.field static final TRANSACTION_isBluetoothTetheringEnabled:I = 0xa

.field static final TRANSACTION_isCameraEnabled:I = 0x2

.field static final TRANSACTION_isCellularDataAllowed:I = 0x28

.field static final TRANSACTION_isClipboardAllowed:I = 0x20

.field static final TRANSACTION_isFactoryResetAllowed:I = 0x22

.field static final TRANSACTION_isHomeKeyEnabled:I = 0x24

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x4

.field static final TRANSACTION_isMockLocationEnabled:I = 0x1c

.field static final TRANSACTION_isNFCEnabled:I = 0x6

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x2c

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x1a

.field static final TRANSACTION_isSdCardEnabled:I = 0x8

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x2a

.field static final TRANSACTION_isTetheringEnabled:I = 0x10

.field static final TRANSACTION_isUsbDebuggingEnabled:I = 0x12

.field static final TRANSACTION_isUsbKiesAvailable:I = 0x16

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x14

.field static final TRANSACTION_isUsbMediaPlayerAvailable:I = 0x18

.field static final TRANSACTION_isUsbTetheringEnabled:I = 0xc

.field static final TRANSACTION_isWifiTetheringEnabled:I = 0xe

.field static final TRANSACTION_setAllowNonMarketApps:I = 0x2b

.field static final TRANSACTION_setBackgroundData:I = 0x25

.field static final TRANSACTION_setBackup:I = 0x1d

.field static final TRANSACTION_setBluetoothTethering:I = 0x9

.field static final TRANSACTION_setCamera:I = 0x1

.field static final TRANSACTION_setCellularData:I = 0x27

.field static final TRANSACTION_setClipboardEnabled:I = 0x1f

.field static final TRANSACTION_setEnableNFC:I = 0x5

.field static final TRANSACTION_setHomeKeyState:I = 0x23

.field static final TRANSACTION_setMicrophoneState:I = 0x3

.field static final TRANSACTION_setMockLocation:I = 0x1b

.field static final TRANSACTION_setScreenCapture:I = 0x19

.field static final TRANSACTION_setSdCardState:I = 0x7

.field static final TRANSACTION_setTethering:I = 0xf

.field static final TRANSACTION_setUsbDebuggingEnabled:I = 0x11

.field static final TRANSACTION_setUsbKiesAvailability:I = 0x15

.field static final TRANSACTION_setUsbMassStorage:I = 0x13

.field static final TRANSACTION_setUsbMediaPlayerAvailability:I = 0x17

.field static final TRANSACTION_setUsbTethering:I = 0xb

.field static final TRANSACTION_setWifiTethering:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;
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
    const-string v1, "android.app.enterprise.IRestrictionPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/app/enterprise/IRestrictionPolicy;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/app/enterprise/IRestrictionPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_494

    .line 463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 45
    :sswitch_a
    const-string v3, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    move v0, v2

    .line 53
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setCamera(Z)Z

    move-result v1

    .line 54
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_26

    move v3, v2

    :cond_26
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_2a
    move v0, v3

    .line 52
    goto :goto_1c

    .line 60
    :sswitch_2c
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    move v0, v2

    .line 63
    .restart local v0       #_arg0:Z
    :goto_38
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isCameraEnabled(Z)Z

    move-result v1

    .line 64
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_42

    move v3, v2

    :cond_42
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_46
    move v0, v3

    .line 62
    goto :goto_38

    .line 70
    :sswitch_48
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    move v0, v2

    .line 73
    .restart local v0       #_arg0:Z
    :goto_54
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setMicrophoneState(Z)Z

    move-result v1

    .line 74
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v1, :cond_5e

    move v3, v2

    :cond_5e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_62
    move v0, v3

    .line 72
    goto :goto_54

    .line 80
    :sswitch_64
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7e

    move v0, v2

    .line 83
    .restart local v0       #_arg0:Z
    :goto_70
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v1

    .line 84
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v1, :cond_7a

    move v3, v2

    :cond_7a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_7e
    move v0, v3

    .line 82
    goto :goto_70

    .line 90
    :sswitch_80
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9b

    move v0, v2

    .line 93
    .restart local v0       #_arg0:Z
    :goto_8c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setEnableNFC(Z)Z

    move-result v1

    .line 94
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v1, :cond_96

    move v3, v2

    :cond_96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_9b
    move v0, v3

    .line 92
    goto :goto_8c

    .line 100
    :sswitch_9d
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isNFCEnabled()Z

    move-result v1

    .line 102
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v1, :cond_ac

    move v3, v2

    :cond_ac
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 108
    .end local v1           #_result:Z
    :sswitch_b1
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cc

    move v0, v2

    .line 111
    .restart local v0       #_arg0:Z
    :goto_bd
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setSdCardState(Z)Z

    move-result v1

    .line 112
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v1, :cond_c7

    move v3, v2

    :cond_c7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_cc
    move v0, v3

    .line 110
    goto :goto_bd

    .line 118
    :sswitch_ce
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isSdCardEnabled()Z

    move-result v1

    .line 120
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_dd

    move v3, v2

    :cond_dd
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 126
    .end local v1           #_result:Z
    :sswitch_e2
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fd

    move v0, v2

    .line 129
    .restart local v0       #_arg0:Z
    :goto_ee
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setBluetoothTethering(Z)Z

    move-result v1

    .line 130
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v1, :cond_f8

    move v3, v2

    :cond_f8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_fd
    move v0, v3

    .line 128
    goto :goto_ee

    .line 136
    :sswitch_ff
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isBluetoothTetheringEnabled()Z

    move-result v1

    .line 138
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v1, :cond_10e

    move v3, v2

    :cond_10e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 144
    .end local v1           #_result:Z
    :sswitch_113
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12e

    move v0, v2

    .line 147
    .restart local v0       #_arg0:Z
    :goto_11f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbTethering(Z)Z

    move-result v1

    .line 148
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v1, :cond_129

    move v3, v2

    :cond_129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_12e
    move v0, v3

    .line 146
    goto :goto_11f

    .line 154
    :sswitch_130
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbTetheringEnabled()Z

    move-result v1

    .line 156
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v1, :cond_13f

    move v3, v2

    :cond_13f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v1           #_result:Z
    :sswitch_144
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15f

    move v0, v2

    .line 165
    .restart local v0       #_arg0:Z
    :goto_150
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setWifiTethering(Z)Z

    move-result v1

    .line 166
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v1, :cond_15a

    move v3, v2

    :cond_15a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_15f
    move v0, v3

    .line 164
    goto :goto_150

    .line 172
    :sswitch_161
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isWifiTetheringEnabled()Z

    move-result v1

    .line 174
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v1, :cond_170

    move v3, v2

    :cond_170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 180
    .end local v1           #_result:Z
    :sswitch_175
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_190

    move v0, v2

    .line 183
    .restart local v0       #_arg0:Z
    :goto_181
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setTethering(Z)Z

    move-result v1

    .line 184
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v1, :cond_18b

    move v3, v2

    :cond_18b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_190
    move v0, v3

    .line 182
    goto :goto_181

    .line 190
    :sswitch_192
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isTetheringEnabled()Z

    move-result v1

    .line 192
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v1, :cond_1a1

    move v3, v2

    :cond_1a1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 198
    .end local v1           #_result:Z
    :sswitch_1a6
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c1

    move v0, v2

    .line 201
    .restart local v0       #_arg0:Z
    :goto_1b2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbDebuggingEnabled(Z)Z

    move-result v1

    .line 202
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v1, :cond_1bc

    move v3, v2

    :cond_1bc
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_1c1
    move v0, v3

    .line 200
    goto :goto_1b2

    .line 208
    :sswitch_1c3
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbDebuggingEnabled()Z

    move-result v1

    .line 210
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v1, :cond_1d2

    move v3, v2

    :cond_1d2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 216
    .end local v1           #_result:Z
    :sswitch_1d7
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f2

    move v0, v2

    .line 219
    .restart local v0       #_arg0:Z
    :goto_1e3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbMassStorage(Z)Z

    move-result v1

    .line 220
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v1, :cond_1ed

    move v3, v2

    :cond_1ed
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_1f2
    move v0, v3

    .line 218
    goto :goto_1e3

    .line 226
    :sswitch_1f4
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20f

    move v0, v2

    .line 229
    .restart local v0       #_arg0:Z
    :goto_200
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbMassStorageEnabled(Z)Z

    move-result v1

    .line 230
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v1, :cond_20a

    move v3, v2

    :cond_20a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_20f
    move v0, v3

    .line 228
    goto :goto_200

    .line 236
    :sswitch_211
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22c

    move v0, v2

    .line 239
    .restart local v0       #_arg0:Z
    :goto_21d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbKiesAvailability(Z)Z

    move-result v1

    .line 240
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v1, :cond_227

    move v3, v2

    :cond_227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_22c
    move v0, v3

    .line 238
    goto :goto_21d

    .line 246
    :sswitch_22e
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_249

    move v0, v2

    .line 249
    .restart local v0       #_arg0:Z
    :goto_23a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbKiesAvailable(Z)Z

    move-result v1

    .line 250
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v1, :cond_244

    move v3, v2

    :cond_244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_249
    move v0, v3

    .line 248
    goto :goto_23a

    .line 256
    :sswitch_24b
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_266

    move v0, v2

    .line 259
    .restart local v0       #_arg0:Z
    :goto_257
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setUsbMediaPlayerAvailability(Z)Z

    move-result v1

    .line 260
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v1, :cond_261

    move v3, v2

    :cond_261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_266
    move v0, v3

    .line 258
    goto :goto_257

    .line 266
    :sswitch_268
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_283

    move v0, v2

    .line 269
    .restart local v0       #_arg0:Z
    :goto_274
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isUsbMediaPlayerAvailable(Z)Z

    move-result v1

    .line 270
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v1, :cond_27e

    move v3, v2

    :cond_27e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_283
    move v0, v3

    .line 268
    goto :goto_274

    .line 276
    :sswitch_285
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a0

    move v0, v2

    .line 279
    .restart local v0       #_arg0:Z
    :goto_291
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setScreenCapture(Z)Z

    move-result v1

    .line 280
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v1, :cond_29b

    move v3, v2

    :cond_29b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_2a0
    move v0, v3

    .line 278
    goto :goto_291

    .line 286
    :sswitch_2a2
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2bd

    move v0, v2

    .line 289
    .restart local v0       #_arg0:Z
    :goto_2ae
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isScreenCaptureEnabled(Z)Z

    move-result v1

    .line 290
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v1, :cond_2b8

    move v3, v2

    :cond_2b8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_2bd
    move v0, v3

    .line 288
    goto :goto_2ae

    .line 296
    :sswitch_2bf
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2da

    move v0, v2

    .line 299
    .restart local v0       #_arg0:Z
    :goto_2cb
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setMockLocation(Z)Z

    move-result v1

    .line 300
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v1, :cond_2d5

    move v3, v2

    :cond_2d5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_2da
    move v0, v3

    .line 298
    goto :goto_2cb

    .line 306
    :sswitch_2dc
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isMockLocationEnabled()Z

    move-result v1

    .line 308
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v1, :cond_2eb

    move v3, v2

    :cond_2eb
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 314
    .end local v1           #_result:Z
    :sswitch_2f0
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30b

    move v0, v2

    .line 317
    .restart local v0       #_arg0:Z
    :goto_2fc
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setBackup(Z)Z

    move-result v1

    .line 318
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v1, :cond_306

    move v3, v2

    :cond_306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_30b
    move v0, v3

    .line 316
    goto :goto_2fc

    .line 324
    :sswitch_30d
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_328

    move v0, v2

    .line 327
    .restart local v0       #_arg0:Z
    :goto_319
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isBackupAllowed(Z)Z

    move-result v1

    .line 328
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v1, :cond_323

    move v3, v2

    :cond_323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_328
    move v0, v3

    .line 326
    goto :goto_319

    .line 334
    :sswitch_32a
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_345

    move v0, v2

    .line 337
    .restart local v0       #_arg0:Z
    :goto_336
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setClipboardEnabled(Z)Z

    move-result v1

    .line 338
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v1, :cond_340

    move v3, v2

    :cond_340
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_345
    move v0, v3

    .line 336
    goto :goto_336

    .line 344
    :sswitch_347
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_362

    move v0, v2

    .line 347
    .restart local v0       #_arg0:Z
    :goto_353
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isClipboardAllowed(Z)Z

    move-result v1

    .line 348
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v1, :cond_35d

    move v3, v2

    :cond_35d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_362
    move v0, v3

    .line 346
    goto :goto_353

    .line 354
    :sswitch_364
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37f

    move v0, v2

    .line 357
    .restart local v0       #_arg0:Z
    :goto_370
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->allowFactoryReset(Z)Z

    move-result v1

    .line 358
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v1, :cond_37a

    move v3, v2

    :cond_37a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_37f
    move v0, v3

    .line 356
    goto :goto_370

    .line 364
    :sswitch_381
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isFactoryResetAllowed()Z

    move-result v1

    .line 366
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v1, :cond_390

    move v3, v2

    :cond_390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 372
    .end local v1           #_result:Z
    :sswitch_395
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b0

    move v0, v2

    .line 375
    .restart local v0       #_arg0:Z
    :goto_3a1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setHomeKeyState(Z)Z

    move-result v1

    .line 376
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v1, :cond_3ab

    move v3, v2

    :cond_3ab
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_3b0
    move v0, v3

    .line 374
    goto :goto_3a1

    .line 382
    :sswitch_3b2
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isHomeKeyEnabled()Z

    move-result v1

    .line 384
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v1, :cond_3c1

    move v3, v2

    :cond_3c1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 390
    .end local v1           #_result:Z
    :sswitch_3c6
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e1

    move v0, v2

    .line 393
    .restart local v0       #_arg0:Z
    :goto_3d2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setBackgroundData(Z)Z

    move-result v1

    .line 394
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v1, :cond_3dc

    move v3, v2

    :cond_3dc
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_3e1
    move v0, v3

    .line 392
    goto :goto_3d2

    .line 400
    :sswitch_3e3
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isBackgroundDataEnabled()Z

    move-result v1

    .line 402
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v1, :cond_3f2

    move v3, v2

    :cond_3f2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 408
    .end local v1           #_result:Z
    :sswitch_3f7
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_412

    move v0, v2

    .line 411
    .restart local v0       #_arg0:Z
    :goto_403
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setCellularData(Z)Z

    move-result v1

    .line 412
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v1, :cond_40d

    move v3, v2

    :cond_40d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_412
    move v0, v3

    .line 410
    goto :goto_403

    .line 418
    :sswitch_414
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isCellularDataAllowed()Z

    move-result v1

    .line 420
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v1, :cond_423

    move v3, v2

    :cond_423
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 426
    .end local v1           #_result:Z
    :sswitch_428
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_443

    move v0, v2

    .line 429
    .restart local v0       #_arg0:Z
    :goto_434
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->allowSettingsChanges(Z)Z

    move-result v1

    .line 430
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v1, :cond_43e

    move v3, v2

    :cond_43e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_443
    move v0, v3

    .line 428
    goto :goto_434

    .line 436
    :sswitch_445
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_460

    move v0, v2

    .line 439
    .restart local v0       #_arg0:Z
    :goto_451
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isSettingsChangesAllowed(Z)Z

    move-result v1

    .line 440
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v1, :cond_45b

    move v3, v2

    :cond_45b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_460
    move v0, v3

    .line 438
    goto :goto_451

    .line 446
    :sswitch_462
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47d

    move v0, v2

    .line 449
    .restart local v0       #_arg0:Z
    :goto_46e
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->setAllowNonMarketApps(Z)Z

    move-result v1

    .line 450
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v1, :cond_478

    move v3, v2

    :cond_478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_47d
    move v0, v3

    .line 448
    goto :goto_46e

    .line 456
    :sswitch_47f
    const-string v4, "android.app.enterprise.IRestrictionPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->isNonMarketAppAllowed()Z

    move-result v1

    .line 458
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v1, :cond_48e

    move v3, v2

    :cond_48e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_494
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_48
        0x4 -> :sswitch_64
        0x5 -> :sswitch_80
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_ce
        0x9 -> :sswitch_e2
        0xa -> :sswitch_ff
        0xb -> :sswitch_113
        0xc -> :sswitch_130
        0xd -> :sswitch_144
        0xe -> :sswitch_161
        0xf -> :sswitch_175
        0x10 -> :sswitch_192
        0x11 -> :sswitch_1a6
        0x12 -> :sswitch_1c3
        0x13 -> :sswitch_1d7
        0x14 -> :sswitch_1f4
        0x15 -> :sswitch_211
        0x16 -> :sswitch_22e
        0x17 -> :sswitch_24b
        0x18 -> :sswitch_268
        0x19 -> :sswitch_285
        0x1a -> :sswitch_2a2
        0x1b -> :sswitch_2bf
        0x1c -> :sswitch_2dc
        0x1d -> :sswitch_2f0
        0x1e -> :sswitch_30d
        0x1f -> :sswitch_32a
        0x20 -> :sswitch_347
        0x21 -> :sswitch_364
        0x22 -> :sswitch_381
        0x23 -> :sswitch_395
        0x24 -> :sswitch_3b2
        0x25 -> :sswitch_3c6
        0x26 -> :sswitch_3e3
        0x27 -> :sswitch_3f7
        0x28 -> :sswitch_414
        0x29 -> :sswitch_428
        0x2a -> :sswitch_445
        0x2b -> :sswitch_462
        0x2c -> :sswitch_47f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
