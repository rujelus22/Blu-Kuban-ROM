.class Lcom/android/sprintmenu/AKEY2$1;
.super Landroid/os/Handler;
.source "AKEY2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/AKEY2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/AKEY2;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/AKEY2;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/sprintmenu/AKEY2$1;->this$0:Lcom/android/sprintmenu/AKEY2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_7a

    .line 231
    :cond_7
    :goto_7
    return-void

    .line 182
    :pswitch_8
    const-string v2, "AKEY2"

    const-string v3, "Akey response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 185
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    .line 187
    const-string v2, "AKEY2"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 190
    :cond_1f
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_2b

    .line 192
    const-string v2, "AKEY2"

    const-string v3, "ar.result == NULL! - No answer for AKEY response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 196
    :cond_2b
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 197
    .local v1, buf:[B
    aget-byte v2, v1, v4

    if-ne v2, v5, :cond_43

    .line 199
    const-string v2, "AKEY2"

    const-string v3, "AKEY verify! : It\'s OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/android/sprintmenu/AKEY2$1;->this$0:Lcom/android/sprintmenu/AKEY2;

    invoke-virtual {v2, v5}, Lcom/android/sprintmenu/AKEY2;->notifyResult(Z)V

    goto :goto_7

    .line 204
    :cond_43
    const-string v2, "AKEY2"

    const-string v3, "AKEY verify! : Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/android/sprintmenu/AKEY2$1;->this$0:Lcom/android/sprintmenu/AKEY2;

    invoke-virtual {v2, v4}, Lcom/android/sprintmenu/AKEY2;->notifyResult(Z)V

    goto :goto_7

    .line 211
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #buf:[B
    :pswitch_50
    const-string v2, "AKEY2"

    const-string v3, "Modem Reset response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 214
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_72

    .line 216
    const-string v2, "AKEY2"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_66
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_7

    .line 225
    const-string v2, "AKEY2"

    const-string v3, "ar.result == NULL! - No answer for reset response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 220
    :cond_72
    const-string v2, "AKEY2"

    const-string v3, "Modem Reset DONE!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 180
    :pswitch_data_7a
    .packed-switch 0x7ce
        :pswitch_50
        :pswitch_8
    .end packed-switch
.end method
