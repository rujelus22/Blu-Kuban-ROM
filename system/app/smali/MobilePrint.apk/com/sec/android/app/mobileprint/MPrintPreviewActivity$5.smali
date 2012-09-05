.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 9
    .parameter "animation"

    .prologue
    const-wide/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    move-result v1

    if-lez v1, :cond_72

    .line 304
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 305
    .local v0, trans:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    move-result v1

    if-ne v1, v4, :cond_73

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$508(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$600(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    move-result v2

    if-le v1, v2, :cond_3f

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I
    invoke-static {v1, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$502(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I

    .line 312
    :cond_3f
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->showNext()V

    .line 314
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #trans:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 315
    .restart local v0       #trans:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 316
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 330
    :goto_67
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mNextFlip:I
    invoke-static {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$302(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePageInfo()V
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$800(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    .line 340
    .end local v0           #trans:Landroid/view/animation/Animation;
    :cond_72
    return-void

    .line 320
    .restart local v0       #trans:Landroid/view/animation/Animation;
    :cond_73
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$510(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    move-result v1

    if-ge v1, v4, :cond_8b

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mTotalPage:I
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$600(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    move-result v2

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I
    invoke-static {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$502(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I

    .line 323
    :cond_8b
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->showPrevious()V

    .line 325
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #trans:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 326
    .restart local v0       #trans:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 327
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_67
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mLastAniTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$902(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;J)J

    .line 345
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mLastAniTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$902(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;J)J

    .line 350
    return-void
.end method
