.class public Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "SignInActivity.java"


# instance fields
.field private chooseAccountListView:Landroid/widget/ListView;

.field private chooseAccountPromptView:Landroid/webkit/WebView;

.field private chooseAccountView:Landroid/view/View;

.field private useDifferentAccountButton:Landroid/widget/Button;

.field private useDifferentAccountButtonRow:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissInlineProgress()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->dismissInlineProgress()V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->useDifferentAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    return-void
.end method

.method protected onBaseCreateCompleted()V
    .registers 4

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onBaseCreateCompleted()V

    .line 30
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 32
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->setup_choose_account:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountView:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->choose_account_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountPromptView:Landroid/webkit/WebView;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountPromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->choose_account_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountListView:Landroid/widget/ListView;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->setup_use_different_account:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->useDifferentAccountButtonRow:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->useDifferentAccountButtonRow:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->use_different_account_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->useDifferentAccountButton:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->useDifferentAccountButtonRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V
    .registers 6
    .parameter "titleId"
    .parameter "canCancel"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->useDifferentAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountPromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getAccountsAdapter()Lcom/google/android/apps/googlevoice/AccountsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->chooseAccountListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getAccountsClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->useDifferentAccountButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SignInActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getUseDifferentAccountClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
