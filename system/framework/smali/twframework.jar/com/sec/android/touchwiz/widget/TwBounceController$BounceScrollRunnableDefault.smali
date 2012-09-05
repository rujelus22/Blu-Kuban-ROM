.class Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;
.super Ljava/lang/Object;
.source "TwBounceController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BounceScrollRunnableDefault"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BounceScrollRunnableDefault"


# instance fields
.field mBounceDuration:F

.field mBounceExtentCoef:F

.field private mStartFromDrag:Z

.field private mStartTime:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwBounceController;)V
    .registers 3
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 653
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 662
    return-void
.end method

.method private computeBounceExtent(F)F
    .registers 5
    .parameter "timeFraction"

    .prologue
    .line 714
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mTweener:Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    invoke-interface {v1, v2, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;->compute(ZF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 756
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 726
    .local v0, tNow:J
    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    div-float v2, v3, v4

    .line 728
    .local v2, timeFraction:F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->computeBounceExtent(F)F

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 731
    const-string v3, "BounceScrollRunnableDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(), TimeFraction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBounceExtent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_67

    .line 736
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 738
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_5a

    .line 739
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 740
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 743
    :cond_5a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->cancel()V

    .line 745
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 752
    :goto_66
    return-void

    .line 749
    :cond_67
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 751
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_66
.end method

.method public start(F)V
    .registers 13
    .parameter "flingSpeed"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v4, -0x4080

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 666
    const-string v3, "BounceScrollRunnableDefault"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), mBounceExtent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->cancel()V

    .line 672
    cmpl-float v3, p1, v7

    if-nez v3, :cond_ac

    .line 673
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 675
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mOrientation:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$000(Lcom/sec/android/touchwiz/widget/TwBounceController;)I

    move-result v3

    if-nez v3, :cond_a1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :goto_4f
    int-to-float v3, v3

    div-float v0, v4, v3

    .line 678
    .local v0, extentRatio:F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v3

    aget v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v4

    aget v4, v4, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v4

    aget v4, v4, v8

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 681
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 704
    .end local v0           #extentRatio:F
    :cond_77
    :goto_77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartTime:J

    .line 706
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 709
    const-string v3, "BounceScrollRunnableDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBounceExtentCoef = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void

    .line 675
    :cond_a1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    goto :goto_4f

    .line 684
    :cond_ac
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 686
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxFlingSpeed:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$300(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c9

    .line 687
    cmpg-float v3, p1, v7

    if-gez v3, :cond_11f

    move v3, v4

    :goto_c1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxFlingSpeed:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$300(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    mul-float p1, v3, v5

    .line 690
    :cond_c9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxFlingSpeed:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$300(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    div-float v2, v3, v5

    .line 692
    .local v2, speedRatio:F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v3

    const/4 v5, 0x3

    aget v3, v3, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v5

    aget v5, v5, v10

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v5

    aget v5, v5, v10

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 695
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mOrientation:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$000(Lcom/sec/android/touchwiz/widget/TwBounceController;)I

    move-result v3

    if-nez v3, :cond_122

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :goto_107
    int-to-float v3, v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxBounceRatio:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$400(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    mul-float v1, v3, v5

    .line 698
    .local v1, maxBounceExtent:F
    mul-float v3, v1, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 700
    cmpl-float v3, p1, v7

    if-lez v3, :cond_77

    .line 701
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    goto/16 :goto_77

    .line 687
    .end local v1           #maxBounceExtent:F
    .end local v2           #speedRatio:F
    :cond_11f
    const/high16 v3, 0x3f80

    goto :goto_c1

    .line 695
    .restart local v2       #speedRatio:F
    :cond_122
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    goto :goto_107
.end method
