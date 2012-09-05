.class public Lcom/sec/android/app/music/MusicGridAdapter;
.super Lcom/sec/android/app/music/widget/CommonMusicListAdapter;
.source "MusicGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static sDefaultGridArtwork:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final mAlbumIdColumnString:Ljava/lang/String;

.field public mAlbumIdIdx:I

.field private final mIndexColumnString:Ljava/lang/String;

.field private mIsSelectMode:Z

.field private mIsSelectedAll:Z

.field public mKeyWordIdx:I

.field private final mKeyWordcolumnString:Ljava/lang/String;

.field private mNumberOfDefaultPlayListItem:I

.field private final mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

.field private mSelectedId:J

.field private final mTabId:I

.field private mTabListCursor:Landroid/database/Cursor;

.field private mTabListCursorCount:I

.field private final mText1ColumnString:Ljava/lang/String;

.field public mText1Idx:I

.field private mText2ColumnString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .registers 14
    .parameter "context"
    .parameter "view"
    .parameter "tabId"
    .parameter "isSelectMode"

    .prologue
    const/4 v8, 0x0

    .line 94
    const v3, 0x7f030003

    const/4 v4, 0x0

    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    .line 87
    iput-boolean v8, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mIsSelectMode:Z

    .line 89
    iput-boolean v8, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mIsSelectedAll:Z

    .line 334
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mSelectedId:J

    .line 95
    iput p3, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    .line 96
    iput-boolean p4, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mIsSelectMode:Z

    .line 99
    iget v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->getTabListArgsForQuery(I)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    .line 101
    sget-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->sDefaultGridArtwork:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_30

    .line 102
    invoke-static {p1}, Lcom/sec/android/app/music/MusicUtils;->getGridDefaultArtwork(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->sDefaultGridArtwork:Landroid/graphics/drawable/Drawable;

    .line 110
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget v1, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mAlbumIdColumnString:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mIndexColumnString:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mKeyWordcolumnString:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget v1, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mText1ColumnString:Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_69

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget v1, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mText2ColumnString:Ljava/lang/String;

    .line 119
    :cond_69
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6a
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_a8

    .line 120
    sget-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQueryArgs projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    .line 125
    :cond_a8
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridAdapter;->getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {p0, v0, v1, v8}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicGridAdapter;->init(Landroid/database/Cursor;)V

    .line 126
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 310
    sget-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getColumnIndices()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-eqz p1, :cond_3a

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mAlbumIdColumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mAlbumIdIdx:I

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mText1ColumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mText1Idx:I

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mKeyWordcolumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mKeyWordIdx:I

    .line 318
    :cond_3a
    return-void
.end method

.method private getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;
    .registers 11
    .parameter "queryHandler"
    .parameter "args"
    .parameter "isAsync"

    .prologue
    .line 322
    sget-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getCursor isAsync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private makePlayListDefaultItems(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 17
    .parameter "c"

    .prologue
    .line 190
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 191
    .local v6, playListCursor:Landroid/database/MatrixCursor;
    sget-object v12, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_PROJECTION:[Ljava/lang/String;

    array-length v4, v12

    .line 193
    .local v4, length:I
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    .line 194
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v7, quickList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xb

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v12, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f090028

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v12, "@"

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, isEnableMostPlayed:Z
    const/4 v2, 0x0

    .line 202
    .local v2, isEnableRecentlyPlayed:Z
    const/4 v1, 0x0

    .line 203
    .local v1, isEnableRecentlyAdded:Z
    iget-object v12, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, setting:Ljava/lang/String;
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, "|"

    invoke-direct {v11, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v11, strToken:Ljava/util/StringTokenizer;
    :goto_3f
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 206
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 207
    .local v3, item:I
    packed-switch v3, :pswitch_data_ec

    goto :goto_3f

    .line 209
    :pswitch_59
    const/4 v0, 0x1

    .line 210
    goto :goto_3f

    .line 212
    :pswitch_5b
    const/4 v2, 0x1

    .line 213
    goto :goto_3f

    .line 215
    :pswitch_5d
    const/4 v1, 0x1

    .line 216
    goto :goto_3f

    .line 221
    .end local v3           #item:I
    :cond_5f
    if-eqz v0, :cond_89

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v5, mostPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xc

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v12, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f090029

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v12, "@"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 227
    iget v12, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    .line 230
    .end local v5           #mostPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_89
    if-eqz v2, :cond_b3

    .line 231
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v9, recentlyPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xd

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v12, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f09002a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v12, "@"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v6, v9}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 236
    iget v12, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    .line 239
    .end local v9           #recentlyPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_b3
    if-eqz v1, :cond_dd

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v8, recentlyAddedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xe

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v12, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f09002b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v12, "@"

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 245
    iget v12, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    .line 247
    .end local v8           #recentlyAddedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_dd
    new-instance v12, Landroid/database/MergeCursor;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/database/Cursor;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-direct {v12, v13}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v12

    .line 207
    :pswitch_data_ec
    .packed-switch 0xb
        :pswitch_59
        :pswitch_5b
        :pswitch_5d
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 510
    sget-object v8, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTabId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MusicTabListAdapter bindView position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;

    .line 517
    .local v7, vh:Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;
    iget v8, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mAlbumIdIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 518
    .local v0, albumId:J
    new-instance v2, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;-><init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V

    .line 519
    .local v2, args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    iput v8, v2, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    .line 520
    iput-wide v0, v2, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->albumId:J

    .line 522
    iget v8, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_dc

    .line 523
    const-wide/16 v8, -0xb

    cmp-long v8, v0, v8

    if-nez v8, :cond_8a

    .line 524
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const v9, 0x7f0200d6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 565
    :goto_63
    sget-object v8, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTabId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    mAlbumIdIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mAlbumIdIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 525
    :cond_8a
    const-wide/16 v8, -0xc

    cmp-long v8, v0, v8

    if-nez v8, :cond_99

    .line 526
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const v9, 0x7f0200cf

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_63

    .line 527
    :cond_99
    const-wide/16 v8, -0xd

    cmp-long v8, v0, v8

    if-nez v8, :cond_a8

    .line 528
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const v9, 0x7f0200d3

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_63

    .line 529
    :cond_a8
    const-wide/16 v8, -0xe

    cmp-long v8, v0, v8

    if-nez v8, :cond_b7

    .line 530
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const v9, 0x7f0200c4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_63

    .line 532
    :cond_b7
    invoke-static {p2, v0, v1}, Lcom/sec/android/app/music/MusicUtils;->getPlayListArtwork(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 533
    .local v3, bm:Landroid/graphics/Bitmap;
    if-nez v3, :cond_c6

    .line 534
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const v9, 0x7f0200d1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_63

    .line 536
    :cond_c6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 537
    .local v4, size:I
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-static {v3, v4, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_63

    .line 541
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v4           #size:I
    :cond_dc
    iget v8, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_103

    .line 542
    iget v8, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mText1Idx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, text1:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getGenreThumbnailResourceId(Ljava/lang/String;)I

    move-result v6

    .line 553
    .local v6, thumbnailId:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_f9

    .line 554
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_63

    .line 556
    :cond_f9
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p0, v7, v0, v1}, Lcom/sec/android/app/music/MusicGridAdapter;->setAlbumArt(Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;J)V

    goto/16 :goto_63

    .line 560
    .end local v5           #text1:Ljava/lang/String;
    .end local v6           #thumbnailId:I
    :cond_103
    iget-object v8, v7, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 561
    invoke-virtual {p0, v7, v0, v1}, Lcom/sec/android/app/music/MusicGridAdapter;->setAlbumArt(Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;J)V

    goto/16 :goto_63
.end method

.method public closeCursor()V
    .registers 4

    .prologue
    .line 174
    sget-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closeCursor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicGridAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 177
    return-void
.end method

.method public getItemCount()I
    .registers 4

    .prologue
    .line 569
    invoke-super {p0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->getCount()I

    move-result v0

    .line 570
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 571
    iget v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    sub-int/2addr v0, v1

    .line 573
    :cond_c
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 484
    sget-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MusicTabListAdapter getView mCursorCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/database/Cursor;)V
    .registers 7
    .parameter "newCursor"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    sget-object v0, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init() mTabId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changeCursor & set indexer... mIndexColumnString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mIndexColumnString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    if-ne v0, v4, :cond_3c

    .line 147
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicGridAdapter;->makePlayListDefaultItems(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    .line 150
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/MusicGridAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicGridAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 152
    iput-object p1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4b

    .line 154
    iput v3, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I

    .line 165
    :cond_4a
    :goto_4a
    return-void

    .line 156
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I

    .line 160
    iget v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    if-ne v0, v4, :cond_4a

    iget v0, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I

    iget v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    if-ne v0, v1, :cond_4a

    .line 162
    iput v3, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I

    goto :goto_4a
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 492
    sget-object v2, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MusicTabListAdapter newView position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;-><init>(Lcom/sec/android/app/music/MusicGridAdapter;)V

    .line 497
    .local v1, vh:Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mIsSelectMode:Z

    if-eqz v2, :cond_54

    .line 498
    const v2, 0x7f0c000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 499
    iget-object v2, v1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 501
    :cond_54
    const v2, 0x7f0c000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 502
    iget-object v2, v1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget-object v3, Lcom/sec/android/app/music/MusicGridAdapter;->sDefaultGridArtwork:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 504
    return-object v0
.end method

.method protected onContentChanged()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 435
    invoke-super {p0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->onContentChanged()V

    .line 436
    iget-boolean v2, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mAutoRequery:Z

    if-nez v2, :cond_9

    .line 479
    :cond_8
    :goto_8
    return-void

    .line 442
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_49

    .line 443
    sget-object v3, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " onContentChanged count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " getCursor Count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_97

    const-string v2, "getCursor is null"

    :goto_3e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_49
    const/4 v0, 0x0

    .line 449
    .local v0, defaultSize:I
    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    if-eq v2, v5, :cond_6a

    .line 450
    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_6a

    .line 453
    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    instance-of v2, v2, Landroid/database/MergeCursor;

    if-eqz v2, :cond_a4

    .line 454
    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    check-cast v2, Landroid/database/MergeCursor;

    invoke-virtual {v2}, Landroid/database/MergeCursor;->close()V

    .line 458
    :goto_67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    .line 462
    :cond_6a
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    if-nez v2, :cond_aa

    .line 464
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I
    :try_end_77
    .catch Landroid/database/StaleDataException; {:try_start_9 .. :try_end_77} :catch_78

    goto :goto_8

    .line 476
    .end local v0           #defaultSize:I
    :catch_78
    move-exception v1

    .line 477
    .local v1, e:Landroid/database/StaleDataException;
    sget-object v2, Lcom/sec/android/app/music/MusicGridAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on accessing a closed cursor :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/StaleDataException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 443
    .end local v1           #e:Landroid/database/StaleDataException;
    :cond_97
    :try_start_97
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3e

    .line 456
    .restart local v0       #defaultSize:I
    :cond_a4
    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 466
    :cond_aa
    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I

    .line 470
    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabId:I

    if-ne v2, v5, :cond_8

    iget v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I

    iget v3, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mNumberOfDefaultPlayListItem:I

    if-ne v2, v3, :cond_8

    .line 472
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mTabListCursorCount:I
    :try_end_bf
    .catch Landroid/database/StaleDataException; {:try_start_97 .. :try_end_bf} :catch_78

    goto/16 :goto_8
.end method

.method public reQueryListCursor(Z)V
    .registers 4
    .parameter "async"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridAdapter;->getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridAdapter;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;

    .line 255
    return-void
.end method

.method public setAlbumArt(Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;J)V
    .registers 9
    .parameter "vh"
    .parameter "albumId"

    .prologue
    .line 584
    iget-object v3, p1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    invoke-static {p2, p3}, Lcom/sec/android/app/music/MusicUtils;->getCachedGridArtworkWithoutMaking(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 586
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_28

    .line 587
    new-instance v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;-><init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V

    .line 588
    .local v0, ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    iget-object v3, p1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    .line 589
    iput-wide p2, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    .line 590
    iget-object v3, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    iput-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    .line 591
    sget-object v3, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    iget-object v2, v3, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->mBackThreadHandler:Landroid/os/Handler;

    .line 592
    .local v2, h:Landroid/os/Handler;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    .end local v0           #ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    .end local v2           #h:Landroid/os/Handler;
    :goto_27
    return-void

    .line 594
    :cond_28
    iget-object v3, p1, Lcom/sec/android/app/music/MusicGridAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27
.end method
