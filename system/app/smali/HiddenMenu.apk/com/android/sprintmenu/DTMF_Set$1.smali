.class Lcom/android/sprintmenu/DTMF_Set$1;
.super Landroid/os/Handler;
.source "DTMF_Set.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/DTMF_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/DTMF_Set;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/DTMF_Set;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 101
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_e4

    .line 154
    :goto_7
    return-void

    .line 103
    :pswitch_8
    const-string v2, "DTMF_Set"

    const-string v3, "DTMF Set verify response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 106
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    .line 108
    const-string v2, "DTMF_Set"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 112
    :cond_1f
    const-string v2, "DTMF_Set"

    const-string v3, "DTMF Set verify! : It\'s OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    invoke-virtual {v2}, Lcom/android/sprintmenu/DTMF_Set;->finish()V

    goto :goto_7

    .line 117
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2c
    const-string v2, "DTMF_Set"

    const-string v3, "DTMF Get response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 120
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_43

    .line 122
    const-string v2, "DTMF_Set"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 125
    :cond_43
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_4f

    .line 127
    const-string v2, "DTMF_Set"

    const-string v3, "ar.result == NULL! - No answer for DTMF Set response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 131
    :cond_4f
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 132
    .local v1, buf:[B
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    #setter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v2, v3}, Lcom/android/sprintmenu/DTMF_Set;->access$002(Lcom/android/sprintmenu/DTMF_Set;B)B

    .line 133
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #getter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/DTMF_Set;->access$000(Lcom/android/sprintmenu/DTMF_Set;)B

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #getter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/DTMF_Set;->access$000(Lcom/android/sprintmenu/DTMF_Set;)B

    move-result v2

    if-ne v2, v5, :cond_a4

    .line 135
    :cond_6e
    const-string v2, "DTMF_Set"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMF Get! : It\'s OK ( value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #getter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/DTMF_Set;->access$000(Lcom/android/sprintmenu/DTMF_Set;)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #setter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v2, v5}, Lcom/android/sprintmenu/DTMF_Set;->access$002(Lcom/android/sprintmenu/DTMF_Set;B)B

    .line 148
    :goto_97
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    iget-object v3, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #getter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/DTMF_Set;->access$000(Lcom/android/sprintmenu/DTMF_Set;)B

    move-result v3

    #calls: Lcom/android/sprintmenu/DTMF_Set;->SetDTMF_Status(I)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/DTMF_Set;->access$100(Lcom/android/sprintmenu/DTMF_Set;I)V

    goto/16 :goto_7

    .line 138
    :cond_a4
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #getter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/DTMF_Set;->access$000(Lcom/android/sprintmenu/DTMF_Set;)B

    move-result v2

    if-ne v2, v6, :cond_d6

    .line 140
    const-string v2, "DTMF_Set"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMF Get! : It\'s OK ( value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #getter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/DTMF_Set;->access$000(Lcom/android/sprintmenu/DTMF_Set;)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #setter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v2, v6}, Lcom/android/sprintmenu/DTMF_Set;->access$002(Lcom/android/sprintmenu/DTMF_Set;B)B

    goto :goto_97

    .line 145
    :cond_d6
    const-string v2, "DTMF_Set"

    const-string v3, "DTMF Get : Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set$1;->this$0:Lcom/android/sprintmenu/DTMF_Set;

    #setter for: Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B
    invoke-static {v2, v5}, Lcom/android/sprintmenu/DTMF_Set;->access$002(Lcom/android/sprintmenu/DTMF_Set;B)B

    goto :goto_97

    .line 101
    nop

    :pswitch_data_e4
    .packed-switch 0x7ce
        :pswitch_2c
        :pswitch_8
    .end packed-switch
.end method
