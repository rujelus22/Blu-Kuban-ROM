.class Lcom/samsung/dmp/layout/DMPVideoActivity$2;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 809
    :goto_8
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4000(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4000(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 811
    return-void

    .line 791
    :pswitch_27
    const/4 v0, 0x2

    sput v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->fitToSCR:I

    .line 792
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const v1, 0x7f020127

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4002(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 793
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setInitializationNeeded(Z)V

    .line 794
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->requestLayout()V

    goto :goto_8

    .line 797
    :pswitch_45
    sput v2, Lcom/samsung/dmp/layout/DMPVideoActivity;->fitToSCR:I

    .line 798
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const v1, 0x7f020126

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4002(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 799
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setInitializationNeeded(Z)V

    .line 800
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->requestLayout()V

    goto :goto_8

    .line 803
    :pswitch_62
    const/4 v0, 0x1

    sput v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->fitToSCR:I

    .line 804
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const v1, 0x7f020125

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4002(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 805
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setInitializationNeeded(Z)V

    .line 806
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$2;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->requestLayout()V

    goto :goto_8

    .line 789
    :pswitch_data_80
    .packed-switch 0x7f020125
        :pswitch_27
        :pswitch_62
        :pswitch_45
    .end packed-switch
.end method
