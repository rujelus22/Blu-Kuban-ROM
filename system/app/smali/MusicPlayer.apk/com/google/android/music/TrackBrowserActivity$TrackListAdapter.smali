.class public Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/TrackBrowserActivity;

.field private mAddToDrawable:Landroid/graphics/drawable/Drawable;

.field private mAddedDrawable:Landroid/graphics/drawable/Drawable;

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mContextClickListener:Landroid/view/View$OnClickListener;

.field mDurationIdx:I

.field mGenreIdx:I

.field mHasRemoteIdx:I

.field mIsLocalIdx:I

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mPrevCount:I

.field private mScrollToPositionCoarse:I

.field private mScrollToPositionFine:I

.field mSongIdIdx:I

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field mYearIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 14
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1550
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1470
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 1471
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 1493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1497
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1498
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    .line 1509
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1531
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    .line 1551
    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    .line 1552
    invoke-direct {p0, p4}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1554
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1555
    .local v6, res:Landroid/content/res/Resources;
    const v0, 0x7f0200d3

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAddedDrawable:Landroid/graphics/drawable/Drawable;

    .line 1556
    const v0, 0x7f0200d2

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;

    .line 1557
    const v0, 0x7f0d0074

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1558
    const v0, 0x7f0d0075

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1559
    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/google/android/music/TrackBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAddedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getAlbum(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1919
    iget v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, album:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1921
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1923
    :cond_e
    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 1608
    if-eqz p1, :cond_6a

    .line 1609
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 1610
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 1611
    const-string v1, "year"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    .line 1612
    const-string v1, "Genre"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mGenreIdx:I

    .line 1613
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    .line 1615
    :try_start_2a
    const-string v1, "audio_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_32} :catch_6b

    .line 1619
    :goto_32
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    .line 1620
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 1621
    const-string v1, "hasLocal"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsLocalIdx:I

    .line 1622
    const-string v1, "hasRemote"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mHasRemoteIdx:I

    .line 1623
    const-string v1, "SongId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mSongIdIdx:I

    .line 1624
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$3300(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1625
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    const v2, 0x7f0d00a5

    invoke-virtual {v1, v2}, Lcom/google/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    .line 1631
    :cond_6a
    return-void

    .line 1616
    :catch_6b
    move-exception v0

    .line 1617
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_32
.end method

.method private getTrackArtist(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1927
    iget v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1929
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1931
    :cond_e
    return-object v0
.end method

.method private scrollList(Landroid/widget/ListView;II)V
    .registers 9
    .parameter "lv"
    .parameter "coarse"
    .parameter "fine"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1581
    if-gtz p3, :cond_8

    .line 1582
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1600
    :cond_7
    :goto_7
    return-void

    .line 1585
    :cond_8
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1586
    .local v0, first:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 1587
    .local v1, last:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 1588
    if-ge p2, v0, :cond_26

    .line 1590
    sub-int v2, v0, p2

    if-le v2, v3, :cond_20

    .line 1591
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1593
    :cond_20
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_7

    .line 1594
    :cond_26
    if-le p2, v1, :cond_7

    .line 1595
    sub-int v2, p2, v1

    if-le v2, v3, :cond_36

    .line 1596
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1598
    :cond_36
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_7
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 31
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1671
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1672
    .local v10, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1674
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_22

    .line 1676
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1678
    :cond_22
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    if-eqz v2, :cond_2d

    .line 1679
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1916
    :cond_2d
    :goto_2d
    return-void

    .line 1684
    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    iget-object v3, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1685
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    iget-object v3, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v25, 0x0

    iget-object v0, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText([CII)V

    .line 1687
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1688
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->trackId:J

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3400(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-nez v2, :cond_80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsLocalIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2a3

    :cond_80
    const/16 v18, 0x1

    .line 1691
    .local v18, isAvailable:Z
    :goto_82
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v2, :cond_b5

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v2

    if-eqz v2, :cond_ae

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v2

    if-eqz v2, :cond_b5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/AllSongsList;

    if-nez v2, :cond_b5

    .line 1695
    :cond_ae
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 1699
    :cond_b5
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v2, :cond_e7

    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e7

    .line 1700
    iget-object v0, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v19, v0

    .line 1701
    .local v19, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 1702
    .local v11, album:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getTrackArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 1703
    .local v12, artist:Ljava/lang/String;
    iget-wide v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 1704
    if-eqz v18, :cond_2a7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    :goto_e2
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1708
    .end local v11           #album:Ljava/lang/String;
    .end local v12           #artist:Ljava/lang/String;
    .end local v19           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_e7
    const/4 v15, 0x0

    .line 1709
    .local v15, id:Lcom/google/android/music/dl/ContentIdentifier;
    const/16 v20, -0x1

    .line 1710
    .local v20, pos:I
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v2, :cond_fe

    .line 1712
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_2ad

    .line 1713
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_fd} :catch_2b5

    move-result v20

    .line 1729
    :cond_fe
    :goto_fe
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    if-eqz v2, :cond_16a

    .line 1743
    const/16 v21, 0x0

    .line 1744
    .local v21, showPlayIndicator:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 1745
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move/from16 v0, v20

    if-ne v2, v0, :cond_2c1

    const/16 v21, 0x1

    .line 1758
    :cond_118
    :goto_118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v2

    if-nez v2, :cond_13e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3300(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_13e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v2, :cond_13e

    .line 1761
    const/16 v21, 0x0

    .line 1777
    :cond_13e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-nez v2, :cond_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/PlaylistSongList;

    if-nez v2, :cond_160

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/SelectedSongList;

    if-eqz v2, :cond_162

    .line 1781
    :cond_160
    const/16 v21, 0x0

    .line 1784
    :cond_162
    iget-object v3, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    if-eqz v21, :cond_2e0

    const/4 v2, 0x0

    :goto_167
    invoke-virtual {v3, v2}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1787
    .end local v21           #showPlayIndicator:Z
    :cond_16a
    const/16 v23, 0x0

    .line 1788
    .local v23, visibility:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v16

    .line 1789
    .local v16, inPartyMode:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive()Z

    move-result v17

    .line 1791
    .local v17, isAtHomeConnected:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mHasRemoteIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2e4

    const/4 v2, 0x1

    :goto_195
    iput-boolean v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->hasRemote:Z

    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_1be

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v2

    if-nez v2, :cond_1be

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_2e7

    .line 1797
    :cond_1be
    const/16 v23, 0x0

    .line 1798
    move/from16 v0, v23

    #calls: Lcom/google/android/music/TrackBrowserActivity;->setSecondColumnIconVisibility(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V
    invoke-static {v10, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$3600(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V

    .line 1863
    :cond_1c5
    :goto_1c5
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1864
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_1d9

    .line 1865
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1867
    :cond_1d9
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_1e5

    .line 1868
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1870
    :cond_1e5
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_1f1

    .line 1871
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1873
    :cond_1f1
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_1fd

    .line 1874
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1877
    :cond_1fd
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_222

    .line 1878
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    if-ltz v2, :cond_222

    .line 1879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1880
    .local v24, year:I
    if-lez v24, :cond_347

    .line 1881
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 1889
    .end local v24           #year:I
    :cond_222
    :goto_222
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_233

    .line 1890
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 1891
    .restart local v11       #album:Ljava/lang/String;
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v2, v11}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1893
    .end local v11           #album:Ljava/lang/String;
    :cond_233
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_256

    .line 1895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->showTrackArtist()Z
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3900(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_34f

    .line 1896
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getTrackArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v22

    .line 1897
    .local v22, trackArtist:Ljava/lang/String;
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1898
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 1904
    .end local v22           #trackArtist:Ljava/lang/String;
    :cond_256
    :goto_256
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v2, :cond_278

    .line 1905
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v13, v2, 0x3e8

    .line 1906
    .local v13, duration:I
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    int-to-long v0, v13

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-static {v3, v0, v1}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    .end local v13           #duration:I
    :cond_278
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->comboColumn:Landroid/view/View;

    if-eqz v2, :cond_2d

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v3}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->comboColumn:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v26, v0

    #calls: Lcom/google/android/music/TrackBrowserActivity;->isFastScrollerAlwaysVisible()Z
    invoke-static/range {v26 .. v26}, Lcom/google/android/music/TrackBrowserActivity;->access$4000(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    goto/16 :goto_2d

    .line 1690
    .end local v15           #id:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v16           #inPartyMode:Z
    .end local v17           #isAtHomeConnected:Z
    .end local v18           #isAvailable:Z
    .end local v20           #pos:I
    .end local v23           #visibility:I
    :cond_2a3
    const/16 v18, 0x0

    goto/16 :goto_82

    .line 1704
    .restart local v11       #album:Ljava/lang/String;
    .restart local v12       #artist:Ljava/lang/String;
    .restart local v18       #isAvailable:Z
    .restart local v19       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    goto/16 :goto_e2

    .line 1715
    .end local v11           #album:Ljava/lang/String;
    .end local v12           #artist:Ljava/lang/String;
    .end local v19           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v15       #id:Lcom/google/android/music/dl/ContentIdentifier;
    .restart local v20       #pos:I
    :cond_2ad
    :try_start_2ad
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_2b2
    .catch Landroid/os/RemoteException; {:try_start_2ad .. :try_end_2b2} :catch_2b5

    move-result-object v15

    goto/16 :goto_fe

    .line 1717
    :catch_2b5
    move-exception v14

    .line 1718
    .local v14, e:Landroid/os/RemoteException;
    const-string v2, "TrackBrowser"

    invoke-virtual {v14}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fe

    .line 1745
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v21       #showPlayIndicator:Z
    :cond_2c1
    const/16 v21, 0x0

    goto/16 :goto_118

    .line 1749
    :cond_2c5
    if-eqz v15, :cond_118

    .line 1750
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v15}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v25

    cmp-long v2, v2, v25

    if-nez v2, :cond_2dd

    const/16 v21, 0x1

    :goto_2db
    goto/16 :goto_118

    :cond_2dd
    const/16 v21, 0x0

    goto :goto_2db

    .line 1784
    :cond_2e0
    const/16 v2, 0x8

    goto/16 :goto_167

    .line 1791
    .end local v21           #showPlayIndicator:Z
    .restart local v16       #inPartyMode:Z
    .restart local v17       #isAtHomeConnected:Z
    .restart local v23       #visibility:I
    :cond_2e4
    const/4 v2, 0x0

    goto/16 :goto_195

    .line 1799
    :cond_2e7
    if-eqz v16, :cond_32d

    .line 1801
    const/16 v23, 0x5

    .line 1802
    move/from16 v0, v23

    #calls: Lcom/google/android/music/TrackBrowserActivity;->setSecondColumnIconVisibility(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V
    invoke-static {v10, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$3600(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V

    .line 1803
    iget-boolean v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_329

    .line 1804
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1c5

    .line 1805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mSongIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1806
    .local v6, songId:J
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1807
    .local v4, contentResolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SongId"

    aput-object v3, v5, v2

    .line 1811
    .local v5, projection:[Ljava/lang/String;
    iget-wide v8, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->trackId:J

    .line 1812
    .local v8, trackId:J
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1813
    sget-object v25, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;[Ljava/lang/String;JJLcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;)V

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto/16 :goto_1c5

    .line 1847
    .end local v4           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #songId:J
    .end local v8           #trackId:J
    :cond_329
    const/16 v18, 0x0

    goto/16 :goto_1c5

    .line 1849
    :cond_32d
    if-eqz v17, :cond_33e

    .line 1851
    const/16 v23, 0x1

    .line 1852
    move/from16 v0, v23

    #calls: Lcom/google/android/music/TrackBrowserActivity;->setSecondColumnIconVisibility(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V
    invoke-static {v10, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$3600(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V

    .line 1853
    iget-boolean v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->hasRemote:Z

    if-nez v2, :cond_1c5

    .line 1856
    const/16 v18, 0x0

    goto/16 :goto_1c5

    .line 1859
    :cond_33e
    const/16 v23, 0x1

    .line 1860
    move/from16 v0, v23

    #calls: Lcom/google/android/music/TrackBrowserActivity;->setSecondColumnIconVisibility(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V
    invoke-static {v10, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$3600(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;I)V

    goto/16 :goto_1c5

    .line 1884
    .restart local v24       #year:I
    :cond_347
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    goto/16 :goto_222

    .line 1900
    .end local v24           #year:I
    :cond_34f
    iget-object v2, v10, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    goto/16 :goto_256
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 1937
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1938
    const/4 p1, 0x0

    .line 1941
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    if-eq p1, v0, :cond_2c

    .line 1942
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object v0, p1

    check-cast v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v1, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$2302(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/MediaList$MediaCursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 1943
    if-eqz p1, :cond_2d

    .line 1944
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1948
    :goto_26
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1949
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1952
    :cond_2c
    return-void

    .line 1946
    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    goto :goto_26
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1635
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1637
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V

    .line 1638
    .local v1, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const v2, 0x7f100002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 1639
    iget-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v2, :cond_23

    .line 1640
    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 1642
    :cond_23
    const v2, 0x7f10001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->comboColumn:Landroid/view/View;

    .line 1643
    const v2, 0x7f10004e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    .line 1644
    iget-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v3, Lcom/google/android/music/FadingColorDrawable;

    iget-object v4, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v3, p1, v4}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1645
    iget-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1647
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    .line 1648
    const v2, 0x7f100010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/widgets/QuickContactBadgeComp;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    .line 1651
    const v2, 0x7f10001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 1652
    const v2, 0x7f1000f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->syncProgress:Landroid/view/View;

    .line 1653
    const v2, 0x7f100057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayingIndicator;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 1654
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    .line 1655
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1656
    const v2, 0x7f10010d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    .line 1657
    const v2, 0x7f10004c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    .line 1658
    const v2, 0x7f10002d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    .line 1659
    const v2, 0x7f10004d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 1660
    iget-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v2, :cond_bd

    .line 1661
    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 1663
    :cond_bd
    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeQueueState:I

    .line 1664
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1665
    return-object v0
.end method

.method protected onContentChanged()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 1971
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 1972
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2033
    :cond_12
    :goto_12
    return-void

    .line 1975
    :cond_13
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    if-eqz v4, :cond_b6

    .line 1976
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1977
    .local v0, count:I
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->updateTopLineVisibility(I)V
    invoke-static {v4, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$4100(Lcom/google/android/music/TrackBrowserActivity;I)V

    .line 1978
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->updateShowTrackArtist()V
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$4200(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 1979
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v2

    .line 1980
    .local v2, lv:Landroid/widget/ListView;
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    if-ltz v4, :cond_52

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    if-le v4, v5, :cond_52

    .line 1981
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    if-lt v0, v4, :cond_52

    .line 1982
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    iget v5, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->scrollList(Landroid/widget/ListView;II)V

    .line 1983
    iput v8, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1984
    iput v8, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    .line 1988
    :cond_52
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$4300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v1

    .line 1989
    .local v1, isTop:Z
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$4300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v4, :cond_78

    if-nez v1, :cond_78

    .line 1990
    if-nez v0, :cond_76

    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    if-eqz v4, :cond_76

    .line 1995
    iput v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1996
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_12

    .line 1999
    :cond_76
    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 2002
    :cond_78
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->setTitle()V
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$100(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 2004
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v3

    .line 2005
    .local v3, trackList:Landroid/widget/ListView;
    const/16 v4, 0x32

    if-ge v0, v4, :cond_8f

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$4400(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 2006
    :cond_8f
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 2008
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 2009
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 2011
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 2014
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 2023
    .end local v0           #count:I
    .end local v1           #isTop:Z
    .end local v2           #lv:Landroid/widget/ListView;
    .end local v3           #trackList:Landroid/widget/ListView;
    :cond_b6
    :goto_b6
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mComboIcon:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$4500(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d9

    .line 2024
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v5}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mComboIcon:Landroid/view/View;
    invoke-static {v6}, Lcom/google/android/music/TrackBrowserActivity;->access$4500(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->isFastScrollerAlwaysVisible()Z
    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$4000(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    .line 2029
    :cond_d9
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$4600(Lcom/google/android/music/TrackBrowserActivity;)I

    move-result v4

    if-eq v4, v8, :cond_12

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2030
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$4600(Lcom/google/android/music/TrackBrowserActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 2031
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4, v8}, Lcom/google/android/music/TrackBrowserActivity;->access$4602(Lcom/google/android/music/TrackBrowserActivity;I)I

    goto/16 :goto_12

    .line 2017
    .restart local v0       #count:I
    .restart local v1       #isTop:Z
    .restart local v2       #lv:Landroid/widget/ListView;
    .restart local v3       #trackList:Landroid/widget/ListView;
    :cond_101
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 2018
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 2019
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    goto :goto_b6
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 1957
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1958
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1961
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1966
    :goto_1c
    return-object v0

    .line 1963
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1400(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1964
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1965
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public setScrollToPosition(II)V
    .registers 7
    .parameter "coarse"
    .parameter "fine"

    .prologue
    .line 1562
    const/4 v0, -0x1

    .line 1563
    .local v0, count:I
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1564
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1566
    :cond_13
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    .line 1567
    .local v1, lv:Landroid/widget/ListView;
    if-ltz p1, :cond_2b

    if-lt v0, p1, :cond_2b

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-le v2, v3, :cond_2b

    .line 1570
    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->scrollList(Landroid/widget/ListView;II)V

    .line 1578
    :goto_2a
    return-void

    .line 1575
    :cond_2b
    iput p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1576
    iput p2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    goto :goto_2a
.end method
