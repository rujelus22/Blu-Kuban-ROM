.class Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$StartScoThread;
.super Ljava/lang/Thread;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartScoThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$StartScoThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 396
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 397
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$100()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 399
    :cond_11
    return-void
.end method
