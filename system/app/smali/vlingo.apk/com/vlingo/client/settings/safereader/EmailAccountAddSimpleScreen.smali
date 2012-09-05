.class public Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;
.super Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;
.source "EmailAccountAddSimpleScreen.java"


# instance fields
.field m_emailAccountType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEmailAccount()Lcom/vlingo/client/safereader/email/EmailAccount;
    .registers 6

    .prologue
    .line 37
    const-string v1, ""

    .line 38
    .local v1, emailSuffix:Ljava/lang/String;
    iget v4, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->m_emailAccountType:I

    packed-switch v4, :pswitch_data_60

    .line 50
    :goto_7
    const v4, 0x7f0f007c

    invoke-virtual {p0, v4}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 51
    .local v3, txtEmail:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, email:Ljava/lang/String;
    const v4, 0x7f0f007e

    invoke-virtual {p0, v4}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, password:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4f

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_4f
    iget v4, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->m_emailAccountType:I

    invoke-static {v0, v2, v4}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getEmailAccountForProvider(Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/safereader/email/EmailAccount;

    move-result-object v4

    return-object v4

    .line 40
    .end local v0           #email:Ljava/lang/String;
    .end local v2           #password:Ljava/lang/String;
    .end local v3           #txtEmail:Landroid/widget/EditText;
    :pswitch_56
    const-string v1, "@gmail.com"

    .line 41
    goto :goto_7

    .line 43
    :pswitch_59
    const-string v1, "@hotmail.com"

    .line 44
    goto :goto_7

    .line 46
    :pswitch_5c
    const-string v1, "@yahoo.com"

    goto :goto_7

    .line 38
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_56
        :pswitch_59
        :pswitch_5c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstance"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->initControls()V

    .line 25
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->updateNextButton()V

    .line 27
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->m_txtEmail:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->addValidationListener(Landroid/widget/EditText;)V

    .line 28
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->m_txtPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->addValidationListener(Landroid/widget/EditText;)V

    .line 30
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listitemparam"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->m_emailAccountType:I

    .line 31
    const v1, 0x7f0f006f

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .local v0, im:Landroid/widget/ImageView;
    iget v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddSimpleScreen;->m_emailAccountType:I

    invoke-static {v1}, Lcom/vlingo/client/safereader/email/EmailAccount;->getImageResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    return-void
.end method
