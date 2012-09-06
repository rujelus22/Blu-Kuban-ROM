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

    .line 625
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 601
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    .line 603
    iput-object v8, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 604
    iput-object v8, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 605
    iput-boolean v7, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 626
    iput-object p2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_38

    move v0, v6

    :goto_35
    iput-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIsPortrait:Z

    .line 629
    return-void

    :cond_38
    move v0, v7

    .line 627
    goto :goto_35
.end method

.method static synthetic access$1000(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/google/android/music/QueryBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 927
    if-eqz p1, :cond_72

    .line 928
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    .line 929
    const-string v0, "Artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mArtistIndex:I

    .line 930
    const-string v0, "AlbumArtist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    .line 931
    const-string v0, "AlbumArtistId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIdIndex:I

    .line 932
    const-string v0, "Album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    .line 933
    const-string v0, "searchName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    .line 934
    const-string v0, "itemCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    .line 935
    const-string v0, "albumCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumCountIndex:I

    .line 936
    const-string v0, "searchType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    .line 937
    const-string v0, "ListType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    .line 938
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mDurationIndex:I

    .line 939
    const-string v0, "AlbumId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    .line 940
    const-string v0, "year"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mYearIndex:I

    .line 941
    const-string v0, "searchSortName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mSortNameIndex:I

    .line 943
    :cond_72
    return-void
.end method

.method private playFirst(Landroid/database/Cursor;)V
    .registers 22
    .parameter "c"

    .prologue
    .line 860
    const/4 v12, 0x1

    .line 862
    .local v12, showMediaPlayerWhenDone:Z
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_47

    .line 863
    const/4 v13, 0x0

    .line 864
    .local v13, songList:Lcom/google/android/music/medialist/SongList;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 865
    .local v16, type:I
    packed-switch v16, :pswitch_data_196

    .line 914
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

    .line 919
    :goto_35
    if-eqz v13, :cond_47

    .line 920
    const-string v17, "QueryBrowserActivity"

    const-string v18, "playFirst(): finishing..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/QueryBrowserActivity;->finish()V

    .line 924
    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v16           #type:I
    :cond_47
    return-void

    .line 871
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v16       #type:I
    :pswitch_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 872
    .local v6, artistId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 873
    .local v5, artist:Ljava/lang/String;
    new-instance v13, Lcom/google/android/music/medialist/ArtistSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v13, v6, v7, v5, v0}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 875
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_8d

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

    .line 876
    :cond_8d
    invoke-static {v13}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/QueryBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    goto :goto_35

    .line 885
    .end local v5           #artist:Ljava/lang/String;
    .end local v6           #artistId:J
    :pswitch_9e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 886
    .local v3, albumId:J
    new-instance v13, Lcom/google/android/music/medialist/AlbumSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    invoke-direct {v13, v3, v4}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 887
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_d1

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

    .line 888
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_35

    .line 894
    .end local v3           #albumId:J
    :pswitch_e6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 895
    .local v14, trackId:J
    new-instance v13, Lcom/google/android/music/medialist/SingleSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v13, v14, v15, v0}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    .line 896
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_11d

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

    .line 897
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_35

    .line 903
    .end local v14           #trackId:J
    :pswitch_132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 904
    .local v9, playlistId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 905
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 906
    .local v11, playlistType:I
    new-instance v13, Lcom/google/android/music/medialist/PlaylistSongList;

    .end local v13           #songList:Lcom/google/android/music/medialist/SongList;
    invoke-direct {v13, v9, v10, v8, v11}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .line 907
    .restart local v13       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$900()Z

    move-result v17

    if-eqz v17, :cond_181

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

    .line 908
    :cond_181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_35

    .line 865
    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_9e
        :pswitch_132
        :pswitch_e6
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 18
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    .line 671
    .local v9, vh:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 672
    .local v7, res:Landroid/content/res/Resources;
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    .line 673
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    .line 674
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_12b

    .line 675
    const/4 v10, 0x0

    iput v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->playlistType:I

    .line 679
    :goto_2b
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    .line 680
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mSortNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->sortName:Ljava/lang/String;

    .line 681
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v11, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_137

    .line 684
    const-wide/16 v10, -0x1

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    .line 688
    :goto_54
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5e

    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_143

    .line 690
    :cond_5e
    iget-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistId:J

    .line 691
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistName:Ljava/lang/String;

    .line 696
    :goto_66
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumName:Ljava/lang/String;

    .line 698
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #getter for: Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v10}, Lcom/google/android/music/QueryBrowserActivity;->access$600(Lcom/google/android/music/QueryBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v10

    if-eqz v10, :cond_159

    .line 699
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 706
    :goto_83
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 707
    const/4 v6, -0x1

    .line 708
    .local v6, prevType:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v10

    if-nez v10, :cond_95

    .line 709
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 711
    :cond_95
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 712
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a2

    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_16a

    .line 716
    :cond_a2
    const/4 v10, 0x2

    if-eq v6, v10, :cond_161

    const/4 v10, 0x1

    if-eq v6, v10, :cond_161

    .line 719
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0021

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 725
    :goto_b6
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_c1

    .line 726
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 728
    :cond_c1
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_cc

    .line 729
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 732
    :cond_cc
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    if-eqz v10, :cond_fb

    .line 733
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 734
    .local v4, numAlbums:I
    const v10, 0x7f0c0005

    invoke-virtual {v7, v10, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, albumString:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 737
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v3, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 738
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    .end local v3           #albumString:Ljava/lang/String;
    .end local v4           #numAlbums:I
    :cond_fb
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_12a

    .line 742
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 743
    .local v5, numSongs:I
    const v10, 0x7f0c0004

    invoke-virtual {v7, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 745
    .restart local v3       #albumString:Ljava/lang/String;
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

    invoke-virtual {v10, v3, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 747
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    .end local v3           #albumString:Ljava/lang/String;
    .end local v5           #numSongs:I
    :cond_12a
    :goto_12a
    return-void

    .line 677
    .end local v6           #prevType:I
    :cond_12b
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mPlaylistTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->playlistType:I

    goto/16 :goto_2b

    .line 686
    :cond_137
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    goto/16 :goto_54

    .line 693
    :cond_143
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistId:J

    .line 694
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistName:Ljava/lang/String;

    goto/16 :goto_66

    .line 701
    :cond_159
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_83

    .line 722
    .restart local v6       #prevType:I
    :cond_161
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b6

    .line 749
    :cond_16a
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1d7

    .line 750
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    if-eq v10, v6, :cond_1cf

    .line 751
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0024

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 756
    :goto_181
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_18c

    .line 757
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 759
    :cond_18c
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_197

    .line 760
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 762
    :cond_197
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_12a

    .line 764
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 765
    .restart local v5       #numSongs:I
    const v10, 0x7f0c0004

    invoke-virtual {v7, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 767
    .local v8, songString:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 768
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v8, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 769
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12a

    .line 754
    .end local v5           #numSongs:I
    .end local v8           #songString:Ljava/lang/String;
    :cond_1cf
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_181

    .line 771
    :cond_1d7
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_258

    .line 772
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    if-eq v10, v6, :cond_250

    .line 773
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 774
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0022

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 778
    :goto_1ee
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 779
    .local v2, albumArtist:Ljava/lang/String;
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, album:Ljava/lang/String;
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_20f

    .line 781
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 782
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-wide v11, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    invoke-virtual {v10, v11, v12, v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_20f
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_21a

    .line 785
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 788
    :cond_21a
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_12a

    .line 791
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 792
    .restart local v5       #numSongs:I
    const v10, 0x7f0c0004

    invoke-virtual {v7, v10, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 794
    .restart local v8       #songString:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 795
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v8, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 796
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12a

    .line 776
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #albumArtist:Ljava/lang/String;
    .end local v5           #numSongs:I
    .end local v8           #songString:Ljava/lang/String;
    :cond_250
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1ee

    .line 798
    :cond_258
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2e6

    .line 799
    iget v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    if-eq v10, v6, :cond_2cf

    .line 800
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v11, 0x7f0d0023

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 805
    :goto_26f
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    .restart local v2       #albumArtist:Ljava/lang/String;
    iget v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 807
    .restart local v1       #album:Ljava/lang/String;
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_28a

    .line 808
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 810
    :cond_28a
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v10, :cond_29b

    .line 811
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 812
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-wide v11, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    invoke-virtual {v10, v11, v12, v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_29b
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v10, :cond_2aa

    .line 816
    iget-boolean v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIsPortrait:Z

    if-eqz v10, :cond_2d7

    .line 817
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 822
    :cond_2aa
    :goto_2aa
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mArtistIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->partyModeAddButton:Landroid/view/View;

    if-eqz v10, :cond_12a

    .line 824
    iget-object v10, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v10}, Lcom/google/android/music/QueryBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v10

    if-eqz v10, :cond_2dd

    .line 825
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->partyModeAddButton:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12a

    .line 803
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #albumArtist:Ljava/lang/String;
    :cond_2cf
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26f

    .line 819
    .restart local v1       #album:Ljava/lang/String;
    .restart local v2       #albumArtist:Ljava/lang/String;
    :cond_2d7
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2aa

    .line 827
    :cond_2dd
    iget-object v10, v9, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->partyModeAddButton:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12a

    .line 831
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #albumArtist:Ljava/lang/String;
    :cond_2e6
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
    .line 837
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/QueryBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 838
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 839
    const/4 p1, 0x0

    .line 841
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #getter for: Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/QueryBrowserActivity;->access$700(Lcom/google/android/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 842
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #setter for: Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/google/android/music/QueryBrowserActivity;->access$702(Lcom/google/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 843
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 845
    :cond_1e
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 846
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #getter for: Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z
    invoke-static {v0}, Lcom/google/android/music/QueryBrowserActivity;->access$800(Lcom/google/android/music/QueryBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz p1, :cond_38

    .line 847
    instance-of v0, p1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_39

    move-object v0, p1

    check-cast v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->hasCount()Z

    move-result v0

    if-nez v0, :cond_39

    .line 854
    :cond_38
    :goto_38
    return-void

    .line 851
    :cond_39
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z
    invoke-static {v0, v1}, Lcom/google/android/music/QueryBrowserActivity;->access$802(Lcom/google/android/music/QueryBrowserActivity;Z)Z

    .line 852
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->playFirst(Landroid/database/Cursor;)V

    goto :goto_38
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 637
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 640
    .local v2, view:Landroid/view/View;
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 641
    new-instance v0, Lcom/google/android/music/QueryListItemView;

    invoke-direct {v0, p1}, Lcom/google/android/music/QueryListItemView;-><init>(Landroid/content/Context;)V

    .line 642
    .local v0, frame:Landroid/view/ViewGroup;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 643
    move-object v2, v0

    .line 645
    .end local v0           #frame:Landroid/view/ViewGroup;
    :cond_14
    new-instance v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    invoke-direct {v1, v6}, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;-><init>(Lcom/google/android/music/QueryBrowserActivity$1;)V

    .line 646
    .local v1, vh:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 648
    const v3, 0x7f10008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 649
    const v3, 0x7f10008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 651
    const v3, 0x7f100002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 652
    const v3, 0x7f10004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->artist:Landroid/widget/TextView;

    .line 653
    const v3, 0x7f10010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->year:Landroid/widget/TextView;

    .line 654
    const v3, 0x7f10002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->album:Landroid/widget/TextView;

    .line 655
    const v3, 0x7f10004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    .line 656
    iget-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    if-eqz v3, :cond_81

    .line 657
    iget-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v4, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;

    invoke-direct {v4, p0, v1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;-><init>(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;Lcom/google/android/music/QueryBrowserActivity$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v4, Lcom/google/android/music/FadingColorDrawable;

    iget-object v5, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->contextMenu:Landroid/view/View;

    invoke-direct {v4, p1, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    :cond_81
    iput-object v6, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->partyModeAddButton:Landroid/view/View;

    .line 662
    const v3, 0x7f10010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->header:Landroid/view/View;

    .line 663
    const v3, 0x7f10010f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->headerTitle:Landroid/widget/TextView;

    .line 665
    return-object v2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 947
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 948
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

    .line 951
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 956
    :goto_1c
    return-object v0

    .line 953
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    #calls: Lcom/google/android/music/QueryBrowserActivity;->getQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/QueryBrowserActivity;->access$400(Lcom/google/android/music/QueryBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 954
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 955
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public setActivity(Lcom/google/android/music/QueryBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 633
    return-void
.end method
