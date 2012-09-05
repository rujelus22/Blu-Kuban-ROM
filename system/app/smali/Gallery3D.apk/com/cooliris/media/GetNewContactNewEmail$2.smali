.class Lcom/cooliris/media/GetNewContactNewEmail$2;
.super Ljava/lang/Object;
.source "GetNewContactNewEmail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GetNewContactNewEmail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GetNewContactNewEmail;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GetNewContactNewEmail;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/16 v3, 0x40

    const/4 v4, -0x1

    .line 124
    invoke-static {}, Lcom/cooliris/media/GetNewContactNewEmail;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requesting for Adding more contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->isPhonenumber:Z
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$200(Lcom/cooliris/media/GetNewContactNewEmail;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 127
    invoke-static {}, Lcom/cooliris/media/GetNewContactNewEmail;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Entered for every character:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 131
    invoke-static {}, Lcom/cooliris/media/GetNewContactNewEmail;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Entered for every character:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "new_contact_number"

    iget-object v3, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/cooliris/media/GetNewContactNewEmail;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    invoke-virtual {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->finish()V

    .line 162
    :cond_9d
    :goto_9d
    return-void

    .line 137
    :cond_9e
    invoke-static {}, Lcom/cooliris/media/GetNewContactNewEmail;->access$400()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9d

    .line 139
    :cond_a6
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->isEmailid:Z
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$500(Lcom/cooliris/media/GetNewContactNewEmail;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 140
    invoke-static {}, Lcom/cooliris/media/GetNewContactNewEmail;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Entered for every character:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    .line 144
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-eq v0, v4, :cond_120

    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_129

    .line 147
    :cond_120
    invoke-static {}, Lcom/cooliris/media/GetNewContactNewEmail;->access$600()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9d

    .line 149
    :cond_129
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "new_email_address"

    iget-object v3, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/cooliris/media/GetNewContactNewEmail;->setResult(ILandroid/content/Intent;)V

    .line 151
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    invoke-virtual {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->finish()V

    goto/16 :goto_9d

    .line 154
    :cond_14e
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-eq v0, v4, :cond_182

    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail$2;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cooliris/media/GetNewContactNewEmail;->access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 157
    :cond_182
    invoke-static {}, Lcom/cooliris/media/GetNewContactNewEmail;->access$600()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9d
.end method
