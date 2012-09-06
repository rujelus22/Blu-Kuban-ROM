.class Lcom/google/android/apps/translate/translation/InputPanel$6;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/InputPanel;

.field final synthetic val$event:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->val$event:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 788
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->val$event:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->disableEditMode(ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 789
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mPanelView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1100(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$id;->panel_input:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 790
    .local v0, inputPanel:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setInputBoxIcons(Z)V
    invoke-static {v1, v3}, Lcom/google/android/apps/translate/translation/InputPanel;->access$600(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 791
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 792
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/InputPanel;->access$000(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 793
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mTitleView:Lcom/google/android/apps/translate/home/TitleView;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1200(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/home/TitleView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel$6;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/InputPanel;->access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/home/TitleView;->fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V

    .line 794
    return-void
.end method
