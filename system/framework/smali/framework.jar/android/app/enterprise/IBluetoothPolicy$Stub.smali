.class public abstract Landroid/app/enterprise/IBluetoothPolicy$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IBluetoothPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IBluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IBluetoothPolicy"

.field static final TRANSACTION_allowBluetooth:I = 0x4

.field static final TRANSACTION_allowOutgoingCalls:I = 0x8

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x2

.field static final TRANSACTION_isBluetoothEnabled:I = 0x5

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x11

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0xb

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0x9

.field static final TRANSACTION_isPairingEnabled:I = 0x7

.field static final TRANSACTION_isProfileEnabled:I = 0xd

.field static final TRANSACTION_setAllowBluetoothDataTransfer:I = 0x1

.field static final TRANSACTION_setBluetooth:I = 0x3

.field static final TRANSACTION_setDesktopConnectivityState:I = 0x10

.field static final TRANSACTION_setDiscoverableState:I = 0xe

.field static final TRANSACTION_setLimitedDiscoverableState:I = 0xa

.field static final TRANSACTION_setPairingState:I = 0x6

.field static final TRANSACTION_setProfileState:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;
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
    const-string v1, "android.app.enterprise.IBluetoothPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/app/enterprise/IBluetoothPolicy;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_1b8

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v4, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    move v0, v3

    .line 53
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setAllowBluetoothDataTransfer(Z)Z

    move-result v2

    .line 54
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_26

    move v4, v3

    :cond_26
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_2a
    move v0, v4

    .line 52
    goto :goto_1c

    .line 60
    :sswitch_2c
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getAllowBluetoothDataTransfer()Z

    move-result v2

    .line 62
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v2, :cond_3b

    move v4, v3

    :cond_3b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v2           #_result:Z
    :sswitch_3f
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    move v0, v3

    .line 71
    .restart local v0       #_arg0:Z
    :goto_4b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setBluetooth(Z)Z

    move-result v2

    .line 72
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_55

    move v4, v3

    :cond_55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_59
    move v0, v4

    .line 70
    goto :goto_4b

    .line 78
    :sswitch_5b
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_75

    move v0, v3

    .line 81
    .restart local v0       #_arg0:Z
    :goto_67
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->allowBluetooth(Z)Z

    move-result v2

    .line 82
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_71

    move v4, v3

    :cond_71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_75
    move v0, v4

    .line 80
    goto :goto_67

    .line 88
    :sswitch_77
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothEnabled()Z

    move-result v2

    .line 90
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_86

    move v4, v3

    :cond_86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v2           #_result:Z
    :sswitch_8a
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a5

    move v0, v3

    .line 99
    .restart local v0       #_arg0:Z
    :goto_96
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setPairingState(Z)Z

    move-result v2

    .line 100
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_a0

    move v4, v3

    :cond_a0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_a5
    move v0, v4

    .line 98
    goto :goto_96

    .line 106
    :sswitch_a7
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isPairingEnabled()Z

    move-result v2

    .line 108
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_b6

    move v4, v3

    :cond_b6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 114
    .end local v2           #_result:Z
    :sswitch_bb
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d6

    move v0, v3

    .line 117
    .restart local v0       #_arg0:Z
    :goto_c7
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->allowOutgoingCalls(Z)Z

    move-result v2

    .line 118
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_d1

    move v4, v3

    :cond_d1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_d6
    move v0, v4

    .line 116
    goto :goto_c7

    .line 124
    :sswitch_d8
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isOutgoingCallsAllowed()Z

    move-result v2

    .line 126
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_e7

    move v4, v3

    :cond_e7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 132
    .end local v2           #_result:Z
    :sswitch_ec
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_107

    move v0, v3

    .line 135
    .restart local v0       #_arg0:Z
    :goto_f8
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setLimitedDiscoverableState(Z)Z

    move-result v2

    .line 136
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_102

    move v4, v3

    :cond_102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_107
    move v0, v4

    .line 134
    goto :goto_f8

    .line 142
    :sswitch_109
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v2

    .line 144
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v2, :cond_118

    move v4, v3

    :cond_118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 150
    .end local v2           #_result:Z
    :sswitch_11d
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13c

    move v0, v3

    .line 154
    .restart local v0       #_arg0:Z
    :goto_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setProfileState(ZI)Z

    move-result v2

    .line 156
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_137

    move v4, v3

    :cond_137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_13c
    move v0, v4

    .line 152
    goto :goto_129

    .line 162
    :sswitch_13e
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isProfileEnabled(I)Z

    move-result v2

    .line 166
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v2, :cond_151

    move v4, v3

    :cond_151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 172
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_156
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_171

    move v0, v3

    .line 175
    .local v0, _arg0:Z
    :goto_162
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setDiscoverableState(Z)Z

    move-result v2

    .line 176
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v2, :cond_16c

    move v4, v3

    :cond_16c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_171
    move v0, v4

    .line 174
    goto :goto_162

    .line 182
    :sswitch_173
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isDiscoverableEnabled()Z

    move-result v2

    .line 184
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v2, :cond_182

    move v4, v3

    :cond_182
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 190
    .end local v2           #_result:Z
    :sswitch_187
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a2

    move v0, v3

    .line 193
    .restart local v0       #_arg0:Z
    :goto_193
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setDesktopConnectivityState(Z)Z

    move-result v2

    .line 194
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v2, :cond_19d

    move v4, v3

    :cond_19d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_1a2
    move v0, v4

    .line 192
    goto :goto_193

    .line 200
    :sswitch_1a4
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v2

    .line 202
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v2, :cond_1b3

    move v4, v3

    :cond_1b3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    :sswitch_data_1b8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_77
        0x6 -> :sswitch_8a
        0x7 -> :sswitch_a7
        0x8 -> :sswitch_bb
        0x9 -> :sswitch_d8
        0xa -> :sswitch_ec
        0xb -> :sswitch_109
        0xc -> :sswitch_11d
        0xd -> :sswitch_13e
        0xe -> :sswitch_156
        0xf -> :sswitch_173
        0x10 -> :sswitch_187
        0x11 -> :sswitch_1a4
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
