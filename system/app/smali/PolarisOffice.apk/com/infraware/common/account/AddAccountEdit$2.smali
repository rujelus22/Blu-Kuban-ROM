.class Lcom/infraware/common/account/AddAccountEdit$2;
.super Landroid/os/Handler;
.source "AddAccountEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AddAccountEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccountEdit;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 526
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 528
    iget v4, p1, Landroid/os/Message;->what:I

    .line 529
    .local v4, updateType:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 531
    .local v2, msgObj:Ljava/lang/Object;
    packed-switch v4, :pswitch_data_7e

    .line 558
    .end local v2           #msgObj:Ljava/lang/Object;
    :goto_7
    :pswitch_7
    return-void

    .line 534
    .restart local v2       #msgObj:Ljava/lang/Object;
    :pswitch_8
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v6, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    check-cast v2, Ljava/lang/String;

    .end local v2           #msgObj:Ljava/lang/Object;
    #calls: Lcom/infraware/common/account/AddAccountEdit;->startProgressing(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v5, v6, v2}, Lcom/infraware/common/account/AddAccountEdit;->access$3(Lcom/infraware/common/account/AddAccountEdit;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 539
    .restart local v2       #msgObj:Ljava/lang/Object;
    :pswitch_12
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #calls: Lcom/infraware/common/account/AddAccountEdit;->stopProgressing()V
    invoke-static {v5}, Lcom/infraware/common/account/AddAccountEdit;->access$4(Lcom/infraware/common/account/AddAccountEdit;)V

    goto :goto_7

    .line 542
    :pswitch_18
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v5, v5, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, email:Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v5, v5, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, password:Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;
    invoke-static {v5}, Lcom/infraware/common/account/AddAccountEdit;->access$5(Lcom/infraware/common/account/AddAccountEdit;)Lcom/infraware/common/account/ListAccountInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->m_nService:I
    invoke-static {v6}, Lcom/infraware/common/account/AddAccountEdit;->access$6(Lcom/infraware/common/account/AddAccountEdit;)I

    move-result v6

    invoke-virtual {v5, v6, v1, v3}, Lcom/infraware/common/account/ListAccountInfo;->addAccount(ILjava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "result"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/infraware/common/account/AddAccountEdit;->mResultIntent:Landroid/content/Intent;

    .line 548
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v5, v5, Lcom/infraware/common/account/AddAccountEdit;->mResultIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.INTENT"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v7, v7, Lcom/infraware/common/account/AddAccountEdit;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Lcom/infraware/common/account/AddAccountEdit;->setResult(ILandroid/content/Intent;)V

    .line 552
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v5, v5, Lcom/infraware/common/account/AddAccountEdit;->mEventHandler:Landroid/os/Handler;

    const/16 v6, 0x190

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 555
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #password:Ljava/lang/String;
    :pswitch_76
    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$2;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    check-cast v2, Landroid/app/AlertDialog;

    .end local v2           #msgObj:Ljava/lang/Object;
    #setter for: Lcom/infraware/common/account/AddAccountEdit;->mErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v2}, Lcom/infraware/common/account/AddAccountEdit;->access$7(Lcom/infraware/common/account/AddAccountEdit;Landroid/app/AlertDialog;)V

    goto :goto_7

    .line 531
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_76
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
