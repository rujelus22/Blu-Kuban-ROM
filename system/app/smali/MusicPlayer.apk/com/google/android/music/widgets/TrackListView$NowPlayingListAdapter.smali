.class Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingListAdapter"
.end annotation


# instance fields
.field private mAddToDrawable:Landroid/graphics/drawable/Drawable;

.field private mAddedDrawable:Landroid/graphics/drawable/Drawable;

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mContextClickListener:Landroid/view/View$OnClickListener;

.field private mCursorColumns:[Ljava/lang/String;

.field private mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

.field mDurationIdx:I

.field mHasRemoteIdx:I

.field mIsLocalIdx:I

.field private mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

.field mSongIdIdx:I

.field mSubmiterFamilyNameIdx:I

.field mSubmiterGivenNameIdx:I

.field mSubmiterIdIdx:I

.field mSubmiterPictureUrlIdx:I

.field mTitleIdx:I

.field private mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field mYearIdx:I

.field final synthetic this$0:Lcom/google/android/music/widgets/TrackListView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/widgets/TrackListView;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    .line 593
    const v1, 0x7f04005e

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 557
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;-><init>(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    .line 576
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$2;-><init>(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    .line 585
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$3;-><init>(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    .line 595
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 596
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAddedDrawable:Landroid/graphics/drawable/Drawable;

    .line 597
    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    const v1, 0x7f0d0074

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 599
    const v1, 0x7f0d0075

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 600
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/TouchInterceptor$DropListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/TouchInterceptor$RemoveListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->notifySongListChanged()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAddedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getAlbum(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1013
    iget v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAlbumIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, album:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1015
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1017
    :cond_e
    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 670
    if-eqz p1, :cond_7a

    .line 671
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTitleIdx:I

    .line 672
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mArtistIdx:I

    .line 673
    const-string v1, "year"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mYearIdx:I

    .line 674
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mDurationIdx:I

    .line 676
    :try_start_22
    const-string v1, "audio_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAudioIdIdx:I
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2a} :catch_7b

    .line 680
    :goto_2a
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAlbumIdx:I

    .line 681
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAlbumIdIdx:I

    .line 682
    const-string v1, "hasLocal"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mIsLocalIdx:I

    .line 683
    const-string v1, "hasRemote"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mHasRemoteIdx:I

    .line 684
    const-string v1, "SongId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSongIdIdx:I

    .line 685
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsAtHomePartyMode:Z
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$1900(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 686
    const-string v1, "submitterId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterIdIdx:I

    .line 688
    const-string v1, "submitterGivenName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterGivenNameIdx:I

    .line 690
    const-string v1, "submitterFamilyName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterFamilyNameIdx:I

    .line 692
    const-string v1, "submitterPictureUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterPictureUrlIdx:I

    .line 696
    :cond_7a
    return-void

    .line 677
    :catch_7b
    move-exception v0

    .line 678
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAudioIdIdx:I

    goto :goto_2a
.end method

.method private getTrackArtist(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1021
    iget v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mArtistIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1023
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1025
    :cond_e
    return-object v0
.end method

.method private notifySongListChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 660
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    if-nez v0, :cond_d

    .line 661
    invoke-virtual {p0, v4}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 667
    :goto_c
    return-void

    .line 663
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->setCursorColumns(Lcom/google/android/music/medialist/SongList;)V

    .line 664
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getItemLayout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->setViewResource(I)V

    .line 665
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v1}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mCursorColumns:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_c
.end method

.method private removePlaylistItem(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_e

    .line 1007
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    .line 1008
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$300(Lcom/google/android/music/widgets/TrackListView;)V

    .line 1010
    :cond_e
    return-void
.end method

.method private setCursorColumns(Lcom/google/android/music/medialist/SongList;)V
    .registers 9
    .parameter "songList"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsAtHomePartyMode:Z
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$1900(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 604
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "AlbumArtistId"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "artistSort"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "StoreId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SongId"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "submitterId"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "submitterGivenName"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "submitterFamilyName"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "submitterPictureUrl"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mCursorColumns:[Ljava/lang/String;

    .line 658
    :goto_6c
    return-void

    .line 623
    :cond_6d
    instance-of v0, p1, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v0, :cond_cb

    .line 624
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "AlbumArtistId"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "artistSort"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "StoreId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SongId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mCursorColumns:[Ljava/lang/String;

    goto :goto_6c

    .line 643
    :cond_cb
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "AlbumArtistId"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "StoreId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SongId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mCursorColumns:[Ljava/lang/String;

    goto/16 :goto_6c
.end method

.method private setSecondColumnIconVisibility(Lcom/google/android/music/widgets/TrackListView$ViewHolder;I)V
    .registers 5
    .parameter "vh"
    .parameter "visibility"

    .prologue
    .line 987
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->contextMenu:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 988
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 990
    :cond_e
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 991
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 993
    :cond_1c
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->syncProgress:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 994
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->syncProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-direct {p0, p2, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 996
    :cond_2b
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    if-eqz v0, :cond_39

    .line 997
    iget-object v0, p1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->viewVisiblility(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setVisibility(I)V

    .line 999
    :cond_39
    return-void
.end method

.method private setViewHolderQuickContactPicture(Landroid/content/Context;Lcom/google/android/music/widgets/TrackListView$ViewHolder;)V
    .registers 5
    .parameter "context"
    .parameter "vh"

    .prologue
    .line 1047
    iget-object v1, p2, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->submitterPictureUrl:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1048
    iget-object v1, p2, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    invoke-virtual {v1}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageToDefault()V

    .line 1053
    :goto_9
    return-void

    .line 1050
    :cond_a
    iget-object v0, p2, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->submitterPictureUrl:Ljava/lang/String;

    .line 1051
    .local v0, url:Ljava/lang/String;
    iget-object v1, p2, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    invoke-virtual {v1, v0}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageUrl(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private viewVisiblility(II)I
    .registers 4
    .parameter "value"
    .parameter "flag"

    .prologue
    .line 1002
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x8

    goto :goto_5
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 31
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    .line 740
    .local v10, vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 742
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_22

    .line 744
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    :cond_22
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    if-eqz v2, :cond_2d

    .line 747
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 984
    :cond_2d
    :goto_2d
    return-void

    .line 752
    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTitleIdx:I

    iget-object v3, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 753
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    iget-object v3, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v25, 0x0

    iget-object v0, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText([CII)V

    .line 755
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->albumId:J

    .line 756
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->trackId:J

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsAtHomePartyMode:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$1900(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 759
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->submitterId:J

    .line 760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterGivenNameIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->submitterGivenName:Ljava/lang/String;

    .line 761
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterFamilyNameIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->submitterFamilyName:Ljava/lang/String;

    .line 762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSubmiterPictureUrlIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->submitterPictureUrl:Ljava/lang/String;

    .line 765
    :cond_a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsStreamingEnabled:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$200(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-nez v2, :cond_ba

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mIsLocalIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2c5

    :cond_ba
    const/16 v18, 0x1

    .line 766
    .local v18, isAvailable:Z
    :goto_bc
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v2, :cond_ef

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$2100(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v2

    if-eqz v2, :cond_e8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$2100(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v2

    if-eqz v2, :cond_ef

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/AllSongsList;

    if-nez v2, :cond_ef

    .line 770
    :cond_e8
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 774
    :cond_ef
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v2, :cond_11d

    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11d

    .line 775
    iget-object v0, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v19, v0

    .line 776
    .local v19, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 777
    .local v11, album:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->getTrackArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 778
    .local v12, artist:Ljava/lang/String;
    iget-wide v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->albumId:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 782
    .end local v11           #album:Ljava/lang/String;
    .end local v12           #artist:Ljava/lang/String;
    .end local v19           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_11d
    const/4 v15, 0x0

    .line 783
    .local v15, id:Lcom/google/android/music/dl/ContentIdentifier;
    const/16 v20, -0x1

    .line 784
    .local v20, pos:I
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v2, :cond_134

    .line 786
    :try_start_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$700(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-eqz v2, :cond_2c9

    .line 787
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_133} :catch_2d1

    move-result v20

    .line 803
    :cond_134
    :goto_134
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    if-eqz v2, :cond_17a

    .line 817
    const/16 v21, 0x0

    .line 818
    .local v21, showPlayIndicator:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$700(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 819
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move/from16 v0, v20

    if-ne v2, v0, :cond_2dd

    const/16 v21, 0x1

    .line 841
    :cond_14e
    :goto_14e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$700(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-nez v2, :cond_172

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/PlaylistSongList;

    if-nez v2, :cond_170

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/SelectedSongList;

    if-eqz v2, :cond_172

    .line 845
    :cond_170
    const/16 v21, 0x0

    .line 848
    :cond_172
    iget-object v3, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    if-eqz v21, :cond_2fc

    const/4 v2, 0x0

    :goto_177
    invoke-virtual {v3, v2}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 851
    .end local v21           #showPlayIndicator:Z
    :cond_17a
    const/16 v23, 0x0

    .line 852
    .local v23, visibility:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$2200(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v16

    .line 853
    .local v16, inPartyMode:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$2200(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive()Z

    move-result v17

    .line 855
    .local v17, isAtHomeConnected:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mHasRemoteIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_300

    const/4 v2, 0x1

    :goto_1ad
    iput-boolean v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->hasRemote:Z

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mInManageMusicMode:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$2300(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-nez v2, :cond_1d6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$2100(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v2

    if-nez v2, :cond_1d6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_303

    .line 861
    :cond_1d6
    const/16 v23, 0x0

    .line 862
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->setSecondColumnIconVisibility(Lcom/google/android/music/widgets/TrackListView$ViewHolder;I)V

    .line 932
    :cond_1df
    :goto_1df
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 933
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_1f3

    .line 934
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 936
    :cond_1f3
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_1ff

    .line 937
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 939
    :cond_1ff
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_20b

    .line 940
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 942
    :cond_20b
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_217

    .line 943
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 946
    :cond_217
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_23c

    .line 947
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mYearIdx:I

    if-ltz v2, :cond_23c

    .line 948
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mYearIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 949
    .local v24, year:I
    if-lez v24, :cond_37c

    .line 950
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 958
    .end local v24           #year:I
    :cond_23c
    :goto_23c
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_24d

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 960
    .restart local v11       #album:Ljava/lang/String;
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v2, v11}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    .end local v11           #album:Ljava/lang/String;
    :cond_24d
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_270

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mShowTrackArtist:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$500(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-eqz v2, :cond_384

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->getTrackArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v22

    .line 966
    .local v22, trackArtist:Ljava/lang/String;
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 973
    .end local v22           #trackArtist:Ljava/lang/String;
    :cond_270
    :goto_270
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_296

    .line 974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mDurationIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v13, v2, 0x3e8

    .line 975
    .local v13, duration:I
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v3}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-long v0, v13

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-static {v3, v0, v1}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    .end local v13           #duration:I
    :cond_296
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->comboColumn:Landroid/view/View;

    if-eqz v2, :cond_2d

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$2100(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v3}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->comboColumn:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    move-object/from16 v26, v0

    #calls: Lcom/google/android/music/widgets/TrackListView;->isFastScrollerAlwaysVisible()Z
    invoke-static/range {v26 .. v26}, Lcom/google/android/music/widgets/TrackListView;->access$2600(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    goto/16 :goto_2d

    .line 765
    .end local v15           #id:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v16           #inPartyMode:Z
    .end local v17           #isAtHomeConnected:Z
    .end local v18           #isAvailable:Z
    .end local v20           #pos:I
    .end local v23           #visibility:I
    :cond_2c5
    const/16 v18, 0x0

    goto/16 :goto_bc

    .line 789
    .restart local v15       #id:Lcom/google/android/music/dl/ContentIdentifier;
    .restart local v18       #isAvailable:Z
    .restart local v20       #pos:I
    :cond_2c9
    :try_start_2c9
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_2ce
    .catch Landroid/os/RemoteException; {:try_start_2c9 .. :try_end_2ce} :catch_2d1

    move-result-object v15

    goto/16 :goto_134

    .line 791
    :catch_2d1
    move-exception v14

    .line 792
    .local v14, e:Landroid/os/RemoteException;
    const-string v2, "TrackListView"

    invoke-virtual {v14}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_134

    .line 819
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v21       #showPlayIndicator:Z
    :cond_2dd
    const/16 v21, 0x0

    goto/16 :goto_14e

    .line 823
    :cond_2e1
    if-eqz v15, :cond_14e

    .line 824
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v15}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v25

    cmp-long v2, v2, v25

    if-nez v2, :cond_2f9

    const/16 v21, 0x1

    :goto_2f7
    goto/16 :goto_14e

    :cond_2f9
    const/16 v21, 0x0

    goto :goto_2f7

    .line 848
    :cond_2fc
    const/16 v2, 0x8

    goto/16 :goto_177

    .line 855
    .end local v21           #showPlayIndicator:Z
    .restart local v16       #inPartyMode:Z
    .restart local v17       #isAtHomeConnected:Z
    .restart local v23       #visibility:I
    :cond_300
    const/4 v2, 0x0

    goto/16 :goto_1ad

    .line 863
    :cond_303
    if-eqz v16, :cond_35e

    .line 865
    const/16 v23, 0x5

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mHasMultiSubmitterPhotos:Z
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView;->access$1200(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v2

    if-eqz v2, :cond_31a

    .line 867
    or-int/lit8 v23, v23, 0x2

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->setViewHolderQuickContactPicture(Landroid/content/Context;Lcom/google/android/music/widgets/TrackListView$ViewHolder;)V

    .line 870
    :cond_31a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->setSecondColumnIconVisibility(Lcom/google/android/music/widgets/TrackListView$ViewHolder;I)V

    .line 872
    iget-boolean v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_35a

    .line 873
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1df

    .line 874
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mSongIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 875
    .local v6, songId:J
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 876
    .local v4, contentResolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SongId"

    aput-object v3, v5, v2

    .line 880
    .local v5, projection:[Ljava/lang/String;
    iget-wide v8, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->trackId:J

    .line 881
    .local v8, trackId:J
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 882
    sget-object v25, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;-><init>(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;Landroid/content/ContentResolver;[Ljava/lang/String;JJLcom/google/android/music/widgets/TrackListView$ViewHolder;)V

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto/16 :goto_1df

    .line 916
    .end local v4           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #songId:J
    .end local v8           #trackId:J
    :cond_35a
    const/16 v18, 0x0

    goto/16 :goto_1df

    .line 918
    :cond_35e
    if-eqz v17, :cond_371

    .line 920
    const/16 v23, 0x1

    .line 921
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->setSecondColumnIconVisibility(Lcom/google/android/music/widgets/TrackListView$ViewHolder;I)V

    .line 922
    iget-boolean v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->hasRemote:Z

    if-nez v2, :cond_1df

    .line 925
    const/16 v18, 0x0

    goto/16 :goto_1df

    .line 928
    :cond_371
    const/16 v23, 0x1

    .line 929
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->setSecondColumnIconVisibility(Lcom/google/android/music/widgets/TrackListView$ViewHolder;I)V

    goto/16 :goto_1df

    .line 953
    .restart local v24       #year:I
    :cond_37c
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    goto/16 :goto_23c

    .line 969
    .end local v24           #year:I
    :cond_384
    iget-object v2, v10, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    goto/16 :goto_270
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1030
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1031
    invoke-direct {p0, p1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1033
    check-cast p1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .end local p1
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 1034
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 701
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    invoke-direct {v1, v5}, Lcom/google/android/music/widgets/TrackListView$ViewHolder;-><init>(Lcom/google/android/music/widgets/TrackListView$1;)V

    .line 704
    .local v1, vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;
    const v2, 0x7f100002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 705
    iget-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v2, :cond_24

    .line 706
    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 708
    :cond_24
    const v2, 0x7f10001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->comboColumn:Landroid/view/View;

    .line 709
    const v2, 0x7f10004e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->contextMenu:Landroid/view/View;

    .line 710
    iget-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v3, Lcom/google/android/music/FadingColorDrawable;

    iget-object v4, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v3, p1, v4}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    iget-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->contextMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iput-object v5, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    .line 714
    const v2, 0x7f100010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/widgets/QuickContactBadgeComp;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    .line 716
    iget-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    if-eqz v2, :cond_5f

    .line 717
    iget-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    invoke-virtual {v2}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageToDefault()V

    .line 719
    :cond_5f
    const v2, 0x7f10001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 720
    const v2, 0x7f1000f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->syncProgress:Landroid/view/View;

    .line 721
    const v2, 0x7f100057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayingIndicator;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 722
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    .line 723
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->albumId:J

    .line 724
    const v2, 0x7f10010d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    .line 725
    const v2, 0x7f10004c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    .line 726
    const v2, 0x7f10002d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    .line 727
    const v2, 0x7f10004d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 728
    iget-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v2, :cond_c6

    .line 729
    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 731
    :cond_c6
    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeQueueState:I

    .line 732
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 733
    return-object v0
.end method

.method protected onContentChanged()V
    .registers 2

    .prologue
    .line 1039
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    .line 1041
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->processScrollPosition()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$900(Lcom/google/android/music/widgets/TrackListView;)V

    .line 1042
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->updateSubmitterStatsAsync()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$2700(Lcom/google/android/music/widgets/TrackListView;)V

    .line 1043
    return-void
.end method
