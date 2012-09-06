.class public Lcom/google/android/music/QueryBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/QueryBrowserActivity$ViewHolder;,
        Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final QUERY_MESSAGE_TYPE:I

.field public static final SUGGEST_DATA_ALBUM:Landroid/net/Uri;

.field public static final SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

.field public static final SUGGEST_DATA_ARTIST:Landroid/net/Uri;

.field public static final SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

.field public static final SUGGEST_DATA_TRACK:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private mFilterString:Ljava/lang/String;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mPlayFirst:Z

.field private mQueryCursor:Landroid/database/Cursor;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackList:Landroid/widget/ListView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    const-string v0, "QueryBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    .line 61
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "albumartist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

    .line 63
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "artist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ARTIST:Landroid/net/Uri;

    .line 65
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "album"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM:Landroid/net/Uri;

    .line 67
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "playlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

    .line 69
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "track"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_TRACK:Landroid/net/Uri;

    .line 74
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/QueryBrowserActivity;->QUERY_MESSAGE_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/music/QueryBrowserActivity;->onTrackArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/QueryBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/music/QueryBrowserActivity;->onPlaylistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/QueryBrowserActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/QueryBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity;->getQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/QueryBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/music/QueryBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/music/QueryBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    return p1
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    return v0
.end method

.method static getFilterStringForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 12
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 350
    if-eqz p0, :cond_b5

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, action:Ljava/lang/String;
    :goto_7
    sget-boolean v8, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v8, :cond_5f

    .line 352
    const-string v8, "QueryBrowserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFilterStringForIntent: action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz p0, :cond_b8

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 354
    .local v3, extras:Landroid/os/Bundle;
    :goto_29
    if-eqz v3, :cond_5f

    .line 355
    const-string v7, "QueryBrowserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - has extras: size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v7, "QueryBrowserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - extras = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_5f
    const-string v7, "query"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, filterString:Ljava/lang/String;
    const-string v7, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 363
    const-string v7, "android.intent.extra.focus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, focus:Ljava/lang/String;
    const-string v7, "android.intent.extra.artist"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, artist:Ljava/lang/String;
    const-string v7, "android.intent.extra.album"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, album:Ljava/lang/String;
    const-string v7, "android.intent.extra.title"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, title:Ljava/lang/String;
    if-eqz v5, :cond_92

    .line 368
    const-string v7, "audio/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bb

    if-eqz v6, :cond_bb

    .line 369
    move-object v4, v6

    .line 387
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v5           #focus:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_92
    :goto_92
    sget-boolean v7, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v7, :cond_b4

    const-string v7, "QueryBrowserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFilterStringForIntent: new filter is \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_b4
    return-object v4

    .end local v0           #action:Ljava/lang/String;
    .end local v4           #filterString:Ljava/lang/String;
    :cond_b5
    move-object v0, v7

    .line 350
    goto/16 :goto_7

    .restart local v0       #action:Ljava/lang/String;
    :cond_b8
    move-object v3, v7

    .line 353
    goto/16 :goto_29

    .line 370
    .restart local v1       #album:Ljava/lang/String;
    .restart local v2       #artist:Ljava/lang/String;
    .restart local v4       #filterString:Ljava/lang/String;
    .restart local v5       #focus:Ljava/lang/String;
    .restart local v6       #title:Ljava/lang/String;
    :cond_bb
    const-string v7, "vnd.android.cursor.item/album"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c7

    .line 371
    if-eqz v1, :cond_92

    .line 372
    move-object v4, v1

    goto :goto_92

    .line 377
    :cond_c7
    const-string v7, "vnd.android.cursor.item/artist"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d3

    .line 378
    if-eqz v2, :cond_92

    .line 379
    move-object v4, v2

    goto :goto_92

    .line 383
    :cond_d3
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v6, v7, v8

    invoke-static {v7}, Lcom/google/android/music/QueryBrowserActivity;->getFirstNonNullString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_92
.end method

