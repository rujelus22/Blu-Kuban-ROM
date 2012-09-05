.class public Lcom/sprint/hardware/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# static fields
.field public static final MONO:I = 0x1

.field public static final NONE:I = 0x0

.field public static final STEREO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Bluetooth"

.field private static mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private static mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothA2DPProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothHEADSETProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/sprint/hardware/Bluetooth;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 28
    sput-object v0, Lcom/sprint/hardware/Bluetooth;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/sprint/hardware/Bluetooth$1;

    invoke-direct {v0, p0}, Lcom/sprint/hardware/Bluetooth$1;-><init>(Lcom/sprint/hardware/Bluetooth;)V

    iput-object v0, p0, Lcom/sprint/hardware/Bluetooth;->mBluetoothHEADSETProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 81
    new-instance v0, Lcom/sprint/hardware/Bluetooth$2;

    invoke-direct {v0, p0}, Lcom/sprint/hardware/Bluetooth$2;-><init>(Lcom/sprint/hardware/Bluetooth;)V

    iput-object v0, p0, Lcom/sprint/hardware/Bluetooth;->mBluetoothA2DPProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 34
    const-string v0, "Bluetooth"

    const-string v1, "Bluetooth for sprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/hardware/Bluetooth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 37
    iget-object v0, p0, Lcom/sprint/hardware/Bluetooth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/sprint/hardware/Bluetooth;->mBluetoothHEADSETProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 39
    iget-object v0, p0, Lcom/sprint/hardware/Bluetooth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/sprint/hardware/Bluetooth;->mBluetoothA2DPProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 41
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 1
    .parameter "x0"

    .prologue
    .line 12
    sput-object p0, Lcom/sprint/hardware/Bluetooth;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 1
    .parameter "x0"

    .prologue
    .line 12
    sput-object p0, Lcom/sprint/hardware/Bluetooth;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method


# virtual methods
.method public getAudioMode()I
    .registers 6

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, currentAudioMode:I
    const/4 v1, 0x0

    .line 47
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v2, Lcom/sprint/hardware/Bluetooth;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_13

    .line 49
    sget-object v2, Lcom/sprint/hardware/Bluetooth;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 52
    const/4 v0, 0x2

    .line 56
    :cond_13
    if-nez v0, :cond_26

    sget-object v2, Lcom/sprint/hardware/Bluetooth;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_26

    .line 58
    sget-object v2, Lcom/sprint/hardware/Bluetooth;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_26

    .line 61
    const/4 v0, 0x1

    .line 65
    :cond_26
    const-string v2, "Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentAudioMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v0
.end method
