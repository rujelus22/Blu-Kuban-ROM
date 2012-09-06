.class final Lcom/google/android/apps/unveil/textinput/AnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/AnimationHelper;->animatePostHC(Landroid/view/ViewPropertyAnimator;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/AnimationHelper$1;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animator"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/AnimationHelper$1;->val$onEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 56
    return-void
.end method
