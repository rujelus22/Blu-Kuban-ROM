.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "BaseTileRequest.java"


# instance fields
.field protected final createTime:J

.field private final requestType:I

.field private stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

.field private textSize:I

.field private writeLatency:I


# direct methods
.method protected constructor <init>(IB)V
    .registers 7
    .parameter "requestType"
    .parameter "flags"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    .line 34
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    .line 50
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tile-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, stopwatchName:Ljava/lang/String;
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    const-string v2, "t"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;-><init>(Ljava/lang/String;Ljava/lang/String;S)V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    .line 56
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start()V

    .line 57
    return-void
.end method

.method private static formatTileTypesForLog(I)Ljava/lang/String;
    .registers 3
    .parameter "tileTypes"

    .prologue
    .line 205
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 206
    .local v0, result:Ljava/util/Vector;
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_e

    .line 207
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 209
    :cond_e
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_17

    .line 210
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 213
    :cond_17
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_20

    .line 214
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    :cond_20
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_29

    .line 218
    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 221
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 222
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 224
    :cond_32
    const-string v1, ","

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->join(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readImageData(Ljava/io/DataInput;)[B
    .registers 4
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 191
    .local v1, tileSize:I
    new-array v0, v1, [B

    .line 194
    .local v0, imageBytes:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 195
    return-object v0
.end method


# virtual methods
.method public getRequestType()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    return v0
.end method

.method protected abstract handleEndOfResponse(I)V
.end method

.method protected abstract processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .registers 20
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v15, 0x0

    .line 100
    .local v15, tileIndex:I
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v9

    .line 101
    .local v9, now:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    sub-long v1, v9, v1

    long-to-int v3, v1

    .line 102
    .local v3, firstByteLatency:I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v14

    .line 103
    .local v14, tileEdition:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->setTileEditionAndTextSize(II)V

    .line 105
    const/4 v5, 0x0

    .line 106
    .local v5, tileCount:I
    const/4 v6, 0x0

    .line 107
    .local v6, totalSize:I
    const/16 v16, 0x0

    .line 108
    .local v16, tileTypes:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_59

    .line 112
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v13

    .line 113
    .local v13, responseCode:I
    if-eqz v13, :cond_55

    .line 115
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Server returned: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_4e

    .line 155
    .end local v3           #firstByteLatency:I
    .end local v5           #tileCount:I
    .end local v6           #totalSize:I
    .end local v9           #now:J
    .end local v13           #responseCode:I
    .end local v14           #tileEdition:I
    .end local v16           #tileTypes:I
    :catchall_4e
    move-exception v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    throw v1

    .line 117
    .restart local v3       #firstByteLatency:I
    .restart local v5       #tileCount:I
    .restart local v6       #totalSize:I
    .restart local v9       #now:J
    .restart local v13       #responseCode:I
    .restart local v14       #tileEdition:I
    .restart local v16       #tileTypes:I
    :cond_55
    :try_start_55
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    .line 121
    .end local v13           #responseCode:I
    :cond_59
    const/4 v15, 0x0

    :goto_5a
    if-ge v15, v5, :cond_6c

    .line 123
    invoke-static/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v8

    .line 124
    .local v8, location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->readImageData(Ljava/io/DataInput;)[B

    move-result-object v7

    .line 125
    .local v7, imageBytes:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 147
    .end local v7           #imageBytes:[B
    .end local v8           #location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_6c
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v11

    .line 148
    .local v11, now2:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    sub-long v1, v11, v1

    long-to-int v4, v1

    .line 150
    .local v4, lastByteLatency:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->stop()V

    .line 152
    invoke-static/range {v16 .. v16}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    invoke-static/range {v1 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmLogger;->logTimingTileLatency(Ljava/lang/String;IIIII)V
    :try_end_91
    .catchall {:try_start_55 .. :try_end_91} :catchall_4e

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    .line 158
    const/4 v1, 0x1

    return v1

    .line 134
    .end local v4           #lastByteLatency:I
    .end local v11           #now2:J
    .restart local v7       #imageBytes:[B
    .restart local v8       #location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_98
    :try_start_98
    array-length v1, v7

    add-int/2addr v6, v1

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getFlags()B
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_4e

    move-result v2

    shl-int/2addr v1, v2

    or-int v16, v16, v1

    .line 121
    add-int/lit8 v15, v15, 0x1

    goto :goto_5a
.end method

.method protected abstract setTileEditionAndTextSize(II)V
.end method

.method protected writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V
    .registers 11
    .parameter "tileList"
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_2a

    .line 71
    array-length v6, p1

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 72
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTextSize()I

    move-result v6

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    .line 73
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 74
    const/16 v6, 0x100

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 76
    const-wide/16 v0, 0xa2f

    .line 83
    .local v0, format:J
    sget-object v6, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->INSTANCE:Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->isActive()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 84
    const-wide/16 v6, 0x2000

    or-long/2addr v0, v6

    .line 86
    :cond_27
    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 89
    .end local v0           #format:J
    :cond_2a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    array-length v6, p1

    if-ge v2, v6, :cond_36

    .line 90
    aget-object v5, p1, v2

    .line 91
    .local v5, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {v5, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 93
    .end local v5           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_36
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    .line 94
    .local v3, now:J
    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    sub-long v6, v3, v6

    long-to-int v6, v6

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    .line 95
    return-void
.end method
