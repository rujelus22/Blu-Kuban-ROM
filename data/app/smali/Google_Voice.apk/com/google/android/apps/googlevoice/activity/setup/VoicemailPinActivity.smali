.class public Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;
.super Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.source "VoicemailPinActivity.java"


# instance fields
.field private choosePinConfirmView:Landroid/widget/EditText;

.field private choosePinEnterView:Landroid/widget/EditText;

.field private choosePinPrompt:Landroid/webkit/WebView;

.field private choosePinView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isInputComplete()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_41

    .line 79
    const-string v3, "VoicemailPinActivity.isInputComplete(): %d vs %d chars [%s]"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "same"

    :goto_38
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 84
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_69

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    move v0, v1

    :goto_65
    return v0

    .line 79
    :cond_66
    const-string v0, "different"

    goto :goto_38

    :cond_69
    move v0, v2

    .line 84
    goto :goto_65
.end method

.method protected onBaseCreateCompleted()V
    .registers 5

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onBaseCreateCompleted()V

    .line 35
    sget-object v2, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 37
    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->setup_choose_pin:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->setPageContentView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinView:Landroid/view/View;

    .line 38
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinView:Landroid/view/View;

    sget v3, Lcom/google/android/apps/googlevoice/R$id;->choose_pin_prompt:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinPrompt:Landroid/webkit/WebView;

    .line 39
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinPrompt:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinView:Landroid/view/View;

    sget v3, Lcom/google/android/apps/googlevoice/R$id;->choose_pin_enter:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    .line 41
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinView:Landroid/view/View;

    sget v3, Lcom/google/android/apps/googlevoice/R$id;->choose_pin_confirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getPinWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    .line 44
    .local v0, pinWatcher:Landroid/text/TextWatcher;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 48
    .local v1, transformationMethod:Landroid/text/method/TransformationMethod;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 49
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 51
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity$1;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 66
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinPrompt:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getHtmlForMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinEnterView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->choosePinConfirmView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/VoicemailPinActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
