.class Lcom/google/android/apps/translate/editor/InputMethodView$13;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->slideDown(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InputMethodView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$13;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    iput-object p2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$13;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$13;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 834
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 838
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 842
    return-void
.end method
