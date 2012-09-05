.class Lcom/infraware/office/util/EvMessageTimer$1;
.super Landroid/os/Handler;
.source "EvMessageTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/util/EvMessageTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/util/EvMessageTimer;


# direct methods
.method constructor <init>(Lcom/infraware/office/util/EvMessageTimer;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/util/EvMessageTimer$1;->this$0:Lcom/infraware/office/util/EvMessageTimer;

    .line 10
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 12
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 20
    :goto_6
    return-void

    .line 15
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/infraware/office/util/EvMessageTimer$1;->removeMessages(I)V

    .line 16
    iget-object v0, p0, Lcom/infraware/office/util/EvMessageTimer$1;->this$0:Lcom/infraware/office/util/EvMessageTimer;

    iget-object v0, v0, Lcom/infraware/office/util/EvMessageTimer;->mTimerTask:Lcom/infraware/office/util/EvMessageTimerTask;

    if-eqz v0, :cond_17

    .line 17
    iget-object v0, p0, Lcom/infraware/office/util/EvMessageTimer$1;->this$0:Lcom/infraware/office/util/EvMessageTimer;

    iget-object v0, v0, Lcom/infraware/office/util/EvMessageTimer;->mTimerTask:Lcom/infraware/office/util/EvMessageTimerTask;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimerTask;->run()V

    .line 18
    :cond_17
    iget-object v0, p0, Lcom/infraware/office/util/EvMessageTimer$1;->this$0:Lcom/infraware/office/util/EvMessageTimer;

    iget-object v0, v0, Lcom/infraware/office/util/EvMessageTimer;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/office/util/EvMessageTimer$1;->this$0:Lcom/infraware/office/util/EvMessageTimer;

    iget-wide v1, v1, Lcom/infraware/office/util/EvMessageTimer;->mPeriod:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 12
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
