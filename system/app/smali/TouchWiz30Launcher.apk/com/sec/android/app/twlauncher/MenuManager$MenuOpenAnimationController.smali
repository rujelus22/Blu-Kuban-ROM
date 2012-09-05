.class Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuOpenAnimationController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4650
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 4651
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {p0, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 4652
    return-void
.end method


# virtual methods
.method protected getDelayForView(Landroid/view/View;)J
    .registers 7
    .parameter "view"

    .prologue
    .line 4656
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4657
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, v0, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4658
    .local v1, params:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1600(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;

    move-result-object v2

    iget v3, v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 4659
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4660
    invoke-super {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    move-result-wide v2

    return-wide v2
.end method
