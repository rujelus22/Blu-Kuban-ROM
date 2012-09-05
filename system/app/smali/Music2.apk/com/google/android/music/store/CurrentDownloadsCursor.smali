.class public Lcom/google/android/music/store/CurrentDownloadsCursor;
.super Lcom/google/android/music/store/MutableMatrixCursor;
.source "CurrentDownloadsCursor.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private mMusicIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "DownloadQueueCursor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/CurrentDownloadsCursor;->LOGV:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "columns"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    .line 30
    invoke-direct {p0}, Lcom/google/android/music/store/CurrentDownloadsCursor;->update()V

    .line 31
    return-void
.end method

.method private declared-synchronized update()V
    .registers 11

    .prologue
    .line 41
    monitor-enter p0

    const/4 v6, 0x0

    .line 42
    .local v6, success:Z
    const/4 v7, 0x1

    :try_start_3
    invoke-virtual {p0, v7}, Lcom/google/android/music/store/CurrentDownloadsCursor;->beginTransaction(Z)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_66

    .line 44
    :try_start_6
    iget-object v7, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 45
    invoke-static {}, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->getCurrentDownloads()Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    if-eqz v2, :cond_eb

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_eb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/DownloadOrder;

    .line 48
    .local v5, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v7, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/music/store/CurrentDownloadsCursor;->newRow()Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    move-result-object v0

    .line 50
    .local v0, builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_37
    iget v7, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mColumnCount:I

    if-ge v3, v7, :cond_e6

    .line 51
    iget-object v7, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v1, v7, v3

    .line 52
    .local v1, currentColumn:Ljava/lang/String;
    const-string v7, "AlbumArtist"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 53
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getAlbumArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    .line 50
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 54
    :cond_51
    const-string v7, "Album"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 55
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_61

    goto :goto_4e

    .line 75
    .end local v0           #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .end local v1           #currentColumn:Ljava/lang/String;
    .end local v2           #downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_61
    move-exception v7

    :try_start_62
    invoke-virtual {p0, v6}, Lcom/google/android/music/store/CurrentDownloadsCursor;->endTrancation(Z)V

    throw v7
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .line 41
    :catchall_66
    move-exception v7

    monitor-exit p0

    throw v7

    .line 56
    .restart local v0       #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .restart local v1       #currentColumn:Ljava/lang/String;
    .restart local v2       #downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_69
    :try_start_69
    const-string v7, "Artist"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 57
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_4e

    .line 58
    :cond_79
    const-string v7, "purposes"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 59
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getPurposes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_4e

    .line 60
    :cond_8d
    const-string v7, "_id"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 61
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_4e

    .line 62
    :cond_a5
    const-string v7, "Title"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 63
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getTrackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_4e

    .line 64
    :cond_b5
    const-string v7, "DownloadStatus"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 65
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_4e

    .line 67
    :cond_cd
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown column: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    .end local v1           #currentColumn:Ljava/lang/String;
    :cond_e6
    invoke-virtual {v0}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->finish()V
    :try_end_e9
    .catchall {:try_start_69 .. :try_end_e9} :catchall_61

    goto/16 :goto_15

    .line 73
    .end local v0           #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_eb
    const/4 v6, 0x1

    .line 75
    :try_start_ec
    invoke-virtual {p0, v6}, Lcom/google/android/music/store/CurrentDownloadsCursor;->endTrancation(Z)V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_66

    .line 77
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public getMusicIds()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    return-object v0
.end method

.method public requery()Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/music/store/CurrentDownloadsCursor;->update()V

    .line 37
    invoke-super {p0}, Lcom/google/android/music/store/MutableMatrixCursor;->requery()Z

    move-result v0

    return v0
.end method
