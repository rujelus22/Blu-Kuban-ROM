.class Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private isAlbum:Z

.field private mAlbumId:J

.field private mGenreId:J

.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .registers 4
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 585
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    .line 587
    iput-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 588
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 591
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    .line 592
    .local v0, checkbox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 593
    iget-boolean v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    if-eqz v1, :cond_20

    .line 594
    invoke-virtual {v0}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 595
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 601
    :cond_20
    :goto_20
    return-void

    .line 597
    :cond_21
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_20
.end method

.method public setAlbumId(JJ)V
    .registers 6
    .parameter "albumId"
    .parameter "genreId"

    .prologue
    .line 610
    iput-wide p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    .line 611
    iput-wide p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 613
    return-void
.end method

.method public setGenreId(J)V
    .registers 5
    .parameter "genreId"

    .prologue
    .line 604
    iput-wide p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    .line 605
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 607
    return-void
.end method
