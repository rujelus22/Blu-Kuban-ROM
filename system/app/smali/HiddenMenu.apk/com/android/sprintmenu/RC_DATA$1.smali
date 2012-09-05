.class Lcom/android/sprintmenu/RC_DATA$1;
.super Landroid/os/Handler;
.source "RC_DATA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/RC_DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/RC_DATA;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/RC_DATA;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 121
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_c6

    .line 179
    :goto_6
    return-void

    .line 123
    :pswitch_7
    const-string v2, "RC_DATA"

    const-string v3, "RC_DATA_verify response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 126
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 128
    const-string v2, "RC_DATA"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 131
    :cond_1e
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_2a

    .line 133
    const-string v2, "RC_DATA"

    const-string v3, "ar.result == NULL! - No answer for HDR_1X_response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 137
    :cond_2a
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 138
    .local v1, buf:[B
    aget-byte v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 140
    const-string v2, "RC_DATA"

    const-string v3, "RC_DATA_verify! : It\'s OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 144
    :cond_3e
    const-string v2, "RC_DATA"

    const-string v3, "RC_DATA_verify! : Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 148
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #buf:[B
    :pswitch_46
    const-string v2, "RC_DATA"

    const-string v3, "RC_DATA_GET response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5d

    .line 153
    const-string v2, "RC_DATA"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 156
    :cond_5d
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_69

    .line 158
    const-string v2, "RC_DATA"

    const-string v3, "ar.result == NULL! - No answer for RC_DATA_response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 162
    :cond_69
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 163
    .restart local v1       #buf:[B
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    aget-byte v3, v1, v4

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v2, v3}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    .line 164
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    #getter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/RC_DATA;->access$000(Lcom/android/sprintmenu/RC_DATA;)B

    move-result v2

    if-lez v2, :cond_b9

    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    #getter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/RC_DATA;->access$000(Lcom/android/sprintmenu/RC_DATA;)B

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_b9

    .line 166
    const-string v2, "RC_DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RC_DATA_GET! : It\'s OK (value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    #getter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/RC_DATA;->access$000(Lcom/android/sprintmenu/RC_DATA;)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_ac
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    iget-object v3, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    #getter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/RC_DATA;->access$000(Lcom/android/sprintmenu/RC_DATA;)B

    move-result v3

    #calls: Lcom/android/sprintmenu/RC_DATA;->SetDefaultSelection(I)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/RC_DATA;->access$100(Lcom/android/sprintmenu/RC_DATA;I)V

    goto/16 :goto_6

    .line 170
    :cond_b9
    const-string v2, "RC_DATA"

    const-string v3, "RC_DATA_GET! : Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA$1;->this$0:Lcom/android/sprintmenu/RC_DATA;

    #setter for: Lcom/android/sprintmenu/RC_DATA;->radio_ID:B
    invoke-static {v2, v4}, Lcom/android/sprintmenu/RC_DATA;->access$002(Lcom/android/sprintmenu/RC_DATA;B)B

    goto :goto_ac

    .line 121
    :pswitch_data_c6
    .packed-switch 0x7ce
        :pswitch_46
        :pswitch_7
    .end packed-switch
.end method
