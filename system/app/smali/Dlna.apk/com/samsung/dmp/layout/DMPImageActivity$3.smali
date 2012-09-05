.class Lcom/samsung/dmp/layout/DMPImageActivity$3;
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
    .line 369
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 371
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1102(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 372
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mTextStop:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mTextSlideShow:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mStopBox:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1400(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mStopButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mSlideshowBox:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1600(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mPlayButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1700(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 381
    return-void
.end method
