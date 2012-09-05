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

.field mIsLocalIdx:I

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mPrevCount:I

.field private mScrollToPositionCoarse:I

.field private mScrollToPositionFine:I

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field mYearIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 16
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1323
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1265
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 1266
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 1283
    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    .line 1284
    iput-object v8, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1285
    iput-boolean v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1287
    iput v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1288
    iput v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    .line 1294
    iput v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1310
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    .line 1324
    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    .line 1325
    invoke-direct {p0, p4}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1326
    const v0, 0x7f0d0064

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1327
    const v0, 0x7f0d0065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1328
    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/google/android/music/TrackBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    return-object v0
.end method

.method private getAlbum(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1602
    iget v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1603
    .local v0, album:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1604
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1606
    :cond_e
    return-object v0
.end method

.method private getArtist(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1610
    iget v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1612
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1614
    :cond_e
    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 1377
    if-eqz p1, :cond_5a

    .line 1378
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 1379
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 1380
    const-string v1, "year"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    .line 1381
    const-string v1, "Genre"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mGenreIdx:I

    .line 1382
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    .line 1384
    :try_start_2a
    const-string v1, "audio_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_32} :catch_5b

    .line 1388
    :goto_32
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    .line 1389
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 1390
    const-string v1, "hasLocal"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsLocalIdx:I

    .line 1391
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1392
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    const v2, 0x7f0d0093

    invoke-virtual {v1, v2}, Lcom/google/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    .line 1398
    :cond_5a
    return-void

    .line 1385
    :catch_5b
    move-exception v0

    .line 1386
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_32
.end method

.method private scrollList(Landroid/widget/ListView;II)V
    .registers 9
    .parameter "lv"
    .parameter "coarse"
    .parameter "fine"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1350
    if-gtz p3, :cond_8

    .line 1351
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1369
    :cond_7
    :goto_7
    return-void

    .line 1354
    :cond_8
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1355
    .local v0, first:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 1356
    .local v1, last:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 1357
    if-ge p2, v0, :cond_26

    .line 1359
    sub-int v2, v0, p2

    if-le v2, v3, :cond_20

    .line 1360
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1362
    :cond_20
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_7

    .line 1363
    :cond_26
    if-le p2, v1, :cond_7

    .line 1364
    sub-int v2, p2, v1

    if-le v2, v3, :cond_36

    .line 1365
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1367
    :cond_36
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_7
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1435
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1436
    .local v15, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3e

    .line 1438
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2e

    .line 1440
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    :cond_2e
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3d

    .line 1443
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1599
    :cond_3d
    :goto_3d
    return-void

    .line 1448
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    move/from16 v17, v0

    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1449
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Lcom/google/android/music/StatefulShadowTextView;->setText([CII)V

    .line 1451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->trackId:J

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2800(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v17

    if-nez v17, :cond_ae

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsLocalIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_303

    :cond_ae
    const/4 v10, 0x1

    .line 1455
    .local v10, isAvailable:Z
    :goto_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v17

    if-eqz v17, :cond_ed

    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_ed

    .line 1456
    iget-object v11, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 1457
    .local v11, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 1458
    .local v4, album:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1459
    .local v5, artist:Ljava/lang/String;
    iget-wide v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1, v4, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 1460
    if-eqz v10, :cond_306

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v17, v0

    :goto_e8
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1464
    .end local v4           #album:Ljava/lang/String;
    .end local v5           #artist:Ljava/lang/String;
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_ed
    const/4 v9, 0x0

    .line 1465
    .local v9, id:Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v13, -0x1

    .line 1466
    .local v13, pos:I
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v17, :cond_105

    .line 1468
    :try_start_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v17

    if-eqz v17, :cond_30e

    .line 1469
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_104} :catch_316

    move-result v13

    .line 1485
    :cond_105
    :goto_105
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_190

    .line 1499
    const/4 v14, 0x0

    .line 1500
    .local v14, showPlayIndicator:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v17

    if-eqz v17, :cond_329

    .line 1501
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v13, :cond_326

    const/4 v14, 0x1

    .line 1514
    :cond_121
    :goto_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v17

    if-nez v17, :cond_150

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2600(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v17

    if-eqz v17, :cond_150

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    move/from16 v17, v0

    if-eqz v17, :cond_150

    .line 1517
    const/4 v14, 0x0

    .line 1533
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v17

    if-nez v17, :cond_181

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    move/from16 v17, v0

    if-nez v17, :cond_180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/google/android/music/medialist/SelectedSongList;

    move/from16 v17, v0

    if-eqz v17, :cond_181

    .line 1537
    :cond_180
    const/4 v14, 0x0

    .line 1540
    :cond_181
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    if-eqz v14, :cond_346

    const/16 v17, 0x0

    :goto_189
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1543
    .end local v14           #showPlayIndicator:Z
    :cond_190
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1544
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b0

    .line 1545
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1547
    :cond_1b0
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c3

    .line 1548
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1550
    :cond_1c3
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d6

    .line 1551
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1553
    :cond_1d6
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e9

    .line 1554
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1557
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2900(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v17

    if-nez v17, :cond_217

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v17

    if-nez v17, :cond_217

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v17

    if-nez v17, :cond_34a

    .line 1562
    :cond_217
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1567
    :goto_220
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_252

    .line 1568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    move/from16 v17, v0

    if-ltz v17, :cond_252

    .line 1569
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1570
    .local v16, year:I
    if-lez v16, :cond_355

    .line 1571
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 1579
    .end local v16           #year:I
    :cond_252
    :goto_252
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_269

    .line 1580
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 1581
    .restart local v4       #album:Ljava/lang/String;
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    .end local v4           #album:Ljava/lang/String;
    :cond_269
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_280

    .line 1584
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    .restart local v5       #artist:Ljava/lang/String;
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    .end local v5           #artist:Ljava/lang/String;
    :cond_280
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2ac

    .line 1589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    div-int/lit16 v6, v0, 0x3e8

    .line 1590
    .local v6, duration:I
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    int-to-long v0, v6

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1593
    .end local v6           #duration:I
    :cond_2ac
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v17

    if-eqz v17, :cond_360

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->isFastScrollAlwaysVisible()Z

    move-result v17

    if-eqz v17, :cond_360

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v17

    if-nez v17, :cond_360

    const/4 v8, 0x1

    .line 1596
    .local v8, fastScroll:Z
    :goto_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09006a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 1598
    .local v12, padding:I
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v8, :cond_363

    move/from16 v17, v12

    :goto_2ef
    const/16 v19, 0x0

    if-eqz v8, :cond_2f4

    const/4 v12, 0x0

    .end local v12           #padding:I
    :cond_2f4
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3d

    .line 1454
    .end local v8           #fastScroll:Z
    .end local v9           #id:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v10           #isAvailable:Z
    .end local v13           #pos:I
    :cond_303
    const/4 v10, 0x0

    goto/16 :goto_af

    .line 1460
    .restart local v4       #album:Ljava/lang/String;
    .restart local v5       #artist:Ljava/lang/String;
    .restart local v10       #isAvailable:Z
    .restart local v11       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v17, v0

    goto/16 :goto_e8

    .line 1471
    .end local v4           #album:Ljava/lang/String;
    .end local v5           #artist:Ljava/lang/String;
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v9       #id:Lcom/google/android/music/dl/ContentIdentifier;
    .restart local v13       #pos:I
    :cond_30e
    :try_start_30e
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_313
    .catch Landroid/os/RemoteException; {:try_start_30e .. :try_end_313} :catch_316

    move-result-object v9

    goto/16 :goto_105

    .line 1473
    :catch_316
    move-exception v7

    .line 1474
    .local v7, e:Landroid/os/RemoteException;
    const-string v17, "TrackBrowser"

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_105

    .line 1501
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v14       #showPlayIndicator:Z
    :cond_326
    const/4 v14, 0x0

    goto/16 :goto_121

    .line 1505
    :cond_329
    if-eqz v9, :cond_121

    .line 1506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-virtual {v9}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-nez v17, :cond_344

    const/4 v14, 0x1

    :goto_342
    goto/16 :goto_121

    :cond_344
    const/4 v14, 0x0

    goto :goto_342

    .line 1540
    :cond_346
    const/16 v17, 0x8

    goto/16 :goto_189

    .line 1564
    .end local v14           #showPlayIndicator:Z
    :cond_34a
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_220

    .line 1574
    .restart local v16       #year:I
    :cond_355
    iget-object v0, v15, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    goto/16 :goto_252

    .line 1593
    .end local v16           #year:I
    :cond_360
    const/4 v8, 0x0

    goto/16 :goto_2d3

    .line 1598
    .restart local v8       #fastScroll:Z
    .restart local v12       #padding:I
    :cond_363
    const/16 v17, 0x0

    goto :goto_2ef
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 1620
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1621
    const/4 p1, 0x0

    .line 1624
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    if-eq p1, v0, :cond_2c

    .line 1625
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object v0, p1

    check-cast v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v1, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$1702(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/MediaList$MediaCursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 1626
    if-eqz p1, :cond_2d

    .line 1627
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1631
    :goto_26
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1632
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1636
    :cond_2c
    return-void

    .line 1629
    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    goto :goto_26
.end method

.method public getRepresentativeAlbumId()J
    .registers 9

    .prologue
    .line 1726
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1727
    .local v4, top:I
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 1728
    .local v2, bottom:I
    sub-int v7, v2, v4

    div-int/lit8 v6, v7, 0x2

    .line 1730
    .local v6, viewIndex:I
    const-wide/16 v0, -0x1

    .line 1731
    .local v0, albumId:J
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1732
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_30

    .line 1733
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1734
    .local v5, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    if-eqz v5, :cond_30

    .line 1735
    iget-wide v0, v5, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1738
    .end local v5           #vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    :cond_30
    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v6, 0x7f100050

    .line 1402
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1403
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1404
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_20

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1405
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1408
    :cond_20
    new-instance v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V

    .line 1409
    .local v2, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const/high16 v3, 0x7f10

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 1410
    iget-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v3, :cond_3e

    .line 1411
    const v3, 0x7f10003d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 1413
    :cond_3e
    const v3, 0x7f100022

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    .line 1414
    iget-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v4, Lcom/google/android/music/FadingColorDrawable;

    iget-object v5, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v4, p1, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1415
    iget-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1417
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 1418
    const v3, 0x7f100061

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/PlayingIndicator;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 1419
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    .line 1420
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1421
    const v3, 0x7f1000e0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    .line 1422
    const v3, 0x7f100058

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    .line 1423
    const v3, 0x7f100018

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    .line 1424
    const v3, 0x7f100005

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 1425
    iget-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v3, :cond_b5

    .line 1426
    const v3, 0x7f10003e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 1428
    :cond_b5
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1429
    return-object v1
.end method

.method protected onContentChanged()V
    .registers 11

    .prologue
    const v9, 0x7f100012

    const v8, 0x7f09006a

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1655
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 1656
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1723
    :cond_17
    :goto_17
    return-void

    .line 1659
    :cond_18
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    if-eqz v4, :cond_de

    .line 1660
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1661
    .local v0, count:I
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v2

    .line 1662
    .local v2, lv:Landroid/widget/ListView;
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    if-ltz v4, :cond_4d

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    if-le v4, v5, :cond_4d

    .line 1663
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    if-lt v0, v4, :cond_4d

    .line 1664
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    iget v5, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->scrollList(Landroid/widget/ListView;II)V

    .line 1665
    iput v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1666
    iput v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    .line 1670
    :cond_4d
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v1

    .line 1671
    .local v1, isTop:Z
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v4, :cond_73

    if-nez v1, :cond_73

    .line 1672
    if-nez v0, :cond_71

    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    if-eqz v4, :cond_71

    .line 1677
    iput v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1678
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_17

    .line 1681
    :cond_71
    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1684
    :cond_73
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->setTitle()V
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$100(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 1687
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 1688
    const/16 v4, 0x64

    if-ge v0, v4, :cond_8a

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3100(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_106

    .line 1689
    :cond_8a
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 1691
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 1694
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 1695
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_de

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-nez v4, :cond_de

    .line 1697
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 1699
    .local v3, padding:I
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1702
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v6, v3}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 1719
    .end local v0           #count:I
    .end local v1           #isTop:Z
    .end local v2           #lv:Landroid/widget/ListView;
    .end local v3           #padding:I
    :cond_de
    :goto_de
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3300(Lcom/google/android/music/TrackBrowserActivity;)I

    move-result v4

    if-eq v4, v7, :cond_17

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1720
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$3300(Lcom/google/android/music/TrackBrowserActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1721
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4, v7}, Lcom/google/android/music/TrackBrowserActivity;->access$3302(Lcom/google/android/music/TrackBrowserActivity;I)I

    goto/16 :goto_17

    .line 1705
    .restart local v0       #count:I
    .restart local v1       #isTop:Z
    .restart local v2       #lv:Landroid/widget/ListView;
    :cond_106
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 1706
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_de

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-nez v4, :cond_de

    .line 1708
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 1710
    .restart local v3       #padding:I
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1713
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v3, v3}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    goto :goto_de
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 1641
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1642
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

    .line 1645
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1650
    :goto_1c
    return-object v0

    .line 1647
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1100(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1648
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1649
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public setScrollToPosition(II)V
    .registers 7
    .parameter "coarse"
    .parameter "fine"

    .prologue
    .line 1331
    const/4 v0, -0x1

    .line 1332
    .local v0, count:I
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1333
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1335
    :cond_13
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    .line 1336
    .local v1, lv:Landroid/widget/ListView;
    if-ltz p1, :cond_2b

    if-lt v0, p1, :cond_2b

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-le v2, v3, :cond_2b

    .line 1339
    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->scrollList(Landroid/widget/ListView;II)V

    .line 1347
    :goto_2a
    return-void

    .line 1344
    :cond_2b
    iput p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1345
    iput p2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    goto :goto_2a
.end method
