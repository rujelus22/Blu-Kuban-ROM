.class public Lcom/google/android/music/sync/google/model/Track;
.super Lcom/google/api/client/json/GenericJson;
.source "Track.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/Track$TrackOrigin;,
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

.field public mTrackOrigin:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "trackOrigin"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/Track$TrackOrigin;",
            ">;"
        }
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

    .line 68
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    .line 71
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "NOT_RATED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "0"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "ONE_STAR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "TWO_STARS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "THREE_STARS"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "3"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "FOUR_STARS"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "4"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "FIVE_STARS"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/music/sync/google/model/Track;->RATINGS_MAP:Ljava/util/Map;

    const-string v1, "5"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 109
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    .line 112
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 133
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    .line 139
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    .line 145
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    .line 148
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mBeatsPerMinute:I

    .line 157
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    .line 160
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    .line 163
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    .line 166
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    return-void
.end method

.method public static parse(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/sync/google/model/Track;
    .registers 5
    .parameter "file"

    .prologue
    .line 331
    new-instance v1, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v1}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    .line 332
    .local v1, track:Lcom/google/android/music/sync/google/model/Track;
    iput-object p0, v1, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    .line 333
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 336
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSourceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_17} :catch_8d

    .line 342
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getComposer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getYear()S

    move-result v2

    iput v2, v1, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    .line 348
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackPositionInAlbum()S

    move-result v2

    iput v2, v1, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    .line 349
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getGenre()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDurationInMilliSec()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    .line 351
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSize()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    .line 352
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDiscPosition()S

    move-result v2

    iput v2, v1, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    .line 353
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDiscCount()S

    move-result v2

    iput v2, v1, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    .line 354
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6d

    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9b

    .line 357
    :cond_6d
    const/4 v2, 0x6

    iput v2, v1, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    .line 361
    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v2

    iput v2, v1, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    .line 362
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getRating()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getStoreSongId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getStoreAlbumId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    .line 365
    return-object v1

    .line 337
    :catch_8d
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/google/android/music/sync/google/model/Track;->TAG:Ljava/lang/String;

    const-string v3, "Non-numeric version for music file.  Replacing with 0."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    goto/16 :goto_17

    .line 358
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_70

    .line 359
    const/4 v2, 0x4

    iput v2, v1, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    goto :goto_70
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
    .line 410
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 412
    const-class v1, Lcom/google/android/music/sync/google/model/Track;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;
    :try_end_12
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 413
    :catch_13
    move-exception v0

    .line 414
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
    .registers 16
    .parameter "file"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x6

    const-wide/16 v10, -0x1

    const/4 v9, 0x4

    const/4 v8, -0x1

    .line 185
    if-nez p1, :cond_d

    .line 186
    new-instance p1, Lcom/google/android/music/store/MusicFile;

    .end local p1
    invoke-direct {p1}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 188
    .restart local p1
    :cond_d
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    if-eqz v4, :cond_134

    .line 189
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setSourceId(Ljava/lang/String;)V

    .line 194
    :goto_16
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_13d

    .line 195
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    .line 199
    :goto_1f
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_28

    .line 200
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 202
    :cond_28
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    if-eqz v4, :cond_31

    .line 203
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setComposer(Ljava/lang/String;)V

    .line 205
    :cond_31
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    if-eqz v4, :cond_3a

    .line 206
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 208
    :cond_3a
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    if-eqz v4, :cond_43

    .line 209
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V

    .line 211
    :cond_43
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    if-eq v4, v8, :cond_54

    .line 212
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    .local v0, n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setYear(S)V

    .line 215
    .end local v0           #n:Ljava/lang/Number;
    :cond_54
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    if-eq v4, v8, :cond_65

    .line 216
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 217
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setTrackPositionInAlbum(S)V

    .line 219
    .end local v0           #n:Ljava/lang/Number;
    :cond_65
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_6e

    .line 220
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setGenre(Ljava/lang/String;)V

    .line 222
    :cond_6e
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_79

    .line 223
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    invoke-virtual {p1, v4, v5}, Lcom/google/android/music/store/MusicFile;->setDurationInMilliSec(J)V

    .line 225
    :cond_79
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_87

    .line 228
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Lcom/google/android/music/store/MusicFile;->setAddedTime(J)V

    .line 230
    :cond_87
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_96

    .line 231
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setSourceVersion(Ljava/lang/String;)V

    .line 234
    :cond_96
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_a1

    .line 235
    iget-wide v4, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    invoke-virtual {p1, v4, v5}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    .line 238
    :cond_a1
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    if-eq v4, v8, :cond_b2

    .line 239
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 240
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setDiscCount(S)V

    .line 243
    .end local v0           #n:Ljava/lang/Number;
    :cond_b2
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    if-eq v4, v8, :cond_c3

    .line 244
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 245
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setDiscPosition(S)V

    .line 248
    .end local v0           #n:Ljava/lang/Number;
    :cond_c3
    const/4 v2, -0x1

    .line 249
    .local v2, originValue:I
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackOrigin:Ljava/util/List;

    if-eqz v4, :cond_dd

    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackOrigin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_dd

    .line 250
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackOrigin:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/Track$TrackOrigin;

    .line 251
    .local v1, origin:Lcom/google/android/music/sync/google/model/Track$TrackOrigin;
    iget v4, v1, Lcom/google/android/music/sync/google/model/Track$TrackOrigin;->mValue:I

    if-ne v4, v9, :cond_dd

    .line 252
    const/4 v2, 0x4

    .line 256
    .end local v1           #origin:Lcom/google/android/music/sync/google/model/Track$TrackOrigin;
    :cond_dd
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-eq v4, v8, :cond_eb

    .line 261
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v4, v12, :cond_145

    .line 262
    if-ne v2, v9, :cond_143

    const/4 v4, 0x3

    :goto_e8
    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setTrackType(I)V

    .line 272
    :cond_eb
    :goto_eb
    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v3

    .line 273
    .local v3, rating:I
    if-eq v3, v8, :cond_f4

    .line 274
    invoke-virtual {p1, v3}, Lcom/google/android/music/store/MusicFile;->setRating(I)V

    .line 279
    :cond_f4
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    if-eqz v4, :cond_10d

    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10d

    .line 280
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;

    iget-object v4, v4, Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V

    .line 283
    :cond_10d
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    if-eqz v4, :cond_11e

    .line 284
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-eq v4, v12, :cond_119

    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v4, v9, :cond_11e

    .line 285
    :cond_119
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setStoreSongId(Ljava/lang/String;)V

    .line 289
    :cond_11e
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    if-eqz v4, :cond_12f

    .line 290
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-eq v4, v12, :cond_12a

    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v4, v9, :cond_12f

    .line 291
    :cond_12a
    iget-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setStoreAlbumId(Ljava/lang/String;)V

    .line 295
    :cond_12f
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setFileType(I)V

    .line 297
    return-object p1

    .line 191
    .end local v2           #originValue:I
    .end local v3           #rating:I
    :cond_134
    const-string v4, "MusicSyncAdapter"

    const-string v5, "Exporting a track to a music file, but no canonical id defined."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 197
    :cond_13d
    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    goto/16 :goto_1f

    .line 262
    .restart local v2       #originValue:I
    :cond_143
    const/4 v4, 0x2

    goto :goto_e8

    .line 265
    :cond_145
    iget v4, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-ne v4, v9, :cond_eb

    .line 266
    if-ne v2, v9, :cond_150

    const/4 v4, 0x3

    :goto_14c
    invoke-virtual {p1, v4}, Lcom/google/android/music/store/MusicFile;->setTrackType(I)V

    goto :goto_eb

    :cond_150
    const/4 v4, 0x1

    goto :goto_14c
