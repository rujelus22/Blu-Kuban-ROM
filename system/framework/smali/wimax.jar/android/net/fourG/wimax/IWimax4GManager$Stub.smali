.class public abstract Landroid/net/fourG/wimax/IWimax4GManager$Stub;
.super Landroid/os/Binder;
.source "IWimax4GManager.java"

# interfaces
.implements Landroid/net/fourG/wimax/IWimax4GManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/IWimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/IWimax4GManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.fourG.wimax.IWimax4GManager"

.field static final TRANSACTION_OdbAddReq:I = 0x27

.field static final TRANSACTION_OdbDeleteReq:I = 0x28

.field static final TRANSACTION_OdbReadReq:I = 0x24

.field static final TRANSACTION_OdbUpdateReq:I = 0x26

.field static final TRANSACTION_OdbWriteReq:I = 0x25

.field static final TRANSACTION_acquireLock:I = 0xd

.field static final TRANSACTION_acquireMulticastLock:I = 0xe

.field static final TRANSACTION_calWiMAXThroughput:I = 0x2e

.field static final TRANSACTION_calculateSignalLevel:I = 0x2d

.field static final TRANSACTION_checkUSBstate:I = 0x21

.field static final TRANSACTION_connect:I = 0x1d

.field static final TRANSACTION_createConnectionStatistics:I = 0x4

.field static final TRANSACTION_deleteStaticIP:I = 0x2c

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_enableLogLevel:I = 0x33

.field static final TRANSACTION_get4GState:I = 0x9

.field static final TRANSACTION_getAvailableNetworks:I = 0x7

.field static final TRANSACTION_getConnectedNSP:I = 0x22

.field static final TRANSACTION_getConnectionInfo:I = 0x10

.field static final TRANSACTION_getDeviceInformation:I = 0x5

.field static final TRANSACTION_getDhcpInfo:I = 0x6

.field static final TRANSACTION_getMaxTemperature:I = 0x30

.field static final TRANSACTION_getMinTemperature:I = 0x2f

.field static final TRANSACTION_getMruList:I = 0x17

.field static final TRANSACTION_getMruListRsp:I = 0x18

.field static final TRANSACTION_getMruUpdate:I = 0x19

.field static final TRANSACTION_getNeighborList:I = 0x12

.field static final TRANSACTION_getNetworkEntryCompleteTimes:I = 0x11

.field static final TRANSACTION_getPersistedWimaxEnabled:I = 0x1b

.field static final TRANSACTION_getRadioInfoTemperature:I = 0x13

.field static final TRANSACTION_getRadioInfoTemperatureResponse:I = 0x14

.field static final TRANSACTION_getWimaxMode:I = 0x1f

.field static final TRANSACTION_getWimaxState:I = 0xa

.field static final TRANSACTION_getWimaxStateDetail:I = 0xb

.field static final TRANSACTION_getWorkModeState:I = 0x15

.field static final TRANSACTION_isDataDisabledExternally:I = 0x36

.field static final TRANSACTION_isRoamingEnabled:I = 0x35

.field static final TRANSACTION_makeOdbTlvData:I = 0x23

.field static final TRANSACTION_readStaticIP:I = 0x2b

.field static final TRANSACTION_reassociate:I = 0x3

.field static final TRANSACTION_reconnect:I = 0x2

.field static final TRANSACTION_releaseLock:I = 0xc

.field static final TRANSACTION_releaseMulticastLock:I = 0xf

.field static final TRANSACTION_saveStaticIP:I = 0x2a

.field static final TRANSACTION_set4GEnabled:I = 0x8

.field static final TRANSACTION_setFactoryDefault:I = 0x29

.field static final TRANSACTION_setMaxTemperature:I = 0x32

.field static final TRANSACTION_setMinTemperature:I = 0x31

.field static final TRANSACTION_setMruWorking:I = 0x1a

.field static final TRANSACTION_setRoamingEnabled:I = 0x34

.field static final TRANSACTION_setWimaxMode:I = 0x20

.field static final TRANSACTION_setWimaxStatus:I = 0x1c

.field static final TRANSACTION_setWorkModeState:I = 0x16

