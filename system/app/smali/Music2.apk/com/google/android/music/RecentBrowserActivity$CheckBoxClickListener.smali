.class Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mArtistId:J

.field private mPlaylistId:J

.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;)V
    .registers 4
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 368
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 370
    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 371
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const-wide/16 v3, -0x1

    .line 374
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    .line 375
    .local v0, checkBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 376
    iget-wide v1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_33

    .line 378
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 379
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 392
    :cond_24
    :goto_24
    return-void

    .line 381
    :cond_25
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_24

    .line 383
    :cond_33
    iget-wide v1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    .line 385
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 386
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    goto :goto_24

    .line 388
    :cond_4b
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_24
.end method

.method public setAlbumId(JJ)V
    .registers 7
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 395
    iput-wide p1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 396
    iput-wide p3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 397
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 398
    return-void
.end method

.method public setPlaylistId(J)V
    .registers 5
    .parameter "playlistId"

    .prologue
    const-wide/16 v0, -0x1

    .line 401
    iput-wide p1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 402
    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 403
    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 404
    return-void
.end method
