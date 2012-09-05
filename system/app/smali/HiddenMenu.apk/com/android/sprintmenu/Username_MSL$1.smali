.class Lcom/android/sprintmenu/Username_MSL$1;
.super Landroid/os/Handler;
.source "Username_MSL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/Username_MSL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/Username_MSL;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/Username_MSL;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/sprintmenu/Username_MSL$1;->this$0:Lcom/android/sprintmenu/Username_MSL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 126
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_92

    .line 162
    :goto_6
    return-void

    .line 128
    :pswitch_7
    const-string v4, "Username_MSL"

    const-string v5, "MSL response incoming!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 131
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_30

    .line 133
    const-string v4, "Username_MSL"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Lcom/android/sprintmenu/Username_MSL$1;->this$0:Lcom/android/sprintmenu/Username_MSL;

    const-string v5, "Modem exception occurs"

    iput-object v5, v4, Lcom/android/sprintmenu/Username_MSL;->eroorMsg:Ljava/lang/String;

    .line 136
    const-string v4, "LOG_TAG"

    const-string v5, "calling show dialog exeption occur"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/android/sprintmenu/Username_MSL$1;->this$0:Lcom/android/sprintmenu/Username_MSL;

    invoke-virtual {v4, v7}, Lcom/android/sprintmenu/Username_MSL;->showDialog(I)V

    goto :goto_6

    .line 140
    :cond_30
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_61

    .line 142
    const-string v4, "Username_MSL"

    const-string v5, "ar.result == NULL! - No answer for MSL response"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v4, "LOG_TAG"

    const-string v5, "calling show dialog ar.result is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v4, p0, Lcom/android/sprintmenu/Username_MSL$1;->this$0:Lcom/android/sprintmenu/Username_MSL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Modem Error   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/sprintmenu/Username_MSL;->eroorMsg:Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/android/sprintmenu/Username_MSL$1;->this$0:Lcom/android/sprintmenu/Username_MSL;

    invoke-virtual {v4, v7}, Lcom/android/sprintmenu/Username_MSL;->showDialog(I)V

    goto :goto_6

    .line 149
    :cond_61
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 154
    .local v1, buf:[B
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_70
    const/4 v4, 0x6

    if-ge v2, v4, :cond_8a

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v1, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 158
    :cond_8a
    iget-object v4, p0, Lcom/android/sprintmenu/Username_MSL$1;->this$0:Lcom/android/sprintmenu/Username_MSL;

    invoke-virtual {v4, v3}, Lcom/android/sprintmenu/Username_MSL;->notifyResult(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 126
    nop

    :pswitch_data_92
    .packed-switch 0x7ce
        :pswitch_7
    .end packed-switch
.end method
