.class Lcom/sec/android/app/minimode/MiniModeService$11;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initFloatingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 1010
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1011
    .local v0, animValue:F
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$1900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1012
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$1900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1013
    return-void
.end method
