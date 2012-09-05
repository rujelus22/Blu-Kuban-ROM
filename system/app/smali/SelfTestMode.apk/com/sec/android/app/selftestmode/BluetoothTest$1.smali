.class Lcom/sec/android/app/selftestmode/BluetoothTest$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/BluetoothTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/selftestmode/BluetoothTest;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, mAction:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    iget-object v1, v1, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    #getter for: Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsForceStop:Z
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/BluetoothTest;->access$000(Lcom/sec/android/app/selftestmode/BluetoothTest;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    #calls: Lcom/sec/android/app/selftestmode/BluetoothTest;->stopTest()V
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/BluetoothTest;->access$100(Lcom/sec/android/app/selftestmode/BluetoothTest;)V

    .line 98
    :cond_23
    :goto_23
    return-void

    .line 90
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    iget-object v1, v1, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    #getter for: Lcom/sec/android/app/selftestmode/BluetoothTest;->mRequest:I
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/BluetoothTest;->access$200(Lcom/sec/android/app/selftestmode/BluetoothTest;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    #calls: Lcom/sec/android/app/selftestmode/BluetoothTest;->startDiscovery()V
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/BluetoothTest;->access$300(Lcom/sec/android/app/selftestmode/BluetoothTest;)V

    goto :goto_23

    .line 92
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    iget-object v1, v1, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    invoke-virtual {v1}, Lcom/sec/android/app/selftestmode/BluetoothTest;->finish()V

    goto :goto_23

    .line 95
    :cond_4d
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;->this$0:Lcom/sec/android/app/selftestmode/BluetoothTest;

    #calls: Lcom/sec/android/app/selftestmode/BluetoothTest;->stopTest()V
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/BluetoothTest;->access$100(Lcom/sec/android/app/selftestmode/BluetoothTest;)V

    goto :goto_23
.end method
