.class Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AtHomePlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomePlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AtHomeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;Lcom/google/android/music/athome/AtHomePlaybackActivity;ILcom/google/android/music/medialist/MediaList$MediaCursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter
    .parameter "currentActivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 423
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 424
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;

    .line 471
    .local v15, vh:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->trackTitle:Ljava/lang/String;

    .line 472
    const/4 v1, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->artistName:Ljava/lang/String;

    .line 473
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->albumName:Ljava/lang/String;

    .line 474
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->albumId:J

    .line 475
    const/4 v1, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->submitterId:J

    .line 476
    const/4 v1, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->submitterGivenName:Ljava/lang/String;

    .line 477
    const/4 v1, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->submitterFamilyName:Ljava/lang/String;

    .line 478
    const/16 v1, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->submitterPictureUrl:Ljava/lang/String;

    .line 480
    iget-object v12, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->trackTitle:Ljava/lang/String;

    .line 481
    .local v12, trackDisplayname:Ljava/lang/String;
    iget-object v7, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->artistName:Ljava/lang/String;

    .line 483
    .local v7, artistDisplayname:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v13

    .line 484
    .local v13, unknownAlbum:Z
    iget-object v2, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v13, :cond_f2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownAlbum:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1100(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Ljava/lang/String;

    move-result-object v1

    :goto_63
    invoke-virtual {v2, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-static {v7}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v14

    .line 487
    .local v14, unknownArtist:Z
    iget-object v2, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    if-eqz v14, :cond_f5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownArtist:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1200(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Ljava/lang/String;

    move-result-object v1

    :goto_76
    invoke-virtual {v2, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 493
    .local v11, itemPos:I
    const/4 v8, -0x1

    .line 497
    .local v8, currentlyPlaying:I
    :try_start_7e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_93} :catch_f7

    move-result v8

    .line 504
    :cond_94
    :goto_94
    if-ne v11, v8, :cond_111

    const/4 v10, 0x1

    .line 506
    .local v10, isCurrentPlaying:Z
    :goto_97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasMultiSubmitterPhotos:Z
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$900(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 507
    iget-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->quick_contact:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    move-object/from16 v0, p2

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->setViewHolderQuickContactPicture(Landroid/content/Context;Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;)V
    invoke-static {v1, v0, v15}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1400(Lcom/google/android/music/athome/AtHomePlaybackActivity;Landroid/content/Context;Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;)V

    .line 512
    :goto_b0
    if-eqz v10, :cond_11a

    .line 513
    iget-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPrimaryLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1500(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mSecondaryLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_f1

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1700(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v1

    iget-wide v2, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->albumId:J

    iget-object v4, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->artistName:Ljava/lang/String;

    iget-object v5, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->albumName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v6}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V

    .line 523
    :cond_f1
    :goto_f1
    return-void

    .end local v8           #currentlyPlaying:I
    .end local v10           #isCurrentPlaying:Z
    .end local v11           #itemPos:I
    .end local v14           #unknownArtist:Z
    :cond_f2
    move-object v1, v12

    .line 484
    goto/16 :goto_63

    .restart local v14       #unknownArtist:Z
    :cond_f5
    move-object v1, v7

    .line 487
    goto :goto_76

    .line 500
    .restart local v8       #currentlyPlaying:I
    .restart local v11       #itemPos:I
    :catch_f7
    move-exception v9

    .line 501
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "AtHomePlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get queue Position failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 504
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_111
    const/4 v10, 0x0

    goto :goto_97

    .line 510
    .restart local v10       #isCurrentPlaying:Z
    :cond_113
    iget-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->quick_contact:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_b0

    .line 521
    :cond_11a
    iget-object v1, v15, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_f1
.end method

.method public moveItem(II)V
    .registers 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 535
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_11

    .line 536
    check-cast v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveItem(II)V

    .line 538
    :cond_11
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    .line 445
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 446
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;-><init>(Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;)V

    .line 448
    .local v2, vh:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;
    const v3, 0x7f10003d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 449
    const v3, 0x7f10003e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 450
    const v3, 0x7f100057

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/PlayingIndicator;

    iput-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 451
    const v3, 0x7f10001e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->dim_layer:Landroid/widget/ImageView;

    .line 452
    const v3, 0x7f100010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/QuickContactBadge;

    iput-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->quick_contact:Landroid/widget/QuickContactBadge;

    .line 453
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 454
    const v3, 0x7f10001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 455
    .local v0, icon:Lcom/google/android/music/AsyncAlbumArtImageView;
    invoke-virtual {v0, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 456
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasMultiSubmitterPhotos:Z
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$900(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 457
    iget-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->quick_contact:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 458
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    iget-object v4, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->quick_contact:Landroid/widget/QuickContactBadge;

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultQuickContactPicture(Landroid/widget/QuickContactBadge;)V
    invoke-static {v3, v4}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1000(Lcom/google/android/music/athome/AtHomePlaybackActivity;Landroid/widget/QuickContactBadge;)V

    .line 463
    :goto_66
    iget-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->dim_layer:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    return-object v1

    .line 460
    :cond_6c
    iget-object v3, v2, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->quick_contact:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_66
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 527
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 528
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mNeedToScrollToCurrent:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1800(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 529
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->scrollToCurrentPlaying()V

    .line 531
    :cond_10
    return-void
.end method

.method protected onContentChanged()V
    .registers 2

    .prologue
    .line 417
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 418
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateSubmitterStats()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$400(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    .line 419
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 542
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_11

    .line 543
    check-cast v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-virtual {v0, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    .line 545
    :cond_11
    return-void
.end method
