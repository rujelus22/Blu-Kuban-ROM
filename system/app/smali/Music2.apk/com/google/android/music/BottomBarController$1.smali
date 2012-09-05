.class Lcom/google/android/music/BottomBarController$1;
.super Ljava/lang/Object;
.source "BottomBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/BottomBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/BottomBarController;


# direct methods
.method constructor <init>(Lcom/google/android/music/BottomBarController;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 120
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$000(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v7

    if-eqz v7, :cond_80

    .line 121
    const/4 v0, 0x0

    .line 125
    .local v0, dirty:Z
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$000(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isManageMusicBarEnabled()Z

    move-result v7

    if-eqz v7, :cond_81

    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mInManageMusicMode:Z
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$100(Lcom/google/android/music/BottomBarController;)Z

    move-result v7

    if-eqz v7, :cond_81

    move v3, v4

    .line 127
    .local v3, showManageMusicBar:Z
    :goto_22
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$200(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/menu/ManageMusicMenu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/menu/ManageMusicMenu;->getVisibility()I

    move-result v2

    .line 128
    .local v2, originalVisibility:I
    if-eqz v3, :cond_83

    move v1, v5

    .line 130
    .local v1, newVisibility:I
    :goto_2f
    if-eq v1, v2, :cond_3b

    .line 131
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$200(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/menu/ManageMusicMenu;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/music/menu/ManageMusicMenu;->setVisibility(I)V

    .line 132
    const/4 v0, 0x1

    .line 135
    :cond_3b
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$000(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isNowPlayingBarEnabled()Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 137
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mHasValidPlaylist:Z
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$300(Lcom/google/android/music/BottomBarController;)Z

    move-result v7

    if-eqz v7, :cond_85

    move v1, v5

    .line 138
    :goto_50
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$000(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isUseTopBarNowPlaying()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 141
    iget-object v7, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mActionbarController:Lcom/google/android/music/ActionbarController;
    invoke-static {v7}, Lcom/google/android/music/BottomBarController;->access$400(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/ActionbarController;

    move-result-object v7

    if-nez v1, :cond_87

    :goto_64
    invoke-virtual {v7, v4}, Lcom/google/android/music/ActionbarController;->setNowPlayingVisibility(Z)V

    .line 142
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    if-eqz v4, :cond_78

    .line 143
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 145
    :cond_78
    const/4 v0, 0x1

    .line 176
    :goto_79
    if-eqz v0, :cond_80

    .line 177
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #calls: Lcom/google/android/music/BottomBarController;->notifyBottombarChanged()V
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$700(Lcom/google/android/music/BottomBarController;)V

    .line 180
    .end local v0           #dirty:Z
    .end local v1           #newVisibility:I
    .end local v2           #originalVisibility:I
    .end local v3           #showManageMusicBar:Z
    :cond_80
    return-void

    .restart local v0       #dirty:Z
    :cond_81
    move v3, v5

    .line 125
    goto :goto_22

    .restart local v2       #originalVisibility:I
    .restart local v3       #showManageMusicBar:Z
    :cond_83
    move v1, v6

    .line 128
    goto :goto_2f

    .restart local v1       #newVisibility:I
    :cond_85
    move v1, v6

    .line 137
    goto :goto_50

    :cond_87
    move v4, v5

    .line 141
    goto :goto_64

    .line 147
    :cond_89
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    if-eqz v4, :cond_c3

    .line 148
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/NowPlayingBar;->getVisibility()I

    move-result v2

    .line 151
    if-nez v3, :cond_b5

    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$600(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v4

    if-eqz v4, :cond_b7

    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$600(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->shouldHideNowPlayingBar()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 154
    :cond_b5
    const/16 v1, 0x8

    .line 157
    :cond_b7
    if-eq v2, v1, :cond_c3

    .line 158
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_c3
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mActionbarController:Lcom/google/android/music/ActionbarController;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$400(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/ActionbarController;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/music/ActionbarController;->setNowPlayingVisibility(Z)V

    goto :goto_79

    .line 165
    :cond_cd
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    if-eqz v4, :cond_ed

    .line 166
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/NowPlayingBar;->getVisibility()I

    move-result v2

    .line 167
    const/16 v1, 0x8

    .line 168
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 169
    if-eq v2, v1, :cond_ed

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_ed
    iget-object v4, p0, Lcom/google/android/music/BottomBarController$1;->this$0:Lcom/google/android/music/BottomBarController;

    #getter for: Lcom/google/android/music/BottomBarController;->mActionbarController:Lcom/google/android/music/ActionbarController;
    invoke-static {v4}, Lcom/google/android/music/BottomBarController;->access$400(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/ActionbarController;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/music/ActionbarController;->setNowPlayingVisibility(Z)V

    goto :goto_79
.end method
