.class public Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;
.super Ljava/lang/Object;
.source "MusicAlbumCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;,
        Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;,
        Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MyDataObs;
    }
.end annotation


# static fields
.field private static final CLEAR_ALBUM_MAP:I = 0x18

.field private static final MODIFY_ALBUM_MAP:I = 0x17

.field public static final SONG_MIME_TYPE_IND:Ljava/lang/String; = "mime_type"

.field public static final SONG_SUPPORTED_BY_ENGINE:I = 0x1

.field public static isRefreshSongs:Z = false

.field public static final mAlbum:Ljava/lang/String; = "album"

.field private static final mAlbumArt:Ljava/lang/String; = "album_art"

.field private static mAlbumDetailsFetcedCallback:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback; = null

.field public static final mAlbumID:Ljava/lang/String; = "_id"

.field public static mAlbumProjection:[Ljava/lang/String; = null

.field static mAlbumSongProjection:[Ljava/lang/String; = null

.field private static final mAlbumSongURI:Landroid/net/Uri; = null

.field public static final mAlbumURI:Landroid/net/Uri; = null

.field public static final mArtist:Ljava/lang/String; = "artist"

.field public static mMusicAlbumThread:Ljava/lang/Thread;

.field private static mMusicConteHan:Landroid/os/Handler;

.field private static mMusicContentObs:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

.field public static mSelectedAlbumId:I

.field public static mVEMusicAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/data/VEAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    sput-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumURI:Landroid/net/Uri;

    .line 38
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumSongURI:Landroid/net/Uri;

    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    .line 55
    sput-boolean v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 61
    const-string v1, "album"

    aput-object v1, v0, v4

    .line 62
    const-string v1, "album_art"

    aput-object v1, v0, v5

    .line 63
    const-string v1, "artist"

    aput-object v1, v0, v6

    .line 60
    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumProjection:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 67
    const-string v1, "album"

    aput-object v1, v0, v4

    .line 68
    const-string v1, "artist"

    aput-object v1, v0, v5

    .line 69
    const-string v1, "title"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    .line 70
    const-string v2, "track"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 71
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 72
    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 73
    const-string v2, "mime_type"

    aput-object v2, v0, v1

    .line 66
    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumSongProjection:[Ljava/lang/String;

    .line 75
    sput-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumDetailsFetcedCallback:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    .line 327
    sput-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicContentObs:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    .line 369
    new-instance v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicConteHan:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 369
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicConteHan:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumDetailsFetcedCallback:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->getSelectedMusicFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumSongURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4(I)Z
    .registers 2
    .parameter

    .prologue
    .line 411
    invoke-static {p0}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isMusicAlbumExists(I)Z

    move-result v0

    return v0
.end method

.method public static defaultAudioWhereClause()Ljava/lang/String;
    .registers 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "mime_type IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, "\'audio/aac\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, "\'audio/mp3\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAudioFilterString()Ljava/lang/String;
    .registers 3

    .prologue
    const/16 v2, 0x3f

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "mime_type IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMusicContentObsInstance()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;
    .registers 1

    .prologue
    .line 331
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicContentObs:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    if-nez v0, :cond_b

    .line 332
    new-instance v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicContentObs:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    .line 334
    :cond_b
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicContentObs:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    return-object v0
.end method

.method private static getSelectedMusicFile()Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-nez v2, :cond_9

    .line 101
    const-string v2, ""

    .line 113
    .local v1, lList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_8
    return-object v2

    .line 103
    .end local v1           #lList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_9
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v1

    .line 105
    .restart local v1       #lList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 107
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 108
    .local v0, lElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 112
    .end local v0           #lElement:Lcom/samsung/app/video/editor/external/Element;
    :cond_29
    const-string v2, "There is no Music file selected"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 113
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static isMusicAlbumExists(I)Z
    .registers 5
    .parameter "aAlbumId"

    .prologue
    .line 413
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 424
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 415
    :cond_b
    sget-object v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VEAlbum;

    .line 417
    .local v1, lVAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumId()I

    move-result v2

    if-ne p0, v2, :cond_35

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Album Already exists in the stored list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x1

    goto :goto_a

    .line 413
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isMusicAlbumExists(Ljava/lang/String;)Z
    .registers 5
    .parameter "aAlbumName"

    .prologue
    .line 395
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 408
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 397
    :cond_b
    sget-object v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VEAlbum;

    .line 399
    .local v1, lVAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Album Already exists in the stored list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 402
    const/4 v2, 0x1

    goto :goto_a

    .line 395
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static loadMusicAlbums(Landroid/content/Context;Z)V
    .registers 4
    .parameter "aContext"
    .parameter "aClearCache"

    .prologue
    .line 119
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 325
    :goto_c
    return-void

    .line 121
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;

    invoke-direct {v1, p1}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$2;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    .line 323
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 324
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_c
.end method

.method public static removeAlbumDetailsFetcedCallback()V
    .registers 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumDetailsFetcedCallback:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    .line 95
    return-void
.end method

.method public static replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "aOrigin"

    .prologue
    .line 385
    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, lStrin:Ljava/lang/String;
    return-object v0
.end method

.method public static setAlbumDetailsFetcedCallback(Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;)V
    .registers 1
    .parameter "aAlbumDetailsFetcedCallback"

    .prologue
    .line 90
    sput-object p0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumDetailsFetcedCallback:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;

    .line 91
    return-void
.end method
