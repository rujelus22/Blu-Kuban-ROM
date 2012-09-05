.class Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check$1;
.super Landroid/os/Handler;
.source "OMADM_MSL_Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;


# direct methods
.method constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check$1;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 138
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_42

    .line 167
    :cond_5
    :goto_5
    return-void

    .line 142
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 144
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 149
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 156
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 158
    .local v1, buf:[B
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    const/4 v4, 0x6

    if-ge v2, v4, :cond_3b

    .line 160
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

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 163
    :cond_3b
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check$1;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;

    invoke-virtual {v4, v3}, Lcom/samsung/dmhiddenmenu/OMADM_MSL_Check;->notifyResult(Ljava/lang/String;)V

    goto :goto_5

    .line 138
    nop

    :pswitch_data_42
    .packed-switch 0x7ce
        :pswitch_6
    .end packed-switch
.end method
