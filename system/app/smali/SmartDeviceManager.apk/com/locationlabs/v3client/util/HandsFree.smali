.class public Lcom/locationlabs/v3client/util/HandsFree;
.super Landroid/content/BroadcastReceiver;
.source "a"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/util/HandsFree;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 43
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 69
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_17

    const/4 v0, 0x1

    .line 73
    :goto_16
    return v0

    .line 69
    :cond_17
    const/4 v0, 0x0

    .line 73
    goto :goto_16
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 83
    invoke-static {p0}, Lcom/locationlabs/v3client/util/HandsFree;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/locationlabs/v3client/util/HandsFree;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    .line 85
    :goto_d
    return v0

    .line 83
    :cond_e
    const/4 v0, 0x0

    .line 85
    goto :goto_d
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 143
    const/4 v0, 0x1

    .line 145
    invoke-static {p0}, Lcom/locationlabs/v3client/util/HandsFree;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    move v0, v2

    .line 146
    :cond_9
    invoke-static {p0}, Lcom/locationlabs/v3client/util/HandsFree;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, v2

    .line 147
    :cond_10
    invoke-static {p0}, Lcom/locationlabs/v3client/util/HandsFree;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v0, v2

    .line 150
    :cond_17
    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 97
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 114
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/locationlabs/v3client/util/HandsFree;->a:Z

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 124
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 126
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 165
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 188
    :cond_8
    :goto_8
    return-void

    .line 169
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 171
    if-eqz p0, :cond_8

    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_8

    .line 174
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    .line 175
    and-int/lit16 v0, v0, 0x43c

    if-eqz v0, :cond_8

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 177
    const-string v0, "Bluetooth headset has been connected!"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    sput-boolean v0, Lcom/locationlabs/v3client/util/HandsFree;->a:Z

    goto :goto_8

    .line 179
    :cond_3a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 180
    const-string v0, "Bluetooth headset has been disconnected!"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/util/HandsFree;->a:Z

    goto :goto_8

    .line 183
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_8
.end method
