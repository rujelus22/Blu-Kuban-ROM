.class Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;
.super Landroid/os/Handler;
.source "BatteryStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/BatteryStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/BatteryStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 361
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    .line 372
    :goto_6
    return-void

    .line 363
    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->access$100()I

    move-result v1

    if-ne v1, v3, :cond_14

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;

    const/16 v2, 0x14

    #calls: Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setBrightness(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->access$200(Lcom/sec/android/app/servicemodeapp/BatteryStatus;I)V

    .line 366
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;

    invoke-virtual {v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->updateBatteryStatus()V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;

    iget-object v1, v1, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, update_msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryStatus;

    iget-object v1, v1, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 361
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
