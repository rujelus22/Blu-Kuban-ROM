.class Lcom/samsung/wimax/napid/EapMethodType$1;
.super Landroid/os/Handler;
.source "EapMethodType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapMethodType;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 85
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_a6

    .line 156
    :goto_6
    return-void

    .line 88
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->readEapMethod()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$000(Lcom/samsung/wimax/napid/EapMethodType;)V

    goto :goto_6

    .line 91
    :pswitch_d
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/wimax/napid/EapMethodType;->val:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->checkWimaxStateAndUpdate()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$100(Lcom/samsung/wimax/napid/EapMethodType;)V

    goto :goto_6

    .line 96
    :pswitch_1b
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    move-result v0

    .line 97
    .local v0, res:I
    if-ne v0, v2, :cond_2f

    .line 99
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "eaptype OdbUpdateReq success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 103
    :cond_2f
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "eaptype OdbUpdateReq success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 108
    .end local v0           #res:I
    :pswitch_39
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->readUsrId()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$200(Lcom/samsung/wimax/napid/EapMethodType;)V

    goto :goto_6

    .line 111
    :pswitch_3f
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/wimax/napid/EapMethodType;->val:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->checkWimaxStateAndUpdate()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$100(Lcom/samsung/wimax/napid/EapMethodType;)V

    goto :goto_6

    .line 116
    :pswitch_4d
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    move-result v0

    .line 117
    .restart local v0       #res:I
    if-ne v0, v2, :cond_61

    .line 119
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "eaptype OdbUpdateReq for USRID success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 123
    :cond_61
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "eaptype OdbUpdateReq for USRID success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 129
    .end local v0           #res:I
    :pswitch_6b
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->readPswd()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$300(Lcom/samsung/wimax/napid/EapMethodType;)V

    goto :goto_6

    .line 132
    :pswitch_71
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/wimax/napid/EapMethodType;->val:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->checkWimaxStateAndUpdate()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$100(Lcom/samsung/wimax/napid/EapMethodType;)V

    goto :goto_6

    .line 137
    :pswitch_7f
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    move-result v0

    .line 138
    .restart local v0       #res:I
    if-ne v0, v2, :cond_94

    .line 140
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "eaptype OdbUpdateReq for Pswd success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 144
    :cond_94
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "eaptype OdbUpdateReq for Pswd success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 149
    .end local v0           #res:I
    :pswitch_9f
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$1;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #calls: Lcom/samsung/wimax/napid/EapMethodType;->readMacAddr()V
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$400(Lcom/samsung/wimax/napid/EapMethodType;)V

    goto/16 :goto_6

    .line 85
    :pswitch_data_a6
    .packed-switch 0x4
        :pswitch_7
        :pswitch_d
        :pswitch_1b
        :pswitch_39
        :pswitch_3f
        :pswitch_4d
        :pswitch_6b
        :pswitch_71
        :pswitch_7f
        :pswitch_9f
    .end packed-switch
.end method
