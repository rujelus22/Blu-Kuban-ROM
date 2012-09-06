.class Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;
.super Ljava/lang/Object;
.source "HideViewAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;->view:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 32
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 36
    return-void
.end method
