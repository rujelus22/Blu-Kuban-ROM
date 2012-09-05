.class Lcom/infraware/common/account/AddAccountEdit$8;
.super Ljava/lang/Object;
.source "AddAccountEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AddAccountEdit;->setControlAction()V
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
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/16 v5, 0x64

    .line 241
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v3, v3, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, email:Ljava/lang/String;
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v3, v3, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_be

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_be

    .line 245
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;
    invoke-static {v3}, Lcom/infraware/common/account/AddAccountEdit;->access$5(Lcom/infraware/common/account/AddAccountEdit;)Lcom/infraware/common/account/ListAccountInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->m_nService:I
    invoke-static {v4}, Lcom/infraware/common/account/AddAccountEdit;->access$6(Lcom/infraware/common/account/AddAccountEdit;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/infraware/common/account/ListAccountInfo;->isAccountExist(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 246
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    const v4, 0x7f080064

    #setter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I
    invoke-static {v3, v4}, Lcom/infraware/common/account/AddAccountEdit;->access$12(Lcom/infraware/common/account/AddAccountEdit;I)V

    .line 247
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v3, v5}, Lcom/infraware/common/account/AddAccountEdit;->showDialog(I)V

    .line 283
    :cond_4d
    :goto_4d
    return-void

    .line 251
    :cond_4e
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;
    invoke-static {v3}, Lcom/infraware/common/account/AddAccountEdit;->access$5(Lcom/infraware/common/account/AddAccountEdit;)Lcom/infraware/common/account/ListAccountInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/common/account/ListAccountInfo;->getAccountCount()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_6a

    .line 252
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    const v4, 0x7f080065

    #setter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I
    invoke-static {v3, v4}, Lcom/infraware/common/account/AddAccountEdit;->access$12(Lcom/infraware/common/account/AddAccountEdit;I)V

    .line 253
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v3, v5}, Lcom/infraware/common/account/AddAccountEdit;->showDialog(I)V

    goto :goto_4d

    .line 257
    :cond_6a
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v3, v1}, Lcom/infraware/common/account/AddAccountEdit;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 258
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    const v4, 0x7f080066

    #setter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I
    invoke-static {v3, v4}, Lcom/infraware/common/account/AddAccountEdit;->access$12(Lcom/infraware/common/account/AddAccountEdit;I)V

    .line 259
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v3, v5}, Lcom/infraware/common/account/AddAccountEdit;->showDialog(I)V

    goto :goto_4d

    .line 267
    :cond_80
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;
    invoke-static {v3}, Lcom/infraware/common/account/AddAccountEdit;->access$5(Lcom/infraware/common/account/AddAccountEdit;)Lcom/infraware/common/account/ListAccountInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->m_nService:I
    invoke-static {v4}, Lcom/infraware/common/account/AddAccountEdit;->access$6(Lcom/infraware/common/account/AddAccountEdit;)I

    move-result v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/infraware/common/account/ListAccountInfo;->addAccount(ILjava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "result"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/infraware/common/account/AddAccountEdit;->mResultIntent:Landroid/content/Intent;

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v3, v3, Lcom/infraware/common/account/AddAccountEdit;->mResultIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 272
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v5, v5, Lcom/infraware/common/account/AddAccountEdit;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Lcom/infraware/common/account/AddAccountEdit;->setResult(ILandroid/content/Intent;)V

    .line 274
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v3, v3, Lcom/infraware/common/account/AddAccountEdit;->mEventHandler:Landroid/os/Handler;

    const/16 v4, 0x190

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4d

    .line 276
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_be
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d3

    .line 277
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    const v4, 0x7f080054

    #setter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I
    invoke-static {v3, v4}, Lcom/infraware/common/account/AddAccountEdit;->access$12(Lcom/infraware/common/account/AddAccountEdit;I)V

    .line 278
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v3, v5}, Lcom/infraware/common/account/AddAccountEdit;->showDialog(I)V

    goto/16 :goto_4d

    .line 279
    :cond_d3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4d

    .line 280
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    const v4, 0x7f080055

    #setter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I
    invoke-static {v3, v4}, Lcom/infraware/common/account/AddAccountEdit;->access$12(Lcom/infraware/common/account/AddAccountEdit;I)V

    .line 281
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit$8;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v3, v5}, Lcom/infraware/common/account/AddAccountEdit;->showDialog(I)V

    goto/16 :goto_4d
.end method
