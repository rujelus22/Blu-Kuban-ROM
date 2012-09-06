.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"

# interfaces
.implements Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->registerInteractionHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile mIsActive:Z

.field private mSkipFirst:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

.field final synthetic val$animIn:Landroid/view/animation/Animation;

.field final synthetic val$animOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->val$animOut:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->val$animIn:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->mSkipFirst:Z

    return-void
.end method

.method static synthetic access$2902(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->mIsActive:Z

    return p1
.end method


# virtual methods
.method public onVideoSourceAboutToChange(Z)V
    .registers 5
    .parameter "isPinned"

    .prologue
    const/4 v2, 0x0

    .line 861
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->mSkipFirst:Z

    if-eqz v1, :cond_8

    .line 862
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->mSkipFirst:Z

    .line 895
    :cond_7
    :goto_7
    return-void

    .line 865
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->mIsActive:Z

    if-nez v1, :cond_7

    .line 868
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->mIsActive:Z

    .line 869
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getSnapshotView()Landroid/widget/ImageView;

    move-result-object v0

    .line 870
    .local v0, snapshot:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 871
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->hideVideoSurface()V

    .line 873
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->hidePinnedStatus()V

    .line 874
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->hideAudioMutedStatus()V

    .line 876
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->val$animOut:Landroid/view/animation/Animation;

    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 894
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->val$animOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7
.end method
