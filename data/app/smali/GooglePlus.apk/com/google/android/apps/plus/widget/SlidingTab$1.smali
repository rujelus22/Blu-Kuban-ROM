.class Lcom/google/android/apps/plus/widget/SlidingTab$1;
.super Ljava/lang/Object;
.source "SlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/widget/SlidingTab;->dispatchTriggerEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/SlidingTab;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/SlidingTab;)V
    .registers 2
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$1;->this$0:Lcom/google/android/apps/plus/widget/SlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$1;->this$0:Lcom/google/android/apps/plus/widget/SlidingTab;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/widget/SlidingTab;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$1;->this$0:Lcom/google/android/apps/plus/widget/SlidingTab;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/widget/SlidingTab;->resetView()V

    .line 501
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 495
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 491
    return-void
.end method
