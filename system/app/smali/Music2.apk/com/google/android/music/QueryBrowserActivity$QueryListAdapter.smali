.class Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/QueryBrowserActivity;

.field private mAlbumArtistIdIndex:I

.field private mAlbumArtistIndex:I

.field private mAlbumCountIndex:I

.field private mAlbumIdIndex:I

.field private mAlbumIndex:I

.field private mArtistIndex:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mDurationIndex:I

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mIdIndex:I

.field private mIsPortrait:Z

.field private mItemCountIndex:I

.field private mNameIndex:I

.field private mPlaylistTypeIndex:I

.field private mSortNameIndex:I

.field private mTypeIndex:I

.field private mYearIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 16
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 575
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 551
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    .line 553
    iput-object v8, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 554
    iput-object v8, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 555
    iput-boolean v7, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 576
    iput-object p2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_38

    move v0, v6

    :goto_35
    iput-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIsPortrait:Z

    .line 579
    return-void

    :cond_38
    move v0, v7

    .line 577
    goto :goto_35
.end method

.method static synthetic access$1000(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/google/android/music/QueryBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 868
    if-eqz p1, :cond_72

    .line 869
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    .line 870
    const-string v0, "Artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mArtistIndex:I

    .line 871
    const-string v0, "AlbumArtist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    .line 872
    const-string v0, "AlbumArtistId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIdIndex:I

    .line 873
    const-string v0, "Album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    .line 874
    const-string v0, "searchName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    .line 875
    const-string v0, "itemCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    .line 876
    const-string v0, "albumCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumCountIndex:I

    .line 877
    const-string v0, "searchType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    .line 878
    const-string v0, "ListType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    .line 879
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mDurationIndex:I

    .line 880
    const-string v0, "AlbumId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    .line 881
    const-string v0, "year"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mYearIndex:I

    .line 882
    const-string v0, "searchSortName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mSortNameIndex:I

    .line 884
    :cond_72
    return-void
.end method

.method private playFirst(Landroid/database/Cursor;)V
    .registers 22
    .parameter "c"

    .prologue
    .line 801
    const/4 v12, 0x0

    .line 803
    .local v12, showMediaPlayerWhenDone:Z
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_35

    .line 804
    const/4 v13, 0x0

    .line 805
    .local v13, songList:Lcom/google/android/music/medialist/SongList;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 806
    .local v16, type:I
    packed-switch v16, :pswitch_data_178

    .line 855
    const-string v17, "QueryBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "playFirst: unexpected search item type:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v16           #type:I
    :cond_35
    :goto_35
    return-void

    .line 812
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v16       #type:I
    :pswitch_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 813
    .local v6, artistId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 814
    .local v5, artist:Ljava/lang/String;
    new-instance v13, Lcom/google/android/music/medialist/ArtistSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v13, v6, v7, v5, v0}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 816
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_7b

    const-string v17, "QueryBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "playFirst(): got songList for ARTIST: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_7b
    invoke-static {v13}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    goto :goto_35

    .line 826
    .end local v5           #artist:Ljava/lang/String;
    .end local v6           #artistId:J
    :pswitch_7f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 827
    .local v3, albumId:J
    new-instance v13, Lcom/google/android/music/medialist/AlbumSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    invoke-direct {v13, v3, v4}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 828
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_b2

    const-string v17, "QueryBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "playFirst(): got songList for ALBUM: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_35

    .line 835
    .end local v3           #albumId:J
    :pswitch_c7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 836
    .local v14, trackId:J
    new-instance v13, Lcom/google/android/music/medialist/SingleSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v13, v14, v15, v0}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    .line 837
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_fe

    const-string v17, "QueryBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "playFirst(): got songList for TRACK: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_35

    .line 844
    .end local v14           #trackId:J
    :pswitch_113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 845
    .local v9, playlistId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 846
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 847
    .local v11, playlistType:I
    new-instance v13, Lcom/google/android/music/medialist/PlaylistSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    invoke-direct {v13, v9, v10, v8, v11}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .line 848
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_162

    const-string v17, "QueryBrowserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "playFirst(): got songList for PLAYLIST: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_35

    .line 806
    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_7f
        :pswitch_113
        :pswitch_c7
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 18
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    .line 620
    .local v9, vh:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 621
    .local v7, res:Landroid/content/res/Resources;
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    .line 622
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    .line 623
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_12b

    .line 624
    const/4 v10, 0x0

    iput v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->playlistType:I

    .line 628
    :goto_2b
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    .line 629
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mSortNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->sortName:Ljava/lang/String;

    .line 630
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v11, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_137

    .line 633
    const-wide/16 v10, -0x1

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    .line 637
    :goto_54
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5e

    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_143

    .line 639
    :cond_5e
    iget-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistId:J

    .line 640
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistName:Ljava/lang/String;

    .line 645
    :goto_66
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumName:Ljava/lang/String;

    .line 647
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #getter for: Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v10}, Lcom/google/android/music/QueryBrowserActivity;->access$600(Lcom/google/android/music/QueryBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v10

    if-eqz v10, :cond_159

    .line 648
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 657
    :goto_83
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 658
    const/4 v6, -0x1

    .line 659
    .local v6, prevType:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v10

    if-nez v10, :cond_95

    .line 660
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 662
    :cond_95
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 663
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a2

    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_177

    .line 667
    :cond_a2
    const/4 v10, 0x2

    if-eq v6, v10, :cond_16e

    const/4 v10, 0x1

    if-eq v6, v10, :cond_16e

    .line 670
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d001d

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 676
    :goto_b6
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_c1

    .line 677
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 679
    :cond_c1
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_cc

    .line 680
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 683
    :cond_cc
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    if-eqz v10, :cond_fb

    .line 684
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 685
    .local v4, numAlbums:I
    const v10, 0x7f0c0005

    invoke-virtual {v7, v10, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, albumString:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 688
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v3, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 689
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    .end local v3           #albumString:Ljava/lang/String;
    .end local v4           #numAlbums:I
    :cond_fb
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_12a

    .line 693
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 694
    .local v5, numSongs:I
    const v10, 0x7f0c0004

    invoke-virtual {v7, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 696
    .restart local v3       #albumString:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 697
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v3, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 698
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    .end local v3           #albumString:Ljava/lang/String;
    .end local v5           #numSongs:I
    :cond_12a
    :goto_12a
    return-void

    .line 626
    .end local v6           #prevType:I
    :cond_12b
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->playlistType:I

    goto/16 :goto_2b

    .line 635
    :cond_137
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    goto/16 :goto_54

    .line 642
    :cond_143
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistId:J

    .line 643
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistName:Ljava/lang/String;

    goto/16 :goto_66

    .line 649
    :cond_159
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_166

    .line 650
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_83

    .line 652
    :cond_166
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_83

    .line 673
    .restart local v6       #prevType:I
    :cond_16e
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b6

    .line 700
    :cond_177
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1e4

    .line 701
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    if-eq v10, v6, :cond_1dc

    .line 702
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0020

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 707
    :goto_18e
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_199

    .line 708
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 710
    :cond_199
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_1a4

    .line 711
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 713
    :cond_1a4
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_12a

    .line 715
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 716
    .restart local v5       #numSongs:I
    const v10, 0x7f0c0004

    invoke-virtual {v7, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 718
    .local v8, songString:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 719
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v8, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 720
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12a

    .line 705
    .end local v5           #numSongs:I
    .end local v8           #songString:Ljava/lang/String;
    :cond_1dc
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18e

    .line 722
    :cond_1e4
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_265

    .line 723
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    if-eq v10, v6, :cond_25d

    .line 724
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d001e

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 729
    :goto_1fb
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, albumArtist:Ljava/lang/String;
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, album:Ljava/lang/String;
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_21c

    .line 732
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 733
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-wide v11, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    invoke-virtual {v10, v11, v12, v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_21c
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_227

    .line 736
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 739
    :cond_227
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_12a

    .line 742
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 743
    .restart local v5       #numSongs:I
    const v10, 0x7f0c0004

    invoke-virtual {v7, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 745
    .restart local v8       #songString:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 746
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v8, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 747
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12a

    .line 727
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #albumArtist:Ljava/lang/String;
    .end local v5           #numSongs:I
    .end local v8           #songString:Ljava/lang/String;
    :cond_25d
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1fb

    .line 749
    :cond_265
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2d4

    .line 750
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    if-eq v10, v6, :cond_2c6

    .line 751
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d001f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 756
    :goto_27c
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    .restart local v2       #albumArtist:Ljava/lang/String;
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 758
    .restart local v1       #album:Ljava/lang/String;
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_297

    .line 759
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 761
    :cond_297
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_2a8

    .line 762
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 763
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-wide v11, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    invoke-virtual {v10, v11, v12, v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_2a8
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_2b7

    .line 767
    iget-boolean v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIsPortrait:Z

    if-eqz v10, :cond_2ce

    .line 768
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    :cond_2b7
    :goto_2b7
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12a

    .line 754
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #albumArtist:Ljava/lang/String;
    :cond_2c6
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27c

    .line 770
    .restart local v1       #album:Ljava/lang/String;
    .restart local v2       #albumArtist:Ljava/lang/String;
    :cond_2ce
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b7

    .line 775
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #albumArtist:Ljava/lang/String;
    :cond_2d4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/QueryBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 782
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 783
    const/4 p1, 0x0

    .line 785
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #getter for: Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/QueryBrowserActivity;->access$700(Lcom/google/android/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 786
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #setter for: Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/google/android/music/QueryBrowserActivity;->access$702(Lcom/google/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 787
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 789
    :cond_1e
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 790
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #getter for: Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z
    invoke-static {v0}, Lcom/google/android/music/QueryBrowserActivity;->access$800(Lcom/google/android/music/QueryBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 791
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z
    invoke-static {v0, v1}, Lcom/google/android/music/QueryBrowserActivity;->access$802(Lcom/google/android/music/QueryBrowserActivity;Z)Z

    .line 792
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->playFirst(Landroid/database/Cursor;)V

    .line 794
    :cond_32
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 587
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 590
    .local v2, view:Landroid/view/View;
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 591
    new-instance v0, Lcom/google/android/music/QueryListItemView;

    invoke-direct {v0, p1}, Lcom/google/android/music/QueryListItemView;-><init>(Landroid/content/Context;)V

    .line 592
    .local v0, frame:Landroid/view/ViewGroup;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 593
    move-object v2, v0

    .line 595
    .end local v0           #frame:Landroid/view/ViewGroup;
    :cond_13
    new-instance v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;-><init>(Lcom/google/android/music/QueryBrowserActivity$1;)V

    .line 596
    .local v1, vh:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 598
    const v3, 0x7f100071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 599
    const v3, 0x7f100072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 601
    const/high16 v3, 0x7f10

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 602
    const v3, 0x7f100005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    .line 603
    const v3, 0x7f1000e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->year:Landroid/widget/TextView;

    .line 604
    const v3, 0x7f100018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    .line 605
    const v3, 0x7f100022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    .line 606
    iget-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    if-eqz v3, :cond_80

    .line 607
    iget-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v4, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;

    invoke-direct {v4, p0, v1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;-><init>(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;Lcom/google/android/music/QueryBrowserActivity$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v4, Lcom/google/android/music/FadingColorDrawable;

    iget-object v5, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v4, p1, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    :cond_80
    const v3, 0x7f1000e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    .line 612
    const v3, 0x7f1000e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    .line 614
    return-object v2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 888
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 892
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 897
    :goto_1c
    return-object v0

    .line 894
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #calls: Lcom/google/android/music/QueryBrowserActivity;->getQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/QueryBrowserActivity;->access$400(Lcom/google/android/music/QueryBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 895
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 896
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public setActivity(Lcom/google/android/music/QueryBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 583
    return-void
.end method
