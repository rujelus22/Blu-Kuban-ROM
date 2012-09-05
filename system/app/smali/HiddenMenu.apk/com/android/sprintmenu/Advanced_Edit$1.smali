.class Lcom/android/sprintmenu/Advanced_Edit$1;
.super Landroid/os/Handler;
.source "Advanced_Edit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/Advanced_Edit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/Advanced_Edit;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/Advanced_Edit;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/sprintmenu/Advanced_Edit$1;->this$0:Lcom/android/sprintmenu/Advanced_Edit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 617
    invoke-static {}, Lcom/android/sprintmenu/Advanced_Edit;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleMessage called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 620
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_32

    .line 621
    invoke-static {}, Lcom/android/sprintmenu/Advanced_Edit;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncResult Exception Occur!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_31
    return-void

    .line 624
    :cond_32
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_53

    .line 625
    invoke-static {}, Lcom/android/sprintmenu/Advanced_Edit;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NULL result!! at : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 629
    :cond_53
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_76

    goto :goto_31

    .line 633
    :pswitch_59
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 634
    .local v1, buff:[B
    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit$1;->this$0:Lcom/android/sprintmenu/Advanced_Edit;

    new-instance v4, Ljava/lang/String;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/sprintmenu/Advanced_Edit;->access$102(Lcom/android/sprintmenu/Advanced_Edit;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit$1;->this$0:Lcom/android/sprintmenu/Advanced_Edit;

    #calls: Lcom/android/sprintmenu/Advanced_Edit;->updatePreference()V
    invoke-static {v2}, Lcom/android/sprintmenu/Advanced_Edit;->access$200(Lcom/android/sprintmenu/Advanced_Edit;)V

    goto :goto_31

    .line 629
    :pswitch_data_76
    .packed-switch 0x28
        :pswitch_59
    .end packed-switch
.end method
