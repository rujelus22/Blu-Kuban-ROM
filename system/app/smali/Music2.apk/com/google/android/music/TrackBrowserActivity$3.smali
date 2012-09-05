.class Lcom/google/android/music/TrackBrowserActivity$3;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mSavedMediaList:Lcom/google/android/music/medialist/SongList;

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$width:I

    iput p4, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 6

    .prologue
    .line 561
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    if-eq v1, v2, :cond_b

    .line 571
    :goto_a
    return-void

    .line 564
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v1, v1, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v1, :cond_26

    .line 565
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    .line 566
    .local v0, externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$width:I

    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$height:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_a

    .line 569
    .end local v0           #externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    :cond_26
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$width:I

    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$3;->val$height:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/medialist/SongList;->getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_a
.end method

.method public taskCompleted()V
    .registers 4

    .prologue
    .line 575
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    if-eq v1, v2, :cond_b

    .line 586
    :cond_a
    :goto_a
    return-void

    .line 579
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 580
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 581
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_a

    .line 582
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a
.end method
