.class public abstract Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;
.super Landroid/os/Binder;
.source "IPhoneInfoInterface.java"

# interfaces
.implements Lcom/samsungframeworks/internal/IPhoneInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/IPhoneInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsungframeworks.internal.IPhoneInfoInterface"

.field static final TRANSACTION_IsBluetoothEnabled:I = 0x49

.field static final TRANSACTION_IsCameraEnabled:I = 0x4a

.field static final TRANSACTION_IsEncryptDeviceEnabled:I = 0x4b

.field static final TRANSACTION_IsEncryptSDCardEnable:I = 0x4c

.field static final TRANSACTION_IsWiFiEnabled:I = 0x4d

.field static final TRANSACTION_SetDisableBluetooth:I = 0x4e

.field static final TRANSACTION_SetDisableCamera:I = 0x4f

.field static final TRANSACTION_SetDisableWifi:I = 0x50

.field static final TRANSACTION_SetEncryptDevice:I = 0x51

.field static final TRANSACTION_SetEncryptSDCard:I = 0x52

.field static final TRANSACTION_disableDataconnection:I = 0x39

.field static final TRANSACTION_disableScreenTimeout:I = 0x43

.field static final TRANSACTION_enableScreenTimeout:I = 0x44

.field static final TRANSACTION_getA_Key:I = 0x5

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x46

.field static final TRANSACTION_getCurrentSlot:I = 0x3a

.field static final TRANSACTION_getDSA_SERVER_IP:I = 0x16

.field static final TRANSACTION_getDSA_SERVER_PORT:I = 0x17

.field static final TRANSACTION_getDSA_SERVER_URL:I = 0x13

.field static final TRANSACTION_getDataProfile:I = 0x3c

.field static final TRANSACTION_getHTTPPD_PROXY_ADDR:I = 0x1a

.field static final TRANSACTION_getHTTPPD_PROXY_PORT:I = 0x1b

.field static final TRANSACTION_getMDN:I = 0x1

.field static final TRANSACTION_getMEID:I = 0x3

.field static final TRANSACTION_getMOBILESYNK_ENABLED:I = 0x12

.field static final TRANSACTION_getMSID:I = 0x2

.field static final TRANSACTION_getPDE_PRIMARY_IP:I = 0x14

.field static final TRANSACTION_getPDE_PRIMARY_PORT:I = 0x15

.field static final TRANSACTION_getPESUDO_ESN:I = 0x4

.field static final TRANSACTION_getRTSP_PROXY_ADDR:I = 0x18

.field static final TRANSACTION_getRTSP_PROXY_PORT:I = 0x19

.field static final TRANSACTION_getRoamingIndicator:I = 0x53

.field static final TRANSACTION_getSLOT_1_AAA_AUTH_ALGORITHM:I = 0xd

.field static final TRANSACTION_getSLOT_1_AAA_SPI:I = 0xe

.field static final TRANSACTION_getSLOT_1_HA_AUTH_ALGORITHM:I = 0xa

.field static final TRANSACTION_getSLOT_1_HA_PASSWORD:I = 0xc

.field static final TRANSACTION_getSLOT_1_HA_SPI:I = 0xb

.field static final TRANSACTION_getSLOT_1_MOBILE_IP_ADDRESS:I = 0x10

.field static final TRANSACTION_getSLOT_1_NAI:I = 0x6

.field static final TRANSACTION_getSLOT_1_NAI_PASSWORD:I = 0x7

.field static final TRANSACTION_getSLOT_1_PRIMARY_HA:I = 0x8

.field static final TRANSACTION_getSLOT_1_REVERSE_TUNNELING:I = 0xf

.field static final TRANSACTION_getSLOT_1_SECONDARY_HA:I = 0x9

.field static final TRANSACTION_getSetUpCompleted:I = 0x42

.field static final TRANSACTION_getUAPROF:I = 0x11

.field static final TRANSACTION_getVoiceMailCount:I = 0x47

.field static final TRANSACTION_getWORK_MODE:I = 0x1c

.field static final TRANSACTION_reboot:I = 0x45

.field static final TRANSACTION_release:I = 0x3e

.field static final TRANSACTION_releaseDSAProxy:I = 0x40

.field static final TRANSACTION_requestDataProfile:I = 0x3d

.field static final TRANSACTION_resetVoiceMailCount:I = 0x48

.field static final TRANSACTION_setA_Key:I = 0x21

.field static final TRANSACTION_setDSAProxy:I = 0x3f

.field static final TRANSACTION_setDSA_SERVER_IP:I = 0x32

.field static final TRANSACTION_setDSA_SERVER_PORT:I = 0x33

.field static final TRANSACTION_setDSA_SERVER_URL:I = 0x2f

.field static final TRANSACTION_setHTTPPD_PROXY_ADDR:I = 0x36

.field static final TRANSACTION_setHTTPPD_PROXY_PORT:I = 0x37

.field static final TRANSACTION_setMDN:I = 0x1d

.field static final TRANSACTION_setMEID:I = 0x1f