.end method

.method public getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 3
    .parameter "context"

    .prologue
    .line 467
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksBatchMutation()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulatedMusicFile()Lcom/google/android/music/store/MusicFile;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    return-object v0
.end method

.method public getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 5
    .parameter "context"

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 458
    .local v0, dimension:I
    invoke-static {v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksFeed(I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 5
    .parameter "context"

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 463
    .local v0, dimension:I
    invoke-static {v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksFeedAsPost(I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 483
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    return-wide v0
.end method

.method public getLocalId()J
    .registers 3

    .prologue
    .line 471
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
    .line 508
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
    .line 475
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 453
    .local v0, dimension:I
    invoke-static {p2, v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTrack(Ljava/lang/String;I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public isDeleted()Z
    .registers 2

    .prologue
    .line 499
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
    .line 392
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 394
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1d

    move-result-object v2

    .line 397
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    .line 399
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 405
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 399
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 401
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_1d
    move-exception v1

    .line 402
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

    .line 403
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    const-string v4, "Unable to serialize track for upstream sync."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setIsDeleted(Z)V
    .registers 2
    .parameter "isDeleted"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    .line 504
    return-void
.end method

.method public setLastModifiedTimestamp(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 487
    iput-wide p1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 488
    return-void
.end method

.method public setRating(I)V
    .registers 3
    .parameter "rating"

    .prologue
    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .registers 2
    .parameter "remoteId"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 420
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 421
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "; remoteid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; ctime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; mtime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; isDeleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v3, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; title: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; artist: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; composer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; album: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; albumartist: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; year: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; comment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mComment:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; track num: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; genre: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; duration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; albumartref: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    if-nez v1, :cond_13b

    move-object v1, v2

    :goto_b9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; bpm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/sync/google/model/Track;->mBeatsPerMinute:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; playCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/sync/google/model/Track;->mPlayCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; estimatedSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; discNumber:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; totalDiscCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; trackType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; rating:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mRating:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; storeId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mStoreId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; albumId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; trackOrigin:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackOrigin:Ljava/util/List;

    if-nez v3, :cond_143

    :goto_133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 421
    :cond_13b
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b9

    :cond_143
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackOrigin:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_133
.end method

.method public validateForUpstreamDelete()V
    .registers 3

    .prologue
    .line 387
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Track deletes should be done through TrackTombstone."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamInsert()V
    .registers 3

    .prologue
    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tracks not available for upstream sync."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamUpdate()V
    .registers 3

    .prologue
    .line 379
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

    .line 382
    :cond_15
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid track for upstream update."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1d
    return-void
.end method
