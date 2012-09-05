.class Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothShareContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 83
    const-string v0, "BtOpp Service"

    const-string v1, "ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 85
    return-void
.end method
