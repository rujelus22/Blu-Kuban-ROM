.class Lcom/vlingo/client/speedtest/SpeedtestScreen$1;
.super Landroid/os/Handler;
.source "SpeedtestScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/speedtest/SpeedtestScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/speedtest/SpeedtestScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/speedtest/SpeedtestScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen$1;->this$0:Lcom/vlingo/client/speedtest/SpeedtestScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 89
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2a

    .line 96
    :cond_5
    :goto_5
    return-void

    .line 91
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 93
    iget-object v1, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen$1;->this$0:Lcom/vlingo/client/speedtest/SpeedtestScreen;

    #getter for: Lcom/vlingo/client/speedtest/SpeedtestScreen;->m_tv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/speedtest/SpeedtestScreen;->access$000(Lcom/vlingo/client/speedtest/SpeedtestScreen;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 89
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
