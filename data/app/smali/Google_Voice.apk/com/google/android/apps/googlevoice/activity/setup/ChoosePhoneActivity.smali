.class public Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "ChoosePhoneActivity.java"


# instance fields
.field private choosePhoneListView:Landroid/widget/ListView;

.field private choosePhonePromptView:Landroid/webkit/WebView;

.field private choosePhoneView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBaseCreateCompleted()V
    .registers 3

    .prologue
    .line 25
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onBaseCreateCompleted()V

    .line 26
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 28
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->setup_choose_phone:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhoneView:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhoneView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->prompt_choose_phone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhonePromptView:Landroid/webkit/WebView;

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhonePromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhoneView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->phones:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhoneListView:Landroid/widget/ListView;

    .line 32
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhonePromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhoneListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getPhonesAdapter()Lcom/google/android/apps/googlevoice/PhonesAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->choosePhoneListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ChoosePhoneActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getPhonesClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    return-void
.end method
