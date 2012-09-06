.class Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;
.super Ljava/lang/Object;
.source "StreamAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/StreamAdapter$1;->onScroll(Lcom/google/android/apps/plus/views/ColumnGridView;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/phone/StreamAdapter$1;

.field final synthetic val$childView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/StreamAdapter$1;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;->this$1:Lcom/google/android/apps/plus/phone/StreamAdapter$1;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 279
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 275
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 283
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 266
    return-void
.end method
