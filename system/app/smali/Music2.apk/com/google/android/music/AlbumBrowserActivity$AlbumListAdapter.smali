.class Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActiveViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/google/android/music/AlbumBrowserActivity;

.field private mAlbumIdIdx:I

.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private mArtistx:I

.field private final mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mHasLocalIdx:I

.field private mHasRemoteIdx:I

.field private mKeepOnIdx:I

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 16
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 512
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 491
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 492
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 494
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActiveViews:Ljava/util/Set;

    .line 514
    iput-object p3, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    .line 516
    const v0, 0x7f0d0065

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 517
    const v0, 0x7f0d0064

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 519
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 521
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f02000f

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 522
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 524
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 525
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 526
    invoke-direct {p0, p5}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 527
    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->updateAllOfflineSelectedStatuses()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/google/android/music/AlbumBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 530
    if-eqz p1, :cond_3a

    .line 531
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdIdx:I

    .line 532
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 533
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistx:I

    .line 534
    const-string v0, "artist_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 535
    const-string v0, "KeepOnId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mKeepOnIdx:I

    .line 537
    const-string v0, "hasLocal"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasLocalIdx:I

    .line 538
    const-string v0, "hasRemote"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasRemoteIdx:I

    .line 540
    :cond_3a
    return-void
.end method

.method private updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 552
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 553
    .local v1, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;)V

    goto :goto_6

    .line 555
    .end local v1           #vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    :cond_16
    return-void
.end method

