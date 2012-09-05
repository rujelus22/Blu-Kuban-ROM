.class Lcom/samsung/dmp/layout/DMPVideoActivity$10;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 958
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v4, 0x3ef

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 960
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_81

    .line 961
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_67

    .line 962
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 963
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v2, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 964
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V
    invoke-static {v2, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 965
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->updateClock()V

    .line 966
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 967
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPlayListButtonView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 968
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 969
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 978
    :goto_5a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;

    invoke-direct {v2, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity$10;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 993
    :cond_67
    :goto_67
    return v0

    .line 972
    :cond_68
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->playAnimation()V
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2000(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 973
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 974
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 975
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPlayListButtonView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5a

    :cond_81
    move v0, v1

    .line 993
    goto :goto_67
.end method
