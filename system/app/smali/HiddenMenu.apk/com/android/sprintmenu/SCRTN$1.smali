.class Lcom/android/sprintmenu/SCRTN$1;
.super Landroid/os/Handler;
.source "SCRTN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/SCRTN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/SCRTN;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/SCRTN;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/sprintmenu/SCRTN$1;->this$0:Lcom/android/sprintmenu/SCRTN;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 58
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_38

    .line 76
    :goto_5
    return-void

    .line 60
    :pswitch_6
    invoke-static {}, Lcom/android/sprintmenu/SCRTN;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SCRNT response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 63
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_21

    .line 65
    invoke-static {}, Lcom/android/sprintmenu/SCRTN;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 69
    :cond_21
    invoke-static {}, Lcom/android/sprintmenu/SCRTN;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Success SCRTN. Reset now!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/android/sprintmenu/SCRTN$1;->this$0:Lcom/android/sprintmenu/SCRTN;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/sprintmenu/SCRTN;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 72
    .local v1, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->systemReboot()V

    goto :goto_5

    .line 58
    :pswitch_data_38
    .packed-switch 0x7cd
        :pswitch_6
    .end packed-switch
.end method
