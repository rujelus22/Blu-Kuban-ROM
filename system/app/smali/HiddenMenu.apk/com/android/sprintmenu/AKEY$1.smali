.class Lcom/android/sprintmenu/AKEY$1;
.super Landroid/os/Handler;
.source "AKEY.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/AKEY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/AKEY;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/AKEY;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/sprintmenu/AKEY$1;->this$0:Lcom/android/sprintmenu/AKEY;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 118
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_58

    .line 147
    :goto_5
    return-void

    .line 120
    :pswitch_6
    const-string v4, "AKEY"

    const-string v5, "MSL response incoming!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 123
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1d

    .line 125
    const-string v4, "AKEY"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 128
    :cond_1d
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_29

    .line 130
    const-string v4, "AKEY"

    const-string v5, "ar.result == NULL! - No answer for MSL response"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 134
    :cond_29
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 139
    .local v1, buf:[B
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_38
    const/4 v4, 0x6

    if-ge v2, v4, :cond_52

    .line 141
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

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 143
    :cond_52
    iget-object v4, p0, Lcom/android/sprintmenu/AKEY$1;->this$0:Lcom/android/sprintmenu/AKEY;

    invoke-virtual {v4, v3}, Lcom/android/sprintmenu/AKEY;->notifyResult(Ljava/lang/String;)V

    goto :goto_5

    .line 118
    :pswitch_data_58
    .packed-switch 0x7ce
        :pswitch_6
    .end packed-switch
.end method
