.class Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private isAlbum:Z

.field private mAlbumId:J

.field private mArtistId:J

.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V
    .registers 4
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 578
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 580
    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 581
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 584
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    .line 585
    .local v0, checkbox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 586
    iget-boolean v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    if-nez v1, :cond_2b

    .line 587
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 588
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    .line 600
    :cond_1e
    :goto_1e
    return-void

    .line 590
    :cond_1f
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_1e

    .line 593
    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 594
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    goto :goto_1e

    .line 596
    :cond_3f
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_1e
.end method

.method public setAlbumId(JJ)V
    .registers 6
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 609
    iput-wide p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 610
    iput-wide p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 612
    return-void
.end method

.method public setArtistId(J)V
    .registers 5
    .parameter "artistId"

    .prologue
    .line 603
    iput-wide p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 604
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 606
    return-void
.end method
