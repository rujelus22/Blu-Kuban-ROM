.class Lcom/google/android/apps/translate/translation/InputPanel$5;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->startEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/InputPanel;

.field final synthetic val$inputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->val$inputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 768
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1000(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 769
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1100(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$id;->panel_input:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 770
    .local v0, inputPanel:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->val$inputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-eqz v1, :cond_21

    .line 771
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->val$inputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->enableEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 773
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 774
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel$5;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/InputPanel;->access$000(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 775
    return-void
.end method