.field static final TRANSACTION_setMOBILESYNK_ENABLED:I = 0x2e

.field static final TRANSACTION_setMSID:I = 0x1e

.field static final TRANSACTION_setNetworkPreference:I = 0x3b

.field static final TRANSACTION_setPDE_PRIMARY_IP:I = 0x30

.field static final TRANSACTION_setPDE_PRIMARY_PORT:I = 0x31

.field static final TRANSACTION_setPESUDO_ESN:I = 0x20

.field static final TRANSACTION_setRTSP_PROXY_ADDR:I = 0x34

.field static final TRANSACTION_setRTSP_PROXY_PORT:I = 0x35

.field static final TRANSACTION_setSLOT_1_AAA_AUTH_ALGORITHM:I = 0x29

.field static final TRANSACTION_setSLOT_1_AAA_SPI:I = 0x2a

.field static final TRANSACTION_setSLOT_1_HA_AUTH_ALGORITHM:I = 0x26

.field static final TRANSACTION_setSLOT_1_HA_PASSWORD:I = 0x28

.field static final TRANSACTION_setSLOT_1_HA_SPI:I = 0x27

.field static final TRANSACTION_setSLOT_1_MOBILE_IP_ADDRESS:I = 0x2c

.field static final TRANSACTION_setSLOT_1_NAI:I = 0x22

.field static final TRANSACTION_setSLOT_1_NAI_PASSWORD:I = 0x23

.field static final TRANSACTION_setSLOT_1_PRIMARY_HA:I = 0x24

.field static final TRANSACTION_setSLOT_1_REVERSE_TUNNELING:I = 0x2b

.field static final TRANSACTION_setSLOT_1_SECONDARY_HA:I = 0x25

.field static final TRANSACTION_setSetUpCompleted:I = 0x41

.field static final TRANSACTION_setUAPROF:I = 0x2d

