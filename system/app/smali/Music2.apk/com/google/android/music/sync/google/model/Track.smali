.class public Lcom/google/android/music/sync/google/model/Track;
.super Lcom/google/api/client/json/GenericJson;
.source "Track.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;
    }
.end annotation


# static fields
.field private static final RATINGS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAlbum:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "album"
    .end annotation
.end field

.field public mAlbumArtRef:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumArtRef"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;",
            ">;"
        }
    .end annotation
.end field

.field public mAlbumArtist:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumArtist"
    .end annotation
.end field

.field public mAlbumId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumId"
    .end annotation
.end field

.field public mArtist:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "artist"
    .end annotation
.end field

.field public mBeatsPerMinute:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "beatsPerMinute"
    .end annotation
.end field

.field public mComment:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment"
    .end annotation
.end field

.field public mComposer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "composer"
    .end annotation
.end field

.field public mCreationTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "creationTimestamp"
    .end annotation
.end field

.field public mDiscNumber:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "discNumber"
    .end annotation
.end field

.field public mDurationMillis:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "durationMillis"
    .end annotation
.end field

.field public mEstimatedSize:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "estimatedSize"
    .end annotation
.end field

.field public mGenre:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "genre"
    .end annotation
.end field

.field public mIsDeleted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "deleted"
    .end annotation
.end field

.field public mLastModifiedTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "lastModifiedTimestamp"
    .end annotation
.end field

.field private mMusicFile:Lcom/google/android/music/store/MusicFile;

.field public mPlayCount:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "playCount"
    .end annotation
.end field

.field public mRating:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "rating"
    .end annotation
.end field

.field public mRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public mStoreId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "storeId"
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field

.field public mTotalDiscCount:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "totalDiscCount"
    .end annotation
.end field

.field public mTrackNumber:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "trackNumber"
    .end annotation
.end field

.field public mTrackType:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "trackType"
    .end annotation
.end field

.field public mYear:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "year"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/Track;->TAG:Ljava/lang/String;

    .line 61
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    .line 64
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "NOT_RATED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "0"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "ONE_STAR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "TWO_STARS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "THREE_STARS"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "3"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "FOUR_STARS"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "4"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "FIVE_STARS"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "5"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 97
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    .line 100
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 121
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    .line 127
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    .line 133
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    .line 136
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mBeatsPerMinute:I

    .line 145
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    .line 148
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    .line 151
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    .line 154
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    return-void
.end method

