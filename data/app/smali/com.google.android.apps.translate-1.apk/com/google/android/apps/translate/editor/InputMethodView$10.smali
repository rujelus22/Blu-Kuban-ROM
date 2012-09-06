.class Lcom/google/android/apps/translate/editor/InputMethodView$10;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->slideUpInputMethodView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InputMethodView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V
    .registers 2
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$10;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 737
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$10;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$000(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 745
    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$10;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$500(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$10;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$000(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onInputMethodReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 746
    return-void

    .line 739
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$10;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$600(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->onEditStarted()V

    .line 740
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$10;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mHandwritingInputView:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$600(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->resetStrokes(Z)V

    goto :goto_11

    .line 737
    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_21
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 750
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 754
    return-void
.end method
