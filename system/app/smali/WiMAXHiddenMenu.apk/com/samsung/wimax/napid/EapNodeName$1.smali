.class Lcom/samsung/wimax/napid/EapNodeName$1;
.super Landroid/os/Handler;
.source "EapNodeName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapNodeName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapNodeName;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapNodeName;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapNodeName$1;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 59
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    .line 84
    :goto_5
    return-void

    .line 62
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$1;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #calls: Lcom/samsung/wimax/napid/EapNodeName;->ReadEapName()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapNodeName;->access$000(Lcom/samsung/wimax/napid/EapNodeName;)V

    goto :goto_5

    .line 65
    :pswitch_c
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapNodeName$1;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/wimax/napid/EapNodeName;->eapVal:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$1;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #calls: Lcom/samsung/wimax/napid/EapNodeName;->checkWimaxStateAndUpdate()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapNodeName;->access$100(Lcom/samsung/wimax/napid/EapNodeName;)V

    goto :goto_5

    .line 70
    :pswitch_1a
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$1;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    move-result v0

    .line 71
    .local v0, res:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 73
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$1;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "eapnodename OdbUpdateReq sucess"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 77
    :cond_2f
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$1;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "eapnodename OdbUpdateReq failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 59
    nop

    :pswitch_data_3a
    .packed-switch 0x4
        :pswitch_6
        :pswitch_c
        :pswitch_1a
    .end packed-switch
.end method
