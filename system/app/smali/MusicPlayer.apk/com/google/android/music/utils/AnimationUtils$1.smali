.class final Lcom/google/android/music/utils/AnimationUtils$1;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/AnimationUtils;->animateErrorTextAnimation(Landroid/widget/TextView;ZLjava/lang/CharSequence;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$errorText:Ljava/lang/CharSequence;

.field final synthetic val$errorTextView:Landroid/widget/TextView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(ZLandroid/widget/TextView;Landroid/view/animation/AlphaAnimation;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$show:Z

    iput-object p2, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object p4, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$show:Z

    if-nez v0, :cond_a

    .line 51
    iget-object v0, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorTextView:Landroid/widget/TextView;

    monitor-enter v1

    .line 54
    :try_start_d
    iget-object v0, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-ne v0, v2, :cond_1c

    .line 55
    iget-object v0, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 63
    :cond_1c
    iget-object v0, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw v0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 67
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$show:Z

    if-eqz v0, :cond_a

    .line 45
    iget-object v0, p0, Lcom/google/android/music/utils/AnimationUtils$1;->val$errorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :cond_a
    return-void
.end method
