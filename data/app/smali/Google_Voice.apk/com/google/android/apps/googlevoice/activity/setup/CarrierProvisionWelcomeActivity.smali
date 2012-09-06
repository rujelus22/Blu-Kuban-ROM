.class public Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "CarrierProvisionWelcomeActivity.java"


# instance fields
.field private carrierProvisionSkipButton:Landroid/widget/Button;

.field private carrierProvisionWelcomePrompt:Landroid/webkit/WebView;

.field private carrierProvisionWelcomeView:Landroid/view/View;


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
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->setup_carrier_provision_welcome:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->carrierProvisionWelcomeView:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->carrierProvisionWelcomeView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->carrier_provision_welcome_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->carrierProvisionWelcomePrompt:Landroid/webkit/WebView;

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->carrierProvisionWelcomeView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->carrier_provision_welcome_skip_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->carrierProvisionSkipButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->carrierProvisionSkipButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getSkipCarrierProvisioningListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->carrierProvisionWelcomePrompt:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/CarrierProvisionWelcomeActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 42
    return-void
.end method
