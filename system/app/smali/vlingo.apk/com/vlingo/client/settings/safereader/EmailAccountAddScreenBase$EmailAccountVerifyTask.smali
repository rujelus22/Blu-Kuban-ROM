.class Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;
.super Landroid/os/AsyncTask;
.source "EmailAccountAddScreenBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailAccountVerifyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/vlingo/client/safereader/email/EmailAccount;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

.field m_errorMessage:Ljava/lang/String;

.field res:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    .line 125
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->res:Landroid/content/res/Resources;

    .line 126
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->res:Landroid/content/res/Resources;

    const v1, 0x7f090386

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_errorMessage:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/vlingo/client/safereader/email/EmailAccount;)Ljava/lang/Boolean;
    .registers 5
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 130
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    .line 131
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    iget-object v0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-static {v0, v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->accountExists(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->res:Landroid/content/res/Resources;

    const v1, 0x7f090385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_errorMessage:Ljava/lang/String;

    .line 142
    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_20
    return-object v0

    .line 135
    :cond_21
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailAccount;->verify()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20

    .line 139
    :cond_2f
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->res:Landroid/content/res/Resources;

    const v1, 0x7f090384

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_errorMessage:Ljava/lang/String;

    goto :goto_1c
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 122
    check-cast p1, [Lcom/vlingo/client/safereader/email/EmailAccount;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->doInBackground([Lcom/vlingo/client/safereader/email/EmailAccount;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 147
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    iget-object v1, v1, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    iget-object v1, v1, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 149
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    iget-object v1, v1, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 151
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_account:Lcom/vlingo/client/safereader/email/EmailAccount;

    iget-object v2, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-static {v1, v2}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->insert(Lcom/vlingo/client/safereader/email/EmailAccount;Landroid/content/Context;)V

    .line 153
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-static {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getEmailAccounts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_44

    .line 155
    invoke-static {v3}, Lcom/vlingo/client/settings/Settings;->setEMailReadbackEnabled(Z)V

    .line 156
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setFeature(IZ)V

    .line 158
    :cond_44
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-virtual {v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->finish()V

    .line 171
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->m_progressDialog:Landroid/app/ProgressDialog;

    .line 172
    return-void

    .line 161
    :cond_4f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->res:Landroid/content/res/Resources;

    const v2, 0x7f090383

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->m_errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->res:Landroid/content/res/Resources;

    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask$1;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_49
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 122
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase$EmailAccountVerifyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
