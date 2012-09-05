.class public Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;
.super Landroid/app/Activity;
.source "EmailAccountEditScreen.java"


# static fields
.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "account_id"


# instance fields
.field m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

.field m_btnEnabled:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstance"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f030020

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, accountId:I
    invoke-static {v0, p0}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getAccount(ILandroid/content/Context;)Lcom/vlingo/client/safereader/email/EmailAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    .line 39
    const v3, 0x7f0f006f

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 40
    .local v1, im:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    iget v3, v3, Lcom/vlingo/client/safereader/email/EmailAccount;->accountType:I

    invoke-static {v3}, Lcom/vlingo/client/safereader/email/EmailAccount;->getImageResourceId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    const v3, 0x7f0f0084

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_btnEnabled:Landroid/widget/CheckBox;

    .line 43
    iget-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_btnEnabled:Landroid/widget/CheckBox;

    new-instance v4, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$1;

    invoke-direct {v4, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$1;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    iget-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_btnEnabled:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    invoke-virtual {v4}, Lcom/vlingo/client/safereader/email/EmailAccount;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    const v3, 0x7f0f0085

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;

    invoke-direct {v4, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v3, 0x7f0f007c

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, txt:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    iget-object v3, v3, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090101

    invoke-virtual {p0, v4}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09037e

    invoke-virtual {p0, v4}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method
