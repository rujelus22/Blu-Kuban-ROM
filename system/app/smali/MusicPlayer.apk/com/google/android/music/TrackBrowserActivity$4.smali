.class Lcom/google/android/music/TrackBrowserActivity$4;
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

.field final synthetic val$albumArtSize:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$albumArtSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 692
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eq v0, v1, :cond_c

    .line 703
    :goto_b
    return-void

    .line 695
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v0, :cond_28

    .line 696
    iget-object v6, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v6, Lcom/google/android/music/medialist/ExternalDomainSongList;

    .line 697
    .local v6, externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$albumArtSize:I

    iget v3, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$albumArtSize:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_b

    .line 701
    .end local v6           #externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    :cond_28
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$albumArtSize:I

    iget v3, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$albumArtSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SongList;->getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method public taskCompleted()V
    .registers 4

    .prologue
    .line 707
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    if-eq v1, v2, :cond_b

    .line 718
    :cond_a
    :goto_a
    return-void

    .line 711
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 712
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 713
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_a

    .line 714
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a
.end method
