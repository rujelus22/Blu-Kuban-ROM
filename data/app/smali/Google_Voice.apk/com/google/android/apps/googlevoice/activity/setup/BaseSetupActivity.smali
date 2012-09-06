.class public Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.super Landroid/app/Activity;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$DefaultDialogPageCancelListener;,
        Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;
    }
.end annotation


# static fields
.field public static final EXTRA_PARENT_IS_SELF:Ljava/lang/String; = "com.google.android.apps.googlevoice.PARENT_IS_SELF"

.field static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field static final UTF_8:Ljava/lang/String; = "utf-8"


# instance fields
.field alternativesView:Landroid/view/ViewGroup;

.field cancelButtonListener:Landroid/view/View$OnClickListener;

.field centerButtonView:Landroid/view/View;

.field dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

.field flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

.field inlineProgressCancelButton:Landroid/widget/Button;

.field inlineProgressTitleView:Landroid/widget/TextView;

.field inlineProgressView:Landroid/view/View;

.field leftButton:Landroid/widget/Button;

.field leftRightButtonsView:Landroid/view/View;

.field log:Lcom/google/android/apps/common/log/GLog;

.field onDialogPageCancelListener:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;

.field rightButton:Landroid/widget/Button;

.field titleView:Landroid/widget/TextView;

.field private versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$1;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 299
    return-void
.end method


# virtual methods
.method public dismissInlineProgress()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onDialogPageCancelListener:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->centerButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftRightButtonsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    return-void
.end method

.method public getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    return-object v0
.end method

.method handleBackKey()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "center button visible and enabled; calling dialog cancel listener"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onDialogPageCancelListener:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;

    if-eqz v0, :cond_21

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onDialogPageCancelListener:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;->onDialogPageCanceled()V

    .line 202
    :goto_20
    return-void

    .line 194
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "no dialog cancel listener!"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_20

    .line 196
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "left button enabled; going back"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->goBack()V

    goto :goto_20

    .line 200
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "neither button enabled; doing nothing"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public isInputComplete()Z
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public loadHtml(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9
    .parameter "webView"
    .parameter "html"

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to load HTML string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 326
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    return-void
.end method

.method protected onBaseCreateCompleted()V
    .registers 1

    .prologue
    .line 151
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget-object v3, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 88
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSetupFlowManager()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    move-result-object v2

    .line 89
    .local v2, setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 90
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    .line 94
    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getDialogManager(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    .line 96
    sget v3, Lcom/google/android/apps/googlevoice/R$layout;->setup:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setContentView(I)V

    .line 98
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->title:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->titleView:Landroid/widget/TextView;

    .line 100
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->alternatives:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->alternativesView:Landroid/view/ViewGroup;

    .line 102
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->left_right_buttons:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftRightButtonsView:Landroid/view/View;

    .line 103
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->inline_progress_cancel_button:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->centerButtonView:Landroid/view/View;

    .line 105
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->inline_progress:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressView:Landroid/view/View;

    .line 106
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->inline_progress_title:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressTitleView:Landroid/widget/TextView;

    .line 108
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->button_left:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$2;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->button_inline_progress_cancel:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    .line 118
    sget v3, Lcom/google/android/apps/googlevoice/R$id;->button_right:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->rightButton:Landroid/widget/Button;

    .line 119
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->rightButton:Landroid/widget/Button;

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$3;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v3, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$DefaultDialogPageCancelListener;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$DefaultDialogPageCancelListener;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onDialogPageCancelListener:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;

    .line 130
    if-eqz p1, :cond_ac

    .line 133
    invoke-interface {v2, p0, p1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;->restoreSetupFlow(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    .line 145
    :goto_a8
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onBaseCreateCompleted()V

    .line 146
    :goto_ab
    return-void

    .line 137
    :cond_ac
    :try_start_ac
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;->getSetupFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    :try_end_b2
    .catch Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException; {:try_start_ac .. :try_end_b2} :catch_b3

    goto :goto_a8

    .line 138
    :catch_b3
    move-exception v1

    .line 139
    .local v1, e:Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v4, "Setup Flow missing!"

    invoke-interface {v3, v4}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->finish()V

    goto :goto_ab
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "creating dialog for id %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 260
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1e

    .end local v0           #dialog:Landroid/app/Dialog;
    :goto_1d
    return-object v0

    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_1e
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 207
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->handleBackKey()V

    .line 211
    :cond_e
    const/4 v0, 0x1

    .line 213
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 220
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-nez v0, :cond_e

    .line 222
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->handleBackKey()V

    .line 224
    :cond_e
    const/4 v0, 0x1

    .line 226
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 267
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 336
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->getFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->saveStateToBundle(Landroid/os/Bundle;)V

    .line 342
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "onStart()"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    if-eqz v0, :cond_20

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "onStart(): flow is finished, finishing"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->finish()V

    .line 173
    :cond_20
    :goto_20
    return-void

    .line 169
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->onPageActivityStart(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;Lcom/google/android/apps/googlevoice/DialogManager;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->updateView()V

    goto :goto_20
.end method

.method public setButtons(IZZZIZZZ)V
    .registers 13
    .parameter "leftTitle"
    .parameter "leftArrow"
    .parameter "leftVisible"
    .parameter "leftEnabled"
    .parameter "rightTitle"
    .parameter "rightArrow"
    .parameter "rightVisible"
    .parameter "rightEnabled"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 276
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    if-eqz p3, :cond_2a

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    if-eqz p3, :cond_16

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 282
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->rightButton:Landroid/widget/Button;

    if-eqz p7, :cond_2c

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    if-eqz p7, :cond_29

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(I)V

    .line 287
    :cond_29
    return-void

    :cond_2a
    move v0, v2

    .line 276
    goto :goto_7

    :cond_2c
    move v1, v2

    .line 282
    goto :goto_1a
.end method

.method public setButtonsEnabled(ZZ)V
    .registers 4
    .parameter "leftEnabled"
    .parameter "rightEnabled"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 310
    return-void
.end method

.method public setCenterButtonEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    return-void
.end method

.method public setLeftButtonEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    return-void
.end method

.method public setPageContentView(I)Landroid/view/View;
    .registers 5
    .parameter "id"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->alternativesView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 156
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->alternativesView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    return-object v0
.end method

.method public setRightButtonEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    return-void
.end method

.method public showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V
    .registers 7
    .parameter "titleId"
    .parameter "canCancel"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getProgressTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 238
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onDialogPageCancelListener:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->inlineProgressCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->centerButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->leftRightButtonsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public updateView()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->resetButtons()V

    .line 178
    return-void
.end method