.method private static varargs getFirstNonNullString([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "variables"

    .prologue
    .line 392
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 393
    .local v3, variable:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 397
    .end local v3           #variable:Ljava/lang/String;
    :goto_d
    return-object v3

    .line 392
    .restart local v3       #variable:Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 397
    .end local v3           #variable:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    goto :goto_d
.end method

.method private getQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    .line 573
    if-nez p1, :cond_5

    .line 574
    const-string p1, ""

    .line 576
    :cond_5
    const/16 v0, 0xe

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "searchType"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "ListType"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "searchName"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "Album"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "AlbumArtist"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "AlbumArtistId"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "Artist"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "itemCount"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "albumCount"

    aput-object v4, v2, v0

    const/16 v0, 0xa

    const-string v4, "year"

    aput-object v4, v2, v0

    const/16 v0, 0xb

    const-string v4, "duration"

    aput-object v4, v2, v0

    const/16 v0, 0xc

    const-string v4, "AlbumId"

    aput-object v4, v2, v0

    const/16 v0, 0xd

    const-string v4, "searchSortName"

    aput-object v4, v2, v0

    .line 593
    .local v2, ccols:[Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/music/store/MusicContent$Search;->getSearchPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, search:Landroid/net/Uri;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 595
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static handleSearchResult(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Intent;)Z
    .registers 13
    .parameter "context"
    .parameter "appManager"
    .parameter "intent"

    .prologue
    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 181
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, path:Ljava/lang/String;
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_TRACK:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 183
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/android/music/QueryBrowserActivity;->onTrackClick(Lcom/google/android/music/activitymanagement/MusicStateController;J)V

    .line 289
    :goto_1f
    const/4 v8, 0x1

    :goto_20
    return v8

    .line 184
    :cond_21
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 186
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 188
    .local v2, localArtistId:J
    new-instance v8, Lcom/google/android/music/QueryBrowserActivity$1;

    invoke-direct {v8, p0, v2, v3, p1}, Lcom/google/android/music/QueryBrowserActivity$1;-><init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_1f

    .line 222
    .end local v2           #localArtistId:J
    :cond_3e
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 223
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumClick(Lcom/google/android/music/activitymanagement/MusicStateController;J)V

    goto :goto_1f

    .line 224
    :cond_5a
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ARTIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 225
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 226
    .local v0, artistId:J
    new-instance v8, Lcom/google/android/music/QueryBrowserActivity$2;

    invoke-direct {v8, p0, v0, v1, p1}, Lcom/google/android/music/QueryBrowserActivity$2;-><init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_1f

    .line 253
    .end local v0           #artistId:J
    :cond_7b
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 254
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 255
    .local v5, playlistId:J
    new-instance v8, Lcom/google/android/music/QueryBrowserActivity$3;

    invoke-direct {v8, p0, v5, v6, p1}, Lcom/google/android/music/QueryBrowserActivity$3;-><init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_1f

    .line 287
    .end local v5           #playlistId:J
    :cond_9c
    const/4 v8, 0x0

    goto :goto_20
.end method

.method private static onAlbumArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "activityManager"
    .parameter "albumArtistId"
    .parameter "artist"
    .parameter "sortAlbumArtist"

    .prologue
    .line 407
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V

    .line 408
    return-void
.end method

.method private static onAlbumClick(Lcom/google/android/music/activitymanagement/MusicStateController;J)V
    .registers 4
    .parameter "activityManager"
    .parameter "albumId"

    .prologue
    .line 402
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 403
    return-void
.end method

.method private static onPlaylistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;I)V
    .registers 6
    .parameter "activityManager"
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "playlistType"

    .prologue
    .line 417
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 419
    return-void
.end method

.method private static onTrackArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;)V
    .registers 4
    .parameter "activityManager"
    .parameter "artistId"
    .parameter "artist"

    .prologue
    .line 412
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForTrackArtist(JLjava/lang/String;)V

    .line 413
    return-void
.end method

.method private static onTrackClick(Lcom/google/android/music/activitymanagement/MusicStateController;J)V
    .registers 6
    .parameter "activityManager"
    .parameter "id"

    .prologue
    .line 422
    new-instance v0, Lcom/google/android/music/medialist/SingleSongList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 424
    return-void
.end method

.method private processNewSearchQuery()V
    .registers 4

    .prologue
    .line 293
    sget-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_24

    const-string v0, "QueryBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNewSearchQuery: mFilterString \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_24
    new-instance v0, Lcom/google/android/music/QueryBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/QueryBrowserActivity$4;-><init>(Lcom/google/android/music/QueryBrowserActivity;)V

    sget v1, Lcom/google/android/music/QueryBrowserActivity;->QUERY_MESSAGE_TYPE:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;IZ)V

    .line 306
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 1014
    invoke-direct {p0}, Lcom/google/android/music/QueryBrowserActivity;->processNewSearchQuery()V

    .line 1015
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1008
    return-void
.end method

