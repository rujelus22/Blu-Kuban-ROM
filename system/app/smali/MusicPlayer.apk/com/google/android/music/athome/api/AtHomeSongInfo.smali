.class public Lcom/google/android/music/athome/api/AtHomeSongInfo;
.super Ljava/lang/Object;
.source "AtHomeSongInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtUrl:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mAlbumId:J

.field private mArtist:Ljava/lang/String;

.field private mAuxData:Landroid/support/place/rpc/RpcData;

.field private mDuration:J

.field private mExpireTime:J

.field private mLocalAudioId:J

.field private mQueueId:J

.field private mServerId:Ljava/lang/String;

.field private mSongId:J

.field private mSubmitterId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 365
    new-instance v0, Lcom/google/android/music/athome/api/AtHomeSongInfo$1;

    invoke-direct {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "songQueueId"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mQueueId:J

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "tc"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_5

    .line 91
    :cond_4
    :goto_4
    return v1

    .line 81
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 82
    goto :goto_4

    .line 84
    :cond_9
    instance-of v3, p1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v3, :cond_f

    move v1, v2

    .line 85
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 88
    .local v0, other:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    iget-wide v3, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mQueueId:J

    iget-wide v5, v0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mQueueId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 89
    goto :goto_4
.end method

.method public getAlbum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArtUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbumId:J

    return-wide v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getAuxData()Landroid/support/place/rpc/RpcData;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAuxData:Landroid/support/place/rpc/RpcData;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mDuration:J

    return-wide v0
.end method

.method public getExpireTime()J
    .registers 3

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mExpireTime:J

    return-wide v0
.end method

.method public getLocalAudioId()J
    .registers 3

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mLocalAudioId:J

    return-wide v0
.end method

.method public getQueueId()J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mQueueId:J

    return-wide v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()J
    .registers 3

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mSongId:J

    return-wide v0
.end method

.method public getSubmitterId()J
    .registers 3

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mSubmitterId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 70
    const/16 v0, 0x1f

    .line 71
    .local v0, prime:I
    iget-wide v1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mQueueId:J

    iget-wide v3, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mQueueId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 332
    const-string v0, "queueId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setQueueId(J)V

    .line 333
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setTitle(Ljava/lang/String;)V

    .line 334
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setArtist(Ljava/lang/String;)V

    .line 335
    const-string v0, "albumArtist"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbumArtist(Ljava/lang/String;)V

    .line 336
    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbum(Ljava/lang/String;)V

    .line 337
    const-string v0, "albumId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbumId(J)V

    .line 338
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setDuration(J)V

    .line 339
    const-string v0, "serverId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setServerId(Ljava/lang/String;)V

    .line 340
    const-string v0, "submitterId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setSubmitterId(J)V

    .line 341
    const-string v0, "songId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setSongId(J)V

    .line 342
    const-string v0, "audioId"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setLocalAudioId(J)V

    .line 343
    const-string v0, "expire"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setExpireTime(J)V

    .line 344
    const-string v0, "albumArtUrl"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbumArtUrl(Ljava/lang/String;)V

    .line 345
    const-string v0, "aux"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAuxData(Landroid/support/place/rpc/RpcData;)V

    .line 346
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .registers 2
    .parameter "album"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbum:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setAlbumArtUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbumArtUrl:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setAlbumArtist(Ljava/lang/String;)V
    .registers 2
    .parameter "albumArtist"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbumArtist:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setAlbumId(J)V
    .registers 3
    .parameter "albumId"

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAlbumId:J

    .line 198
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 2
    .parameter "artist"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mArtist:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setAuxData(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "auxData"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mAuxData:Landroid/support/place/rpc/RpcData;

    .line 329
    return-void
.end method

.method public setDuration(J)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mDuration:J

    .line 213
    return-void
.end method

.method public setExpireTime(J)V
    .registers 3
    .parameter "expireTime"

    .prologue
    .line 288
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mExpireTime:J

    .line 289
    return-void
.end method

.method public setLocalAudioId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 272
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mLocalAudioId:J

    .line 273
    return-void
.end method

.method public setQueueId(J)V
    .registers 3
    .parameter "queueId"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mQueueId:J

    .line 122
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2
    .parameter "serverId"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mServerId:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setSongId(J)V
    .registers 3
    .parameter "songId"

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mSongId:J

    .line 259
    return-void
.end method

.method public setSubmitterId(J)V
    .registers 3
    .parameter "submitterId"

    .prologue
    .line 240
    iput-wide p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mSubmitterId:J

    .line 241
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/music/athome/api/AtHomeSongInfo;->mTitle:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 386
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 387
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 388
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 377
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 378
    .local v1, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 379
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 380
    .local v0, serial:[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 382
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 349
    const-string v0, "queueId"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 350
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "artist"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "albumArtist"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "album"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "albumId"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 355
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 356
    const-string v0, "serverId"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "submitterId"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 358
    const-string v0, "songId"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSongId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 359
    const-string v0, "audioId"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getLocalAudioId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 360
    const-string v0, "expire"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getExpireTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 361
    const-string v0, "aux"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAuxData()Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 362
    const-string v0, "albumArtUrl"

    invoke-virtual {p0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method