.method public static parse(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/sync/google/model/Track;
    .registers 7
    .parameter "file"

    .prologue
    .line 299
    new-instance v3, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v3}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    .line 300
    .local v3, track:Lcom/google/android/music/sync/google/model/Track;
    iput-object p0, v3, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    .line 301
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 303
    const-wide/16 v1, 0x0

    .line 305
    .local v1, timeStamp:J
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSourceVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_16} :catch_88

    move-result-wide v1

    .line 309
    :goto_17
    iput-wide v1, v3, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 311
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getComposer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getYear()S

    move-result v4

    iput v4, v3, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    .line 317
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackPositionInAlbum()S

    move-result v4

    iput v4, v3, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    .line 318
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getGenre()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDurationInMilliSec()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    .line 320
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSize()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    .line 321
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDiscPosition()S

    move-result v4

    iput v4, v3, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    .line 322
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDiscCount()S

    move-result v4

    iput v4, v3, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    .line 323
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_91

    .line 324
    const/4 v4, 0x6

    iput v4, v3, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    .line 328
    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v4

    iput v4, v3, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    .line 329
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getRating()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getStoreSongId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    .line 331
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getStoreAlbumId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    .line 332
    return-object v3

    .line 306
    :catch_88
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/android/music/sync/google/model/Track;->TAG:Ljava/lang/String;

    const-string v5, "Non-numberic version for music file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 325
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6b

    .line 326
    const/4 v4, 0x4

    iput v4, v3, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    goto :goto_6b
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 379
    const-class v1, Lcom/google/android/music/sync/google/model/Track;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;
    :try_end_12
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 380
    :catch_13
    move-exception v0

    .line 381
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public formatAsMusicFile(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;
    .registers 13
    .parameter "file"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    .line 170
    if-nez p1, :cond_c

    .line 171
    new-instance p1, Lcom/google/android/music/store/MusicFile;

    .end local p1
    invoke-direct {p1}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 173
    .restart local p1
    :cond_c
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    if-eqz v2, :cond_118

    .line 174
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setSourceId(Ljava/lang/String;)V

    .line 179
    :goto_15
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_121

    .line 180
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    .line 184
    :goto_1e
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 185
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 187
    :cond_27
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_30

    .line 188
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setComposer(Ljava/lang/String;)V

    .line 190
    :cond_30
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 191
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 193
    :cond_39
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_42

    .line 194
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V

    .line 196
    :cond_42
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    if-eq v2, v6, :cond_53

    .line 197
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    .local v0, n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setYear(S)V

    .line 200
    .end local v0           #n:Ljava/lang/Number;
    :cond_53
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    if-eq v2, v6, :cond_64

    .line 201
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 202
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setTrackPositionInAlbum(S)V

    .line 204
    .end local v0           #n:Ljava/lang/Number;
    :cond_64
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_6d

    .line 205
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setGenre(Ljava/lang/String;)V

    .line 207
    :cond_6d
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_78

    .line 208
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    invoke-virtual {p1, v2, v3}, Lcom/google/android/music/store/MusicFile;->setDurationInMilliSec(J)V

    .line 210
    :cond_78
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_86

    .line 213
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/music/store/MusicFile;->setAddedTime(J)V

    .line 215
    :cond_86
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_95

    .line 216
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setSourceVersion(Ljava/lang/String;)V

    .line 219
    :cond_95
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_a0

    .line 220
    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    invoke-virtual {p1, v2, v3}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    .line 223
    :cond_a0
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    if-eq v2, v6, :cond_b1

    .line 224
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 225
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setDiscCount(S)V

    .line 228
    .end local v0           #n:Ljava/lang/Number;
    :cond_b1
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    if-eq v2, v6, :cond_c2

    .line 229
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 230
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setDiscPosition(S)V

    .line 233
    .end local v0           #n:Ljava/lang/Number;
    :cond_c2
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-eq v2, v6, :cond_ce

    .line 234
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v2, v10, :cond_127

    .line 235
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setTrackType(I)V

    .line 241
    :cond_ce
    :goto_ce
    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v1

    .line 242
    .local v1, rating:I
    if-eq v1, v6, :cond_d7

    .line 243
    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setRating(I)V

    .line 248
    :cond_d7
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    if-eqz v2, :cond_f1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f1

    .line 249
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;

    iget-object v2, v2, Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V

    .line 252
    :cond_f1
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    if-eqz v2, :cond_102

    .line 253
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-eq v2, v10, :cond_fd

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v2, v9, :cond_102

    .line 254
    :cond_fd
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setStoreSongId(Ljava/lang/String;)V

    .line 258
    :cond_102
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_113

    .line 259
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-eq v2, v10, :cond_10e

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v2, v9, :cond_113

    .line 260
    :cond_10e
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setStoreAlbumId(Ljava/lang/String;)V

    .line 264
    :cond_113
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setFileType(I)V

    .line 266
    return-object p1

    .line 176
    .end local v1           #rating:I
    :cond_118
    const-string v2, "MusicSyncAdapter"

    const-string v3, "Exporting a track to a music file, but no canonical id defined."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 182
    :cond_121
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    goto/16 :goto_1e

    .line 236
    :cond_127
    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v2, v9, :cond_ce

    .line 237
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/music/store/MusicFile;->setTrackType(I)V

    goto :goto_ce
.end method

.method public getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 3
    .parameter "context"

    .prologue
    .line 432
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksBatchMutation()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulatedMusicFile()Lcom/google/android/music/store/MusicFile;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    return-object v0
.end method

.method public getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 5
    .parameter "context"

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 423
    .local v0, dimension:I
    invoke-static {v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksFeed(I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 5
    .parameter "context"

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 428
    .local v0, dimension:I
    invoke-static {v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksFeedAsPost(I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 448
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    return-wide v0
.end method

.method public getLocalId()J
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v0}, Lcom/google/android/music/store/MusicFile;->getLocalId()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getRatingAsInt()I
    .registers 3

    .prologue
    .line 473
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getRemoteId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 418
    .local v0, dimension:I
    invoke-static {p2, v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTrack(Ljava/lang/String;I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public isDeleted()Z
    .registers 2

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    return v0
.end method

.method public serializeAsJson()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 361
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1d

    move-result-object v2

    .line 364
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    .line 366
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 372
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 366
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 368
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_1d
    move-exception v1

    .line 369
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/music/sync/google/model/Track;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize a track as JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/Track;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    const-string v4, "Unable to serialize track for upstream sync."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setIsDeleted(Z)V
    .registers 2
    .parameter "isDeleted"

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    .line 469
    return-void
.end method

.method public setLastModifiedTimestamp(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 452
    iput-wide p1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 453
    return-void
.end method

.method public setRating(I)V
    .registers 3
    .parameter "rating"

    .prologue
    .line 477
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .registers 2
    .parameter "remoteId"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 388
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "; remoteid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; ctime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; mtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; composer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; albumartist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mComment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; track num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; genre: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; albumartref: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    if-nez v1, :cond_12c

    const/4 v1, 0x0

    :goto_b8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; bpm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mBeatsPerMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; playCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mPlayCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; estimatedSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; discNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; totalDiscCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; trackType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; rating:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; storeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; albumId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 388
    :cond_12c
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b8
.end method

.method public validateForUpstreamDelete()V
    .registers 3

    .prologue
    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tracks not available for upstream sync."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamInsert()V
    .registers 3

    .prologue
    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tracks not available for upstream sync."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamUpdate()V
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1d

    .line 349
    :cond_15
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid track for upstream update."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1d
    return-void
.end method
