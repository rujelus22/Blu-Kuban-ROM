.class public Lcom/google/android/music/medialist/ExternalDomainSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "ExternalDomainSongList.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "ExternalDomainSongList"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/medialist/ExternalDomainSongList;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V
    .registers 3
    .parameter "domain"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/music/medialist/SongList;-><init>(ILcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 21
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 26
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 27
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 28
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 29
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 30
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 31
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 32
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 33
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 34
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 35
    return-void
.end method

.method private unsetFlag(I)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    .line 128
    return-void
.end method


# virtual methods
.method protected createRow(J[Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)Ljava/util/ArrayList;
    .registers 10
    .parameter "id"
    .parameter "cursorCols"
    .parameter "song"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/String;",
            "Lcom/google/android/music/medialist/SongData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v1, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, p3

    if-ge v0, v2, :cond_16b

    .line 54
    aget-object v2, p3, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 56
    :cond_1e
    aget-object v2, p3, v0

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 57
    iget-object v2, p4, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 58
    :cond_2e
    aget-object v2, p3, v0

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 59
    iget-object v2, p4, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 60
    :cond_3e
    aget-object v2, p3, v0

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 61
    iget-object v2, p4, Lcom/google/android/music/medialist/SongData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 62
    :cond_4e
    aget-object v2, p3, v0

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 63
    iget-wide v2, p4, Lcom/google/android/music/medialist/SongData;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 64
    :cond_62
    aget-object v2, p3, v0

    const-string v3, "AlbumArtistId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 65
    iget-wide v2, p4, Lcom/google/android/music/medialist/SongData;->mAlbumArtistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 66
    :cond_76
    aget-object v2, p3, v0

    const-string v3, "AlbumArtist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 67
    iget-object v2, p4, Lcom/google/android/music/medialist/SongData;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 68
    :cond_86
    aget-object v2, p3, v0

    const-string v3, "artistSort"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 69
    iget-object v2, p4, Lcom/google/android/music/medialist/SongData;->mArtistSort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 70
    :cond_96
    aget-object v2, p3, v0

    const-string v3, "is_podcast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 71
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 72
    :cond_a7
    aget-object v2, p3, v0

    const-string v3, "bookmark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 73
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 74
    :cond_b8
    aget-object v2, p3, v0

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 75
    iget-wide v2, p4, Lcom/google/android/music/medialist/SongData;->mDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 76
    :cond_cd
    aget-object v2, p3, v0

    const-string v3, "hasRemote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 77
    iget v2, p4, Lcom/google/android/music/medialist/SongData;->mHasRemote:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 78
    :cond_e2
    aget-object v2, p3, v0

    const-string v3, "hasLocal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 79
    iget v2, p4, Lcom/google/android/music/medialist/SongData;->mHasLocal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 80
    :cond_f7
    aget-object v2, p3, v0

    const-string v3, "Rating"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 81
    iget v2, p4, Lcom/google/android/music/medialist/SongData;->mRating:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 82
    :cond_10c
    aget-object v2, p3, v0

    const-string v3, "SourceId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 83
    iget-object v2, p4, Lcom/google/android/music/medialist/SongData;->mRemoteUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 84
    :cond_11d
    aget-object v2, p3, v0

    const-string v3, "year"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 86
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 87
    :cond_12e
    aget-object v2, p3, v0

    const-string v3, "Genre"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 89
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 90
    :cond_13f
    aget-object v2, p3, v0

    const-string v3, "StoreId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 96
    :cond_14f
    const-string v2, "ExternalDomainSongList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring projection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 99
    :cond_16b
    return-object v1
.end method

.method public getAlbumArtUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    return v0
.end method

.method public getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "context"
    .parameter "songId"
    .parameter "cols"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected logProjection([Ljava/lang/String;)V
    .registers 6
    .parameter "proj"

    .prologue
    .line 113
    if-nez p1, :cond_3

    .line 120
    :cond_2
    return-void

    .line 117
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 118
    const-string v1, "ExternalDomainSongList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proj["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 44
    return-void
.end method
