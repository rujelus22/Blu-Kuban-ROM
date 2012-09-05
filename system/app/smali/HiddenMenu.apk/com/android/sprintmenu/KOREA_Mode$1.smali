.class Lcom/android/sprintmenu/KOREA_Mode$1;
.super Landroid/os/Handler;
.source "KOREA_Mode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/KOREA_Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/KOREA_Mode;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/KOREA_Mode;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 133
    const-string v2, "KOREA_MODE"

    const-string v3, "Inside Handlemessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_d6

    .line 194
    :goto_c
    return-void

    .line 138
    :pswitch_d
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Verify response incoming!!,verify data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 141
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_28

    .line 143
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 146
    :cond_28
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_36

    .line 148
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar.result == NULL! - No answer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 151
    :cond_36
    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    invoke-virtual {v2}, Lcom/android/sprintmenu/KOREA_Mode;->finish()V

    goto :goto_c

    .line 154
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3c
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Verify response incoming!!,Get data Done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 157
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_57

    .line 159
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 162
    :cond_57
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_65

    .line 164
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar.result == NULL! - No answer for response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 167
    :cond_65
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 168
    .local v1, buf:[B
    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    #setter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v2, v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$102(Lcom/android/sprintmenu/KOREA_Mode;B)B

    .line 169
    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v2

    if-nez v2, :cond_9b

    .line 171
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": SKT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": KOREA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_8e
    :goto_8e
    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    iget-object v3, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v3

    #calls: Lcom/android/sprintmenu/KOREA_Mode;->SetDefaultSelection(B)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/KOREA_Mode;->access$200(Lcom/android/sprintmenu/KOREA_Mode;B)V

    goto/16 :goto_c

    .line 174
    :cond_9b
    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ae

    .line 176
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": Sprint_TestBed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 179
    :cond_ae
    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_c2

    .line 181
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": India Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 183
    :cond_c2
    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode$1;->this$0:Lcom/android/sprintmenu/KOREA_Mode;

    #getter for: Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/KOREA_Mode;->access$100(Lcom/android/sprintmenu/KOREA_Mode;)B

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8e

    .line 185
    invoke-static {}, Lcom/android/sprintmenu/KOREA_Mode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": Mode_Off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 136
    nop

    :pswitch_data_d6
    .packed-switch 0x7ce
        :pswitch_3c
        :pswitch_d
    .end packed-switch
.end method
