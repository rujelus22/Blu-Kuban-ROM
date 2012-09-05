.class Lcom/sprint/hardware/Bluetooth$1;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/hardware/Bluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/hardware/Bluetooth;


# direct methods
.method constructor <init>(Lcom/sprint/hardware/Bluetooth;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sprint/hardware/Bluetooth$1;->this$0:Lcom/sprint/hardware/Bluetooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 3
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 73
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {p2}, Lcom/sprint/hardware/Bluetooth;->access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 74
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sprint/hardware/Bluetooth;->access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 78
    return-void
.end method
