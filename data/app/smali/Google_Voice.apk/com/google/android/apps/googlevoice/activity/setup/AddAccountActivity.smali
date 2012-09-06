.class public Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "AddAccountActivity.java"


# instance fields
.field private addAccountView:Landroid/widget/Button;

.field private signInAddAccountPromptView:Landroid/webkit/WebView;

.field private signInPasswordView:Landroid/widget/EditText;

.field private signInPromptView:Landroid/webkit/WebView;

.field private signInUsernameView:Landroid/widget/EditText;

.field private signInView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissInlineProgress()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->dismissInlineProgress()V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->addAccountView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    return-void
.end method

.method public isInputComplete()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onBaseCreateCompleted()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 35
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onBaseCreateCompleted()V

    .line 36
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 38
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->setup_sign_in:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->sign_in_prompt:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPromptView:Landroid/webkit/WebView;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->sign_in_username:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInUsernameView:Landroid/widget/EditText;

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->sign_in_add_account_prompt:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInAddAccountPromptView:Landroid/webkit/WebView;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->add_account:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->addAccountView:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInUsernameView:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$1;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInView:Landroid/view/View;

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->sign_in_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPasswordView:Landroid/widget/EditText;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPasswordView:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$2;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPasswordView:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity$3;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getAddAccountClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 85
    .local v6, addAccountClickListener:Landroid/view/View$OnClickListener;
    if-nez v6, :cond_8f

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInAddAccountPromptView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->addAccountView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_8e
    return-void

    .line 89
    :cond_8f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInAddAccountPromptView:Landroid/webkit/WebView;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->setup_page_sign_in_add_account_prompt:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->addAccountView:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8e
.end method

.method public showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V
    .registers 6
    .parameter "titleId"
    .parameter "canCancel"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->addAccountView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->signInPromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 99
    return-void
.end method
