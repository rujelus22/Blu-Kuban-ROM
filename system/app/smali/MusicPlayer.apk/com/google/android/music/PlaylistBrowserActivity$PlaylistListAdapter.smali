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

    .line 590
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 591
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 569
    iput-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    .line 570
    iput-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 574
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActiveViews:Ljava/util/Set;

    .line 592
    iput-object p2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mContext:Landroid/content/Context;

    .line 593
    iput-object p3, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    .line 594
    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/google/android/music/PlaylistBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    return-object v0
.end method

.method private getAutoPlaylistTitle(J)Ljava/lang/String;
    .registers 5
    .parameter "id"

    .prologue
    .line 717
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateSelectedStatus(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;)V
    .registers 9
    .parameter "vh"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 638
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$400(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 668
    :cond_a
    :goto_a
    return-void

    .line 641
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    if-nez v2, :cond_a

    .line 645
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-boolean v3, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->hasRemote:Z

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    .line 646
    iget-boolean v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_4e

    .line 647
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$400(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v1

    .line 650
    .local v1, selected:Ljava/lang/Boolean;
    if-eqz v1, :cond_45

    .line 651
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 656
    .local v0, keepOn:Z
    :goto_2c
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 657
    if-nez v0, :cond_48

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$400(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 658
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v5}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a

    .line 653
    .end local v0           #keepOn:Z
    :cond_45
    iget-boolean v0, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v0       #keepOn:Z
    goto :goto_2c

    .line 660
    :cond_48
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v6}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a

    .line 665
    .end local v0           #keepOn:Z
    .end local v1           #selected:Ljava/lang/Boolean;
    :cond_4e
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v6}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 666
    iget-object v2, p1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v5}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    .line 673
    .local v6, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 674
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 714
    :goto_1c
    return-void

    .line 678
    :cond_1d
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, name:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 680
    .local v5, playlistType:I
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v7, v4}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 684
    .local v0, id:J
    invoke-static {v0, v1}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v7

    iput-boolean v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    .line 685
    iget-boolean v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    if-eqz v7, :cond_8f

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getAutoPlaylistTitle(J)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, mainLabel:Ljava/lang/String;
    :goto_3f
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v7, v0, v1, v3, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPlaylistAlbumArt(JLjava/lang/String;I)V

    .line 689
    iput-wide v0, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    .line 690
    const-wide/16 v7, -0x1

    iput-wide v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 691
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    iget-wide v8, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->setPlaylistId(J)V

    .line 692
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v7}, Lcom/google/android/music/PlaylistBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 693
    iget-boolean v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isAutoPlaylist:Z

    if-eqz v7, :cond_91

    .line 694
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 703
    :goto_67
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :goto_6e
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v7}, Lcom/google/android/music/PlaylistBrowserActivity;->access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_7d

    const/4 v7, 0x5

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_c1

    :cond_7d
    const/4 v2, 0x1

    .line 710
    .local v2, isAvailable:Z
    :goto_7e
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v7, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 711
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 713
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .end local v2           #isAvailable:Z
    .end local v3           #mainLabel:Ljava/lang/String;
    :cond_8f
    move-object v3, v4

    .line 685
    goto :goto_3f

    .line 696
    .restart local v3       #mainLabel:Ljava/lang/String;
    :cond_91
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 697
    const/4 v7, 0x4

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_af

    const/4 v7, 0x1

    :goto_9f
    iput-boolean v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->hasRemote:Z

    .line 698
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_b1

    const/4 v7, 0x1

    :goto_a9
    iput-boolean v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->isKeptInDb:Z

    .line 700
    invoke-direct {p0, v6}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->updateSelectedStatus(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;)V

    goto :goto_67

    .line 697
    :cond_af
    const/4 v7, 0x0

    goto :goto_9f

    .line 698
    :cond_b1
    const/4 v7, 0x0

    goto :goto_a9

    .line 705
    :cond_b3
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 706
    iget-object v7, v6, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6e

    .line 708
    :cond_c1
    const/4 v2, 0x0

    goto :goto_7e
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 724
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 725
    const/4 p1, 0x0

    .line 727
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$700(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 728
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$702(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 729
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 731
    :cond_1e
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const-wide/16 v3, 0x0

    const/16 v6, 0x8

    .line 602
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 603
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;-><init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V

    .line 604
    .local v2, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    iput-wide v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    .line 605
    iput-wide v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 606
    const v3, 0x7f10004e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    .line 607
    iget-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v4, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;-><init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v4, Lcom/google/android/music/FadingColorDrawable;

    iget-object v5, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v4, p1, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v3

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->isFastScrollAlwaysVisible()Z

    move-result v3

    if-eqz v3, :cond_a2

    const/4 v0, 0x1

    .line 616
    .local v0, fastScroll:Z
    :goto_43
    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/PlaylistBrowserActivity;->access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10001d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    .line 619
    const v3, 0x7f10003e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 620
    const v3, 0x7f100057

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 621
    const v3, 0x7f10000f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 622
    new-instance v3, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v3, v4}, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    .line 623
    iget-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v4, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v3, v4}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    const v3, 0x7f10003d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 625
    const v3, 0x7f10001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 627
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 628
    return-object v1

    .line 614
    .end local v0           #fastScroll:Z
    :cond_a2
    const/4 v0, 0x0

    goto :goto_43
.end method

.method protected onContentChanged()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 755
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 757
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v0

    .line 758
    .local v0, hasCount:Z
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$800(Lcom/google/android/music/PlaylistBrowserActivity;)I

    move-result v2

    if-eq v2, v4, :cond_2a

    if-eqz v0, :cond_2a

    .line 759
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v3}, Lcom/google/android/music/PlaylistBrowserActivity;->access$800(Lcom/google/android/music/PlaylistBrowserActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 760
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v2, v4}, Lcom/google/android/music/PlaylistBrowserActivity;->access$802(Lcom/google/android/music/PlaylistBrowserActivity;I)I

    .line 762
    :cond_2a
    if-eqz v0, :cond_49

    .line 763
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v1, 0x1

    .line 764
    .local v1, hasPlaylists:Z
    :goto_37
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mHasPlaylists:Z
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$900(Lcom/google/android/music/PlaylistBrowserActivity;)Z

    move-result v2

    if-eq v1, v2, :cond_49

    .line 765
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/google/android/music/PlaylistBrowserActivity;->mHasPlaylists:Z
    invoke-static {v2, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$902(Lcom/google/android/music/PlaylistBrowserActivity;Z)Z

    .line 766
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #calls: Lcom/google/android/music/PlaylistBrowserActivity;->requestReconfig()V
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$1000(Lcom/google/android/music/PlaylistBrowserActivity;)V

    .line 769
    .end local v1           #hasPlaylists:Z
    :cond_49
    return-void

    .line 763
    :cond_4a
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 751
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 736
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
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

    .line 740
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 745
    :goto_1c
    return-object v0

    .line 742
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    #calls: Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$200(Lcom/google/android/music/PlaylistBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 743
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 744
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 632
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

    .line 633
    .local v1, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->updateSelectedStatus(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;)V

    goto :goto_6

    .line 635
    .end local v1           #vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    :cond_16
    return-void
.end method
