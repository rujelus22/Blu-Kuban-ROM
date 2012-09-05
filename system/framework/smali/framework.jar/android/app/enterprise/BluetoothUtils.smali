.class public Landroid/app/enterprise/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field public static final BasicPrinting:Landroid/os/ParcelUuid; = null

.field public static final FTP:Landroid/os/ParcelUuid; = null

.field public static final PBAP:Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->FTP:Landroid/os/ParcelUuid;

    .line 26
    const-string v0, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->PBAP:Landroid/os/ParcelUuid;

    .line 28
    const-string v0, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/BluetoothUtils;->BasicPrinting:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 11
    .parameter "device"
    .parameter "aPortNum"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    const-string v7, "BluetoothUtils"

    const-string/jumbo v8, "isHeadsetAllowedBySecurityPolicy"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_a
    const-string v7, "bluetooth_policy"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v4

    .line 125
    .local v4, service:Landroid/app/enterprise/IBluetoothPolicy;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 127
    .local v3, ids:[Landroid/os/ParcelUuid;
    const/16 v7, 0x80

    invoke-interface {v4, v7}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v7

    if-nez v7, :cond_28

    .line 128
    const-string v7, "BluetoothUtils"

    const-string v8, "MDM - SPP Profile is disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v3           #ids:[Landroid/os/ParcelUuid;
    .end local v4           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_27
    :goto_27
    return v5

    .line 134
    .restart local v3       #ids:[Landroid/os/ParcelUuid;
    .restart local v4       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_28
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v7}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v2

    .line 136
    .local v2, hspchannel:I
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v3, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_3e

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {v3, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_47

    :cond_3e
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v7

    if-nez v7, :cond_47

    if-eq v2, p1, :cond_27

    .line 145
    :cond_47
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v7}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 146
    .local v1, hfpchannel:I
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v3, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_5d

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v3, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_66

    :cond_5d
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_61} :catch_68

    move-result v7

    if-nez v7, :cond_66

    if-eq v1, p1, :cond_27

    .end local v1           #hfpchannel:I
    .end local v2           #hspchannel:I
    .end local v3           #ids:[Landroid/os/ParcelUuid;
    .end local v4           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_66
    :goto_66
    move v5, v6

    .line 158
    goto :goto_27

    .line 155
    :catch_68
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method public static isPairingAllowedbySecurityPolicy()Z
    .registers 4

    .prologue
    .line 162
    const-string v2, "BluetoothUtils"

    const-string/jumbo v3, "isPairingBlockedbySecurityPolicy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_8
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v1

    .line 167
    .local v1, service:Landroid/app/enterprise/IBluetoothPolicy;
    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isPairingEnabled()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_17

    move-result v2

    .line 171
    :goto_16
    return v2

    .line 168
    :catch_17
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x1

    goto :goto_16
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z
    .registers 2
    .parameter "uuid"

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z

    move-result v0

    return v0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z
    .registers 7
    .parameter "uuid"
    .parameter "portType"

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string v3, "BluetoothUtils"

    const-string/jumbo v4, "isProfileAuthorizedBySecurityPolicy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_9
    const-string v3, "bluetooth_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v1

    .line 189
    .local v1, service:Landroid/app/enterprise/IBluetoothPolicy;
    const/4 v3, 0x2

    if-ne v3, p1, :cond_24

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v3

    if-nez v3, :cond_24

    .line 190
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: Outgoing Call is Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :goto_23
    return v2

    .line 193
    .restart local v1       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_24
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_30
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_40

    :cond_38
    const/16 v3, 0x80

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_54

    .line 196
    :cond_40
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: SPP or A2DP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_47} :catch_48

    goto :goto_23

    .line 211
    .end local v1           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :catch_48
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0           #e:Ljava/lang/Exception;
    :cond_52
    const/4 v2, 0x1

    goto :goto_23

    .line 199
    .restart local v1       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_54
    :try_start_54
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpController(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_70

    :cond_60
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_70

    .line 201
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: AVRCP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 205
    :cond_70
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v3

    if-eqz v3, :cond_86

    const/16 v3, 0x80

    invoke-interface {v1, v3}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v3

    if-nez v3, :cond_52

    .line 208
    :cond_86
    const-string v3, "BluetoothUtils"

    const-string v4, "MDM: OPP profile is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_8d} :catch_48

    goto :goto_23
.end method

.method public static isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;II)Z
    .registers 10
    .parameter "device"
    .parameter "aPortNum"
    .parameter "aPortType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    :try_start_2
    const-string v5, "bluetooth_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v2

    .line 46
    .local v2, service:Landroid/app/enterprise/IBluetoothPolicy;
    if-ne v4, p2, :cond_25

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v5, 0x80

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_25

    .line 49
    :cond_1c
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for spp, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v2           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :goto_24
    return v3

    .line 53
    .restart local v2       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_25
    const/4 v5, 0x2

    if-ne v5, p2, :cond_43

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v5

    if-nez v5, :cond_43

    .line 54
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for SCO, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_24

    .line 113
    .end local v2           #service:Landroid/app/enterprise/IBluetoothPolicy;
    :catch_37
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_41
    move v3, v4

    .line 116
    goto :goto_24

    .line 58
    .restart local v2       #service:Landroid/app/enterprise/IBluetoothPolicy;
    :cond_43
    if-eqz p0, :cond_47

    if-gez p1, :cond_51

    .line 59
    :cond_47
    :try_start_47
    const-string v3, "BluetoothUtils"

    const-string/jumbo v5, "isSocketAllowedBySecurityPolicy start : device null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 60
    goto :goto_24

    .line 64
    :cond_51
    const/16 v5, 0x40

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 65
    sget-object v5, Landroid/app/enterprise/BluetoothUtils;->FTP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 66
    .local v1, lPortNum:I
    if-ne v1, p1, :cond_6a

    .line 67
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for ftp, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 72
    .end local v1           #lPortNum:I
    :cond_6a
    const/4 v5, 0x4

    invoke-interface {v2, v5}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z

    move-result v5

    if-nez v5, :cond_41

    .line 73
    sget-object v5, Landroid/app/enterprise/BluetoothUtils;->PBAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 74
    .restart local v1       #lPortNum:I
    if-ne v1, p1, :cond_82

    .line 75
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for pbap, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 80
    :cond_82
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v5}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 81
    if-ne v1, p1, :cond_41

    .line 82
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for pbap, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_92} :catch_37

    goto :goto_24
.end method
