.class Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "RecentBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActiveViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/google/android/music/RecentBrowserActivity;

.field private final mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;Landroid/content/Context;Lcom/google/android/music/RecentBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 16
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 312
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    .line 291
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 292
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 294
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActiveViews:Ljava/util/Set;

    .line 313
    iput-object p3, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    .line 314
    const v0, 0x7f0d0075

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 315
    const v0, 0x7f0d0074

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 317
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 319
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f02000f

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 320
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 322
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 323
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 324
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 354
    .local v11, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_bf

    .line 355
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, albumName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v9

    .line 358
    .local v9, unknownAlbum:Z
    if-eqz v9, :cond_20

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 361
    :cond_20
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v12, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, artistName:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v10

    .line 365
    .local v10, unknownArtist:Z
    if-eqz v10, :cond_36

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 368
    :cond_36
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v12, v2}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v6, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 371
    .local v6, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 372
    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 373
    const-wide/16 v12, -0x1

    iput-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 374
    if-nez v9, :cond_57

    if-eqz v10, :cond_b9

    .line 375
    :cond_57
    iget-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6, v12, v13, v14, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v6           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v9           #unknownAlbum:Z
    .end local v10           #unknownArtist:Z
    :goto_5e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v12}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Z

    move-result v12

    if-nez v12, :cond_72

    const/16 v12, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_128

    :cond_72
    const/4 v5, 0x1

    .line 406
    .local v5, isAvailable:Z
    :goto_73
    iget-object v13, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v5, :cond_12b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    :goto_7b
    invoke-virtual {v13, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v5}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 409
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 411
    const/16 v12, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_131

    const/4 v12, 0x1

    :goto_95
    iput-boolean v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->hasRemote:Z

    .line 412
    const/16 v12, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_134

    const/4 v12, 0x1

    :goto_a2
    iput-boolean v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->isKeptInDb:Z

    .line 413
    const/16 v12, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_137

    const/4 v12, 0x1

    :goto_af
    iput-boolean v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->hasLocal:Z

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v5           #isAvailable:Z
    :goto_b8
    return-void

    .line 377
    .restart local v1       #albumName:Ljava/lang/String;
    .restart local v2       #artistName:Ljava/lang/String;
    .restart local v6       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v9       #unknownAlbum:Z
    .restart local v10       #unknownArtist:Z
    :cond_b9
    iget-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    invoke-virtual {v6, v12, v13, v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 380
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v6           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v9           #unknownAlbum:Z
    .end local v10           #unknownArtist:Z
    :cond_bf
    const/4 v12, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_109

    .line 381
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, name:Ljava/lang/String;
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 383
    .local v8, playlistType:I
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v12, v7}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const v13, 0x7f0d00a8

    invoke-virtual {v12, v13}, Lcom/google/android/music/StatefulShadowTextView;->setText(I)V

    .line 386
    const/4 v12, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 388
    .local v3, id:J
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v12, v3, v4, v7, v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPlaylistAlbumArt(JLjava/lang/String;I)V

    .line 390
    iput-wide v3, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 391
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistName:Ljava/lang/String;

    .line 392
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistType:I

    .line 393
    const-wide/16 v12, -0x1

    iput-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    goto/16 :goto_5e

    .line 396
    .end local v3           #id:J
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #playlistType:I
    :cond_109
    const-wide/16 v12, -0x1

    iput-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 397
    const-wide/16 v12, -0x1

    iput-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 398
    const-wide/16 v12, -0x1

    iput-wide v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 399
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v12, v11, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b8

    .line 405
    :cond_128
    const/4 v5, 0x0

    goto/16 :goto_73

    .line 406
    .restart local v5       #isAvailable:Z
    :cond_12b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    goto/16 :goto_7b

    .line 411
    :cond_131
    const/4 v12, 0x0

    goto/16 :goto_95

    .line 412
    :cond_134
    const/4 v12, 0x0

    goto/16 :goto_a2

    .line 413
    :cond_137
    const/4 v12, 0x0

    goto/16 :goto_af
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/RecentBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 442
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 443
    const/4 p1, 0x0

    .line 446
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$300(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 447
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #setter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/google/android/music/RecentBrowserActivity;->access$302(Lcom/google/android/music/RecentBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 448
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 450
    :cond_1e
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const-wide/16 v3, -0x1

    .line 337
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 338
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;-><init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V

    .line 339
    .local v1, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 340
    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 342
    const v2, 0x7f10001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 343
    iput-wide v3, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 344
    iput-wide v3, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 345
    iput-wide v3, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 347
    return-object v0
.end method

.method protected onContentChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 420
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 422
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 423
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_15

    .line 424
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 437
    :goto_14
    return-void

    .line 426
    :cond_15
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$200(Lcom/google/android/music/RecentBrowserActivity;)I

    move-result v1

    if-eq v1, v3, :cond_37

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 427
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$200(Lcom/google/android/music/RecentBrowserActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    .line 428
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #setter for: Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I
    invoke-static {v1, v3}, Lcom/google/android/music/RecentBrowserActivity;->access$202(Lcom/google/android/music/RecentBrowserActivity;I)I

    .line 431
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_47

    .line 432
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_14

    .line 434
    :cond_47
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/GridView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_14
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 332
    .local v0, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 458
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 463
    :goto_1c
    return-object v0

    .line 460
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #calls: Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 461
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    .line 462
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method
