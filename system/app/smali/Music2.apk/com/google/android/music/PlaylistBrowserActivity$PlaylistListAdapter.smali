.class Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaylistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActiveViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mContext:Landroid/content/Context;

.field mHasRemoteIdx:I

.field mIdIdx:I

.field mKeepOnIdx:I

.field mPlaylistTypeIdx:I

.field mTitleIdx:I

.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/content/Context;Lcom/google/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 15
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 564
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 565
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 543
    iput-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    .line 544
    iput-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 548
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActiveViews:Ljava/util/Set;

    .line 566
    iput-object p2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mContext:Landroid/content/Context;

    .line 567
    iput-object p3, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    .line 568
    invoke-direct {p0, p5}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 569
    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/google/android/music/PlaylistBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    return-object v0
.end method

.method private getAutoPlaylistTitle(J)Ljava/lang/String;
    .registers 5
    .parameter "id"

    .prologue
    .line 698
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$700(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 571
    if-eqz p1, :cond_2a

    .line 572
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    .line 573
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    .line 574
    const-string v0, "ListType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mPlaylistTypeIdx:I

    .line 575
    const-string v0, "KeepOnId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mKeepOnIdx:I

    .line 576
    const-string v0, "hasRemote"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mHasRemoteIdx:I

    .line 578
    :cond_2a
    return-void
.end method

.method private updateSelectedStatus(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;)V
    .registers 9
    .parameter "vh"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 624
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$200(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 654
    :cond_a
    :goto_a
    return-void

    .line 627
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    if-nez v2, :cond_a

    .line 631
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-boolean v3, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->hasRemote:Z

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 632
    iget-boolean v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_4e

    .line 633
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$200(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v1

    .line 636
    .local v1, selected:Ljava/lang/Boolean;
    if-eqz v1, :cond_45

    .line 637
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 642
    .local v0, keepOn:Z
    :goto_2c
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 643
    if-nez v0, :cond_48

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$200(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 644
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v5}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 639
    .end local v0           #keepOn:Z
    :cond_45
    iget-boolean v0, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v0       #keepOn:Z
    goto :goto_2c

    .line 646
    :cond_48
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v6}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 651
    .end local v0           #keepOn:Z
    .end local v1           #selected:Ljava/lang/Boolean;
    :cond_4e
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v6}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 652
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v5}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    .line 659
    .local v5, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    iget v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 660
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_1d
    return-void

    .line 664
    :cond_1e
    iget v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, name:Ljava/lang/String;
    iget v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mPlaylistTypeIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 666
    .local v4, playlistType:I
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 670
    .local v0, id:J
    invoke-static {v0, v1}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    .line 671
    iget-boolean v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    if-eqz v6, :cond_78

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getAutoPlaylistTitle(J)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, mainLabel:Ljava/lang/String;
    :goto_43
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6, v0, v1, v2, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPlaylistAlbumArt(JLjava/lang/String;I)V

    .line 675
    iput-wide v0, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    .line 676
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 677
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    iget-wide v7, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->setPlaylistId(J)V

    .line 678
    iget-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 679
    iget-boolean v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    if-eqz v6, :cond_7a

    .line 680
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 689
    :goto_6b
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :goto_72
    iget-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .end local v2           #mainLabel:Ljava/lang/String;
    :cond_78
    move-object v2, v3

    .line 671
    goto :goto_43

    .line 682
    .restart local v2       #mainLabel:Ljava/lang/String;
    :cond_7a
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 683
    iget v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mHasRemoteIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v6, 0x1

    :goto_89
    iput-boolean v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->hasRemote:Z

    .line 684
    iget v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mKeepOnIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_9c

    const/4 v6, 0x1

    :goto_94
    iput-boolean v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isKeptInDb:Z

    .line 686
    invoke-direct {p0, v5}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->updateSelectedStatus(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;)V

    goto :goto_6b

    .line 683
    :cond_9a
    const/4 v6, 0x0

    goto :goto_89

    .line 684
    :cond_9c
    const/4 v6, 0x0

    goto :goto_94

    .line 691
    :cond_9e
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 692
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_72
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 705
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 706
    const/4 p1, 0x0

    .line 708
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$800(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_21

    .line 709
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$802(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 710
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 711
    invoke-direct {p0, p1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 713
    :cond_21
    return-void
.end method

.method public getRepresentativeAlbumId()J
    .registers 20

    .prologue
    .line 731
    const-wide/16 v8, -0x1

    .line 733
    .local v8, albumId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;

    move-result-object v13

    .line 734
    .local v13, listView:Landroid/widget/ListView;
    invoke-virtual {v13}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v14

    .line 735
    .local v14, top:I
    invoke-virtual {v13}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v10

    .line 736
    .local v10, bottom:I
    sub-int v1, v10, v14

    div-int/lit8 v16, v1, 0x2

    .line 738
    .local v16, viewIndex:I
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 739
    .local v11, childView:Landroid/view/View;
    if-eqz v11, :cond_6c

    .line 740
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    .line 741
    .local v15, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    iget-wide v4, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    const-wide/16 v17, -0x1

    cmp-long v1, v4, v17

    if-nez v1, :cond_6c

    .line 742
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 743
    const/4 v12, 0x0

    .line 744
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v7, 0x1

    .line 745
    .local v7, PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "album_id"

    aput-object v4, v3, v1

    .line 749
    .local v3, PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    iget-wide v4, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    const-wide/16 v17, 0x0

    cmp-long v1, v4, v17

    if-lez v1, :cond_6d

    .line 750
    iget-wide v4, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-static {v4, v5}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 752
    .local v2, uriPlaylistMembers:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 758
    .end local v2           #uriPlaylistMembers:Landroid/net/Uri;
    :cond_58
    :goto_58
    if-eqz v12, :cond_6c

    .line 760
    :try_start_5a
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 761
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 762
    iget-wide v8, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_88

    .line 765
    :cond_69
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 770
    .end local v3           #PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    .end local v7           #PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v15           #vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    :cond_6c
    return-wide v8

    .line 754
    .restart local v3       #PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    .restart local v7       #PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v15       #vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    :cond_6d
    iget-wide v4, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-static {v4, v5}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v4}, Lcom/google/android/music/PlaylistBrowserActivity;->access$700(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    iget-wide v5, v15, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    #calls: Lcom/google/android/music/PlaylistBrowserActivity;->createAutoPlaylistCursor(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;J[Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v4, v5, v6, v3}, Lcom/google/android/music/PlaylistBrowserActivity;->access$900(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_58

    .line 765
    :catchall_88
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
    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 586
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 587
    .local v4, v:Landroid/view/View;
    new-instance v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;-><init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V

    .line 588
    .local v5, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    iput-wide v8, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    .line 589
    iput-wide v8, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 590
    const v6, 0x7f100022

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    .line 591
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v8, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;

    invoke-direct {v8, p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;-><init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v8, Lcom/google/android/music/FadingColorDrawable;

    iget-object v9, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v8, p1, v9}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v6

    if-eqz v6, :cond_ab

    iget-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->isFastScrollAlwaysVisible()Z

    move-result v6

    if-eqz v6, :cond_ab

    const/4 v0, 0x1

    .line 600
    .local v0, fastScroll:Z
    :goto_44
    iget-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f09006a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 601
    .local v2, padding:I
    if-eqz v0, :cond_ad

    move v1, v2

    .line 602
    .local v1, left:I
    :goto_55
    if-eqz v0, :cond_af

    move v3, v7

    .line 603
    .local v3, right:I
    :goto_58
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-virtual {v6, v1, v7, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 605
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 606
    const v6, 0x7f10003e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 607
    const v6, 0x7f100061

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 608
    const v6, 0x7f10000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 609
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v6, v1, v7, v3, v7}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 610
    new-instance v6, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v6, v7}, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    .line 611
    iget-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v7, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v6, v7}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    const v6, 0x7f10003d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 613
    const v6, 0x7f100050

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v6, v5, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 614
    return-object v4

    .end local v0           #fastScroll:Z
    .end local v1           #left:I
    .end local v2           #padding:I
    .end local v3           #right:I
    :cond_ab
    move v0, v7

    .line 598
    goto :goto_44

    .restart local v0       #fastScroll:Z
    .restart local v2       #padding:I
    :cond_ad
    move v1, v7

    .line 601
    goto :goto_55

    .restart local v1       #left:I
    :cond_af
    move v3, v2

    .line 602
    goto :goto_58
.end method

.method protected onContentChanged()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 778
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 780
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$1000(Lcom/google/android/music/PlaylistBrowserActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 781
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$1000(Lcom/google/android/music/PlaylistBrowserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 782
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v0, v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$1002(Lcom/google/android/music/PlaylistBrowserActivity;I)I

    .line 784
    :cond_2a
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 774
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 718
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 722
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 727
    :goto_1c
    return-object v0

    .line 724
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #calls: Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$000(Lcom/google/android/music/PlaylistBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 725
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 726
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 618
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    .line 619
    .local v1, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->updateSelectedStatus(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;)V

    goto :goto_6

    .line 621
    .end local v1           #vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    :cond_16
    return-void
.end method