.field static final TRANSACTION_setWORK_MODE:I = 0x38


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;
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
    const-string v1, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_550

    .line 728
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMDN()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 55
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMSID()Ljava/lang/String;

    move-result-object v2

    .line 57
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 63
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMEID()Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 71
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPESUDO_ESN()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 79
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getA_Key()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 87
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_NAI()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 95
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_6f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_NAI_PASSWORD()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 103
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_7f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_PRIMARY_HA()Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 111
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_90
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_SECONDARY_HA()Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 119
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_a1
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 127
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_b2
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_SPI()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 135
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_c3
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_PASSWORD()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 143
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_d4
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_AAA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 151
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_e5
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_AAA_SPI()Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 159
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_f6
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_REVERSE_TUNNELING()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 167
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_107
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_MOBILE_IP_ADDRESS()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 175
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_118
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getUAPROF()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 183
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_129
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMOBILESYNK_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 191
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_13a
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_URL()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 199
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_14b
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPDE_PRIMARY_IP()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 207
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_15c
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPDE_PRIMARY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 215
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_16d
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_IP()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 223
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_17e
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_PORT()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 231
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_18f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRTSP_PROXY_ADDR()Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 239
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1a0
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRTSP_PROXY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 247
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1b1
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getHTTPPD_PROXY_ADDR()Ljava/lang/String;

    move-result-object v2

    .line 249
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 255
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1c2
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getHTTPPD_PROXY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 263
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1d3
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getWORK_MODE()Ljava/lang/String;

    move-result-object v2

    .line 265
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 271
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1e4
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMDN(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 280
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1f5
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMSID(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 289
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_206
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMEID(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 298
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_217
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPESUDO_ESN(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 307
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_228
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setA_Key(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 316
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_239
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_NAI(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 325
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24a
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_NAI_PASSWORD(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 334
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_25b
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_PRIMARY_HA(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 343
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_26c
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_SECONDARY_HA(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 352
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_27d
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_AUTH_ALGORITHM(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 361
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_28e
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_SPI(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 370
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_29f
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_PASSWORD(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 379
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2b0
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_AAA_AUTH_ALGORITHM(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 388
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2c1
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_AAA_SPI(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 397
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2d2
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_REVERSE_TUNNELING(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 406
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2e3
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_MOBILE_IP_ADDRESS(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 415
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2f4
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setUAPROF(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 424
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_305
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMOBILESYNK_ENABLED(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 433
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_316
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_URL(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 442
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_327
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPDE_PRIMARY_IP(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 451
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_338
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPDE_PRIMARY_PORT(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 460
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_349
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_IP(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 469
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_35a
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_PORT(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 478
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_36b
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setRTSP_PROXY_ADDR(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 487
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_37c
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setRTSP_PROXY_PORT(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 496
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_38d
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setHTTPPD_PROXY_ADDR(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 505
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_39e
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setHTTPPD_PROXY_PORT(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 514
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3af
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setWORK_MODE(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 523
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3c0
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->disableDataconnection()V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 530
    :sswitch_3cd
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getCurrentSlot()I

    move-result v2

    .line 532
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 538
    .end local v2           #_result:I
    :sswitch_3de
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 541
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setNetworkPreference(I)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 547
    .end local v0           #_arg0:I
    :sswitch_3ef
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDataProfile()I

    move-result v2

    .line 549
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 555
    .end local v2           #_result:I
    :sswitch_400
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 558
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->requestDataProfile(I)I

    move-result v2

    .line 559
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 565
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_415
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->release()V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 572
    :sswitch_422
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSAProxy(Ljava/lang/String;I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 583
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_437
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->releaseDSAProxy()V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 590
    :sswitch_444
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 593
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSetUpCompleted(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 599
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_455
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSetUpCompleted()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 607
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_466
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->disableScreenTimeout()V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 614
    :sswitch_473
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->enableScreenTimeout()V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 621
    :sswitch_480
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->reboot()V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 628
    :sswitch_48d
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    .line 630
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 636
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_49e
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getVoiceMailCount()I

    move-result v2

    .line 638
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 644
    .end local v2           #_result:I
    :sswitch_4af
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->resetVoiceMailCount()V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 651
    :sswitch_4bc
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->IsBluetoothEnabled()V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 658
    :sswitch_4c9
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->IsCameraEnabled()V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 665
    :sswitch_4d6
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->IsEncryptDeviceEnabled()V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 672
    :sswitch_4e3
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->IsEncryptSDCardEnable()V

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 679
    :sswitch_4f0
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->IsWiFiEnabled()V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 686
    :sswitch_4fd
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->SetDisableBluetooth()V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 693
    :sswitch_50a
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->SetDisableCamera()V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 700
    :sswitch_517
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->SetDisableWifi()V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 707
    :sswitch_524
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->SetEncryptDevice()V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 714
    :sswitch_531
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->SetEncryptSDCard()V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 721
    :sswitch_53e
    const-string v4, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRoamingIndicator()I

    move-result v2

    .line 723
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 38
    nop

    :sswitch_data_550
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_4f
        0x6 -> :sswitch_5f
        0x7 -> :sswitch_6f
        0x8 -> :sswitch_7f
        0x9 -> :sswitch_90
        0xa -> :sswitch_a1
        0xb -> :sswitch_b2
        0xc -> :sswitch_c3
        0xd -> :sswitch_d4
        0xe -> :sswitch_e5
        0xf -> :sswitch_f6
        0x10 -> :sswitch_107
        0x11 -> :sswitch_118
        0x12 -> :sswitch_129
        0x13 -> :sswitch_13a
        0x14 -> :sswitch_14b
        0x15 -> :sswitch_15c
        0x16 -> :sswitch_16d
        0x17 -> :sswitch_17e
        0x18 -> :sswitch_18f
        0x19 -> :sswitch_1a0
        0x1a -> :sswitch_1b1
        0x1b -> :sswitch_1c2
        0x1c -> :sswitch_1d3
        0x1d -> :sswitch_1e4
        0x1e -> :sswitch_1f5
        0x1f -> :sswitch_206
        0x20 -> :sswitch_217
        0x21 -> :sswitch_228
        0x22 -> :sswitch_239
        0x23 -> :sswitch_24a
        0x24 -> :sswitch_25b
        0x25 -> :sswitch_26c
        0x26 -> :sswitch_27d
        0x27 -> :sswitch_28e
        0x28 -> :sswitch_29f
        0x29 -> :sswitch_2b0
        0x2a -> :sswitch_2c1
        0x2b -> :sswitch_2d2
        0x2c -> :sswitch_2e3
        0x2d -> :sswitch_2f4
        0x2e -> :sswitch_305
        0x2f -> :sswitch_316
        0x30 -> :sswitch_327
        0x31 -> :sswitch_338
        0x32 -> :sswitch_349
        0x33 -> :sswitch_35a
        0x34 -> :sswitch_36b
        0x35 -> :sswitch_37c
        0x36 -> :sswitch_38d
        0x37 -> :sswitch_39e
        0x38 -> :sswitch_3af
        0x39 -> :sswitch_3c0
        0x3a -> :sswitch_3cd
        0x3b -> :sswitch_3de
        0x3c -> :sswitch_3ef
        0x3d -> :sswitch_400
        0x3e -> :sswitch_415
        0x3f -> :sswitch_422
        0x40 -> :sswitch_437
        0x41 -> :sswitch_444
        0x42 -> :sswitch_455
        0x43 -> :sswitch_466
        0x44 -> :sswitch_473
        0x45 -> :sswitch_480
        0x46 -> :sswitch_48d
        0x47 -> :sswitch_49e
        0x48 -> :sswitch_4af
        0x49 -> :sswitch_4bc
        0x4a -> :sswitch_4c9
        0x4b -> :sswitch_4d6
        0x4c -> :sswitch_4e3
        0x4d -> :sswitch_4f0
        0x4e -> :sswitch_4fd
        0x4f -> :sswitch_50a
        0x50 -> :sswitch_517
        0x51 -> :sswitch_524
        0x52 -> :sswitch_531
        0x53 -> :sswitch_53e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
