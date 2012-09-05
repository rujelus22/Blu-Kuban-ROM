.class public Lcom/sec/android/app/music/MusicPlayerController;
.super Ljava/lang/Object;
.source "MusicPlayerController.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static sListType:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFirstIndex:I

.field private mIsShuffle:Z

.field private mKeyWord:Ljava/lang/String;

.field private mLaunchMode:I

.field private final mNonShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayList:[J

.field private mPlayListLength:I

.field private mPlayPos:I

.field private mRepeatMode:I

.field private final mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShufflePlayPos:I

.field private mTabFrom:I

.field private final myFiles_bucketID:Ljava/lang/String;

.field private final myFiles_filePath:Ljava/lang/String;

.field private final myFiles_iPos:I

.field private final myFiles_sortOrder:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    .line 432
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/MusicPlayerController;->sListType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 38
    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mFirstIndex:I

    .line 49
    iput v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mLaunchMode:I

    .line 63
    iput v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mRepeatMode:I

    .line 73
    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->myFiles_sortOrder:I

    .line 75
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    .line 77
    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->myFiles_iPos:I

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->myFiles_bucketID:Ljava/lang/String;

    .line 136
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mNonShuffleList:Ljava/util/ArrayList;

    .line 82
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private createShuffleIndex(IZ)V
    .registers 12
    .parameter "position"
    .parameter "rearrange"

    .prologue
    const/4 v8, 0x0

    .line 171
    sget-object v5, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createShuffleIndex position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rearrange="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v5, :cond_2b

    iget v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-gtz v5, :cond_2c

    .line 214
    :cond_2b
    :goto_2b
    return-void

    .line 176
    :cond_2c
    const/4 v3, -0x1

    .line 177
    .local v3, remainCount:I
    const/4 v2, -0x1

    .line 179
    .local v2, randomIndex:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v4, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    iget v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-ge v0, v5, :cond_42

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 183
    :cond_42
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mNonShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 184
    iput v8, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    .line 185
    iput p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 186
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-ltz v5, :cond_69

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_92

    .line 194
    :cond_69
    sget-object v5, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to createShuffleIndex - tempList.size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mPlayPos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 198
    :cond_92
    iget v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 201
    .local v1, rand:Ljava/util/Random;
    const/4 v0, 0x1

    :goto_a1
    iget v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-ge v0, v5, :cond_2b

    .line 202
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_bb

    .line 203
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    :goto_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 206
    :cond_bb
    iget v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    sub-int v3, v5, v0

    .line 207
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 208
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b8
.end method

.method private ensurePlayListCapacity(I)V
    .registers 7
    .parameter "size"

    .prologue
    .line 640
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_25

    .line 644
    :cond_9
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 645
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    array-length v1, v3

    .line 646
    .local v1, len:I
    :goto_14
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v1, :cond_23

    .line 647
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 645
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_20
    iget v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    goto :goto_14

    .line 649
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_23
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    .line 653
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_25
    return-void
.end method

.method private makeNextPosition()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v0, :cond_36

    .line 285
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_30

    .line 286
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    .line 291
    :goto_17
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_33

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 303
    :goto_2f
    return-void

    .line 288
    :cond_30
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    goto :goto_17

    .line 294
    :cond_33
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_2f

    .line 297
    :cond_36
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    iget v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_45

    .line 298
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_2f

    .line 300
    :cond_45
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_2f
.end method

.method private makePrevPosition()V
    .registers 3

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v0, :cond_36

    .line 367
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    if-lez v0, :cond_27

    .line 368
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    .line 372
    :goto_e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_32

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 384
    :goto_26
    return-void

    .line 370
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    goto :goto_e

    .line 375
    :cond_32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_26

    .line 378
    :cond_36
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-lez v0, :cond_41

    .line 379
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_26

    .line 381
    :cond_41
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_26
.end method

.method private removeTracksPosition(I)V
    .registers 9
    .parameter "position"

    .prologue
    .line 529
    monitor-enter p0

    .line 530
    :try_start_1
    sget-object v3, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTracksInternal position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-gez p1, :cond_1c

    .line 532
    const/4 p1, 0x0

    .line 534
    :cond_1c
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-lt p1, v3, :cond_24

    .line 535
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/lit8 p1, v3, -0x1

    .line 538
    :cond_24
    const/4 v0, 0x0

    .line 539
    .local v0, gotonext:Z
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-ne v3, p1, :cond_44

    .line 542
    iput p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 543
    const/4 v0, 0x1

    .line 548
    :cond_2c
    :goto_2c
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    sub-int/2addr v3, p1

    add-int/lit8 v2, v3, -0x1

    .line 549
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_32
    if-ge v1, v2, :cond_52

    .line 550
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    add-int/lit8 v6, p1, 0x1

    add-int/2addr v6, v1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 544
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_44
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-le v3, p1, :cond_2c

    .line 545
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_2c

    .line 574
    .end local v0           #gotonext:Z
    :catchall_4f
    move-exception v3

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_4f

    throw v3

    .line 552
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_52
    :try_start_52
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    .line 554
    if-eqz v0, :cond_68

    .line 555
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-nez v3, :cond_6a

    .line 556
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 557
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v3, :cond_68

    .line 560
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    .line 574
    :cond_68
    :goto_68
    monitor-exit p0

    .line 575
    return-void

    .line 563
    :cond_6a
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    iget v4, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-lt v3, v4, :cond_68

    .line 564
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 565
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v3, :cond_68

    .line 569
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I
    :try_end_7a
    .catchall {:try_start_52 .. :try_end_7a} :catchall_4f

    goto :goto_68
.end method


# virtual methods
.method public addToPlayList([JI)V
    .registers 11
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 612
    array-length v0, p1

    .line 613
    .local v0, addlen:I
    if-gez p2, :cond_7

    .line 614
    iput v7, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    .line 615
    const/4 p2, 0x0

    .line 617
    :cond_7
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/music/MusicPlayerController;->ensurePlayListCapacity(I)V

    .line 618
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-le p2, v3, :cond_13

    .line 619
    iget p2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    .line 623
    :cond_13
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    sub-int v2, v3, p2

    .line 624
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_18
    if-lez v1, :cond_2a

    .line 625
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 624
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 629
    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_38

    .line 630
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 632
    :cond_38
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    .line 633
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v3, :cond_46

    .line 635
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    invoke-direct {p0, v3, v7}, Lcom/sec/android/app/music/MusicPlayerController;->createShuffleIndex(IZ)V

    .line 637
    :cond_46
    return-void
.end method

.method public enqueue([JI)V
    .registers 4
    .parameter "list"
    .parameter "action"

    .prologue
    .line 602
    monitor-enter p0

    .line 603
    const v0, 0x7fffffff

    :try_start_4
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/music/MusicPlayerController;->addToPlayList([JI)V

    .line 604
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-gez v0, :cond_e

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 607
    :cond_e
    monitor-exit p0

    .line 608
    return-void

    .line 607
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getCurAudioId()J
    .registers 6

    .prologue
    .line 451
    const-wide/16 v0, -0x1

    .line 452
    .local v0, audioId:J
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v2, :cond_14

    iget v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-lez v2, :cond_14

    iget v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-ltz v2, :cond_14

    .line 453
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    aget-wide v0, v2, v3

    .line 455
    :cond_14
    sget-object v2, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurAudioId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-wide v0
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaUri()Landroid/net/Uri;
    .registers 7

    .prologue
    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurAudioId()J

    move-result-wide v0

    .line 402
    .local v0, audioId:J
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v3, :cond_15

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-lez v3, :cond_15

    .line 403
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 406
    :cond_15
    sget-object v3, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentMediaUri() Uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-object v2
.end method

.method public getCurrentPosition()I
    .registers 4

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v0, :cond_21

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_21

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 232
    :cond_21
    sget-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    return v0
.end method

.method public getCurrent_ID()J
    .registers 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    return v0
.end method

.method public getItemCountFromDB()I
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 247
    sget-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemCountFromDB() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mTabFrom:I

    if-ne v0, v4, :cond_6a

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mKeyWord:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 255
    .local v8, plid:I
    if-lez v8, :cond_6a

    int-to-long v2, v8

    sget-wide v4, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6a

    .line 256
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v8

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 258
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 259
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 261
    .local v7, count:I
    :try_start_38
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 264
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 265
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_63

    move-result v7

    .line 271
    :cond_5a
    if-eqz v6, :cond_5f

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_5f
    if-nez v7, :cond_6a

    move v0, v9

    .line 280
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v8           #plid:I
    :goto_62
    return v0

    .line 271
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #count:I
    .restart local v8       #plid:I
    :catchall_63
    move-exception v0

    if-eqz v6, :cond_69

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_69
    throw v0

    .line 280
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v8           #plid:I
    :cond_6a
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    goto :goto_62
.end method

.method public getKeyWord()Ljava/lang/String;
    .registers 4

    .prologue
    .line 127
    sget-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyWord() mKeyWord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchMode()I
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mLaunchMode:I

    return v0
.end method

.method public getNext(Z)Landroid/net/Uri;
    .registers 8
    .parameter "ignoreRepeatOne"

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 308
    .local v2, uri:Landroid/net/Uri;
    if-eqz p1, :cond_34

    .line 309
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayerController;->makeNextPosition()V

    .line 355
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurAudioId()J

    move-result-wide v0

    .line 356
    .local v0, audioId:J
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v3, :cond_1a

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-lez v3, :cond_1a

    .line 357
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 360
    :cond_1a
    sget-object v3, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNext() Uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 362
    .end local v0           #audioId:J
    :goto_33
    return-object v3

    .line 342
    :cond_34
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mRepeatMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-nez v3, :cond_45

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    iget v4, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_55

    :cond_45
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v3, :cond_5e

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    iget-object v4, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5e

    .line 345
    :cond_55
    sget-object v3, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    const-string v4, "getNext() : REPEAT_OFF, last song was played, so stop."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v3, 0x0

    goto :goto_33

    .line 347
    :cond_5e
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mRepeatMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6b

    .line 349
    sget-object v3, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    const-string v4, "getNext() : REPEAT_ONE, current song is played again."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 351
    :cond_6b
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayerController;->makeNextPosition()V

    goto :goto_6
.end method

.method public getPrev()Landroid/net/Uri;
    .registers 7

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayerController;->makePrevPosition()V

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurAudioId()J

    move-result-wide v0

    .line 390
    .local v0, audioId:J
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v3, :cond_18

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-lez v3, :cond_18

    .line 391
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 394
    :cond_18
    sget-object v3, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPrev() Uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v2
.end method

.method public getQueue()[J
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    return-object v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 443
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mRepeatMode:I

    return v0
.end method

.method public getShuffle()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    return v0
.end method

.method public getTabFrom()I
    .registers 4

    .prologue
    .line 120
    sget-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTabFrom() mTabFrom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mTabFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mTabFrom:I

    return v0
.end method

.method public removeTrack(J)I
    .registers 7
    .parameter "id"

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, numremoved:I
    monitor-enter p0

    .line 462
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    :try_start_3
    iget v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-ge v0, v2, :cond_19

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_16

    .line 464
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/music/MusicPlayerController;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 465
    add-int/lit8 v0, v0, -0x1

    .line 462
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 468
    :cond_19
    monitor-exit p0

    .line 469
    return v1

    .line 468
    :catchall_1b
    move-exception v2

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public removeTracksInternal(II)I
    .registers 10
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v3, 0x0

    .line 473
    monitor-enter p0

    .line 474
    :try_start_2
    sget-object v4, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTracksInternal first : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " last : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-ge p2, p1, :cond_28

    .line 476
    monitor-exit p0

    .line 524
    :goto_27
    return v3

    .line 477
    :cond_28
    if-gez p1, :cond_2b

    .line 478
    const/4 p1, 0x0

    .line 479
    :cond_2b
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-lt p2, v3, :cond_33

    .line 480
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    add-int/lit8 p2, v3, -0x1

    .line 482
    :cond_33
    const/4 v0, 0x0

    .line 483
    .local v0, gotonext:Z
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-gt p1, v3, :cond_57

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-gt v3, p2, :cond_57

    .line 486
    iput p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 487
    const/4 v0, 0x1

    .line 492
    :cond_3f
    :goto_3f
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    sub-int/2addr v3, p2

    add-int/lit8 v2, v3, -0x1

    .line 493
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_45
    if-ge v1, v2, :cond_68

    .line 494
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    add-int/lit8 v6, p2, 0x1

    add-int/2addr v6, v1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 488
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_57
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    if-le v3, p2, :cond_3f

    .line 489
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    goto :goto_3f

    .line 525
    .end local v0           #gotonext:Z
    :catchall_65
    move-exception v3

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_2 .. :try_end_67} :catchall_65

    throw v3

    .line 496
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_68
    :try_start_68
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    .line 498
    if-eqz v0, :cond_84

    .line 499
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-nez v3, :cond_94

    .line 500
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 501
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mFirstIndex:I

    .line 503
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v3, :cond_84

    .line 506
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I

    .line 520
    :cond_84
    :goto_84
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v3, :cond_8e

    .line 522
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/music/MusicPlayerController;->createShuffleIndex(IZ)V

    .line 524
    :cond_8e
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    monitor-exit p0

    goto :goto_27

    .line 509
    :cond_94
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    iget v4, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-lt v3, v4, :cond_84

    .line 510
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 511
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v3, :cond_84

    .line 515
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mShufflePlayPos:I
    :try_end_a4
    .catchall {:try_start_68 .. :try_end_a4} :catchall_65

    goto :goto_84
.end method

.method public removeTracksInternal([I)I
    .registers 6
    .parameter "list"

    .prologue
    .line 578
    sget-object v2, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    const-string v3, "removeTracksInternal list.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, 0x0

    .line 580
    .local v1, numberRemoved:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    array-length v2, p1

    if-ge v0, v2, :cond_17

    .line 581
    aget v2, p1, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/MusicPlayerController;->removeTracksPosition(I)V

    .line 584
    add-int/lit8 v1, v1, 0x1

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 586
    :cond_17
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v2, :cond_21

    .line 588
    iget v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/music/MusicPlayerController;->createShuffleIndex(IZ)V

    .line 590
    :cond_21
    array-length v2, p1

    return v2
.end method

.method public setCurrentMedia(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 413
    return-void
.end method

.method public setList([JI)V
    .registers 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    .line 88
    array-length v1, p1

    iput v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    .line 89
    if-gez p2, :cond_18

    .line 92
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 93
    .local v0, rand:Ljava/util/Random;
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    .line 96
    .end local v0           #rand:Ljava/util/Random;
    :cond_18
    iput p2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    .line 97
    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v1, :cond_22

    .line 98
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/music/MusicPlayerController;->createShuffleIndex(IZ)V

    .line 106
    :cond_22
    sget-object v1, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " open list length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public setListFrom(ILjava/lang/String;)V
    .registers 6
    .parameter "tabFrom"
    .parameter "keyWord"

    .prologue
    .line 111
    iput p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mTabFrom:I

    .line 112
    iput-object p2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mKeyWord:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListFrom() mTabFrom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mTabFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2
    .parameter "repeatMode"

    .prologue
    .line 447
    iput p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mRepeatMode:I

    .line 448
    return-void
.end method

.method public setShuffle(Z)V
    .registers 5
    .parameter "shuffleMode"

    .prologue
    .line 145
    sget-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShuffle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-ne v0, p1, :cond_1d

    .line 163
    :cond_1c
    :goto_1c
    return-void

    .line 150
    :cond_1d
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    .line 151
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    if-eqz v0, :cond_1c

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayList:[J

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayListLength:I

    if-gtz v0, :cond_4c

    .line 153
    :cond_2b
    sget-object v0, Lcom/sec/android/app/music/MusicPlayerController;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsShuffle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayerController;->mIsShuffle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setShuffle(): mPlayListLength <= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 157
    :cond_4c
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayerController;->mPlayPos:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/MusicPlayerController;->createShuffleIndex(IZ)V

    goto :goto_1c
.end method
