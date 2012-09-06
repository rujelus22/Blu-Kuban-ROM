.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->registerInteractionHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 2
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onTarget(II)Z
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 787
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v6}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getWidth()I

    move-result v5

    .line 788
    .local v5, width:I
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v6}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getHeight()I

    move-result v1

    .line 789
    .local v1, height:I
    const/4 v3, 0x0

    .line 790
    .local v3, rightBorder:I
    const/4 v2, 0x0

    .line 791
    .local v2, leftBorder:I
    const/4 v4, 0x0

    .line 792
    .local v4, topBorder:I
    div-int/lit8 v0, v1, 0x4

    .line 793
    .local v0, bottomBorder:I
    if-ltz p1, :cond_27

    add-int/lit8 v6, p1, 0x0

    if-gt v6, v5, :cond_27

    if-ltz p2, :cond_27

    add-int v6, p2, v0

    if-gt v6, v1, :cond_27

    const/4 v6, 0x1

    :goto_26
    return v6

    :cond_27
    const/4 v6, 0x0

    goto :goto_26
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "event"

    .prologue
    const v8, 0x7f0a00db

    const v4, 0x3f59999a

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f80

    .line 799
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 800
    .local v1, dragObj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 801
    .local v2, dragVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;
    instance-of v7, v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    if-eqz v7, :cond_16

    move-object v2, v1

    .line 802
    check-cast v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    .line 805
    :cond_16
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_d4

    move v3, v5

    .line 845
    :goto_1e
    return v3

    .line 808
    :pswitch_1f
    if-nez v2, :cond_23

    move v3, v5

    .line 809
    goto :goto_1e

    .line 811
    :cond_23
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 812
    .local v0, color:I
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setBackgroundColor(I)V

    .line 813
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v5

    if-nez v0, :cond_4c

    :goto_3e
    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setAlpha(F)V

    .line 814
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->invalidate()V

    move v3, v6

    .line 815
    goto :goto_1e

    :cond_4c
    move v3, v4

    .line 813
    goto :goto_3e

    .line 819
    .end local v0           #color:I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v5, v7}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->onTarget(II)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 820
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a00dc

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 824
    .restart local v0       #color:I
    :goto_6b
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setBackgroundColor(I)V

    .line 825
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v5

    if-nez v0, :cond_95

    :goto_7c
    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setAlpha(F)V

    .line 826
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->invalidate()V

    move v3, v6

    .line 827
    goto :goto_1e

    .line 822
    .end local v0           #color:I
    :cond_8a
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0       #color:I
    goto :goto_6b

    :cond_95
    move v3, v4

    .line 825
    goto :goto_7c

    .line 830
    .end local v0           #color:I
    :pswitch_97
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->onTarget(II)Z

    move-result v3

    goto/16 :goto_1e

    .line 833
    :pswitch_a7
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setBackgroundColor(I)V

    .line 834
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setAlpha(F)V

    .line 835
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->invalidate()V

    .line 838
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 839
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->requestPinVideo(Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;)V

    :cond_d1
    move v3, v6

    .line 841
    goto/16 :goto_1e

    .line 805
    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_4e
        :pswitch_97
        :pswitch_a7
        :pswitch_4e
        :pswitch_1f
    .end packed-switch
.end method
