.class Lcom/vlingo/client/superdialer/SuperDialerActivity$5;
.super Landroid/os/Handler;
.source "SuperDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SuperDialerActivity;->setupEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 614
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_4a

    .line 632
    :goto_6
    return-void

    .line 616
    :sswitch_7
    invoke-virtual {p0, v4}, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->removeMessages(I)V

    .line 617
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->searchBox:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$500(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeSearch(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$600(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;Z)V

    goto :goto_6

    .line 620
    :sswitch_1e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    const/4 v3, 0x1

    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeSearch(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$600(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;Z)V

    .line 622
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->updateTextBoxWithoutSearching(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$700(Lcom/vlingo/client/superdialer/SuperDialerActivity;Ljava/lang/String;)V

    goto :goto_6

    .line 625
    .end local v1           #query:Ljava/lang/String;
    :sswitch_34
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->startAutoDialActivity()V
    invoke-static {v2}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$800(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V

    goto :goto_6

    .line 628
    :sswitch_3a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, localQuery:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$5;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->executeBusinessSearch(Ljava/lang/String;)V

    goto :goto_6

    .line 614
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_34
        0xc9 -> :sswitch_3a
    .end sparse-switch
.end method
