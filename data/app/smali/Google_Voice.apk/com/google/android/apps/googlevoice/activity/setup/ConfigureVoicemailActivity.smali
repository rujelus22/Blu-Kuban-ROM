.class public Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "ConfigureVoicemailActivity.java"


# instance fields
.field private configureVoicemailPromptView:Landroid/webkit/WebView;

.field private configureVoicemailSkipButton:Landroid/widget/Button;

.field private configureVoicemailView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
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
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->setup_voicemail:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailView:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->configure_voicemail_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailPromptView:Landroid/webkit/WebView;

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailPromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->configure_voicemail_skip_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailSkipButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailSkipButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getSkipConfigureVoicemailListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 40
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 41
    const-string v0, "ConfigureVoicemailActivity.onRestart()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 43
    :cond_9
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onRestart()V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->configureVoicemailActivityDidRestart(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V

    .line 47
    :cond_1d
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->configureVoicemailPromptView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/ConfigureVoicemailActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 53
    return-void
.end method
