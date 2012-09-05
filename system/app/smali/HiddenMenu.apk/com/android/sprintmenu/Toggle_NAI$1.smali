.class Lcom/android/sprintmenu/Toggle_NAI$1;
.super Landroid/os/Handler;
.source "Toggle_NAI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/Toggle_NAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/Toggle_NAI;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/Toggle_NAI;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/sprintmenu/Toggle_NAI$1;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 98
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_70

    .line 123
    :goto_5
    return-void

    .line 100
    :pswitch_6
    invoke-static {}, Lcom/android/sprintmenu/Toggle_NAI;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 103
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_21

    .line 105
    invoke-static {}, Lcom/android/sprintmenu/Toggle_NAI;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 108
    :cond_21
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_2f

    .line 110
    invoke-static {}, Lcom/android/sprintmenu/Toggle_NAI;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar.result == NULL! - No answer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 114
    :cond_2f
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 115
    .local v1, buf:[B
    iget-object v2, p0, Lcom/android/sprintmenu/Toggle_NAI$1;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    #setter for: Lcom/android/sprintmenu/Toggle_NAI;->mode_ID:B
    invoke-static {v2, v3}, Lcom/android/sprintmenu/Toggle_NAI;->access$102(Lcom/android/sprintmenu/Toggle_NAI;B)B

    .line 116
    invoke-static {}, Lcom/android/sprintmenu/Toggle_NAI;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verify! : It\'s OK ( value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/Toggle_NAI$1;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    #getter for: Lcom/android/sprintmenu/Toggle_NAI;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/Toggle_NAI;->access$100(Lcom/android/sprintmenu/Toggle_NAI;)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/android/sprintmenu/Toggle_NAI$1;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    iget-object v3, p0, Lcom/android/sprintmenu/Toggle_NAI$1;->this$0:Lcom/android/sprintmenu/Toggle_NAI;

    #getter for: Lcom/android/sprintmenu/Toggle_NAI;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/Toggle_NAI;->access$100(Lcom/android/sprintmenu/Toggle_NAI;)B

    move-result v3

    #calls: Lcom/android/sprintmenu/Toggle_NAI;->SetDefaultSelection(I)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/Toggle_NAI;->access$200(Lcom/android/sprintmenu/Toggle_NAI;I)V

    goto :goto_5

    .line 98
    :pswitch_data_70
    .packed-switch 0x7ce
        :pswitch_6
    .end packed-switch
.end method
