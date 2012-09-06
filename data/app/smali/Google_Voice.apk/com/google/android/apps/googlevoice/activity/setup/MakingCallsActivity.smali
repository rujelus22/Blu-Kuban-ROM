.class public Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "MakingCallsActivity.java"


# instance fields
.field private callModeListView:Landroid/widget/ListView;

.field private callModePromptView:Landroid/webkit/WebView;

.field private callModeView:Landroid/view/View;


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
    .line 26
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onBaseCreateCompleted()V

    .line 27
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 29
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->setup_call_mode:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModeView:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModeView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->call_mode_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModePromptView:Landroid/webkit/WebView;

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModePromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModeView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->call_mode_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModeListView:Landroid/widget/ListView;

    .line 33
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModePromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModeListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getCallingModesAdapter()Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->callModeListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MakingCallsActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getCallingModesClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    return-void
.end method
