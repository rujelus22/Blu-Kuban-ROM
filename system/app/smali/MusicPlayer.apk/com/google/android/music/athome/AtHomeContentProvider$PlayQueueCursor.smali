.class final Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;
.super Lcom/google/android/music/utils/RequeriableCursorWrapper;
.source "AtHomeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayQueueCursor"
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "columnNames"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;->buildCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/RequeriableCursorWrapper;-><init>(Landroid/database/CrossProcessCursor;)V

    .line 61
    return-void
.end method

.method private static buildCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .registers 10
    .parameter "columnNames"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/music/utils/DbUtils;->hasCount([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 72
    invoke-static {p0}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;->getAllSongsCountCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 92
    :goto_a
    return-object v0

    .line 75
    :cond_b
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    monitor-enter v7

    .line 76
    :try_start_10
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 77
    .local v2, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-nez v2, :cond_26

    .line 78
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_a

    .line 93
    .end local v2           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :catchall_23
    move-exception v6

    monitor-exit v7
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v6

    .line 81
    .restart local v2       #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :cond_26
    :try_start_26
    invoke-interface {v2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSongs()Ljava/util/Collection;

    move-result-object v5

    .line 82
    .local v5, songs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, p0, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 83
    .local v0, c:Landroid/database/MatrixCursor;
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 84
    .local v4, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-static {v2, p0, v4}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;->createRow(Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;[Ljava/lang/String;Lcom/google/android/music/athome/api/AtHomeSongInfo;)Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    .local v3, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v3, :cond_4d

    .line 86
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_37

    .line 88
    :cond_4d
    const-string v6, "aah.Music"

    const-string v8, "Failed to create row"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 92
    .end local v3           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_55
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_23

    goto :goto_a
.end method

.method static createRow(Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;[Ljava/lang/String;Lcom/google/android/music/athome/api/AtHomeSongInfo;)Ljava/util/ArrayList;
    .registers 12
    .parameter "queue"
    .parameter "cursorCols"
    .parameter "song"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v6, p1

    if-ge v1, v6, :cond_1ef

    .line 115
    aget-object v0, p1, v1

    .line 116
    .local v0, col:Ljava/lang/String;
    const-string v6, "_id"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    const-string v6, "audio_id"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 118
    :cond_1c
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 119
    :cond_2a
    const-string v6, "duration"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 120
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 121
    :cond_3e
    const-string v6, "artist"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 122
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 123
    :cond_4e
    const-string v6, "album"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 124
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 125
    :cond_5e
    const-string v6, "title"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 126
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 127
    :cond_6e
    const-string v6, "album_id"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 128
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 129
    :cond_82
    const-string v6, "AlbumArtistId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 131
    const-string v6, "-1"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 132
    :cond_90
    const-string v6, "AlbumArtist"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 134
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 135
    :cond_a0
    const-string v6, "artistSort"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 137
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 138
    :cond_b1
    const-string v6, "is_podcast"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 139
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 140
    :cond_c0
    const-string v6, "bookmark"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 141
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 142
    :cond_cf
    const-string v6, "hasRemote"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 143
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 144
    :cond_de
    const-string v6, "hasLocal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 145
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 146
    :cond_ed
    const-string v6, "Rating"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 148
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 149
    :cond_ff
    const-string v6, "SourceId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_110

    .line 150
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 151
    :cond_110
    const-string v6, "year"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 153
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 154
    :cond_11f
    const-string v6, "Genre"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 156
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 157
    :cond_12e
    const-string v6, "StoreId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13c

    .line 158
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 159
    :cond_13c
    const-string v6, "SongId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_151

    .line 160
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSongId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 161
    :cond_151
    const-string v6, "domainParam"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16a

    .line 162
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v6

    invoke-interface {p0, v6, v7}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getToken(J)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, token:Ljava/lang/String;
    if-nez v4, :cond_165

    const-string v4, ""

    .end local v4           #token:Ljava/lang/String;
    :cond_165
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 164
    :cond_16a
    const-string v6, "submitterId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 165
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 166
    :cond_17f
    const-string v6, "submitterGivenName"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19b

    .line 167
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v6

    invoke-interface {p0, v6, v7}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;

    move-result-object v3

    .line 168
    .local v3, submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    const/4 v5, 0x0

    .line 169
    .local v5, value:Ljava/lang/String;
    if-eqz v3, :cond_196

    .line 170
    invoke-virtual {v3}, Lcom/google/android/music/athome/api/SubmitterInfo;->getGivenName()Ljava/lang/String;

    move-result-object v5

    .line 172
    :cond_196
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 173
    .end local v3           #submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    .end local v5           #value:Ljava/lang/String;
    :cond_19b
    const-string v6, "submitterFamilyName"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    .line 174
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v6

    invoke-interface {p0, v6, v7}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;

    move-result-object v3

    .line 175
    .restart local v3       #submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    const/4 v5, 0x0

    .line 176
    .restart local v5       #value:Ljava/lang/String;
    if-eqz v3, :cond_1b2

    .line 177
    invoke-virtual {v3}, Lcom/google/android/music/athome/api/SubmitterInfo;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    .line 179
    :cond_1b2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 180
    .end local v3           #submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    .end local v5           #value:Ljava/lang/String;
    :cond_1b7
    const-string v6, "submitterPictureUrl"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d3

    .line 181
    invoke-virtual {p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v6

    invoke-interface {p0, v6, v7}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;

    move-result-object v3

    .line 182
    .restart local v3       #submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    const/4 v5, 0x0

    .line 183
    .restart local v5       #value:Ljava/lang/String;
    if-eqz v3, :cond_1ce

    .line 184
    invoke-virtual {v3}, Lcom/google/android/music/athome/api/SubmitterInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v5

    .line 186
    :cond_1ce
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 190
    .end local v3           #submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    .end local v5           #value:Ljava/lang/String;
    :cond_1d3
    const-string v6, "aah.Music"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring projection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 193
    .end local v0           #col:Ljava/lang/String;
    :cond_1ef
    return-object v2
.end method

.method private static getAllSongsCountCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .registers 5
    .parameter "projection"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, count:I
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    monitor-enter v3

    .line 99
    :try_start_6
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 100
    .local v1, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-eqz v1, :cond_16

    .line 101
    invoke-interface {v1}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSize()I

    move-result v0

    .line 103
    :cond_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1c

    .line 105
    invoke-static {p0, v0}, Lcom/google/android/music/utils/DbUtils;->getCountCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 103
    .end local v1           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2
.end method


# virtual methods
.method protected getUpdatedCursor()Landroid/database/CrossProcessCursor;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;->buildCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method
