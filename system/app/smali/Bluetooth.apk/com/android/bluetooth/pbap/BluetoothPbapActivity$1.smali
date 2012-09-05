.class Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPbapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    const-string v2, "BluetoothPbapActivity"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v2, "BluetoothPbapActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, state:I
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 116
    const/16 v2, 0xd

    if-ne v1, v2, :cond_3c

    .line 117
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 125
    :cond_3c
    :goto_3c
    return-void

    .line 120
    :cond_3d
    const-string v2, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 124
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onTimeout()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    goto :goto_3c
.end method
