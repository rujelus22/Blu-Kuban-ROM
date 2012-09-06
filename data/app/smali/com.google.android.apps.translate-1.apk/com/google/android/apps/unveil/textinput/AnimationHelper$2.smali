.class final Lcom/google/android/apps/unveil/textinput/AnimationHelper$2;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/AnimationHelper;->animatePreHCMR1(Landroid/view/View;Landroid/view/animation/Animation;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
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
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/AnimationHelper$2;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/AnimationHelper$2;->val$onEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 78
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 80
    return-void
.end method
