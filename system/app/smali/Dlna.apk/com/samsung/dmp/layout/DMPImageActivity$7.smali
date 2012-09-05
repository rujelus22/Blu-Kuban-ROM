.class Lcom/samsung/dmp/layout/DMPImageActivity$7;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 427
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1100(Lcom/samsung/dmp/layout/DMPImageActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 442
    :goto_a
    return-void

    .line 431
    :cond_b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 432
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z
    invoke-static {v0, v4}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1102(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 434
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mTextStop:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mTextSlideShow:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1400(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mStopButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1600(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mPlayButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1700(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_a
.end method
