.class Lcom/samsung/dmp/layout/DMPVideoActivity$7;
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
    .line 882
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const v4, 0x7f09003d

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 884
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 885
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 886
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v0, :cond_37

    .line 887
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->musicPlayerToast:Landroid/widget/Toast;

    .line 891
    :goto_2f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 903
    :goto_36
    return-void

    .line 890
    :cond_37
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2f

    .line 893
    :cond_3f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 894
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4202(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 895
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_36

    .line 899
    :cond_5a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 900
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4202(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 901
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$7;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_36
.end method
