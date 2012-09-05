.class Lcom/samsung/wimax/napid/Activated$1;
.super Landroid/os/Handler;
.source "Activated.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Activated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Activated;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Activated;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/wimax/napid/Activated$1;->this$0:Lcom/samsung/wimax/napid/Activated;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 58
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    .line 82
    :goto_5
    return-void

    .line 61
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$1;->this$0:Lcom/samsung/wimax/napid/Activated;

    #calls: Lcom/samsung/wimax/napid/Activated;->ReadActivated()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/Activated;->access$000(Lcom/samsung/wimax/napid/Activated;)V

    goto :goto_5

    .line 64
    :pswitch_c
    iget-object v2, p0, Lcom/samsung/wimax/napid/Activated$1;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/wimax/napid/Activated;->actVal:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$1;->this$0:Lcom/samsung/wimax/napid/Activated;

    #calls: Lcom/samsung/wimax/napid/Activated;->checkWimaxStateAndUpdate()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/Activated;->access$100(Lcom/samsung/wimax/napid/Activated;)V

    goto :goto_5

    .line 69
    :pswitch_1a
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$1;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    move-result v0

    .line 70
    .local v0, res:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 72
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$1;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "act OdbUpdateReq success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 76
    :cond_2f
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated$1;->this$0:Lcom/samsung/wimax/napid/Activated;

    iget-object v1, v1, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "act OdbUpdateReq failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 58
    nop

    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_6
        :pswitch_c
        :pswitch_1a
    .end packed-switch
.end method
