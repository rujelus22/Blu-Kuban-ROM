.class Lcom/google/android/apps/translate/editor/InputMethodView$11;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->slideDownInputMethodView()V
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
    .line 765
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$11;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$11;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #calls: Lcom/google/android/apps/translate/editor/InputMethodView;->render()V
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$700(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    .line 771
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$11;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$000(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->NONE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne v0, v1, :cond_15

    .line 774
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$11;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/translate/editor/InputMethodView;->showInputSelector(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$800(Lcom/google/android/apps/translate/editor/InputMethodView;Z)V

    .line 777
    :cond_15
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 781
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 785
    return-void
.end method
