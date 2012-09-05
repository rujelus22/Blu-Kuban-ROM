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

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private final mResources:Landroid/content/res/Resources;

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
    .line 456
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 457
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    .line 433
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 434
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 436
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActiveViews:Ljava/util/Set;

    .line 458
    iput-object p3, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    .line 459
    const v0, 0x7f0d0065

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 460
    const v0, 0x7f0d0064

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 462
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 463
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f0201d7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 465
    const v0, 0x7f02000f

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 466
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 468
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 469
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 470
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mResources:Landroid/content/res/Resources;

    .line 471
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->updateAllOfflineSelectedStatuses()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)Lcom/google/android/music/RecentBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    return-object v0
.end method

.method private updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 689
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 690
    .local v1, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;)V

    goto :goto_6

    .line 692
    .end local v1           #vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    :cond_16
    return-void
.end method

.method private updateOfflineSelectedStatus(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;)V
    .registers 11
    .parameter "vh"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 695
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_d

    .line 725
    :goto_c
    return-void

    .line 699
    :cond_d
    iget-boolean v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_61

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, selected:Ljava/lang/Boolean;
    iget-wide v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_45

    .line 702
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    iget-wide v5, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v1

    .line 709
    :cond_26
    :goto_26
    if-eqz v1, :cond_58

    .line 710
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 715
    .local v0, keepOn:Z
    :goto_2c
    iget-object v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 716
    if-nez v0, :cond_5b

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 717
    iget-object v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_c

    .line 704
    .end local v0           #keepOn:Z
    :cond_45
    iget-wide v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    .line 705
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 712
    :cond_58
    iget-boolean v0, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v0       #keepOn:Z
    goto :goto_2c

    .line 719
    :cond_5b
    iget-object v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_c

    .line 722
    .end local v0           #keepOn:Z
    .end local v1           #selected:Ljava/lang/Boolean;
    :cond_61
    iget-object v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 723
    iget-object v2, p1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_c
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 27
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 521
    .local v17, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v10

    .line 522
    .local v10, inManageMusicMode:Z
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_198

    .line 523
    const/16 v18, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, albumName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v15

    .line 526
    .local v15, unknownAlbum:Z
    if-eqz v15, :cond_34

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 529
    :cond_34
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const/16 v18, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, artistName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v16

    .line 533
    .local v16, unknownArtist:Z
    if-eqz v16, :cond_53

    .line 534
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 536
    :cond_53
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 539
    .local v12, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 540
    const/16 v18, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 541
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 542
    if-nez v15, :cond_8e

    if-eqz v16, :cond_17e

    .line 543
    :cond_8e
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_a1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v18 .. v22}, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 550
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 552
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v6

    .line 553
    .local v6, currentalbumid:J
    if-nez v10, :cond_18b

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-nez v18, :cond_18b

    .line 554
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 588
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #artistName:Ljava/lang/String;
    .end local v6           #currentalbumid:J
    .end local v12           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v15           #unknownAlbum:Z
    .end local v16           #unknownArtist:Z
    :goto_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static/range {v18 .. v18}, Lcom/google/android/music/RecentBrowserActivity;->access$700(Lcom/google/android/music/RecentBrowserActivity;)Z

    move-result v18

    if-nez v18, :cond_f4

    const/16 v18, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_27c

    :cond_f4
    const/4 v11, 0x1

    .line 589
    .local v11, isAvailable:Z
    :goto_f5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v19, v0

    if-eqz v11, :cond_27f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v18, v0

    :goto_103
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 592
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 594
    const/16 v18, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_287

    const/16 v18, 0x1

    :goto_136
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->hasRemote:Z

    .line 595
    const/16 v18, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_28b

    const/16 v18, 0x1

    :goto_14a
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->isKeptInDb:Z

    .line 597
    if-eqz v10, :cond_28f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static/range {v18 .. v18}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v18

    if-eqz v18, :cond_28f

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;)V

    .line 599
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 603
    :goto_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActiveViews:Ljava/util/Set;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    .end local v11           #isAvailable:Z
    :goto_17d
    return-void

    .line 545
    .restart local v4       #albumName:Ljava/lang/String;
    .restart local v5       #artistName:Ljava/lang/String;
    .restart local v12       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v15       #unknownAlbum:Z
    .restart local v16       #unknownArtist:Z
    :cond_17e
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1, v4, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 556
    .restart local v6       #currentalbumid:J
    :cond_18b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto/16 :goto_dc

    .line 558
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #artistName:Ljava/lang/String;
    .end local v6           #currentalbumid:J
    .end local v12           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v15           #unknownAlbum:Z
    .end local v16           #unknownArtist:Z
    :cond_198
    const/16 v18, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_236

    .line 559
    const/16 v18, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 560
    .local v13, name:Ljava/lang/String;
    const/16 v18, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 561
    .local v14, playlistType:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    const/16 v18, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 566
    .local v8, id:J
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9, v13, v14}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPlaylistAlbumArt(JLjava/lang/String;I)V

    .line 568
    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 569
    const/16 v18, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistName:Ljava/lang/String;

    .line 570
    const/16 v18, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistType:I

    .line 571
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 572
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->setPlaylistId(J)V

    .line 574
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 576
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto/16 :goto_dc

    .line 578
    .end local v8           #id:J
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #playlistType:I
    :cond_236
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 579
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 580
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 581
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto/16 :goto_17d

    .line 588
    :cond_27c
    const/4 v11, 0x0

    goto/16 :goto_f5

    .line 589
    .restart local v11       #isAvailable:Z
    :cond_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v18, v0

    goto/16 :goto_103

    .line 594
    :cond_287
    const/16 v18, 0x0

    goto/16 :goto_136

    .line 595
    :cond_28b
    const/16 v18, 0x0

    goto/16 :goto_14a

    .line 601
    :cond_28f
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    goto/16 :goto_170
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/RecentBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 620
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 621
    const/4 p1, 0x0

    .line 624
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$900(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 625
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #setter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/google/android/music/RecentBrowserActivity;->access$902(Lcom/google/android/music/RecentBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 626
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 628
    :cond_1e
    return-void
.end method

.method public getRepresentativeAlbumId()J
    .registers 19

    .prologue
    .line 645
    const-wide/16 v8, -0x1

    .line 647
    .local v8, albumId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    .line 648
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v10

    .line 649
    .local v10, bottom:I
    sub-int v1, v10, v13

    div-int/lit8 v15, v1, 0x2

    .line 651
    .local v15, viewIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 652
    .local v11, childView:Landroid/view/View;
    if-eqz v11, :cond_3e

    .line 653
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 654
    .local v14, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    if-eqz v14, :cond_3e

    .line 656
    iget-wide v4, v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    const-wide/16 v16, 0x0

    cmp-long v1, v4, v16

    if-ltz v1, :cond_3f

    .line 657
    iget-wide v8, v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 685
    .end local v14           #vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    :cond_3e
    :goto_3e
    return-wide v8

    .line 659
    .restart local v14       #vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    :cond_3f
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 660
    const/4 v12, 0x0

    .line 661
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v7, 0x1

    .line 662
    .local v7, PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "album_id"

    aput-object v4, v3, v1

    .line 666
    .local v3, PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    iget-wide v4, v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    const-wide/16 v16, 0x0

    cmp-long v1, v4, v16

    if-lez v1, :cond_6b

    .line 667
    iget-wide v4, v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    invoke-static {v4, v5}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 669
    .local v2, uriPlaylistMembers:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 672
    .end local v2           #uriPlaylistMembers:Landroid/net/Uri;
    :cond_6b
    if-eqz v12, :cond_3e

    .line 674
    :try_start_6d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 675
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 676
    iget-wide v8, v14, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_80

    .line 679
    :cond_7c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    :catchall_80
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 484
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 485
    .local v4, v:Landroid/view/View;
    new-instance v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;-><init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V

    .line 486
    .local v5, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    const v6, 0x7f10003d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 487
    const v6, 0x7f10003e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 488
    const v6, 0x7f100022

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    .line 489
    iget-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 490
    iget-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v7, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;

    invoke-direct {v7, p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;-><init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v7, Lcom/google/android/music/FadingColorDrawable;

    iget-object v8, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v7, p1, v8}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v6

    if-eqz v6, :cond_ca

    iget-object v6, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->isFastScrollAlwaysVisible()Z

    move-result v6

    if-eqz v6, :cond_ca

    const/4 v0, 0x1

    .line 498
    .local v0, fastScroll:Z
    :goto_5e
    iget-object v6, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/RecentBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 499
    .local v2, padding:I
    if-eqz v0, :cond_cc

    move v1, v2

    .line 500
    .local v1, left:I
    :goto_6f
    if-eqz v0, :cond_ce

    const/4 v3, 0x0

    .line 501
    .local v3, right:I
    :goto_72
    iget-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 503
    const v6, 0x7f100061

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/PlayingIndicator;

    iput-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 504
    const v6, 0x7f10000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 505
    iget-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v3, v8}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 506
    new-instance v6, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    iget-object v7, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {v6, v7}, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    .line 507
    iget-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v7, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v6, v7}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v6, 0x7f100050

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 509
    iget-object v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 510
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 511
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 512
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 513
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 514
    return-object v4

    .line 496
    .end local v0           #fastScroll:Z
    .end local v1           #left:I
    .end local v2           #padding:I
    .end local v3           #right:I
    :cond_ca
    const/4 v0, 0x0

    goto :goto_5e

    .line 499
    .restart local v0       #fastScroll:Z
    .restart local v2       #padding:I
    :cond_cc
    const/4 v1, 0x0

    goto :goto_6f

    .restart local v1       #left:I
    :cond_ce
    move v3, v2

    .line 500
    goto :goto_72
.end method

.method protected onContentChanged()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 608
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 610
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 611
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$800(Lcom/google/android/music/RecentBrowserActivity;)I

    move-result v1

    if-eq v1, v3, :cond_2a

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 612
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$800(Lcom/google/android/music/RecentBrowserActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 613
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #setter for: Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I
    invoke-static {v1, v3}, Lcom/google/android/music/RecentBrowserActivity;->access$802(Lcom/google/android/music/RecentBrowserActivity;I)I

    .line 615
    :cond_2a
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 479
    .local v0, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 632
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
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

    .line 636
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 641
    :goto_1c
    return-object v0

    .line 638
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    #calls: Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/RecentBrowserActivity;->access$1000(Lcom/google/android/music/RecentBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 639
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    .line 640
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method
