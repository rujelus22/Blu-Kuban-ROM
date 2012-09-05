.class public abstract Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;
.super Landroid/app/Activity;
.source "EmailAccountAddScreenBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;
    }
.end annotation


# instance fields
.field protected m_btnCancel:Landroid/widget/Button;

.field protected m_btnNext:Landroid/widget/Button;

.field protected m_currentVerifyTask:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

.field protected m_progressDialog:Landroid/app/ProgressDialog;

.field protected m_txtEmail:Landroid/widget/EditText;

.field protected m_txtPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_currentVerifyTask:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

    .line 34
    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_progressDialog:Landroid/app/ProgressDialog;

    .line 122
    return-void
.end method


# virtual methods
.method addValidationListener(Landroid/widget/EditText;)V
    .registers 3
    .parameter "txt"

    .prologue
    .line 70
    new-instance v0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$3;

    invoke-direct {v0, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$3;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    return-void
.end method

.method protected declared-synchronized cancelDialog()V
    .registers 3

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_currentVerifyTask:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_currentVerifyTask:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->cancel(Z)Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_currentVerifyTask:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

    .line 117
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_progressDialog:Landroid/app/ProgressDialog;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 118
    monitor-exit p0

    return-void

    .line 113
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getEmailAccount()Lcom/vlingo/client/safereader/email/EmailAccount;
.end method

.method initControls()V
    .registers 3

    .prologue
    .line 53
    const v0, 0x7f0f007c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_txtEmail:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f0f007e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_txtPassword:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_btnNext:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_btnNext:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$1;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_btnCancel:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$2;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method protected isEmpty(Landroid/widget/EditText;)Z
    .registers 4
    .parameter "control"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method isInputValid()Z
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, valid:Z
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_txtEmail:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->isEmpty(Landroid/widget/EditText;)Z

    move-result v0

    .line 88
    if-eqz v0, :cond_14

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_txtPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->isEmpty(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    .line 89
    :cond_14
    :goto_14
    return v0

    .line 88
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstance"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09037e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09036e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->cancelDialog()V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 50
    return-void
.end method

.method updateNextButton()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_btnNext:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->isInputValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    return-void
.end method

.method protected verifyAccount()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 99
    const v0, 0x7f090387

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090388

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$4;

    invoke-direct {v5, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$4;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_progressDialog:Landroid/app/ProgressDialog;

    .line 108
    new-instance v0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$1;)V

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_currentVerifyTask:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

    .line 109
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_currentVerifyTask:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;

    new-array v1, v3, [Lcom/vlingo/client/safereader/email/EmailAccount;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->getEmailAccount()Lcom/vlingo/client/safereader/email/EmailAccount;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method
