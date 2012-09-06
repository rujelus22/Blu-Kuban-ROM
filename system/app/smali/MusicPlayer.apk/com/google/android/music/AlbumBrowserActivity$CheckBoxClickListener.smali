.class Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mArtistId:J

.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 448
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 451
    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    move-object v0, p1

    .line 452
    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    .line 453
    .local v0, selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 454
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 455
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 461
    .end local v0           #selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_24
    :goto_24
    return-void

    .line 457
    .restart local v0       #selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_25
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_24
.end method

.method public setAlbumId(JJ)V
    .registers 5
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 464
    iput-wide p1, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 465
    iput-wide p3, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 466
    return-void
.end method
