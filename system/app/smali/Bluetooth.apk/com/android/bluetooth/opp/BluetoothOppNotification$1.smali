.class Lcom/android/bluetooth/opp/BluetoothOppNotification$1;
.super Landroid/os/Handler;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    .line 185
    :goto_5
    return-void

    .line 171
    :pswitch_6
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v1

    .line 172
    :try_start_9
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    if-lez v0, :cond_57

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-nez v0, :cond_57

    .line 173
    const-string v0, "BluetoothOppNotification"

    const-string v2, "new notify threadi!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->start()V

    .line 176
    const-string v0, "BluetoothOppNotification"

    const-string v2, "send delay message"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    :cond_52
    :goto_52
    monitor-exit v1

    goto :goto_5

    .line 183
    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_54

    throw v0

    .line 178
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    if-lez v0, :cond_52

    .line 179
    const-string v0, "BluetoothOppNotification"

    const-string v2, "previous thread is not finished yet"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7c
    .catchall {:try_start_57 .. :try_end_7c} :catchall_54

    goto :goto_52

    .line 169
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
