.class Lcom/arcsoft/widget/BounceView$1;
.super Landroid/os/Handler;
.source "BounceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/BounceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/BounceView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/BounceView;)V
    .registers 2
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    .line 674
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_66

    .line 676
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    #getter for: Lcom/arcsoft/widget/BounceView;->mAnimCount:I
    invoke-static {v2}, Lcom/arcsoft/widget/BounceView;->access$000(Lcom/arcsoft/widget/BounceView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    const/high16 v3, 0x4120

    div-float v0, v2, v3

    .line 677
    .local v0, f:F
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    #getter for: Lcom/arcsoft/widget/BounceView;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v2}, Lcom/arcsoft/widget/BounceView;->access$100(Lcom/arcsoft/widget/BounceView;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 678
    .local v1, interpolation:F
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    iget-object v3, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    iget v3, v3, Lcom/arcsoft/widget/BounceView;->startX:F

    iget-object v4, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    #getter for: Lcom/arcsoft/widget/BounceView;->dX:F
    invoke-static {v4}, Lcom/arcsoft/widget/BounceView;->access$200(Lcom/arcsoft/widget/BounceView;)F

    move-result v4

    sub-float v5, v6, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/arcsoft/widget/BounceView;->curX:F

    .line 679
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    iget-object v3, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    iget v3, v3, Lcom/arcsoft/widget/BounceView;->startY:F

    iget-object v4, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    #getter for: Lcom/arcsoft/widget/BounceView;->dY:F
    invoke-static {v4}, Lcom/arcsoft/widget/BounceView;->access$300(Lcom/arcsoft/widget/BounceView;)F

    move-result v4

    sub-float v5, v6, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/arcsoft/widget/BounceView;->curY:F

    .line 680
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    iget v2, v2, Lcom/arcsoft/widget/BounceView;->CurrentDirection:I

    if-eqz v2, :cond_4c

    .line 681
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v2}, Lcom/arcsoft/widget/BounceView;->postInvalidate()V

    .line 682
    :cond_4c
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    #getter for: Lcom/arcsoft/widget/BounceView;->mAnimCount:I
    invoke-static {v2}, Lcom/arcsoft/widget/BounceView;->access$000(Lcom/arcsoft/widget/BounceView;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_6a

    .line 684
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    invoke-static {v2}, Lcom/arcsoft/widget/BounceView;->access$008(Lcom/arcsoft/widget/BounceView;)I

    .line 685
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    #getter for: Lcom/arcsoft/widget/BounceView;->mBounceBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/arcsoft/widget/BounceView;->access$400(Lcom/arcsoft/widget/BounceView;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 691
    .end local v0           #f:F
    .end local v1           #interpolation:F
    :cond_66
    :goto_66
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 692
    return-void

    .line 688
    .restart local v0       #f:F
    .restart local v1       #interpolation:F
    :cond_6a
    iget-object v2, p0, Lcom/arcsoft/widget/BounceView$1;->this$0:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v2}, Lcom/arcsoft/widget/BounceView;->reset()V

    goto :goto_66
.end method
