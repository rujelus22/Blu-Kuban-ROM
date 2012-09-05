.class final Lcom/vlingo/client/android/core/bluetooth/BluetoothManager$1;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 139
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {p2}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 140
    #calls: Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->getBTdevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$200()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$102(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 141
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$100()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 143
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 144
    const/4 v1, 0x1

    #calls: Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->startSCO(Z)V
    invoke-static {v1}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$300(Z)V

    .line 146
    :cond_1f
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 152
    return-void
.end method