.method private updateOfflineSelectedStatus(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;)V
    .registers 11
    .parameter "vh"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 558
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 583
    :goto_a
    return-void

    .line 562
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_45

    .line 563
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    iget-wide v5, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->artistId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v1

    .line 567
    .local v1, selected:Ljava/lang/Boolean;
    if-eqz v1, :cond_3c

    .line 568
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 573
    .local v0, keepOn:Z
    :goto_23
    iget-object v2, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 574
    if-nez v0, :cond_3f

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 575
    iget-object v2, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 570
    .end local v0           #keepOn:Z
    :cond_3c
    iget-boolean v0, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v0       #keepOn:Z
    goto :goto_23

    .line 577
    :cond_3f
    iget-object v2, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 580
    .end local v0           #keepOn:Z
    .end local v1           #selected:Ljava/lang/Boolean;
    :cond_45
    iget-object v2, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 581
    iget-object v2, p1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 621
    .local v11, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 623
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 691
    :goto_2b
    return-void

    .line 630
    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 631
    .local v8, name:Ljava/lang/String;
    move-object v1, v8

    .line 632
    .local v1, albumDisplayname:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v9

    .line 633
    .local v9, unknownAlbum:Z
    if-eqz v9, :cond_41

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 636
    :cond_41
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v12, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 639
    move-object v2, v8

    .line 640
    .local v2, artistDisplayname:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v10

    .line 641
    .local v10, unknownArtist:Z
    if-eqz v10, :cond_5b

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 644
    :cond_5b
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v12, v2}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v7, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 647
    .local v7, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    .line 648
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->artistId:J

    .line 649
    if-nez v9, :cond_7e

    if-eqz v10, :cond_11d

    .line 650
    :cond_7e
    iget-wide v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7, v12, v13, v14, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 654
    :goto_85
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v12}, Lcom/google/android/music/AlbumBrowserActivity;->access$900(Lcom/google/android/music/AlbumBrowserActivity;)Z

    move-result v12

    if-nez v12, :cond_9b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasLocalIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_124

    :cond_9b
    const/4 v6, 0x1

    .line 655
    .local v6, isAvailable:Z
    :goto_9c
    if-eqz v6, :cond_127

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    :goto_a2
    invoke-virtual {v7, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v3

    .line 659
    .local v3, currentalbumid:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v12}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v5

    .line 661
    .local v5, inManageMusicMode:Z
    if-nez v5, :cond_12d

    iget-wide v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    cmp-long v12, v3, v12

    if-nez v12, :cond_12d

    .line 662
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 666
    :goto_c3
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    iget-wide v13, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    iget-wide v15, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->artistId:J

    invoke-virtual/range {v12 .. v16}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 668
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v6}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 669
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 671
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasRemoteIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_135

    const/4 v12, 0x1

    :goto_e5
    iput-boolean v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->hasRemote:Z

    .line 672
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mKeepOnIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_137

    const/4 v12, 0x1

    :goto_f4
    iput-boolean v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .line 674
    if-eqz v5, :cond_139

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v12}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v12

    if-eqz v12, :cond_139

    .line 676
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;)V

    .line 678
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 679
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :goto_114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b

    .line 652
    .end local v3           #currentalbumid:J
    .end local v5           #inManageMusicMode:Z
    .end local v6           #isAvailable:Z
    :cond_11d
    iget-wide v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    invoke-virtual {v7, v12, v13, v1, v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 654
    :cond_124
    const/4 v6, 0x0

    goto/16 :goto_9c

    .line 655
    .restart local v6       #isAvailable:Z
    :cond_127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    goto/16 :goto_a2

    .line 664
    .restart local v3       #currentalbumid:J
    .restart local v5       #inManageMusicMode:Z
    :cond_12d
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_c3

    .line 671
    :cond_135
    const/4 v12, 0x0

    goto :goto_e5

    .line 672
    :cond_137
    const/4 v12, 0x0

    goto :goto_f4

    .line 687
    :cond_139
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 688
    iget-object v12, v11, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_114
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 696
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 697
    const/4 p1, 0x0

    .line 700
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$1000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_21

    .line 701
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    #setter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/google/android/music/AlbumBrowserActivity;->access$1002(Lcom/google/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 702
    invoke-direct {p0, p1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 703
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 705
    :cond_21
    return-void
.end method

.method public getRepresentativeAlbumId()J
    .registers 9

    .prologue
    .line 732
    const-wide/16 v0, -0x1

    .line 734
    .local v0, albumId:J
    iget-object v7, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 735
    .local v4, top:I
    iget-object v7, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 736
    .local v2, bottom:I
    sub-int v7, v2, v4

    div-int/lit8 v6, v7, 0x2

    .line 738
    .local v6, viewIndex:I
    iget-object v7, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 739
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_30

    .line 740
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 741
    .local v5, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    if-eqz v5, :cond_30

    .line 743
    iget-wide v0, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    .line 746
    .end local v5           #vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    :cond_30
    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 587
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 588
    .local v4, v:Landroid/view/View;
    new-instance v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V

    .line 589
    .local v5, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    const v6, 0x7f10003d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 590
    const v6, 0x7f10003e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 591
    const v6, 0x7f100022

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    .line 592
    iget-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 593
    iget-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v9, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;

    invoke-direct {v9, p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;-><init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v9, p1, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v6

    if-eqz v6, :cond_bc

    iget-object v6, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->isFastScrollAlwaysVisible()Z

    move-result v6

    if-eqz v6, :cond_bc

    move v0, v7

    .line 601
    .local v0, fastScroll:Z
    :goto_60
    iget-object v6, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/AlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f09006a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 602
    .local v2, padding:I
    if-eqz v0, :cond_be

    move v1, v2

    .line 603
    .local v1, left:I
    :goto_71
    if-eqz v0, :cond_c0

    move v3, v8

    .line 604
    .local v3, right:I
    :goto_74
    iget-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-virtual {v6, v1, v8, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 606
    const v6, 0x7f100061

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/PlayingIndicator;

    iput-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 607
    const v6, 0x7f10000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 608
    iget-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v6, v1, v8, v3, v8}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 609
    new-instance v6, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v6, v9}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    .line 610
    iget-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v9, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v6, v9}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    const v6, 0x7f100050

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 612
    iget-object v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6, v8, v8, v7, v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 613
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    .line 614
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 615
    return-object v4

    .end local v0           #fastScroll:Z
    .end local v1           #left:I
    .end local v2           #padding:I
    .end local v3           #right:I
    :cond_bc
    move v0, v8

    .line 599
    goto :goto_60

    .restart local v0       #fastScroll:Z
    .restart local v2       #padding:I
    :cond_be
    move v1, v8

    .line 602
    goto :goto_71

    .restart local v1       #left:I
    :cond_c0
    move v3, v2

    .line 603
    goto :goto_74
.end method

.method protected onContentChanged()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 709
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 711
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$1100(Lcom/google/android/music/AlbumBrowserActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 712
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$1100(Lcom/google/android/music/AlbumBrowserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 713
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #setter for: Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v0, v2}, Lcom/google/android/music/AlbumBrowserActivity;->access$1102(Lcom/google/android/music/AlbumBrowserActivity;I)I

    .line 715
    :cond_2a
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 547
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 548
    .local v0, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 719
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 723
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 728
    :goto_1c
    return-object v0

    .line 725
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    #calls: Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$1200(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 726
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 727
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method
