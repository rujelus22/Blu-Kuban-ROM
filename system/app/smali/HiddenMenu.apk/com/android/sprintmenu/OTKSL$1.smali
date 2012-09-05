.class Lcom/android/sprintmenu/OTKSL$1;
.super Landroid/os/Handler;
.source "OTKSL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/OTKSL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/OTKSL;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/OTKSL;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/sprintmenu/OTKSL$1;->this$0:Lcom/android/sprintmenu/OTKSL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 106
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_82

    .line 145
    :goto_6
    return-void

    .line 108
    :pswitch_7
    const-string v2, "OTKSL"

    const-string v3, "OTKSL response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 111
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_30

    .line 113
    const-string v2, "OTKSL"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/sprintmenu/OTKSL$1;->this$0:Lcom/android/sprintmenu/OTKSL;

    const-string v3, "Modem exception occurs"

    iput-object v3, v2, Lcom/android/sprintmenu/OTKSL;->eroorMsg:Ljava/lang/String;

    .line 116
    const-string v2, "LOG_TAG"

    const-string v3, "calling show dialog exeption occur"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/android/sprintmenu/OTKSL$1;->this$0:Lcom/android/sprintmenu/OTKSL;

    invoke-virtual {v2, v5}, Lcom/android/sprintmenu/OTKSL;->showDialog(I)V

    goto :goto_6

    .line 120
    :cond_30
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_5a

    .line 122
    const-string v2, "OTKSL"

    const-string v3, "ar.result == NULL! - No answer for OTKSL response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/sprintmenu/OTKSL$1;->this$0:Lcom/android/sprintmenu/OTKSL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modem Error   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/sprintmenu/OTKSL;->eroorMsg:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/android/sprintmenu/OTKSL$1;->this$0:Lcom/android/sprintmenu/OTKSL;

    invoke-virtual {v2, v5}, Lcom/android/sprintmenu/OTKSL;->showDialog(I)V

    goto :goto_6

    .line 128
    :cond_5a
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 132
    .local v1, buf:[B
    const/16 v2, 0xc

    aget-byte v2, v1, v2

    if-ne v2, v5, :cond_74

    .line 134
    const-string v2, "OTKSL"

    const-string v3, "OTKSL flag : TRUE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/sprintmenu/OTKSL$1;->this$0:Lcom/android/sprintmenu/OTKSL;

    invoke-virtual {v2, v5}, Lcom/android/sprintmenu/OTKSL;->notifyResult(Z)V

    goto :goto_6

    .line 139
    :cond_74
    const-string v2, "OTKSL"

    const-string v3, "OTKSL flag : FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/android/sprintmenu/OTKSL$1;->this$0:Lcom/android/sprintmenu/OTKSL;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/sprintmenu/OTKSL;->notifyResult(Z)V

    goto :goto_6

    .line 106
    :pswitch_data_82
    .packed-switch 0x7ce
        :pswitch_7
    .end packed-switch
.end method
