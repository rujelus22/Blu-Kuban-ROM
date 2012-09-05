.class Lcom/android/sprintmenu/Enable_HFA$1;
.super Landroid/os/Handler;
.source "Enable_HFA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/Enable_HFA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/Enable_HFA;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/Enable_HFA;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/sprintmenu/Enable_HFA$1;->this$0:Lcom/android/sprintmenu/Enable_HFA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 204
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_32

    .line 259
    :goto_5
    return-void

    .line 243
    :pswitch_6
    const-string v2, "Restore"

    const-string v3, "Enable HFA response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 246
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1d

    .line 248
    const-string v2, "Restore"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 252
    :cond_1d
    const-string v2, "Restore"

    const-string v3, "Success Enable HFA. Reset now!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/android/sprintmenu/Enable_HFA$1;->this$0:Lcom/android/sprintmenu/Enable_HFA;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/sprintmenu/Enable_HFA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 255
    .local v1, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->systemReboot()V

    goto :goto_5

    .line 204
    :pswitch_data_32
    .packed-switch 0x7cd
        :pswitch_6
    .end packed-switch
.end method