.field static final TRANSACTION_startScan:I = 0x1e


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/fourG/wimax/IWimax4GManager;
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
    const-string v1, "android.net.fourG.wimax.IWimax4GManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/fourG/wimax/IWimax4GManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/net/fourG/wimax/IWimax4GManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/net/fourG/wimax/IWimax4GManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    .line 43
    sparse-switch p1, :sswitch_data_52e

    .line 605
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 47
    :sswitch_8
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_7

    .line 52
    :sswitch_f
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->disconnect()Z

    move-result v7

    .line 54
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v7, :cond_23

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v0, 0x1

    goto :goto_7

    .line 55
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e

    .line 60
    .end local v7           #_result:Z
    :sswitch_25
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->reconnect()Z

    move-result v7

    .line 62
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v7, :cond_39

    const/4 v0, 0x1

    :goto_34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v0, 0x1

    goto :goto_7

    .line 63
    :cond_39
    const/4 v0, 0x0

    goto :goto_34

    .line 68
    .end local v7           #_result:Z
    :sswitch_3b
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->reassociate()Z

    move-result v7

    .line 70
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v7, :cond_4f

    const/4 v0, 0x1

    :goto_4a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v0, 0x1

    goto :goto_7

    .line 71
    :cond_4f
    const/4 v0, 0x0

    goto :goto_4a

    .line 76
    .end local v7           #_result:Z
    :sswitch_51
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->createConnectionStatistics()Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    move-result-object v7

    .line 78
    .local v7, _result:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v7, :cond_69

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    :goto_67
    const/4 v0, 0x1

    goto :goto_7

    .line 84
    :cond_69
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    .line 90
    .end local v7           #_result:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    :sswitch_6e
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v7

    .line 92
    .local v7, _result:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v7, :cond_86

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    :goto_84
    const/4 v0, 0x1

    goto :goto_7

    .line 98
    :cond_86
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_84

    .line 104
    .end local v7           #_result:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    :sswitch_8b
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v7

    .line 106
    .local v7, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v7, :cond_a4

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    :goto_a1
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 112
    :cond_a4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a1

    .line 118
    .end local v7           #_result:Landroid/net/DhcpInfo;
    :sswitch_a9
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getAvailableNetworks()Ljava/util/List;

    move-result-object v9

    .line 120
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 126
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GConfiguration;>;"
    :sswitch_bb
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d7

    const/4 v1, 0x1

    .line 129
    .local v1, _arg0:Z
    :goto_c7
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->set4GEnabled(Z)Z

    move-result v7

    .line 130
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v7, :cond_d9

    const/4 v0, 0x1

    :goto_d1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 128
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_d7
    const/4 v1, 0x0

    goto :goto_c7

    .line 131
    .restart local v1       #_arg0:Z
    .restart local v7       #_result:Z
    :cond_d9
    const/4 v0, 0x0

    goto :goto_d1

    .line 136
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :sswitch_db
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->get4GState()I

    move-result v7

    .line 138
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 144
    .end local v7           #_result:I
    :sswitch_ed
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v7

    .line 146
    .local v7, _result:Landroid/net/fourG/wimax/WimaxState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v7, :cond_106

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/fourG/wimax/WimaxState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_103
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 152
    :cond_106
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_103

    .line 158
    .end local v7           #_result:Landroid/net/fourG/wimax/WimaxState;
    :sswitch_10b
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getWimaxStateDetail()I

    move-result v7

    .line 160
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 166
    .end local v7           #_result:I
    :sswitch_11d
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 169
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->releaseLock(Landroid/os/IBinder;)Z

    move-result v7

    .line 170
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v7, :cond_136

    const/4 v0, 0x1

    :goto_130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 171
    :cond_136
    const/4 v0, 0x0

    goto :goto_130

    .line 176
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v7           #_result:Z
    :sswitch_138
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 180
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->acquireLock(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v7

    .line 184
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v7, :cond_159

    const/4 v0, 0x1

    :goto_153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 185
    :cond_159
    const/4 v0, 0x0

    goto :goto_153

    .line 190
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_15b
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 194
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 201
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_171
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->releaseMulticastLock()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 208
    :sswitch_17f
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v7

    .line 210
    .local v7, _result:Landroid/net/fourG/wimax/Wimax4GInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v7, :cond_198

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    :goto_195
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 216
    :cond_198
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_195

    .line 222
    .end local v7           #_result:Landroid/net/fourG/wimax/Wimax4GInfo;
    :sswitch_19d
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getNetworkEntryCompleteTimes()[I

    move-result-object v7

    .line 224
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 230
    .end local v7           #_result:[I
    :sswitch_1af
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getNeighborList()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 237
    :sswitch_1bd
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getRadioInfoTemperature()V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 244
    :sswitch_1cb
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getRadioInfoTemperatureResponse()Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    move-result-object v7

    .line 246
    .local v7, _result:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v7, :cond_1e4

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->writeToParcel(Landroid/os/Parcel;I)V

    .line 254
    :goto_1e1
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 252
    :cond_1e4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e1

    .line 258
    .end local v7           #_result:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    :sswitch_1e9
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getWorkModeState()I

    move-result v7

    .line 260
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 266
    .end local v7           #_result:I
    :sswitch_1fb
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setWorkModeState(I)Z

    move-result v7

    .line 270
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v7, :cond_214

    const/4 v0, 0x1

    :goto_20e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 271
    :cond_214
    const/4 v0, 0x0

    goto :goto_20e

    .line 276
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_216
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getMruList()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 283
    :sswitch_224
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getMruListRsp()Ljava/util/List;

    move-result-object v8

    .line 285
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/MruList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 291
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/MruList;>;"
    :sswitch_236
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getMruUpdate(Ljava/lang/String;I)Z

    move-result v7

    .line 297
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v7, :cond_253

    const/4 v0, 0x1

    :goto_24d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 298
    :cond_253
    const/4 v0, 0x0

    goto :goto_24d

    .line 303
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v7           #_result:Z
    :sswitch_255
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26a

    const/4 v1, 0x1

    .line 306
    .local v1, _arg0:Z
    :goto_261
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setMruWorking(Z)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 305
    .end local v1           #_arg0:Z
    :cond_26a
    const/4 v1, 0x0

    goto :goto_261

    .line 312
    :sswitch_26c
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getPersistedWimaxEnabled()Z

    move-result v7

    .line 314
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v7, :cond_281

    const/4 v0, 0x1

    :goto_27b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 315
    :cond_281
    const/4 v0, 0x0

    goto :goto_27b

    .line 320
    .end local v7           #_result:Z
    :sswitch_283
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setWimaxStatus(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 329
    .end local v1           #_arg0:I
    :sswitch_295
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 339
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 345
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_2b7
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d3

    const/4 v1, 0x1

    .line 348
    .local v1, _arg0:Z
    :goto_2c3
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->startScan(Z)Z

    move-result v7

    .line 349
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v7, :cond_2d5

    const/4 v0, 0x1

    :goto_2cd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 347
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_2d3
    const/4 v1, 0x0

    goto :goto_2c3

    .line 350
    .restart local v1       #_arg0:Z
    .restart local v7       #_result:Z
    :cond_2d5
    const/4 v0, 0x0

    goto :goto_2cd

    .line 355
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :sswitch_2d7
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getWimaxMode()I

    move-result v7

    .line 357
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 363
    .end local v7           #_result:I
    :sswitch_2e9
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_306

    const/4 v2, 0x1

    .line 368
    .local v2, _arg1:Z
    :goto_2f9
    invoke-virtual {p0, v1, v2}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setWimaxMode(IZ)I

    move-result v7

    .line 369
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 367
    .end local v2           #_arg1:Z
    .end local v7           #_result:I
    :cond_306
    const/4 v2, 0x0

    goto :goto_2f9

    .line 375
    .end local v1           #_arg0:I
    :sswitch_308
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->checkUSBstate()Z

    move-result v7

    .line 377
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v7, :cond_31d

    const/4 v0, 0x1

    :goto_317
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 378
    :cond_31d
    const/4 v0, 0x0

    goto :goto_317

    .line 383
    .end local v7           #_result:Z
    :sswitch_31f
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v7

    .line 385
    .local v7, _result:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v7, :cond_338

    .line 387
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    :goto_335
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 391
    :cond_338
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_335

    .line 397
    .end local v7           #_result:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    :sswitch_33d
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 401
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 405
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 407
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 409
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, _arg5:[B
    move-object v0, p0

    .line 410
    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->makeOdbTlvData([BIIII[B)I

    move-result v7

    .line 411
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 414
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 418
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:[B
    .end local v7           #_result:I
    :sswitch_36b
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 421
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->OdbReadReq([B)I

    move-result v7

    .line 422
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 428
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_381
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 431
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->OdbWriteReq([B)I

    move-result v7

    .line 432
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 438
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_397
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->OdbUpdateReq()I

    move-result v7

    .line 440
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 446
    .end local v7           #_result:I
    :sswitch_3a9
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 449
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->OdbAddReq([B)I

    move-result v7

    .line 450
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 456
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_3bf
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 459
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->OdbDeleteReq([B)I

    move-result v7

    .line 460
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 466
    .end local v1           #_arg0:[B
    .end local v7           #_result:I
    :sswitch_3d5
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setFactoryDefault(I)Z

    move-result v7

    .line 470
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v7, :cond_3ee

    const/4 v0, 0x1

    :goto_3e8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 471
    :cond_3ee
    const/4 v0, 0x0

    goto :goto_3e8

    .line 476
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_3f0
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 487
    invoke-virtual/range {v0 .. v5}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 488
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 494
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_417
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->readStaticIP(I)Ljava/lang/String;

    move-result-object v7

    .line 498
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 504
    .end local v1           #_arg0:I
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_42d
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->deleteStaticIP()I

    move-result v7

    .line 506
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 512
    .end local v7           #_result:I
    :sswitch_43f
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 519
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->calculateSignalLevel(III)I

    move-result v7

    .line 520
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 526
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v7           #_result:I
    :sswitch_45d
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_472

    const/4 v1, 0x1

    .line 529
    .local v1, _arg0:Z
    :goto_469
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->calWiMAXThroughput(Z)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 528
    .end local v1           #_arg0:Z
    :cond_472
    const/4 v1, 0x0

    goto :goto_469

    .line 535
    :sswitch_474
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getMinTemperature()I

    move-result v7

    .line 537
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 543
    .end local v7           #_result:I
    :sswitch_486
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->getMaxTemperature()I

    move-result v7

    .line 545
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 551
    .end local v7           #_result:I
    :sswitch_498
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setMinTemperature(I)Z

    move-result v7

    .line 555
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v7, :cond_4b1

    const/4 v0, 0x1

    :goto_4ab
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 556
    :cond_4b1
    const/4 v0, 0x0

    goto :goto_4ab

    .line 561
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_4b3
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 564
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setMaxTemperature(I)Z

    move-result v7

    .line 565
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v7, :cond_4cc

    const/4 v0, 0x1

    :goto_4c6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 566
    :cond_4cc
    const/4 v0, 0x0

    goto :goto_4c6

    .line 571
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_4ce
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->enableLogLevel(I)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 580
    .end local v1           #_arg0:I
    :sswitch_4e0
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4fc

    const/4 v1, 0x1

    .line 583
    .local v1, _arg0:Z
    :goto_4ec
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->setRoamingEnabled(Z)Z

    move-result v7

    .line 584
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v7, :cond_4fe

    const/4 v0, 0x1

    :goto_4f6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 582
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_4fc
    const/4 v1, 0x0

    goto :goto_4ec

    .line 585
    .restart local v1       #_arg0:Z
    .restart local v7       #_result:Z
    :cond_4fe
    const/4 v0, 0x0

    goto :goto_4f6

    .line 590
    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :sswitch_500
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->isRoamingEnabled()Z

    move-result v7

    .line 592
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    if-eqz v7, :cond_515

    const/4 v0, 0x1

    :goto_50f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 593
    :cond_515
    const/4 v0, 0x0

    goto :goto_50f

    .line 598
    .end local v7           #_result:Z
    :sswitch_517
    const-string v0, "android.net.fourG.wimax.IWimax4GManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->isDataDisabledExternally()Z

    move-result v7

    .line 600
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v7, :cond_52c

    const/4 v0, 0x1

    :goto_526
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 601
    :cond_52c
    const/4 v0, 0x0

    goto :goto_526

    .line 43
    :sswitch_data_52e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_51
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_8b
        0x7 -> :sswitch_a9
        0x8 -> :sswitch_bb
        0x9 -> :sswitch_db
        0xa -> :sswitch_ed
        0xb -> :sswitch_10b
        0xc -> :sswitch_11d
        0xd -> :sswitch_138
        0xe -> :sswitch_15b
        0xf -> :sswitch_171
        0x10 -> :sswitch_17f
        0x11 -> :sswitch_19d
        0x12 -> :sswitch_1af
        0x13 -> :sswitch_1bd
        0x14 -> :sswitch_1cb
        0x15 -> :sswitch_1e9
        0x16 -> :sswitch_1fb
        0x17 -> :sswitch_216
        0x18 -> :sswitch_224
        0x19 -> :sswitch_236
        0x1a -> :sswitch_255
        0x1b -> :sswitch_26c
        0x1c -> :sswitch_283
        0x1d -> :sswitch_295
        0x1e -> :sswitch_2b7
        0x1f -> :sswitch_2d7
        0x20 -> :sswitch_2e9
        0x21 -> :sswitch_308
        0x22 -> :sswitch_31f
        0x23 -> :sswitch_33d
        0x24 -> :sswitch_36b
        0x25 -> :sswitch_381
        0x26 -> :sswitch_397
        0x27 -> :sswitch_3a9
        0x28 -> :sswitch_3bf
        0x29 -> :sswitch_3d5
        0x2a -> :sswitch_3f0
        0x2b -> :sswitch_417
        0x2c -> :sswitch_42d
        0x2d -> :sswitch_43f
        0x2e -> :sswitch_45d
        0x2f -> :sswitch_474
        0x30 -> :sswitch_486
        0x31 -> :sswitch_498
        0x32 -> :sswitch_4b3
        0x33 -> :sswitch_4ce
        0x34 -> :sswitch_4e0
        0x35 -> :sswitch_500
        0x36 -> :sswitch_517
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
