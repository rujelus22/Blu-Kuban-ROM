.class Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private mPlaylistId:J

.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 546
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 549
    iget-wide v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_22

    move-object v0, p1

    .line 550
    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    .line 551
    .local v0, checkbox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 552
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 553
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$400(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    .line 559
    .end local v0           #checkbox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_22
    :goto_22
    return-void

    .line 555
    .restart local v0       #checkbox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_23
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$400(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_22
.end method

.method public setPlaylistId(J)V
    .registers 3
    .parameter "playlistId"

    .prologue
    .line 562
    iput-wide p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 563
    return-void
.end method
