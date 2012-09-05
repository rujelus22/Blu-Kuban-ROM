.class Lcom/android/sprintmenu/RTN_Reset$2;
.super Landroid/os/Handler;
.source "RTN_Reset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/RTN_Reset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/RTN_Reset;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/RTN_Reset;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/sprintmenu/RTN_Reset$2;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 294
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_8e

    .line 403
    :goto_6
    return-void

    .line 329
    :sswitch_7
    invoke-static {}, Lcom/android/sprintmenu/RTN_Reset;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RTN Reset response incoming!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 332
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    .line 334
    invoke-static {}, Lcom/android/sprintmenu/RTN_Reset;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncResult Exception Occur!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 338
    :cond_22
    invoke-static {}, Lcom/android/sprintmenu/RTN_Reset;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Success RTN Reset. Reset now!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset$2;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/sprintmenu/RTN_Reset;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .line 378
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_38
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset$2;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    const-string v2, "RTN Reset Success : WIMAX default success"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 379
    invoke-static {}, Lcom/android/sprintmenu/RTN_Reset;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RTN Reset Success : WIMAX default return 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :sswitch_4c
    const-string v1, "SPH-D710"

    const-string v2, "SPH-D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 384
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset$2;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    invoke-virtual {v1}, Lcom/android/sprintmenu/RTN_Reset;->startSDFormat()V

    goto :goto_6

    .line 387
    :cond_5c
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset$2;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    #calls: Lcom/android/sprintmenu/RTN_Reset;->Reset_RTN()V
    invoke-static {v1}, Lcom/android/sprintmenu/RTN_Reset;->access$200(Lcom/android/sprintmenu/RTN_Reset;)V

    goto :goto_6

    .line 392
    :sswitch_62
    invoke-static {}, Lcom/android/sprintmenu/RTN_Reset;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RTN Reset Error : WIMAX default return 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset$2;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    const-string v2, "RTN Reset Error : WIMAX default fail"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 394
    const/16 v1, 0x10

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/sprintmenu/RTN_Reset$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 399
    :sswitch_7e
    invoke-static {}, Lcom/android/sprintmenu/RTN_Reset;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RTN Reset SDCARD_FORMAT_COMPLETED and start Reset_RTN()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/android/sprintmenu/RTN_Reset$2;->this$0:Lcom/android/sprintmenu/RTN_Reset;

    #calls: Lcom/android/sprintmenu/RTN_Reset;->Reset_RTN()V
    invoke-static {v1}, Lcom/android/sprintmenu/RTN_Reset;->access$200(Lcom/android/sprintmenu/RTN_Reset;)V

    goto/16 :goto_6

    .line 294
    :sswitch_data_8e
    .sparse-switch
        0x10 -> :sswitch_4c
        0x11 -> :sswitch_62
        0x12 -> :sswitch_38
        0x7cd -> :sswitch_7
        0x7ce -> :sswitch_7e
    .end sparse-switch
.end method
