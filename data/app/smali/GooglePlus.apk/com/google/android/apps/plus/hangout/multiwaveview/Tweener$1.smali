.class final Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 135
    #calls: Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 136
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 130
    #calls: Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 131
    return-void
.end method
