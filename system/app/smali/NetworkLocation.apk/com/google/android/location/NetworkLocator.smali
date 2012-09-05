.class public Lcom/google/android/location/NetworkLocator;
.super Ljava/lang/Object;
.source "NetworkLocator.java"


# static fields
.field private static final EMPTY_CELL_STATUS:Lcom/google/android/location/data/CellStatus;


# instance fields
.field cellEnabled:Z

.field cellStatus:Lcom/google/android/location/data/CellStatus;

.field glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

.field glsQueryTicket:Z

.field glsQueryTime:J

.field glsQueryWifiScan:Lcom/google/android/location/data/WifiScan;

.field lastCachePurge:J

.field lastCellScanRequestTime:J

.field lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

.field lastStateCheckpointTime:J

.field lastWakeLockAcquireTime:J

.field lastWakeLockReleaseTime:J

.field lastWifiScanRequestTime:J

.field final locator:Lcom/google/android/location/localizer/LocatorManager;

.field locatorTicket:Z

.field nextTriggerTime:J

.field final os:Lcom/google/android/location/os/Os;

.field period:J

.field final state:Lcom/google/android/location/cache/PersistentState;

.field final stats:Lcom/google/android/location/Stats;

.field wifiEnabled:Z

.field wifiScan:Lcom/google/android/location/data/WifiScan;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/location/data/CellStatus;

    invoke-direct {v0}, Lcom/google/android/location/data/CellStatus;-><init>()V

    sput-object v0, Lcom/google/android/location/NetworkLocator;->EMPTY_CELL_STATUS:Lcom/google/android/location/data/CellStatus;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;Lcom/google/android/location/Stats;)V
    .registers 12
    .parameter "os"
    .parameter "state"
    .parameter "stats"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-wide v0, 0x1f3fffffc18L

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->period:J

    .line 89
    iput-wide v6, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    .line 93
    new-instance v0, Lcom/google/android/location/data/NetworkLocation;

    invoke-direct {v0, v5, v5, v5, v5}, Lcom/google/android/location/data/NetworkLocation;-><init>(Lcom/google/android/location/data/LocatorResult;Lcom/google/android/location/data/WifiLocatorResult;Lcom/google/android/location/data/CellLocatorResult;Lcom/google/android/location/data/GlsLocatorResult;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    .line 94
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    .line 98
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->glsQueryTime:J

    .line 100
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    .line 103
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 104
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    .line 108
    new-instance v0, Lcom/google/android/location/data/CellStatus;

    invoke-direct {v0}, Lcom/google/android/location/data/CellStatus;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    .line 109
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    .line 110
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    .line 113
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    .line 114
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    .line 118
    iput-wide v6, p0, Lcom/google/android/location/NetworkLocator;->lastStateCheckpointTime:J

    .line 119
    iput-wide v6, p0, Lcom/google/android/location/NetworkLocator;->lastCachePurge:J

    .line 126
    iput-object p1, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    .line 127
    iput-object p2, p0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    .line 128
    new-instance v0, Lcom/google/android/location/localizer/LocatorManager;

    iget-object v1, p2, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    iget-object v2, p2, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/location/localizer/LocatorManager;-><init>(Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/os/Os;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocator;->locator:Lcom/google/android/location/localizer/LocatorManager;

    .line 129
    iput-object p3, p0, Lcom/google/android/location/NetworkLocator;->stats:Lcom/google/android/location/Stats;

    .line 133
    return-void
.end method

.method private acquireWakeLock()J
    .registers 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/location/os/Os;->wakeLockAcquire(I)V

    .line 148
    iget-object v2, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v2}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v0

    .line 149
    .local v0, now:J
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    .line 150
    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 151
    return-wide v0
.end method

.method private createGlsQueryRequest(Lcom/google/android/location/data/CellStatus;Lcom/google/android/location/data/WifiScan;)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 11
    .parameter "cellStatus"
    .parameter "wifiScan"

    .prologue
    const/4 v6, 0x2

    .line 161
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 162
    .local v3, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v5, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v5}, Lcom/google/android/location/os/Os;->bootTime()J

    move-result-wide v0

    .line 163
    .local v0, bootTime:J
    if-eqz p1, :cond_13

    .line 164
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/location/data/CellStatus;->addToRequestElement(Lcom/google/common/io/protocol/ProtoBuf;J)V

    .line 166
    :cond_13
    if-eqz p2, :cond_20

    .line 167
    invoke-virtual {p2, v0, v1}, Lcom/google/android/location/data/WifiScan;->createWifiProfile(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 168
    .local v4, wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 170
    invoke-virtual {v3, v6, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 173
    .end local v4           #wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_20
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 174
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 175
    .local v2, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 176
    iget-object v5, p0, Lcom/google/android/location/NetworkLocator;->stats:Lcom/google/android/location/Stats;

    iget-object v6, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    iget-object v7, p0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    invoke-virtual {v5, v6, v7, v2}, Lcom/google/android/location/Stats;->maybeAddClientStats(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 177
    return-object v2
.end method

.method private releaseWakeLock(J)V
    .registers 7
    .parameter "now"

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    .line 156
    iget-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 157
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/location/os/Os;->wakeLockRelease(I)V

    .line 158
    return-void
.end method

.method private setCellWifiEnabled(JZZ)V
    .registers 13
    .parameter "now"
    .parameter "cellEnabled"
    .parameter "wifiEnabled"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 447
    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    if-eqz v1, :cond_2a

    :cond_b
    move v7, v0

    .line 448
    .local v7, wasEnabled:Z
    :goto_c
    iput-boolean p3, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    .line 449
    iput-boolean p4, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    .line 450
    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    if-eqz v1, :cond_2c

    :cond_18
    move v6, v0

    .line 452
    .local v6, nowEnabled:Z
    :goto_19
    if-eq v7, v6, :cond_23

    .line 453
    if-eqz v6, :cond_2e

    .line 454
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    :cond_23
    :goto_23
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v3

    .line 459
    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 460
    return-void

    .end local v6           #nowEnabled:Z
    .end local v7           #wasEnabled:Z
    :cond_2a
    move v7, v5

    .line 447
    goto :goto_c

    .restart local v7       #wasEnabled:Z
    :cond_2c
    move v6, v5

    .line 450
    goto :goto_19

    .line 456
    .restart local v6       #nowEnabled:Z
    :cond_2e
    const-wide/32 v0, 0x7fffffff

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    goto :goto_23
.end method

.method private shouldReportLocation(Lcom/google/android/location/data/LocatorResult;J)Z
    .registers 11
    .parameter "newBest"
    .parameter "now"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 411
    iget-object v3, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->getLastKnownLocation()Lcom/google/android/location/os/LocationInterface;

    move-result-object v0

    .line 412
    .local v0, lastBest:Lcom/google/android/location/os/LocationInterface;
    if-nez v0, :cond_24

    .line 413
    iget-object v3, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    iget v3, v3, Lcom/google/android/location/data/Position;->accuracyMm:I

    const v4, 0x30d40

    if-ge v3, v4, :cond_1b

    .line 414
    const-string v2, "NetworkLocator"

    const-string v3, "Reporting available location since we\'ve never reported one before."

    invoke-static {v2, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_1a
    :goto_1a
    return v1

    .line 417
    :cond_1b
    const-string v1, "NetworkLocator"

    const-string v3, "Not reporting first fix as it may be significantly improved by going to the server."

    invoke-static {v1, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 419
    goto :goto_1a

    .line 421
    :cond_24
    iget-wide v3, p1, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    invoke-interface {v0}, Lcom/google/android/location/os/LocationInterface;->getTimeSinceBoot()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xafc8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3a

    .line 422
    const-string v2, "NetworkLocator"

    const-string v3, "New location significantly newer than previous. Reporting it."

    invoke-static {v2, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 424
    :cond_3a
    iget-object v3, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    iget v3, v3, Lcom/google/android/location/data/Position;->accuracyMm:I

    int-to-float v3, v3

    invoke-interface {v0}, Lcom/google/android/location/os/LocationInterface;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    const v5, 0x47c35000

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 426
    const-string v1, "NetworkLocator"

    const-string v3, "Not reporting location since the new location has worse accuracy than the previous one."

    invoke-static {v1, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 428
    goto :goto_1a
.end method

.method private updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V
    .registers 58
    .parameter "now"
    .parameter "newWifiScan"
    .parameter "glsLocatorResult"
    .parameter "glsQueryTerminated"

    .prologue
    .line 194
    if-eqz p3, :cond_8

    .line 195
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    .line 197
    :cond_8
    if-eqz p5, :cond_12

    .line 198
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    .line 203
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCachePurge:J

    move-wide/from16 v48, v0

    sub-long v48, p1, v48

    const-wide/32 v50, 0x36ee80

    cmp-long v48, v48, v50

    if-lez v48, :cond_3a

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/google/android/location/os/Os;->millisSinceEpoch()J

    move-result-wide v49

    invoke-virtual/range {v48 .. v50}, Lcom/google/android/location/cache/PersistentState;->discardOldCacheEntries(J)V

    .line 205
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastCachePurge:J

    .line 219
    :cond_3a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    move-wide/from16 v48, v0

    sub-long v36, p1, v48

    .line 220
    .local v36, sinceAcquire:J
    const-wide/32 v6, 0xafc8

    .line 221
    .local v6, MAX_FRESH_SCAN_MILLIS:J
    const-wide/16 v4, 0xc8

    .line 224
    .local v4, COMMON_CELL_SCAN_LATENCY:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->period:J

    move-wide/from16 v48, v0

    const-wide/32 v50, 0xafc8

    invoke-static/range {v48 .. v51}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v23

    .line 225
    .local v23, maxWifiScanAge:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    if-nez v48, :cond_3d8

    const-wide/16 v45, 0x0

    .line 226
    .local v45, wifiScanAge:J
    :goto_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v8

    .line 228
    .local v8, cellPrimary:Lcom/google/android/location/data/CellState;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    move-wide/from16 v48, v0

    cmp-long v48, p1, v48

    if-ltz v48, :cond_3e8

    const/16 v40, 0x1

    .line 230
    .local v40, trigger:Z
    :goto_74
    if-eqz v8, :cond_3ec

    invoke-virtual {v8}, Lcom/google/android/location/data/CellState;->isValid()Z

    move-result v48

    if-eqz v48, :cond_3ec

    invoke-virtual {v8}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v48

    sub-long v48, p1, v48

    const-wide/32 v50, 0xafc8

    cmp-long v48, v48, v50

    if-gez v48, :cond_3ec

    const/16 v17, 0x1

    .line 232
    .local v17, haveCellScan:Z
    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    if-eqz v48, :cond_3f0

    cmp-long v48, v45, v23

    if-gez v48, :cond_3f0

    const/16 v19, 0x1

    .line 236
    .local v19, haveWifiScan:Z
    :goto_99
    if-eqz v17, :cond_3f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/NetworkLocation;->getCellResultPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v48

    move-object/from16 v0, v48

    if-eq v8, v0, :cond_3f4

    const/4 v10, 0x1

    .line 238
    .local v10, freshCellScan:Z
    :goto_aa
    if-eqz v19, :cond_3f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/location/data/NetworkLocation;->getWifiResultScan()Lcom/google/android/location/data/WifiScan;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_3f7

    const/4 v11, 0x1

    .line 244
    .local v11, freshWifiScan:Z
    :goto_c3
    if-eqz v40, :cond_3fa

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_3fa

    const/16 v32, 0x1

    .line 245
    .local v32, requestCellScan:Z
    :goto_cf
    if-eqz v40, :cond_3fe

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_3fe

    if-eqz v11, :cond_e3

    sub-long v48, v23, v45

    const-wide/16 v50, 0xc8

    cmp-long v48, v48, v50

    if-gez v48, :cond_3fe

    :cond_e3
    const/16 v33, 0x1

    .line 250
    .local v33, requestWifiScan:Z
    :goto_e5
    if-nez v32, :cond_103

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    move-wide/from16 v48, v0

    const-wide/16 v50, -0x1

    cmp-long v48, v48, v50

    if-eqz v48, :cond_402

    if-eqz v8, :cond_103

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    move-wide/from16 v48, v0

    invoke-virtual {v8}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v50

    cmp-long v48, v48, v50

    if-lez v48, :cond_402

    :cond_103
    const/4 v9, 0x1

    .line 254
    .local v9, cellScanPending:Z
    :goto_104
    if-nez v33, :cond_138

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    move-wide/from16 v48, v0

    const-wide/16 v50, -0x1

    cmp-long v48, v48, v50

    if-eqz v48, :cond_405

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_405

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    if-eqz v48, :cond_138

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-lez v48, :cond_405

    :cond_138
    const/16 v47, 0x1

    .line 259
    .local v47, wifiScanPending:Z
    :goto_13a
    if-eqz v9, :cond_409

    if-nez v32, :cond_14c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    move-wide/from16 v48, v0

    sub-long v48, p1, v48

    const-wide/16 v50, 0x1388

    cmp-long v48, v48, v50

    if-gez v48, :cond_409

    :cond_14c
    const/16 v41, 0x1

    .line 262
    .local v41, waitForCell:Z
    :goto_14e
    if-eqz v47, :cond_40d

    if-nez v33, :cond_160

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    move-wide/from16 v48, v0

    sub-long v48, p1, v48

    const-wide/16 v50, 0x1388

    cmp-long v48, v48, v50

    if-gez v48, :cond_40d

    :cond_160
    const/16 v43, 0x1

    .line 265
    .local v43, waitForWifi:Z
    :goto_162
    if-nez v41, :cond_166

    if-eqz v43, :cond_411

    :cond_166
    const/16 v42, 0x1

    .line 271
    .local v42, waitForScans:Z
    :goto_168
    if-nez v10, :cond_16c

    if-eqz v11, :cond_16e

    :cond_16c
    if-eqz v42, :cond_17a

    :cond_16e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    move/from16 v48, v0

    if-nez v48, :cond_415

    if-eqz v17, :cond_415

    if-nez v41, :cond_415

    :cond_17a
    const/16 v35, 0x1

    .line 273
    .local v35, scansReady:Z
    :goto_17c
    if-nez p5, :cond_18a

    if-nez v40, :cond_188

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    move/from16 v48, v0

    if-eqz v48, :cond_419

    :cond_188
    if-eqz v35, :cond_419

    :cond_18a
    const/16 v34, 0x1

    .line 274
    .local v34, runLocator:Z
    :goto_18c
    const/16 v25, 0x0

    .line 275
    .local v25, netLoc:Lcom/google/android/location/data/NetworkLocation;
    if-eqz v34, :cond_1b8

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->locator:Lcom/google/android/location/localizer/LocatorManager;

    move-object/from16 v50, v0

    if-eqz v10, :cond_41d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/CellStatus;->copy()Lcom/google/android/location/data/CellStatus;

    move-result-object v48

    move-object/from16 v49, v48

    :goto_1a4
    if-eqz v11, :cond_423

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    :goto_1ac
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    move-object/from16 v2, v48

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/localizer/LocatorManager;->computeLocation(Lcom/google/android/location/data/CellStatus;Lcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;)Lcom/google/android/location/data/NetworkLocation;

    move-result-object v25

    .line 280
    :cond_1b8
    if-eqz v25, :cond_427

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    move-object/from16 v48, v0

    if-eqz v48, :cond_427

    const/16 v18, 0x1

    .line 281
    .local v18, haveLocation:Z
    :goto_1c4
    if-eqz v25, :cond_42b

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/google/android/location/data/CellLocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v48, v0

    sget-object v49, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_42b

    const/4 v12, 0x1

    .line 283
    .local v12, glsForCell:Z
    :goto_1db
    if-eqz v25, :cond_42e

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/google/android/location/data/WifiLocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v48, v0

    sget-object v49, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_42e

    const/4 v13, 0x1

    .line 287
    .local v13, glsForWifi:Z
    :goto_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v48, v0

    if-nez v48, :cond_431

    if-nez v40, :cond_204

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    move/from16 v48, v0

    if-eqz v48, :cond_431

    :cond_204
    if-eqz v12, :cond_208

    if-nez v10, :cond_218

    :cond_208
    if-eqz v13, :cond_431

    if-eqz v11, :cond_431

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/WifiScan;->numDevices()I

    move-result v48

    if-lez v48, :cond_431

    :cond_218
    const/16 v28, 0x1

    .line 290
    .local v28, queryGls:Z
    :goto_21a
    if-nez v28, :cond_21e

    if-eqz v18, :cond_435

    :cond_21e
    const/16 v22, 0x1

    .line 292
    .local v22, loseQueryTicket:Z
    :goto_220
    if-eqz v18, :cond_439

    if-eqz v28, :cond_236

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/NetworkLocator;->shouldReportLocation(Lcom/google/android/location/data/LocatorResult;J)Z

    move-result v48

    if-eqz v48, :cond_439

    :cond_236
    const/16 v31, 0x1

    .line 295
    .local v31, reportLocation:Z
    :goto_238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->isWakeLocked()Z

    move-result v20

    .line 296
    .local v20, isWakeLocked:Z
    if-nez v20, :cond_43d

    if-eqz v40, :cond_43d

    const/16 v16, 0x1

    .line 300
    .local v16, grabWakeLock:Z
    :goto_242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v48, v0

    if-eqz v48, :cond_25a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->glsQueryTime:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-gez v48, :cond_25c

    :cond_25a
    if-eqz v28, :cond_441

    :cond_25c
    const/4 v14, 0x1

    .line 302
    .local v14, glsQueryPending:Z
    :goto_25d
    if-nez v9, :cond_263

    if-nez v47, :cond_263

    if-eqz v14, :cond_444

    :cond_263
    const/16 v44, 0x1

    .line 303
    .local v44, wakeLockUseful:Z
    :goto_265
    if-eqz v20, :cond_448

    if-nez v40, :cond_448

    const-wide/16 v48, 0x1388

    cmp-long v48, v36, v48

    if-gez v48, :cond_271

    if-nez v44, :cond_448

    :cond_271
    const/16 v29, 0x1

    .line 307
    .local v29, releaseWakeLock:Z
    :goto_273
    if-eqz v20, :cond_44c

    if-eqz v40, :cond_44c

    if-nez v29, :cond_44c

    const/16 v30, 0x1

    .line 340
    .local v30, renewWakeLock:Z
    :goto_27b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    move/from16 v48, v0

    if-nez v48, :cond_285

    if-eqz v40, :cond_450

    :cond_285
    if-nez v34, :cond_450

    const/16 v48, 0x1

    :goto_289
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    move/from16 v48, v0

    if-nez v48, :cond_299

    if-eqz v40, :cond_454

    :cond_299
    if-nez v22, :cond_454

    const/16 v48, 0x1

    :goto_29d
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    .line 343
    if-eqz v16, :cond_2a9

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->acquireWakeLock()J

    move-result-wide p1

    .line 346
    :cond_2a9
    if-eqz v30, :cond_2b1

    .line 347
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 349
    :cond_2b1
    if-eqz v40, :cond_2c1

    .line 350
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->period:J

    move-wide/from16 v48, v0

    add-long v48, v48, p1

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    .line 352
    :cond_2c1
    if-eqz v32, :cond_2d2

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/google/android/location/os/Os;->cellRequestScan()V

    .line 354
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    .line 356
    :cond_2d2
    if-eqz v33, :cond_2e3

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/google/android/location/os/Os;->wifiRequestScan()V

    .line 358
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    .line 360
    :cond_2e3
    if-eqz v28, :cond_32a

    .line 361
    if-eqz v10, :cond_458

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v21, v0

    .line 362
    .local v21, locatorCellStatus:Lcom/google/android/location/data/CellStatus;
    :goto_2ed
    if-eqz v11, :cond_45c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/WifiScan;->numDevices()I

    move-result v48

    if-lez v48, :cond_45c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    .line 363
    .local v15, glsWifiScan:Lcom/google/android/location/data/WifiScan;
    :goto_2ff
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v15}, Lcom/google/android/location/NetworkLocator;->createGlsQueryRequest(Lcom/google/android/location/data/CellStatus;Lcom/google/android/location/data/WifiScan;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    .line 364
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->glsQueryTime:J

    .line 365
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/location/NetworkLocator;->glsQueryWifiScan:Lcom/google/android/location/data/WifiScan;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v49, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/location/data/CellStatus;->createCellularPlatformProfile(Lcom/google/android/location/data/CellStatus;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v50

    invoke-interface/range {v48 .. v50}, Lcom/google/android/location/os/Os;->glsQuery(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 368
    .end local v15           #glsWifiScan:Lcom/google/android/location/data/WifiScan;
    .end local v21           #locatorCellStatus:Lcom/google/android/location/data/CellStatus;
    :cond_32a
    if-eqz v31, :cond_353

    .line 369
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    move-object/from16 v48, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    move-object/from16 v49, v0

    invoke-interface/range {v48 .. v49}, Lcom/google/android/location/os/Os;->locationReport(Lcom/google/android/location/data/NetworkLocation;)V

    .line 375
    :cond_353
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    move-wide/from16 v26, v0

    .line 376
    .local v26, nextAlarm:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->isWakeLocked()Z

    move-result v48

    if-eqz v48, :cond_373

    if-nez v29, :cond_373

    .line 377
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x1388

    add-long v48, v48, v50

    move-wide/from16 v0, v26

    move-wide/from16 v2, v48

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    .line 379
    :cond_373
    const-wide v48, 0x7fffffffffffffffL

    cmp-long v48, v26, v48

    if-gez v48, :cond_38d

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/location/os/Os;->alarmReset(IJ)V

    .line 386
    :cond_38d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastStateCheckpointTime:J

    move-wide/from16 v48, v0

    sub-long v38, p1, v48

    .line 387
    .local v38, sinceCheckpoint:J
    const-wide/32 v48, 0x6ddd00

    cmp-long v48, v38, v48

    if-gtz v48, :cond_3bd

    const-wide/32 v48, 0x36ee80

    cmp-long v48, v38, v48

    if-lez v48, :cond_3d2

    sub-long v48, v26, p1

    const-wide/16 v50, 0x2710

    cmp-long v48, v48, v50

    if-lez v48, :cond_3d2

    if-nez v9, :cond_3d2

    if-nez v47, :cond_3d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v48, v0

    if-nez v48, :cond_3d2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->isWakeLocked()Z

    move-result v48

    if-eqz v48, :cond_3d2

    .line 391
    :cond_3bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    move-object/from16 v49, v0

    invoke-interface/range {v48 .. v49}, Lcom/google/android/location/os/Os;->stateCheckpoint(Lcom/google/android/location/cache/PersistentState;)V

    .line 392
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastStateCheckpointTime:J

    .line 395
    :cond_3d2
    if-eqz v29, :cond_3d7

    .line 396
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/NetworkLocator;->releaseWakeLock(J)V

    .line 398
    :cond_3d7
    return-void

    .line 225
    .end local v8           #cellPrimary:Lcom/google/android/location/data/CellState;
    .end local v9           #cellScanPending:Z
    .end local v10           #freshCellScan:Z
    .end local v11           #freshWifiScan:Z
    .end local v12           #glsForCell:Z
    .end local v13           #glsForWifi:Z
    .end local v14           #glsQueryPending:Z
    .end local v16           #grabWakeLock:Z
    .end local v17           #haveCellScan:Z
    .end local v18           #haveLocation:Z
    .end local v19           #haveWifiScan:Z
    .end local v20           #isWakeLocked:Z
    .end local v22           #loseQueryTicket:Z
    .end local v25           #netLoc:Lcom/google/android/location/data/NetworkLocation;
    .end local v26           #nextAlarm:J
    .end local v28           #queryGls:Z
    .end local v29           #releaseWakeLock:Z
    .end local v30           #renewWakeLock:Z
    .end local v31           #reportLocation:Z
    .end local v32           #requestCellScan:Z
    .end local v33           #requestWifiScan:Z
    .end local v34           #runLocator:Z
    .end local v35           #scansReady:Z
    .end local v38           #sinceCheckpoint:J
    .end local v40           #trigger:Z
    .end local v41           #waitForCell:Z
    .end local v42           #waitForScans:Z
    .end local v43           #waitForWifi:Z
    .end local v44           #wakeLockUseful:Z
    .end local v45           #wifiScanAge:J
    .end local v47           #wifiScanPending:Z
    :cond_3d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    move-wide/from16 v48, v0

    sub-long v45, p1, v48

    goto/16 :goto_5e

    .line 228
    .restart local v8       #cellPrimary:Lcom/google/android/location/data/CellState;
    .restart local v45       #wifiScanAge:J
    :cond_3e8
    const/16 v40, 0x0

    goto/16 :goto_74

    .line 230
    .restart local v40       #trigger:Z
    :cond_3ec
    const/16 v17, 0x0

    goto/16 :goto_8b

    .line 232
    .restart local v17       #haveCellScan:Z
    :cond_3f0
    const/16 v19, 0x0

    goto/16 :goto_99

    .line 236
    .restart local v19       #haveWifiScan:Z
    :cond_3f4
    const/4 v10, 0x0

    goto/16 :goto_aa

    .line 238
    .restart local v10       #freshCellScan:Z
    :cond_3f7
    const/4 v11, 0x0

    goto/16 :goto_c3

    .line 244
    .restart local v11       #freshWifiScan:Z
    :cond_3fa
    const/16 v32, 0x0

    goto/16 :goto_cf

    .line 245
    .restart local v32       #requestCellScan:Z
    :cond_3fe
    const/16 v33, 0x0

    goto/16 :goto_e5

    .line 250
    .restart local v33       #requestWifiScan:Z
    :cond_402
    const/4 v9, 0x0

    goto/16 :goto_104

    .line 254
    .restart local v9       #cellScanPending:Z
    :cond_405
    const/16 v47, 0x0

    goto/16 :goto_13a

    .line 259
    .restart local v47       #wifiScanPending:Z
    :cond_409
    const/16 v41, 0x0

    goto/16 :goto_14e

    .line 262
    .restart local v41       #waitForCell:Z
    :cond_40d
    const/16 v43, 0x0

    goto/16 :goto_162

    .line 265
    .restart local v43       #waitForWifi:Z
    :cond_411
    const/16 v42, 0x0

    goto/16 :goto_168

    .line 271
    .restart local v42       #waitForScans:Z
    :cond_415
    const/16 v35, 0x0

    goto/16 :goto_17c

    .line 273
    .restart local v35       #scansReady:Z
    :cond_419
    const/16 v34, 0x0

    goto/16 :goto_18c

    .line 276
    .restart local v25       #netLoc:Lcom/google/android/location/data/NetworkLocation;
    .restart local v34       #runLocator:Z
    :cond_41d
    sget-object v48, Lcom/google/android/location/NetworkLocator;->EMPTY_CELL_STATUS:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v49, v48

    goto/16 :goto_1a4

    :cond_423
    const/16 v48, 0x0

    goto/16 :goto_1ac

    .line 280
    :cond_427
    const/16 v18, 0x0

    goto/16 :goto_1c4

    .line 281
    .restart local v18       #haveLocation:Z
    :cond_42b
    const/4 v12, 0x0

    goto/16 :goto_1db

    .line 283
    .restart local v12       #glsForCell:Z
    :cond_42e
    const/4 v13, 0x0

    goto/16 :goto_1f2

    .line 287
    .restart local v13       #glsForWifi:Z
    :cond_431
    const/16 v28, 0x0

    goto/16 :goto_21a

    .line 290
    .restart local v28       #queryGls:Z
    :cond_435
    const/16 v22, 0x0

    goto/16 :goto_220

    .line 292
    .restart local v22       #loseQueryTicket:Z
    :cond_439
    const/16 v31, 0x0

    goto/16 :goto_238

    .line 296
    .restart local v20       #isWakeLocked:Z
    .restart local v31       #reportLocation:Z
    :cond_43d
    const/16 v16, 0x0

    goto/16 :goto_242

    .line 300
    .restart local v16       #grabWakeLock:Z
    :cond_441
    const/4 v14, 0x0

    goto/16 :goto_25d

    .line 302
    .restart local v14       #glsQueryPending:Z
    :cond_444
    const/16 v44, 0x0

    goto/16 :goto_265

    .line 303
    .restart local v44       #wakeLockUseful:Z
    :cond_448
    const/16 v29, 0x0

    goto/16 :goto_273

    .line 307
    .restart local v29       #releaseWakeLock:Z
    :cond_44c
    const/16 v30, 0x0

    goto/16 :goto_27b

    .line 340
    .restart local v30       #renewWakeLock:Z
    :cond_450
    const/16 v48, 0x0

    goto/16 :goto_289

    .line 341
    :cond_454
    const/16 v48, 0x0

    goto/16 :goto_29d

    .line 361
    :cond_458
    const/16 v21, 0x0

    goto/16 :goto_2ed

    .line 362
    .restart local v21       #locatorCellStatus:Lcom/google/android/location/data/CellStatus;
    :cond_45c
    const/4 v15, 0x0

    goto/16 :goto_2ff
.end method


# virtual methods
.method public airplaneModeChanged(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    if-nez p1, :cond_f

    const/4 v0, 0x1

    :goto_9
    iget-boolean v3, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/location/NetworkLocator;->setCellWifiEnabled(JZZ)V

    .line 478
    return-void

    .line 477
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public alarmRing()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 481
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 482
    return-void
.end method

.method public cellScanResults(Lcom/google/android/location/data/CellState;)V
    .registers 8
    .parameter "cellState"

    .prologue
    const/4 v3, 0x0

    .line 485
    if-nez p1, :cond_1b

    .line 486
    const-string v0, "NetworkLocator"

    const-string v1, "null cell state delivered"

    invoke-static {v0, v1}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    .line 492
    :goto_e
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 493
    return-void

    .line 490
    :cond_1b
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v0, p1}, Lcom/google/android/location/data/CellStatus;->setPrimary(Lcom/google/android/location/data/CellState;)V

    goto :goto_e
.end method

.method public cellSignalStrength(I)V
    .registers 3
    .parameter "signalStrength"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v0, p1}, Lcom/google/android/location/data/CellStatus;->setSignalStrength(I)V

    .line 497
    return-void
.end method

.method public glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 9
    .parameter "response"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    .line 501
    .local v1, now:J
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->glsQueryWifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/location/data/GlsLocatorResult;->fromGLocReply(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/location/data/WifiScan;J)Lcom/google/android/location/data/GlsLocatorResult;

    move-result-object v4

    .line 502
    .local v4, glsResult:Lcom/google/android/location/data/GlsLocatorResult;
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    iget-object v3, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->millisSinceEpoch()J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lcom/google/android/location/cache/PersistentState;->updateCachesFromGlsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;J)V

    .line 503
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 504
    return-void
.end method

.method isWakeLocked()Z
    .registers 5

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    iget-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setPeriod(IZ)V
    .registers 16
    .parameter "periodSecs"
    .parameter "trigger"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 466
    int-to-long v9, p1

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/location/NetworkLocator;->period:J

    .line 467
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    .line 468
    .local v1, now:J
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    if-eqz v0, :cond_2b

    :cond_16
    const/4 v6, 0x1

    .line 469
    .local v6, enabled:Z
    :goto_17
    if-eqz v6, :cond_25

    .line 470
    if-eqz p2, :cond_2d

    const-wide/16 v7, 0x0

    .line 471
    .local v7, newTriggerTime:J
    :goto_1d
    iget-wide v9, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    .end local v7           #newTriggerTime:J
    :cond_25
    move-object v0, p0

    move-object v4, v3

    .line 473
    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 474
    return-void

    .end local v6           #enabled:Z
    :cond_2b
    move v6, v5

    .line 468
    goto :goto_17

    .line 470
    .restart local v6       #enabled:Z
    :cond_2d
    iget-wide v9, p0, Lcom/google/android/location/NetworkLocator;->period:J

    add-long v7, v1, v9

    goto :goto_1d
.end method

.method public wifiScanResults(Lcom/google/android/location/data/WifiScan;)V
    .registers 8
    .parameter "wifiScan"

    .prologue
    .line 507
    if-nez p1, :cond_3

    .line 511
    :goto_2
    return-void

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    goto :goto_2
.end method

.method public wifiStateChanged(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/location/NetworkLocator;->setCellWifiEnabled(JZZ)V

    .line 515
    return-void
.end method
