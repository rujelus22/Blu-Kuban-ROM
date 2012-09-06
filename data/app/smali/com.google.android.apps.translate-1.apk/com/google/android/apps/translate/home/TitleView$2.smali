.class Lcom/google/android/apps/translate/home/TitleView$2;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/home/TitleView;->fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/home/TitleView;

.field final synthetic val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/home/TitleView;Lcom/google/android/apps/translate/editor/EditPanelView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    iput-object p2, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/home/TitleView;->checkTitleShow()V

    .line 96
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->isEditMode()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 97
    iget-object v2, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/home/TitleView;->showTitleBar()V

    .line 98
    iget-object v2, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/translate/home/TitleView;->access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 99
    iget-object v2, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/translate/home/TitleView;->access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_2a
    :goto_2a
    return-void

    .line 103
    :cond_2b
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/apps/translate/home/TitleView;->access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 104
    .local v1, langPickerHeight:I
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableSuggestions()Z

    .line 105
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->getSuggestTextViewCount()I

    move-result v0

    .line 106
    .local v0, c:I
    const-string v4, "TitleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fixEditingViewVisibility c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/google/android/apps/translate/home/TitleView;->access$000(Lcom/google/android/apps/translate/home/TitleView;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/translate/Profile;->getInstantTranslation(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 108
    const-string v4, "TitleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fixEditingViewVisibility NO INSTANT c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 111
    :cond_7e
    const/4 v4, 0x5

    if-le v0, v4, :cond_c4

    .line 112
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/home/TitleView;->showTitleBar()V

    .line 116
    :goto_86
    if-le v0, v7, :cond_ca

    .line 117
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/apps/translate/home/TitleView;->access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_a2

    .line 118
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/apps/translate/home/TitleView;->access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onEditPanelHeightChanged(I)V

    .line 129
    :cond_a2
    :goto_a2
    const/4 v4, 0x4

    if-le v0, v4, :cond_aa

    .line 130
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->enableSuggestions()Z

    .line 136
    :cond_aa
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_eb

    .line 137
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-le v0, v2, :cond_e9

    :goto_b6
    invoke-virtual {v4, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->initInstantTranslation(Z)V

    .line 141
    :goto_b9
    iget-object v2, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/home/TitleView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2a

    .line 114
    :cond_c4
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/home/TitleView;->hideTitleBar()V

    goto :goto_86

    .line 122
    :cond_ca
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/apps/translate/home/TitleView;->access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_a2

    .line 123
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    iget-object v5, p0, Lcom/google/android/apps/translate/home/TitleView$2;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/apps/translate/home/TitleView;->access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;

    move-result-object v5

    #calls: Lcom/google/android/apps/translate/home/TitleView;->slideUpInputMethodView(Landroid/view/View;)V
    invoke-static {v4, v5}, Lcom/google/android/apps/translate/home/TitleView;->access$200(Lcom/google/android/apps/translate/home/TitleView;Landroid/view/View;)V

    .line 124
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v4, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onEditPanelHeightChanged(I)V

    goto :goto_a2

    :cond_e9
    move v2, v3

    .line 137
    goto :goto_b6

    .line 139
    :cond_eb
    iget-object v4, p0, Lcom/google/android/apps/translate/home/TitleView$2;->val$editPanelView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-le v0, v7, :cond_f3

    :goto_ef
    invoke-virtual {v4, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->initInstantTranslation(Z)V

    goto :goto_b9

    :cond_f3
    move v2, v3

    goto :goto_ef
.end method