.method public createListContextMusicMenu(Landroid/view/View;Lcom/google/android/music/QueryBrowserActivity$ViewHolder;)V
    .registers 40
    .parameter "view"
    .parameter "vh"

    .prologue
    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/QueryBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    .line 459
    .local v2, contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v11

    .line 460
    .local v11, popupLocation:[I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 461
    .local v10, rootView:Landroid/view/View;
    const/16 v36, 0x2

    .line 462
    .local v36, popupDirection:I
    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    packed-switch v3, :pswitch_data_d0

    .line 491
    :goto_19
    return-void

    .line 464
    :pswitch_1a
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumId:J

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistId:J

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistName:Ljava/lang/String;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/QueryBrowserActivity;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v16

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v16}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_19

    .line 472
    :pswitch_3c
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistId:J

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/QueryBrowserActivity;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v23

    move-object v12, v2

    move-object/from16 v13, p0

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v12 .. v23}, Lcom/google/android/music/utils/ContextMenuManager;->showArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_19

    .line 478
    :pswitch_61
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->playlistType:I

    move/from16 v17, v0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/QueryBrowserActivity;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v23

    move-object v12, v2

    move-object/from16 v13, p0

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    invoke-virtual/range {v12 .. v23}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;I[ILandroid/view/View;IZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_19

    .line 485
    :pswitch_8a
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistId:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->albumArtistName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->sortName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, -0x1

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/QueryBrowserActivity;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v34

    const/16 v35, 0x0

    move-object v12, v2

    move-object/from16 v13, p0

    move-object/from16 v21, v11

    move-object/from16 v22, v10

    invoke-virtual/range {v12 .. v35}, Lcom/google/android/music/utils/ContextMenuManager;->showTrackContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/medialist/SongList;JILjava/lang/String;ZZZLcom/google/android/music/store/IStoreService;Lcom/google/android/music/dl/INetworkMonitor;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    goto/16 :goto_19

    .line 462
    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3c
        :pswitch_1a
        :pswitch_61
        :pswitch_8a
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_a

    .line 500
    const/4 v0, 0x1

    .line 502
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "search"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 982
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_5

    .line 531
    :goto_4
    return-void

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_4
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 312
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 314
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v2

    .line 315
    .local v2, savedState:Landroid/os/Bundle;
    if-eqz v2, :cond_30

    const-string v3, "savedSearch"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 316
    const-string v3, "savedSearch"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 322
    :goto_1d
    invoke-direct {p0}, Lcom/google/android/music/QueryBrowserActivity;->processNewSearchQuery()V

    .line 324
    const-string v3, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 326
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    .line 328
    :cond_2f
    return-void

    .line 318
    :cond_30
    invoke-static {v0}, Lcom/google/android/music/QueryBrowserActivity;->getFilterStringForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, newFilterString:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_1d
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 164
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 165
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 166
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_20

    .line 168
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 170
    :cond_20
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->setDefaultSearchString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->setSearchFieldTextChangeListener(Landroid/text/TextWatcher;)V

    .line 174
    return-void
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 107
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 109
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 111
    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Lcom/google/android/music/QueryBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mView:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_74

    .line 120
    new-instance v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040063

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 127
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    :goto_5a
    invoke-direct {p0}, Lcom/google/android/music/QueryBrowserActivity;->processNewSearchQuery()V

    .line 135
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct {v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 136
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 139
    return-void

    .line 129
    :cond_74
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/google/android/music/QueryBrowserActivity;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_5a
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 512
    iget-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_13

    .line 513
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 518
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 519
    iput-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 520
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 522
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 523
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    .line 536
    .local v1, vh:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    .line 539
    .local v0, stateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    iget v2, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->type:I

    packed-switch v2, :pswitch_data_38

    .line 556
    :goto_f
    return-void

    .line 541
    :pswitch_10
    iget-wide v2, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    invoke-static {v0, v2, v3}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumClick(Lcom/google/android/music/activitymanagement/MusicStateController;J)V

    goto :goto_f

    .line 544
    :pswitch_16
    iget-wide v2, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    iget-object v4, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->sortName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 547
    :pswitch_20
    iget-wide v2, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    invoke-static {v0, v2, v3}, Lcom/google/android/music/QueryBrowserActivity;->onTrackClick(Lcom/google/android/music/activitymanagement/MusicStateController;J)V

    goto :goto_f

    .line 550
    :pswitch_26
    iget-wide v2, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    iget-object v4, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/music/QueryBrowserActivity;->onTrackArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;)V

    goto :goto_f

    .line 553
    :pswitch_2e
    iget-wide v2, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->id:J

    iget-object v4, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->name:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;->playlistType:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/music/QueryBrowserActivity;->onPlaylistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;I)V

    goto :goto_f

    .line 539
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_16
        :pswitch_26
        :pswitch_10
        :pswitch_2e
        :pswitch_20
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 560
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_2e

    instance-of v3, v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    if-eqz v3, :cond_2e

    .line 561
    iget-object v3, p0, Lcom/google/android/music/QueryBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "createContextMenu"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "activeScreen"

    aput-object v6, v5, v2

    const-string v2, "search"

    aput-object v2, v5, v1

    const/4 v2, 0x2

    const-string v6, "actionArea"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "listElement"

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    check-cast v0, Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {p0, p2, v0}, Lcom/google/android/music/QueryBrowserActivity;->createListContextMusicMenu(Landroid/view/View;Lcom/google/android/music/QueryBrowserActivity$ViewHolder;)V

    .line 569
    :goto_2d
    return v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_2e
    move v1, v2

    goto :goto_2d
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNowPlayingBarEnabled(Z)V

    .line 157
    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setManageMusicBarEnabled(Z)V

    .line 158
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 159
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 147
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    const-string v0, "savedSearch"

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 431
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 435
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1010
    return-void
.end method
