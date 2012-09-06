.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->onVideoSourceAboutToChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

.field final synthetic val$snapshot:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;Landroid/widget/ImageView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->val$snapshot:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->val$snapshot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->val$animIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 889
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->showVideoSurface()V

    .line 890
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->mIsActive:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->access$2902(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;Z)Z

    .line 891
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getCurrentVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateMainVideoOverlayStatus(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$3000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 892
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 883
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 879
    return-void
.end method
