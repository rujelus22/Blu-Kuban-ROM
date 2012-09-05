.class Lcom/samsung/dmp/layout/DMPAudioActivity$9;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->initializeUIForPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

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

    .line 842
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 843
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 844
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v0, :cond_37

    .line 845
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicPlayerToast:Landroid/widget/Toast;

    .line 849
    :goto_2f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 860
    :goto_36
    return-void

    .line 848
    :cond_37
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2f

    .line 851
    :cond_3f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 852
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3302(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 853
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3500(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_36

    .line 856
    :cond_5a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 857
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3302(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 858
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$9;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3500(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_36
.end method
