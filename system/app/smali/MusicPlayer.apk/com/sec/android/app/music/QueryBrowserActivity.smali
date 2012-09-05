.class public Lcom/sec/android/app/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private mFilterString:Ljava/lang/String;

.field private mMediaPlayerFromSearch:Z

.field private mPlayFromSearchType:I

.field private mQueryCursor:Landroid/database/Cursor;

.field private final mReScanHandler:Landroid/os/Handler;

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/sec/android/app/music/QueryBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/QueryBrowserActivity;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mMediaPlayerFromSearch:Z

    .line 322
    new-instance v0, Lcom/sec/android/app/music/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/QueryBrowserActivity$1;-><init>(Lcom/sec/android/app/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lcom/sec/android/app/music/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/QueryBrowserActivity$2;-><init>(Lcom/sec/android/app/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 575
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/QueryBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/QueryBrowserActivity;)Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 536
    const/4 v3, 0x0

    .line 537
    .local v3, search:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 538
    .local v4, ccols:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 539
    .local v5, selection:Ljava/lang/String;
    if-nez p2, :cond_c

    .line 540
    const-string p2, ""

    .line 543
    :cond_c
    iget v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    if-ne v0, v8, :cond_2b

    .line 544
    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #ccols:[Ljava/lang/String;
    const-string v0, "_id"

    aput-object v0, v4, v1

    const-string v0, "name"

    aput-object v0, v4, v7

    .line 547
    .restart local v4       #ccols:[Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 548
    const-string v5, "name LIKE ?"

    .line 562
    :goto_1e
    const/4 v12, 0x0

    .line 563
    .local v12, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_69

    .line 564
    new-array v6, v7, [Ljava/lang/String;

    aput-object p2, v6, v1

    move-object v0, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_2a
    return-object v12

    .line 550
    .end local v12           #ret:Landroid/database/Cursor;
    :cond_2b
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #ccols:[Ljava/lang/String;
    const-string v0, "_id"

    aput-object v0, v4, v1

    const-string v0, "mime_type"

    aput-object v0, v4, v7

    const-string v0, "artist"

    aput-object v0, v4, v6

    const/4 v0, 0x3

    const-string v6, "album"

    aput-object v6, v4, v0

    const/4 v0, 0x4

    const-string v6, "title"

    aput-object v6, v4, v0

    const-string v0, "data1"

    aput-object v0, v4, v8

    const/4 v0, 0x6

    const-string v6, "data2"

    aput-object v6, v4, v0

    .line 559
    .restart local v4       #ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1e

    .line 568
    .restart local v12       #ret:Landroid/database/Cursor;
    :cond_69
    new-array v10, v7, [Ljava/lang/String;

    aput-object p2, v10, v1

    move-object v6, p0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v11, v2

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_2a
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .registers 14
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_5

    .line 486
    :cond_4
    :goto_4
    return-void

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 348
    iget-boolean v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mMediaPlayerFromSearch:Z

    if-eqz v0, :cond_1eb

    if-eqz p1, :cond_1eb

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1eb

    .line 349
    const/4 v9, 0x0

    .line 350
    const/4 v0, 0x0

    .line 351
    const/4 v7, 0x0

    .line 352
    const-string v6, ""

    .line 354
    const-string v8, ""

    .line 355
    const-string v5, ""

    .line 356
    const-string v4, ""

    .line 357
    const-string v1, ""

    .line 359
    const/4 v3, 0x0

    .line 360
    const/4 v2, 0x0

    .line 361
    const/4 v1, 0x0

    .line 363
    iget v10, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_d2

    .line 364
    :cond_2b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_20a

    .line 365
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 367
    const/4 v1, 0x1

    .line 368
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    const/4 v2, 0x1

    move-object v6, v0

    move v7, v1

    move v8, v2

    .line 373
    :goto_52
    invoke-static {v7, v6}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v5

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    move v0, v8

    .line 443
    :goto_6a
    if-eqz v0, :cond_1e2

    .line 444
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J

    move-result-object v0

    .line 446
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    const-string v2, "list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 451
    const-string v0, "list_position"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v0, "tabFrom"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    iget v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9c

    .line 454
    const-string v0, "keyword"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    :cond_9c
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 460
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    .line 479
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 396
    :cond_b4
    const-string v10, "mime_type"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 397
    const-string v11, "album"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_128

    .line 398
    const-string v8, "album"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 399
    add-int/lit8 v3, v3, 0x1

    .line 377
    :cond_d2
    :goto_d2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_e0

    .line 378
    iget v10, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_116

    .line 379
    const/4 v10, 0x1

    if-le v1, v10, :cond_b4

    .line 409
    :cond_e0
    :goto_e0
    iget v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14a

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_6a

    .line 383
    :cond_116
    iget v10, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_11f

    .line 384
    const/4 v10, 0x1

    if-le v3, v10, :cond_b4

    goto :goto_e0

    .line 388
    :cond_11f
    iget v10, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_b4

    .line 389
    const/4 v10, 0x1

    if-le v2, v10, :cond_b4

    goto :goto_e0

    .line 400
    :cond_128
    const-string v11, "artist"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13d

    .line 401
    const-string v5, "artist"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 404
    :cond_13d
    const-string v4, "title"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    .line 416
    :cond_14a
    iget v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_196

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 423
    const/4 v7, 0x2

    .line 424
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 425
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 426
    const/4 v0, 0x1

    goto/16 :goto_6a

    .line 428
    :cond_196
    iget v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_207

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 435
    const/4 v7, 0x3

    .line 436
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 438
    const/4 v0, 0x1

    goto/16 :goto_6a

    .line 464
    :cond_1e2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->setResult(I)V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    goto/16 :goto_a2

    .line 467
    :cond_1eb
    iget-boolean v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mMediaPlayerFromSearch:Z

    if-eqz v0, :cond_a2

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->setResult(I)V

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    goto/16 :goto_a2

    :cond_207
    move-object v1, v9

    goto/16 :goto_6a

    :cond_20a
    move v8, v0

    goto/16 :goto_52
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    .line 96
    invoke-static {p0, p0}, Lcom/sec/android/app/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    :goto_20
    const-string v2, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 100
    iput-boolean v3, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mMediaPlayerFromSearch:Z

    .line 101
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/QueryBrowserActivity;->requestWindowFeature(I)Z

    .line 107
    :goto_2d
    return-void

    .line 98
    .end local v0           #action:Ljava/lang/String;
    :cond_2e
    const/4 v0, 0x0

    goto :goto_20

    .line 103
    .restart local v0       #action:Ljava/lang/String;
    :cond_30
    const v2, 0x7f090111

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/QueryBrowserActivity;->setTitle(I)V

    goto :goto_2d
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->unbindFromService(Lcom/sec/android/app/music/MusicUtils$ServiceToken;)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    iget-boolean v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_18

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 304
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 305
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    :cond_21
    iput-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    .line 308
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 309
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 313
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    .line 314
    :cond_8
    const/4 v0, 0x1

    .line 315
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 533
    :cond_17
    :goto_17
    return-void

    .line 496
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    const-string v1, "artist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v1, "artist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    goto :goto_17

    .line 506
    :cond_50
    const-string v1, "album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v1, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    goto :goto_17

    .line 513
    :cond_7a
    if-ltz p3, :cond_b3

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_b3

    .line 514
    new-array v0, v4, [J

    aput-wide p4, v0, v3

    .line 517
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 519
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    const-string v2, "fromQueryBrowser"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const-string v2, "list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 523
    const-string v0, "list_position"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string v0, "tabFrom"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    goto/16 :goto_17

    .line 531
    :cond_b3
    sget-object v0, Lcom/sec/android/app/music/QueryBrowserActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position/id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    .line 113
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 284
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 285
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_27
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 143
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    const-string v5, "content://media/external/audio/media/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 147
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-array v1, v6, [J

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const-string v2, "fromQueryBrowser"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 158
    const-string v1, "list_position"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    .line 268
    :goto_7a
    return-void

    :cond_7b
    move-object v0, v4

    .line 125
    goto :goto_27

    .line 166
    :cond_7d
    const-string v5, "content://media/external/audio/albums/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "album"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    goto :goto_7a

    .line 174
    :cond_a3
    const-string v5, "content://media/external/audio/artists/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "artist"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->finish()V

    goto :goto_7a

    .line 185
    :cond_c9
    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 186
    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    .line 187
    const-string v0, "android.intent.extra.focus"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v2, "android.intent.extra.artist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    const-string v5, "android.intent.extra.title"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    if-eqz v0, :cond_ff

    .line 192
    const-string v5, "audio/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_144

    if-eqz v1, :cond_144

    .line 193
    iput-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 241
    :cond_ff
    :goto_ff
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->setContentView(I)V

    .line 242
    iget-boolean v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mMediaPlayerFromSearch:Z

    if-eqz v0, :cond_115

    .line 243
    const v0, 0x7f0c00f1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_115
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_20a

    .line 249
    new-instance v0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030007

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_7a

    .line 194
    :cond_144
    const-string v1, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 195
    if-eqz v3, :cond_ff

    .line 196
    iput-object v3, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 197
    if-eqz v2, :cond_ff

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_ff

    .line 201
    :cond_16e
    const-string v1, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 202
    if-eqz v2, :cond_ff

    .line 203
    iput-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_ff

    .line 207
    :cond_17b
    const-string v2, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 208
    const-string v0, "android.intent.extra.focus"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v2, "android.intent.extra.artist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    const-string v5, "android.intent.extra.title"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    const-string v6, "android.intent.extra.playlist"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    if-eqz v0, :cond_206

    .line 214
    const-string v6, "audio/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1bb

    if-eqz v5, :cond_1bb

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1bb

    .line 215
    iput-object v5, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 216
    iput v8, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    goto/16 :goto_ff

    .line 217
    :cond_1bb
    const-string v5, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d4

    .line 218
    if-eqz v3, :cond_ff

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 219
    iput-object v3, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 220
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    goto/16 :goto_ff

    .line 225
    :cond_1d4
    const-string v3, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 226
    if-eqz v2, :cond_ff

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 227
    iput-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 228
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    goto/16 :goto_ff

    .line 230
    :cond_1ed
    const-string v2, "vnd.android.cursor.item/playlist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 231
    if-eqz v1, :cond_ff

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 232
    iput-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 233
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    goto/16 :goto_ff

    .line 237
    :cond_206
    iput v8, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mPlayFromSearchType:I

    goto/16 :goto_ff

    .line 259
    :cond_20a
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/sec/android/app/music/QueryBrowserActivity;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_227

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_7a

    .line 265
    :cond_227
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_7a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 273
    return-void
.end method
