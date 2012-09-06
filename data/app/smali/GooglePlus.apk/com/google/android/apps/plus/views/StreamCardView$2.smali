.class Lcom/google/android/apps/plus/views/StreamCardView$2;
.super Ljava/lang/Object;
.source "StreamCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/StreamCardView;->startDelayedShakeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/StreamCardView;

.field final synthetic val$rotX:F

.field final synthetic val$rotY:F


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/StreamCardView;FF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->this$0:Lcom/google/android/apps/plus/views/StreamCardView;

    iput p2, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->val$rotX:F

    iput p3, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->val$rotY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const v3, 0x3f733333

    .line 977
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->this$0:Lcom/google/android/apps/plus/views/StreamCardView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamCardView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 978
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->this$0:Lcom/google/android/apps/plus/views/StreamCardView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->val$rotX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->val$rotY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/plus/views/StreamCardView;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 981
    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView$2;->this$0:Lcom/google/android/apps/plus/views/StreamCardView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/StreamCardView;->access$102(Lcom/google/android/apps/plus/views/StreamCardView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 982
    return-void
.end method
