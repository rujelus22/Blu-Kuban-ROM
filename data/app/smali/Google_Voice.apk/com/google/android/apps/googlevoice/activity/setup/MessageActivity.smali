.class public Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "MessageActivity.java"


# instance fields
.field private explanationView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBaseCreateCompleted()V
    .registers 3

    .prologue
    .line 22
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onBaseCreateCompleted()V

    .line 23
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 25
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->setup_explanation:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->explanationView:Landroid/webkit/WebView;

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->explanationView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 27
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 31
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->explanationView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/MessageActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 33
    return-void
.end method
