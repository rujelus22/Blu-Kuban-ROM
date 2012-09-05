.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayImageRunnable"
.end annotation


# instance fields
.field private mDisplayRotation:I

.field private mImage:Landroid/graphics/Bitmap;

.field private mIndex:I

.field private mInitTime:J

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;JILandroid/graphics/Bitmap;I)V
    .registers 7
    .parameter
    .parameter "initTime"
    .parameter "index"
    .parameter "image"
    .parameter "displayRotation"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    iput-wide p2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mInitTime:J

    .line 1457
    iput p4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mIndex:I

    .line 1458
    iput-object p5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mImage:Landroid/graphics/Bitmap;

    .line 1459
    iput p6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mDisplayRotation:I

    .line 1460
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1465
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mInitTime:J

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mIndex:I

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->setImageBitmap(JILandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1542
    :cond_13
    :goto_13
    return-void

    .line 1470
    :cond_14
    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mIndex:I

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurrentPage:I
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_13

    .line 1472
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mRotateAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1800(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 1473
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1474
    .local v0, trans:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1475
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1476
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAniListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1900(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1477
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mOuterLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1536
    .end local v0           #trans:Landroid/view/animation/Animation;
    :cond_5c
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->mDisplayRotation:I

    #setter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageViewRotation:I
    invoke-static {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2002(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)I

    .line 1538
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mFlipper:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->setVisibility(I)V

    .line 1539
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mCurtainLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2100(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1540
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePageInfo()V
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$800(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    goto :goto_13
.end method
