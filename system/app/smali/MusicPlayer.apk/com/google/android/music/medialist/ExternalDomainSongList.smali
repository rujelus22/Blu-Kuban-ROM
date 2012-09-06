.class public abstract Lcom/google/android/music/medialist/ExternalDomainSongList;
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

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 26
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 27
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 28
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 29
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 30
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 31
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 32
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 33
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 34
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->unsetFlag(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected createRow(J[Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)Ljava/util/ArrayList;
    .registers 11
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
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v3, p3

    if-ge v1, v3, :cond_16c

    .line 54
    aget-object v0, p3, v1

    .line 55
    .local v0, column:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "audio_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 57
    :cond_1c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 58
    :cond_26
    const-string v3, "artist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 59
    iget-object v3, p4, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 60
    :cond_34
    const-string v3, "album"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 61
    iget-object v3, p4, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 62
    :cond_42
    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 63
    iget-object v3, p4, Lcom/google/android/music/medialist/SongData;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 64
    :cond_50
    const-string v3, "album_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 65
    iget-wide v3, p4, Lcom/google/android/music/medialist/SongData;->mAlbumId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 66
    :cond_62
    const-string v3, "AlbumArtistId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 67
    iget-wide v3, p4, Lcom/google/android/music/medialist/SongData;->mAlbumArtistId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 68
    :cond_74
    const-string v3, "AlbumArtist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 69
    iget-object v3, p4, Lcom/google/android/music/medialist/SongData;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 70
    :cond_82
    const-string v3, "artistSort"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 71
    iget-object v3, p4, Lcom/google/android/music/medialist/SongData;->mArtistSort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 72
    :cond_90
    const-string v3, "is_podcast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 73
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 74
    :cond_9e
    const-string v3, "bookmark"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 75
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 76
    :cond_ad
    const-string v3, "duration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 77
    iget-wide v3, p4, Lcom/google/android/music/medialist/SongData;->mDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 78
    :cond_c0
    const-string v3, "hasRemote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 79
    iget v3, p4, Lcom/google/android/music/medialist/SongData;->mHasRemote:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 80
    :cond_d3
    const-string v3, "hasLocal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 81
    iget v3, p4, Lcom/google/android/music/medialist/SongData;->mHasLocal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 82
    :cond_e6
    const-string v3, "Rating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 83
    iget v3, p4, Lcom/google/android/music/medialist/SongData;->mRating:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 84
    :cond_f9
    const-string v3, "SourceId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 85
    iget-object v3, p4, Lcom/google/android/music/medialist/SongData;->mSourceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 86
    :cond_108
    const-string v3, "year"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 88
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 89
    :cond_117
    const-string v3, "Genre"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 91
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 92
    :cond_126
    const-string v3, "StoreId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 94
    :cond_134
    const-string v3, "SongId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 95
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 96
    :cond_143
    const-string v3, "domainParam"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_152

    .line 97
    iget-object v3, p4, Lcom/google/android/music/medialist/SongData;->mDomainParam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 102
    :cond_152
    const-string v3, "ExternalDomainSongList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring projection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 105
    .end local v0           #column:Ljava/lang/String;
    :cond_16c
    return-object v2
.end method

.method public getAlbumArtUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 146
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
    .line 119
    if-nez p1, :cond_3

    .line 126
    :cond_2
    return-void

    .line 123
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 124
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

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method protected final setFlag(I)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    .line 142
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 44
    return-void
.end method

.method protected final unsetFlag(I)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/medialist/ExternalDomainSongList;->mFlags:I

    .line 134
    return-void
.end method
