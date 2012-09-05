.class public Lcom/cooliris/media/DiskCacheSEC;
.super Lcom/cooliris/media/DiskCache;
.source "DiskCacheSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/DiskCacheSEC$RecordSEC;,
        Lcom/cooliris/media/DiskCacheSEC$DiskList;,
        Lcom/cooliris/media/DiskCacheSEC$FreeList;,
        Lcom/cooliris/media/DiskCacheSEC$ChunkFile;,
        Lcom/cooliris/media/DiskCacheSEC$Chunk;
    }
.end annotation


# static fields
.field private static final CACHE_DELETE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field static sExternalDiskId:I

.field static sExternalSD:Ljava/lang/String;

.field static sExternalSDPath:Ljava/lang/String;

.field static sInternalDiskId:I

.field static sInternalSD:Ljava/io/File;

.field static sInternalSDPath:Ljava/lang/String;


# instance fields
.field private mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

.field private mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

.field public sLastImagePathId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/cooliris/media/DiskCacheSEC;->CACHE_DELETE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 395
    sput v1, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    .line 397
    sput v1, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    .line 399
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/DiskCacheSEC;->sInternalSD:Ljava/io/File;

    .line 401
    invoke-static {}, Lcom/cooliris/media/Gallery;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/DiskCacheSEC;->sExternalSD:Ljava/lang/String;

    .line 403
    sget-object v0, Lcom/cooliris/media/DiskCacheSEC;->sInternalSD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/DiskCacheSEC;->sInternalSDPath:Ljava/lang/String;

    .line 405
    sget-object v0, Lcom/cooliris/media/DiskCacheSEC;->sExternalSD:Ljava/lang/String;

    sput-object v0, Lcom/cooliris/media/DiskCacheSEC;->sExternalSDPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "cacheDirectoryName"

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/cooliris/media/DiskCache;-><init>(Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DiskCacheSEC;->sLastImagePathId:I

    .line 435
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/DiskCacheSEC;)Lcom/cooliris/media/DiskCacheSEC$FreeList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    return-object v0
.end method

.method public static final endCache()V
    .registers 3

    .prologue
    .line 1102
    sget-object v1, Lcom/cooliris/media/DiskCacheSEC;->CACHE_DELETE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 1103
    .local v0, existingThread:Ljava/lang/Thread;
    if-eqz v0, :cond_14

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1105
    const-string v1, "DiskCacheSEC"

    const-string v2, "CACHE_DELETE_THREAD End!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_14
    return-void
.end method

.method private getDiskId(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 528
    invoke-static {}, Lcom/cooliris/media/DiskCacheSEC;->initDiskId()V

    .line 529
    sget-object v0, Lcom/cooliris/media/DiskCacheSEC;->sExternalSDPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 530
    sget v0, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    .line 532
    :goto_d
    return v0

    :cond_e
    sget v0, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    goto :goto_d
.end method

.method public static initDiskId()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-static {}, Lcom/cooliris/media/Gallery;->getExternalSDStorageState()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, stateExt:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, stateInt:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 542
    sget-object v2, Lcom/cooliris/media/DiskCacheSEC;->sExternalSDPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    .line 546
    :goto_19
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 547
    sget-object v2, Lcom/cooliris/media/DiskCacheSEC;->sInternalSDPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    .line 551
    :goto_29
    return-void

    .line 544
    :cond_2a
    sput v3, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    goto :goto_19

    .line 549
    :cond_2d
    sput v3, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    goto :goto_29
.end method


# virtual methods
.method public deleteHiresSEC(Ljava/util/HashSet;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 486
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/cooliris/media/DiskCacheSEC$2;

    invoke-direct {v2, p0, p1}, Lcom/cooliris/media/DiskCacheSEC$2;-><init>(Lcom/cooliris/media/DiskCacheSEC;Ljava/util/HashSet;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 508
    .local v0, cacheDeleteThread:Ljava/lang/Thread;
    const-string v2, "cacheDeleteThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 511
    sget-object v2, Lcom/cooliris/media/DiskCacheSEC;->CACHE_DELETE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 512
    .local v1, existingThread:Ljava/lang/Thread;
    if-eqz v1, :cond_20

    .line 513
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 515
    :cond_20
    monitor-exit p0

    .line 516
    return-void

    .line 515
    .end local v0           #cacheDeleteThread:Ljava/lang/Thread;
    .end local v1           #existingThread:Ljava/lang/Thread;
    :catchall_22
    move-exception v2

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public deleteSEC(J)V
    .registers 9
    .parameter "key"

    .prologue
    .line 446
    monitor-enter p0

    .line 449
    :try_start_1
    iget-object v2, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/DiskCache$Record;

    .line 450
    .local v1, record:Lcom/cooliris/media/DiskCache$Record;
    if-eqz v1, :cond_16

    .line 451
    iget-object v2, p0, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    iget v3, v1, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    iget v4, v1, Lcom/cooliris/media/DiskCache$Record;->offset:I

    iget v5, v1, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->free(III)V

    .line 454
    :cond_16
    iget-object v2, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/cooliris/media/LongSparseArray;->remove(J)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    .line 458
    .end local v1           #record:Lcom/cooliris/media/DiskCache$Record;
    :goto_1b
    :try_start_1b
    monitor-exit p0

    .line 459
    return-void

    .line 455
    :catch_1d
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DiskCacheSEC"

    const-string v3, "Cache delete key error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 458
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_26
    move-exception v2

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v2
.end method

.method public deleteSEC(Ljava/util/HashSet;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 464
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cooliris/media/DiskCacheSEC$1;

    invoke-direct {v1, p0, p1}, Lcom/cooliris/media/DiskCacheSEC$1;-><init>(Lcom/cooliris/media/DiskCacheSEC;Ljava/util/HashSet;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 480
    monitor-exit p0

    .line 481
    return-void

    .line 480
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected loadIndex()V
    .registers 33

    .prologue
    .line 761
    const-string v29, "DiskCacheSEC"

    const-string v30, "[SE Lab.] index file will be loaded.."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCacheSEC;->getIndexFilePath()Ljava/lang/String;

    move-result-object v20

    .line 764
    .local v20, indexFilePath:Ljava/lang/String;
    const/16 v17, 0x0

    .line 765
    .local v17, fileInput:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 766
    .local v10, bufferedInput:Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 770
    .local v13, dataInput:Ljava/io/DataInputStream;
    :try_start_f
    const-string v29, "DiskCacheSEC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "loadIndex "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_38b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_34} :catch_3e0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_34} :catch_33a

    .line 773
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .local v18, fileInput:Ljava/io/FileInputStream;
    :try_start_34
    new-instance v11, Ljava/io/BufferedInputStream;

    const/16 v29, 0x400

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3bf
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3f} :catch_3e3
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_3ce

    .line 774
    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .local v11, bufferedInput:Ljava/io/BufferedInputStream;
    :try_start_3f
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c3
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_44} :catch_3e8
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_3d3

    .line 777
    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .local v14, dataInput:Ljava/io/DataInputStream;
    :try_start_44
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    .line 778
    .local v23, magic:I
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    .line 779
    .local v28, version:I
    const/16 v27, 0x1

    .line 780
    .local v27, valid:Z
    const v29, 0xcafe

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_90

    .line 781
    const-string v29, "DiskCacheSEC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Index file appears to be corrupt ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " != "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const v31, 0xcafe

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "), "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v27, 0x0

    .line 786
    :cond_90
    if-eqz v27, :cond_be

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_be

    .line 788
    const-string v29, "DiskCacheSEC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Index file version "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " not supported"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v27, 0x0

    .line 791
    :cond_be
    if-eqz v27, :cond_ca

    .line 792
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readShort()S

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    .line 796
    :cond_ca
    if-eqz v27, :cond_2c5

    .line 798
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    .line 799
    .local v26, numEntries:I
    new-instance v29, Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/cooliris/media/LongSparseArray;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 801
    new-instance v29, Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;-><init>(Lcom/cooliris/media/DiskCacheSEC;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    .line 802
    new-instance v29, Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$DiskList;-><init>(Lcom/cooliris/media/DiskCacheSEC;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    .line 804
    monitor-enter p0
    :try_end_fe
    .catchall {:try_start_44 .. :try_end_fe} :catchall_3c8
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_fe} :catch_302
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_fe} :catch_3d9

    .line 805
    const/16 v19, 0x0

    .local v19, i:I
    :goto_100
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1ca

    .line 806
    :try_start_106
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v21

    .line 807
    .local v21, key:J
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 808
    .local v4, chunk:I
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 809
    .local v15, diskId:I
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 810
    .local v5, offset:I
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 811
    .local v6, size:I
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 812
    .local v7, sizeOnDisk:I
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 813
    .local v8, timestamp:J
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 814
    .local v12, checksumRecord:I
    new-instance v3, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;

    invoke-direct/range {v3 .. v9}, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;-><init>(IIIIJ)V

    .line 815
    .local v3, record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/cooliris/media/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-gt v4, v0, :cond_150

    if-ltz v4, :cond_150

    if-ltz v5, :cond_150

    if-ltz v6, :cond_150

    if-ltz v7, :cond_150

    const-wide/16 v29, 0x0

    cmp-long v29, v8, v29

    if-gez v29, :cond_1f0

    .line 820
    :cond_150
    const-string v29, "DiskCacheSEC"

    const-string v30, "Index file data error!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v29, "DiskCacheSEC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "key : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", chunk : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", diskId : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", offset : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", size : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", sizeOnDisk : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", timestamp : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    long-to-int v0, v8

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", checksumRecord : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/16 v27, 0x0

    .line 859
    .end local v3           #record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    .end local v4           #chunk:I
    .end local v5           #offset:I
    .end local v6           #size:I
    .end local v7           #sizeOnDisk:I
    .end local v8           #timestamp:J
    .end local v12           #checksumRecord:I
    .end local v15           #diskId:I
    .end local v21           #key:J
    :cond_1ca
    :goto_1ca
    const/16 v19, 0x0

    :goto_1cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->size()I

    move-result v29

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_295

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->getChunkFile(I)Lcom/cooliris/media/DiskCacheSEC$ChunkFile;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/cooliris/media/DiskCacheSEC$ChunkFile;->adjust()V

    .line 859
    add-int/lit8 v19, v19, 0x1

    goto :goto_1cc

    .line 829
    .restart local v3       #record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    .restart local v4       #chunk:I
    .restart local v5       #offset:I
    .restart local v6       #size:I
    .restart local v7       #sizeOnDisk:I
    .restart local v8       #timestamp:J
    .restart local v12       #checksumRecord:I
    .restart local v15       #diskId:I
    .restart local v21       #key:J
    :cond_1f0
    invoke-virtual {v3}, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->checksum()I

    move-result v29

    move/from16 v0, v29

    if-eq v12, v0, :cond_274

    .line 830
    const-string v29, "DiskCacheSEC"

    const-string v30, "Index file error!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v29, "DiskCacheSEC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "key : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", chunk : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", diskId : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", offset : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", size : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", sizeOnDisk : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", timestamp : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    long-to-int v0, v8

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", checksumRecord : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v27, 0x0

    .line 836
    goto/16 :goto_1ca

    .line 839
    :cond_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/cooliris/media/LongSparseArray;->append(JLjava/lang/Object;)V
    :try_end_281
    .catchall {:try_start_106 .. :try_end_281} :catchall_2ff

    .line 843
    :try_start_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5, v7}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->setAlloc(III)V
    :try_end_28c
    .catchall {:try_start_281 .. :try_end_28c} :catchall_2ff
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_28c} :catch_290

    .line 805
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_100

    .line 844
    :catch_290
    move-exception v16

    .line 845
    .local v16, e:Ljava/lang/Exception;
    const/16 v27, 0x0

    .line 846
    goto/16 :goto_1ca

    .line 866
    .end local v3           #record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    .end local v4           #chunk:I
    .end local v5           #offset:I
    .end local v6           #size:I
    .end local v7           #sizeOnDisk:I
    .end local v8           #timestamp:J
    .end local v12           #checksumRecord:I
    .end local v15           #diskId:I
    .end local v16           #e:Ljava/lang/Exception;
    .end local v21           #key:J
    :cond_295
    :try_start_295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->rebuild()V
    :try_end_29e
    .catchall {:try_start_295 .. :try_end_29e} :catchall_2ff

    .line 869
    :goto_29e
    :try_start_29e
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 870
    .restart local v15       #diskId:I
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v24

    .line 871
    .local v24, mountedTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->add(IJ)V
    :try_end_2b3
    .catchall {:try_start_29e .. :try_end_2b3} :catchall_2ff
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2b3} :catch_2b4

    goto :goto_29e

    .line 873
    .end local v15           #diskId:I
    .end local v24           #mountedTime:J
    :catch_2b4
    move-exception v16

    .line 874
    .local v16, e:Ljava/io/IOException;
    :try_start_2b5
    const-string v29, "DiskCacheSEC"

    const-string v30, "[SE Lab.] disk infomation read done ..."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    monitor-exit p0
    :try_end_2bd
    .catchall {:try_start_2b5 .. :try_end_2bd} :catchall_2ff

    .line 878
    :try_start_2bd
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 879
    if-nez v27, :cond_2c5

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCacheSEC;->deleteAll()V
    :try_end_2c5
    .catchall {:try_start_2bd .. :try_end_2c5} :catchall_3c8
    .catch Ljava/io/FileNotFoundException; {:try_start_2bd .. :try_end_2c5} :catch_302
    .catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2c5} :catch_3d9

    .line 892
    .end local v16           #e:Ljava/io/IOException;
    .end local v19           #i:I
    .end local v26           #numEntries:I
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v29, v0

    if-nez v29, :cond_2ee

    .line 893
    const-string v29, "DiskCacheSEC"

    const-string v30, " new index map"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v29, Lcom/cooliris/media/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 897
    new-instance v29, Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;-><init>(Lcom/cooliris/media/DiskCacheSEC;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    .line 900
    :cond_2ee
    invoke-static/range {v18 .. v18}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 901
    invoke-static {v11}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 902
    invoke-static {v14}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v13, v14

    .end local v14           #dataInput:Ljava/io/DataInputStream;
    .restart local v13       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .line 906
    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .end local v23           #magic:I
    .end local v27           #valid:Z
    .end local v28           #version:I
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    :goto_2fb
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCacheSEC;->resetChunkFiles()V

    .line 907
    return-void

    .line 876
    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v14       #dataInput:Ljava/io/DataInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    .restart local v19       #i:I
    .restart local v23       #magic:I
    .restart local v26       #numEntries:I
    .restart local v27       #valid:Z
    .restart local v28       #version:I
    :catchall_2ff
    move-exception v29

    :try_start_300
    monitor-exit p0
    :try_end_301
    .catchall {:try_start_300 .. :try_end_301} :catchall_2ff

    :try_start_301
    throw v29
    :try_end_302
    .catchall {:try_start_301 .. :try_end_302} :catchall_3c8
    .catch Ljava/io/FileNotFoundException; {:try_start_301 .. :try_end_302} :catch_302
    .catch Ljava/io/IOException; {:try_start_301 .. :try_end_302} :catch_3d9

    .line 884
    .end local v19           #i:I
    .end local v23           #magic:I
    .end local v26           #numEntries:I
    .end local v27           #valid:Z
    .end local v28           #version:I
    :catch_302
    move-exception v29

    move-object v13, v14

    .end local v14           #dataInput:Ljava/io/DataInputStream;
    .restart local v13       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .line 892
    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    :goto_307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v29, v0

    if-nez v29, :cond_330

    .line 893
    const-string v29, "DiskCacheSEC"

    const-string v30, " new index map"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v29, Lcom/cooliris/media/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 897
    new-instance v29, Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;-><init>(Lcom/cooliris/media/DiskCacheSEC;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    .line 900
    :cond_330
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 901
    invoke-static {v10}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 902
    invoke-static {v13}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2fb

    .line 888
    :catch_33a
    move-exception v16

    .line 889
    .restart local v16       #e:Ljava/io/IOException;
    :goto_33b
    :try_start_33b
    const-string v29, "DiskCacheSEC"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unable to read the index file "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_357
    .catchall {:try_start_33b .. :try_end_357} :catchall_38b

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v29, v0

    if-nez v29, :cond_380

    .line 893
    const-string v29, "DiskCacheSEC"

    const-string v30, " new index map"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v29, Lcom/cooliris/media/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 897
    new-instance v29, Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;-><init>(Lcom/cooliris/media/DiskCacheSEC;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    .line 900
    :cond_380
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 901
    invoke-static {v10}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 902
    invoke-static {v13}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2fb

    .line 892
    .end local v16           #e:Ljava/io/IOException;
    :catchall_38b
    move-exception v29

    :goto_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v30, v0

    if-nez v30, :cond_3b5

    .line 893
    const-string v30, "DiskCacheSEC"

    const-string v31, " new index map"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v30, Lcom/cooliris/media/LongSparseArray;

    invoke-direct/range {v30 .. v30}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 897
    new-instance v30, Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCacheSEC$FreeList;-><init>(Lcom/cooliris/media/DiskCacheSEC;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    .line 900
    :cond_3b5
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 901
    invoke-static {v10}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 902
    invoke-static {v13}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v29

    .line 892
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catchall_3bf
    move-exception v29

    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto :goto_38c

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catchall_3c3
    move-exception v29

    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto :goto_38c

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v14       #dataInput:Ljava/io/DataInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catchall_3c8
    move-exception v29

    move-object v13, v14

    .end local v14           #dataInput:Ljava/io/DataInputStream;
    .restart local v13       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto :goto_38c

    .line 888
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catch_3ce
    move-exception v16

    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_33b

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catch_3d3
    move-exception v16

    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_33b

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v14       #dataInput:Ljava/io/DataInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catch_3d9
    move-exception v16

    move-object v13, v14

    .end local v14           #dataInput:Ljava/io/DataInputStream;
    .restart local v13       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_33b

    .line 884
    :catch_3e0
    move-exception v29

    goto/16 :goto_307

    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catch_3e3
    move-exception v29

    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_307

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v17           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v18       #fileInput:Ljava/io/FileInputStream;
    :catch_3e8
    move-exception v29

    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18           #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_307
.end method

.method public put(J[BJ)V
    .registers 21
    .parameter "key"
    .parameter "data"
    .parameter "timestamp"

    .prologue
    .line 688
    const/4 v13, 0x0

    .line 689
    .local v13, record:Lcom/cooliris/media/DiskCache$Record;
    monitor-enter p0

    .line 691
    :try_start_2
    iget-object v2, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/cooliris/media/DiskCache$Record;

    move-object v13, v0

    .line 692
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_71

    .line 694
    const/4 v3, -0x1

    .line 695
    .local v3, targetChunk:I
    const/4 v4, -0x1

    .line 696
    .local v4, targetOffset:I
    const/4 v6, -0x1

    .line 698
    .local v6, targetSize:I
    if-eqz v13, :cond_21

    .line 699
    move-object/from16 v0, p3

    array-length v2, v0

    iget v5, v13, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    if-gt v2, v5, :cond_74

    .line 701
    iget v3, v13, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    .line 702
    iget v4, v13, Lcom/cooliris/media/DiskCache$Record;->offset:I

    .line 703
    iget v6, v13, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    .line 711
    :cond_21
    :goto_21
    const/4 v2, -0x1

    if-ne v3, v2, :cond_3f

    .line 712
    iget-object v2, p0, Lcom/cooliris/media/DiskCacheSEC;->mFreeList:Lcom/cooliris/media/DiskCacheSEC$FreeList;

    move-object/from16 v0, p3

    array-length v5, v0

    invoke-virtual {v2, v5}, Lcom/cooliris/media/DiskCacheSEC$FreeList;->alloc(I)Lcom/cooliris/media/DiskCacheSEC$Chunk;

    move-result-object v10

    .line 714
    .local v10, c:Lcom/cooliris/media/DiskCacheSEC$Chunk;
    invoke-virtual {v10}, Lcom/cooliris/media/DiskCacheSEC$Chunk;->getChunk()I

    move-result v3

    .line 715
    invoke-virtual {v10}, Lcom/cooliris/media/DiskCacheSEC$Chunk;->getOffset()I

    move-result v4

    .line 716
    invoke-virtual {v10}, Lcom/cooliris/media/DiskCacheSEC$Chunk;->getSize()I

    move-result v6

    .line 718
    iget v2, p0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    if-ge v2, v3, :cond_3f

    .line 719
    iput v3, p0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    .line 728
    .end local v10           #c:Lcom/cooliris/media/DiskCacheSEC$Chunk;
    :cond_3f
    invoke-virtual {p0, v3}, Lcom/cooliris/media/DiskCacheSEC;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v11

    .line 729
    .local v11, chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v11, :cond_84

    .line 732
    int-to-long v7, v4

    :try_start_46
    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 733
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 735
    monitor-enter p0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_7b

    .line 736
    :try_start_4f
    iget-object v14, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    new-instance v2, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;

    move-object/from16 v0, p3

    array-length v5, v0

    iget v9, p0, Lcom/cooliris/media/DiskCacheSEC;->sLastImagePathId:I

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;-><init>(IIIIJI)V

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1, v2}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 741
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_78

    .line 743
    :try_start_63
    iget v2, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    const/16 v5, 0x40

    if-ne v2, v5, :cond_70

    .line 749
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCacheSEC;->flush()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_70} :catch_7b

    .line 757
    :cond_70
    :goto_70
    return-void

    .line 692
    .end local v3           #targetChunk:I
    .end local v4           #targetOffset:I
    .end local v6           #targetSize:I
    .end local v11           #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2

    .line 707
    .restart local v3       #targetChunk:I
    .restart local v4       #targetOffset:I
    .restart local v6       #targetSize:I
    :cond_74
    invoke-virtual/range {p0 .. p2}, Lcom/cooliris/media/DiskCacheSEC;->deleteSEC(J)V

    goto :goto_21

    .line 741
    .restart local v11       #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_78
    move-exception v2

    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v2
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7b} :catch_7b

    .line 751
    :catch_7b
    move-exception v12

    .line 752
    .local v12, e:Ljava/io/IOException;
    const-string v2, "DiskCacheSEC"

    const-string v5, "Unable to write new entry to chunk file"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 755
    .end local v12           #e:Ljava/io/IOException;
    :cond_84
    const-string v2, "DiskCacheSEC"

    const-string v5, "getChunkFile() returned null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public removeGarbage([J)V
    .registers 36
    .parameter "dbThumbnailIds"

    .prologue
    .line 556
    invoke-static {}, Lcom/cooliris/media/DiskCacheSEC;->initDiskId()V

    .line 557
    const-string v3, "TEST"

    const-string v4, "***removeGarbage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v3}, Lcom/cooliris/media/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1d

    .line 559
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCacheSEC;->loadIndex()V

    .line 562
    :cond_1d
    const-string v3, "DiskCacheSEC"

    const-string v4, "[SE Lab.] garbages will be removed..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v3, "hires-image-cache"

    invoke-static {v3}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 565
    .local v11, URI_CACHE:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v21, hires:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 568
    .local v14, caches:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 570
    .local v17, deletedHires:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v14, :cond_9b

    .line 571
    new-instance v17, Ljava/util/HashSet;

    .end local v17           #deletedHires:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    array-length v3, v14

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 573
    .restart local v17       #deletedHires:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object v12, v14

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_47
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9b

    aget-object v13, v12, v23

    .line 575
    .local v13, cache:Ljava/lang/String;
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_77

    .line 576
    invoke-static {v13}, Lcom/quramsoft/xiv/XIVUtils;->checkCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 577
    const-string v3, "_"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v30, v3, v4

    .line 579
    .local v30, temp:Ljava/lang/String;
    :try_start_62
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6f} :catch_72

    .line 573
    .end local v30           #temp:Ljava/lang/String;
    :cond_6f
    :goto_6f
    add-int/lit8 v23, v23, 0x1

    goto :goto_47

    .line 580
    .restart local v30       #temp:Ljava/lang/String;
    :catch_72
    move-exception v19

    .line 581
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    .line 585
    .end local v19           #e:Ljava/lang/Exception;
    .end local v30           #temp:Ljava/lang/String;
    :cond_77
    const-string v3, "_1024.cache"

    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 586
    const-string v3, "_"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v30, v3, v4

    .line 588
    .restart local v30       #temp:Ljava/lang/String;
    :try_start_88
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_95} :catch_96

    goto :goto_6f

    .line 589
    :catch_96
    move-exception v19

    .line 590
    .restart local v19       #e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    .line 598
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v13           #cache:Ljava/lang/String;
    .end local v19           #e:Ljava/lang/Exception;
    .end local v23           #i$:I
    .end local v24           #len$:I
    .end local v30           #temp:Ljava/lang/String;
    :cond_9b
    if-nez p1, :cond_150

    const/16 v25, 0x0

    .line 599
    .local v25, nDB:I
    :goto_9f
    const/16 v27, 0x0

    .line 600
    .local v27, nIDX:I
    const/16 v28, 0x0

    .line 601
    .local v28, nMOV:I
    const/16 v26, 0x0

    .line 603
    .local v26, nDEL:I
    const/4 v15, 0x0

    .line 605
    .local v15, deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 606
    :try_start_a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v3}, Lcom/cooliris/media/LongSparseArray;->sizeOnly()I

    move-result v27

    .line 607
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V
    :try_end_b8
    .catchall {:try_start_a7 .. :try_end_b8} :catchall_268

    .line 610
    .end local v15           #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local v16, deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    if-nez v3, :cond_c9

    .line 611
    new-instance v3, Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cooliris/media/DiskCacheSEC$DiskList;-><init>(Lcom/cooliris/media/DiskCacheSEC;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    .line 613
    :cond_c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    invoke-virtual {v3}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->update()V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    invoke-virtual {v3}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->getExpireds()Ljava/util/HashSet;

    move-result-object v20

    .line 615
    .local v20, expiredSDcards:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v3, "DiskCacheSEC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SE Lab.] expired sd #: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sget v3, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 617
    sget v3, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_10a
    .catchall {:try_start_b8 .. :try_end_10a} :catchall_206

    .line 621
    const/16 v22, 0x0

    .local v22, i:I
    :goto_10c
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_174

    .line 622
    :try_start_112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;

    iget v0, v3, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->diskId:I

    move/from16 v18, v0

    .line 623
    .local v18, diskId:I
    sget v3, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    move/from16 v0, v18

    if-eq v0, v3, :cond_13a

    sget v3, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    move/from16 v0, v18

    if-eq v0, v3, :cond_13a

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 630
    :cond_13a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/cooliris/media/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_14d
    .catchall {:try_start_112 .. :try_end_14d} :catchall_206
    .catch Ljava/lang/ClassCastException; {:try_start_112 .. :try_end_14d} :catch_157

    .line 621
    :cond_14d
    add-int/lit8 v22, v22, 0x1

    goto :goto_10c

    .line 598
    .end local v16           #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v18           #diskId:I
    .end local v20           #expiredSDcards:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v22           #i:I
    .end local v25           #nDB:I
    .end local v26           #nDEL:I
    .end local v27           #nIDX:I
    .end local v28           #nMOV:I
    :cond_150
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    goto/16 :goto_9f

    .line 635
    .restart local v16       #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v20       #expiredSDcards:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v22       #i:I
    .restart local v25       #nDB:I
    .restart local v26       #nDEL:I
    .restart local v27       #nIDX:I
    .restart local v28       #nMOV:I
    :catch_157
    move-exception v19

    .line 636
    .local v19, e:Ljava/lang/ClassCastException;
    :try_start_158
    const-string v3, "DiskCacheSEC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassCastException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    monitor-exit p0
    :try_end_173
    .catchall {:try_start_158 .. :try_end_173} :catchall_206

    .line 683
    .end local v19           #e:Ljava/lang/ClassCastException;
    :goto_173
    return-void

    .line 645
    :cond_174
    const/16 v22, 0x0

    :goto_176
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_20b

    .line 646
    :try_start_17c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    aget-wide v4, p1, v22

    invoke-virtual {v3, v4, v5}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;

    .line 648
    .local v29, record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    if-eqz v29, :cond_1e2

    .line 651
    move-object/from16 v0, v29

    iget v3, v0, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->diskId:I

    sget v4, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    if-eq v3, v4, :cond_1ca

    move-object/from16 v0, v29

    iget v3, v0, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->diskId:I

    sget v4, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    if-eq v3, v4, :cond_1ca

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v31, v0

    aget-wide v32, p1, v22

    new-instance v3, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    move-object/from16 v0, v29

    iget v5, v0, Lcom/cooliris/media/DiskCache$Record;->offset:I

    move-object/from16 v0, v29

    iget v6, v0, Lcom/cooliris/media/DiskCache$Record;->size:I

    move-object/from16 v0, v29

    iget v7, v0, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    move-object/from16 v0, v29

    iget-wide v8, v0, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    sget v10, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I

    if-nez v10, :cond_1e5

    sget v10, Lcom/cooliris/media/DiskCacheSEC;->sInternalDiskId:I

    :goto_1be
    invoke-direct/range {v3 .. v10}, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;-><init>(IIIIJI)V

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 656
    add-int/lit8 v28, v28, 0x1

    .line 659
    :cond_1ca
    aget-wide v3, p1, v22

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 660
    if-eqz v17, :cond_1e2

    .line 661
    aget-wide v3, p1, v22

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 645
    :cond_1e2
    add-int/lit8 v22, v22, 0x1

    goto :goto_176

    .line 652
    :cond_1e5
    sget v10, Lcom/cooliris/media/DiskCacheSEC;->sExternalDiskId:I
    :try_end_1e7
    .catchall {:try_start_17c .. :try_end_1e7} :catchall_206
    .catch Ljava/lang/ClassCastException; {:try_start_17c .. :try_end_1e7} :catch_1e8

    goto :goto_1be

    .line 665
    .end local v29           #record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    :catch_1e8
    move-exception v19

    .line 666
    .restart local v19       #e:Ljava/lang/ClassCastException;
    :try_start_1e9
    const-string v3, "DiskCacheSEC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassCastException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    monitor-exit p0
    :try_end_204
    .catchall {:try_start_1e9 .. :try_end_204} :catchall_206

    goto/16 :goto_173

    .line 679
    .end local v19           #e:Ljava/lang/ClassCastException;
    .end local v20           #expiredSDcards:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v22           #i:I
    :catchall_206
    move-exception v3

    move-object/from16 v15, v16

    .end local v16           #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v15       #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_209
    :try_start_209
    monitor-exit p0
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_268

    throw v3

    .line 669
    .end local v15           #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v16       #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v20       #expiredSDcards:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v22       #i:I
    :cond_20b
    :try_start_20b
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v26

    .line 671
    if-lez v26, :cond_218

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cooliris/media/DiskCacheSEC;->deleteSEC(Ljava/util/HashSet;)V

    .line 675
    :cond_218
    if-eqz v17, :cond_227

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_227

    .line 676
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cooliris/media/DiskCacheSEC;->deleteHiresSEC(Ljava/util/HashSet;)V

    .line 679
    :cond_227
    monitor-exit p0
    :try_end_228
    .catchall {:try_start_20b .. :try_end_228} :catchall_206

    .line 681
    const-string v3, "DiskCacheSEC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SE Lab.] removeGarbage() :: DB#: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / IDX#: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / MOVE# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / DEL# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_173

    .line 679
    .end local v16           #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20           #expiredSDcards:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v22           #i:I
    .restart local v15       #deleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_268
    move-exception v3

    goto :goto_209
.end method

.method protected resetChunkFiles()V
    .registers 25

    .prologue
    .line 911
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 912
    .local v3, cDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_1a

    .line 984
    .end local v3           #cDir:Ljava/io/File;
    :cond_19
    :goto_19
    return-void

    .line 916
    .restart local v3       #cDir:Ljava/io/File;
    :cond_1a
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 918
    .local v9, files:[Ljava/lang/String;
    if-eqz v9, :cond_19

    array-length v0, v9

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 922
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 923
    .local v8, filenames:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 925
    .local v11, filesizes:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/String;
    array-length v15, v2

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_32
    if-ge v13, v15, :cond_6d

    aget-object v6, v2, v13

    .line 926
    .local v6, file:Ljava/lang/String;
    const-string v20, "chunk_"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6a

    .line 927
    const-string v20, "chunk_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 928
    .local v14, key:I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .end local v14           #key:I
    :cond_6a
    add-int/lit8 v13, v13, 0x1

    goto :goto_32

    .line 933
    .end local v6           #file:Ljava/lang/String;
    :cond_6d
    const-string v20, "DiskCacheSEC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Found "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " chunk files for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    monitor-enter p0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9a} :catch_1f2

    .line 937
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/LongSparseArray;->size()I

    move-result v17

    .line 938
    .local v17, numRecords:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a5
    move/from16 v0, v17

    if-ge v12, v0, :cond_10b

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cooliris/media/DiskCache$Record;

    .line 940
    .local v18, record:Lcom/cooliris/media/DiskCache$Record;
    if-eqz v18, :cond_108

    .line 941
    move-object/from16 v0, v18

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cooliris/media/DiskCacheSEC;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 942
    .local v4, chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v4, :cond_108

    .line 943
    move-object/from16 v0, v18

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->offset:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 944
    .local v16, maxSize:I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_108

    .line 945
    move-object/from16 v0, v18

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .end local v4           #chunkFile:Ljava/io/RandomAccessFile;
    .end local v16           #maxSize:I
    :cond_108
    add-int/lit8 v12, v12, 0x1

    goto :goto_a5

    .line 951
    .end local v18           #record:Lcom/cooliris/media/DiskCache$Record;
    :cond_10b
    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_113
    :goto_113
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1c3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 952
    .restart local v14       #key:I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 953
    .local v7, filename:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_13e
    .catchall {:try_start_9a .. :try_end_13e} :catchall_193

    move-result v10

    .line 956
    .local v10, filesize:I
    :try_start_13f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cooliris/media/DiskCacheSEC;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 958
    .restart local v4       #chunkFile:Ljava/io/RandomAccessFile;
    int-to-long v0, v10

    move-wide/from16 v20, v0

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-eqz v20, :cond_113

    .line 959
    if-nez v10, :cond_1b9

    .line 960
    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_173
    .catchall {:try_start_13f .. :try_end_173} :catchall_193
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_173} :catch_174

    goto :goto_113

    .line 965
    .end local v4           #chunkFile:Ljava/io/RandomAccessFile;
    :catch_174
    move-exception v5

    .line 966
    .local v5, e:Ljava/lang/Exception;
    :try_start_175
    const-string v20, "DiskCacheSEC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CacheChunkFile.setLength failed: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_192
    .catchall {:try_start_175 .. :try_end_192} :catchall_193

    goto :goto_113

    .line 971
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #filename:Ljava/lang/String;
    .end local v10           #filesize:I
    .end local v12           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #key:I
    .end local v17           #numRecords:I
    :catchall_193
    move-exception v20

    move-object/from16 v21, v20

    const/4 v12, 0x0

    .restart local v12       #i:I
    :try_start_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/LongSparseArray;->size()I
    :try_end_1a0
    .catchall {:try_start_197 .. :try_end_1a0} :catchall_1ef

    move-result v19

    .local v19, size:I
    :goto_1a1
    move/from16 v0, v19

    if-ge v12, v0, :cond_211

    .line 973
    :try_start_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/RandomAccessFile;

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b6
    .catchall {:try_start_1a5 .. :try_end_1b6} :catchall_1ef
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b6} :catch_204

    .line 971
    :goto_1b6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a1

    .line 962
    .end local v19           #size:I
    .restart local v4       #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v7       #filename:Ljava/lang/String;
    .restart local v10       #filesize:I
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v14       #key:I
    .restart local v17       #numRecords:I
    :cond_1b9
    int-to-long v0, v10

    move-wide/from16 v20, v0

    :try_start_1bc
    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1c1
    .catchall {:try_start_1bc .. :try_end_1c1} :catchall_193
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c1} :catch_174

    goto/16 :goto_113

    .line 971
    .end local v4           #chunkFile:Ljava/io/RandomAccessFile;
    .end local v7           #filename:Ljava/lang/String;
    .end local v10           #filesize:I
    .end local v14           #key:I
    :cond_1c3
    const/4 v12, 0x0

    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/LongSparseArray;->size()I
    :try_end_1cd
    .catchall {:try_start_1c4 .. :try_end_1cd} :catchall_1ef

    move-result v19

    .restart local v19       #size:I
    :goto_1ce
    move/from16 v0, v19

    if-ge v12, v0, :cond_1f8

    .line 973
    :try_start_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/RandomAccessFile;

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e3
    .catchall {:try_start_1d2 .. :try_end_1e3} :catchall_1ef
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1e3} :catch_1e6

    .line 971
    :goto_1e3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1ce

    .line 974
    :catch_1e6
    move-exception v5

    .line 975
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_1e7
    const-string v20, "DiskCacheSEC"

    const-string v21, "Unable to close chunk file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e3

    .line 980
    .end local v5           #e:Ljava/lang/Exception;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #numRecords:I
    .end local v19           #size:I
    :catchall_1ef
    move-exception v20

    monitor-exit p0
    :try_end_1f1
    .catchall {:try_start_1e7 .. :try_end_1f1} :catchall_1ef

    :try_start_1f1
    throw v20
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1f2} :catch_1f2

    .line 981
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #cDir:Ljava/io/File;
    .end local v8           #filenames:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #files:[Ljava/lang/String;
    .end local v11           #filesizes:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v12           #i:I
    .end local v15           #len$:I
    :catch_1f2
    move-exception v5

    .line 982
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    .line 978
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #cDir:Ljava/io/File;
    .restart local v8       #filenames:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v9       #files:[Ljava/lang/String;
    .restart local v11       #filesizes:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v12       #i:I
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v15       #len$:I
    .restart local v17       #numRecords:I
    .restart local v19       #size:I
    :cond_1f8
    :try_start_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 980
    monitor-exit p0

    goto/16 :goto_19

    .line 974
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #numRecords:I
    :catch_204
    move-exception v5

    .line 975
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v20, "DiskCacheSEC"

    const-string v22, "Unable to close chunk file"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b6

    .line 978
    .end local v5           #e:Ljava/lang/Exception;
    :cond_211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/LongSparseArray;->clear()V

    throw v21
    :try_end_21b
    .catchall {:try_start_1f8 .. :try_end_21b} :catchall_1ef
.end method

.method public setLastImagePath(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 519
    if-eqz p1, :cond_9

    .line 520
    invoke-direct {p0, p1}, Lcom/cooliris/media/DiskCacheSEC;->getDiskId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cooliris/media/DiskCacheSEC;->sLastImagePathId:I

    .line 524
    :goto_8
    return-void

    .line 522
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DiskCacheSEC;->sLastImagePathId:I

    goto :goto_8
.end method

.method public wrapUp()V
    .registers 1

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCacheSEC;->writeIndex()V

    .line 988
    return-void
.end method

.method protected writeIndex()V
    .registers 23

    .prologue
    .line 992
    const-string v18, "DiskCacheSEC"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "enter writeIndex "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/LongSparseArray;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCacheSEC;->getIndexFilePath()Ljava/lang/String;

    move-result-object v12

    .line 995
    .local v12, indexFilePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 996
    .local v7, fileOutput:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 997
    .local v2, bufferedOutput:Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 999
    .local v4, dataOutput:Ljava/io/DataOutputStream;
    const/16 v17, 0x0

    .line 1001
    .local v17, tempFile:Ljava/io/File;
    :try_start_2b
    sget-boolean v18, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    if-nez v18, :cond_ff

    .line 1002
    const-string v18, "DiskCacheIndex"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_25c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_27d

    move-result-object v17

    .line 1008
    :goto_37
    :try_start_37
    const-string v18, "DiskCacheSEC"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Create TempFile = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5a
    .catchall {:try_start_37 .. :try_end_5a} :catchall_25c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_5a} :catch_286
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5a} :catch_27d

    .line 1010
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .local v8, fileOutput:Ljava/io/FileOutputStream;
    :try_start_5a
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v18, 0x400

    move/from16 v0, v18

    invoke-direct {v3, v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_271
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_289
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_27f

    .line 1011
    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .local v3, bufferedOutput:Ljava/io/BufferedOutputStream;
    :try_start_63
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_274
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_68} :catch_28d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_282

    .line 1014
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .local v5, dataOutput:Ljava/io/DataOutputStream;
    :try_start_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/LongSparseArray;->size()I

    move-result v15

    .line 1015
    .local v15, numRecords:I
    const v18, 0xcafe

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1017
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1019
    invoke-virtual {v5, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1023
    const/4 v9, 0x0

    .local v9, i:I
    :goto_90
    if-ge v9, v15, :cond_114

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/cooliris/media/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    .line 1025
    .local v13, key:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;

    .line 1037
    .local v16, record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    if-eqz v16, :cond_fc

    .line 1038
    invoke-virtual {v5, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1039
    move-object/from16 v0, v16

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1040
    move-object/from16 v0, v16

    iget v0, v0, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->diskId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1041
    move-object/from16 v0, v16

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->offset:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1042
    move-object/from16 v0, v16

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1043
    move-object/from16 v0, v16

    iget v0, v0, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1044
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1045
    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->checksum()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_fc
    .catchall {:try_start_68 .. :try_end_fc} :catchall_278
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_fc} :catch_188
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_fc} :catch_233

    .line 1023
    :cond_fc
    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    .line 1004
    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .end local v9           #i:I
    .end local v13           #key:J
    .end local v15           #numRecords:I
    .end local v16           #record:Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    :cond_ff
    :try_start_ff
    const-string v18, "DiskCacheIndex"

    const/16 v19, 0x0

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v20}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_111
    .catchall {:try_start_ff .. :try_end_111} :catchall_25c
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_111} :catch_27d

    move-result-object v17

    goto/16 :goto_37

    .line 1054
    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v5       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v9       #i:I
    .restart local v15       #numRecords:I
    :cond_114
    :try_start_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c1

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->update()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->getDiskIds()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_133
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1c1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1058
    .local v11, id:I
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->getMountedTime(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1060
    const-string v18, "DiskCacheSEC"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[SE Lab.] writeindex(): id= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / mntTime= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCacheSEC;->mDiskList:Lcom/cooliris/media/DiskCacheSEC$DiskList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/cooliris/media/DiskCacheSEC$DiskList;->getMountedTime(I)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catchall {:try_start_114 .. :try_end_187} :catchall_278
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_187} :catch_188
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_187} :catch_233

    goto :goto_133

    .line 1077
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #id:I
    .end local v15           #numRecords:I
    :catch_188
    move-exception v6

    move-object v4, v5

    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 1078
    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    :goto_18c
    :try_start_18c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1079
    const-string v18, "DiskCacheSEC"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to write the index file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  delete TEMP"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_1b2
    .catchall {:try_start_18c .. :try_end_1b2} :catchall_25c
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1b2} :catch_27d

    .line 1087
    .end local v6           #e:Ljava/io/IOException;
    :goto_1b2
    if-eqz v17, :cond_1b7

    .line 1088
    :try_start_1b4
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b7} :catch_251

    .line 1093
    :cond_1b7
    :goto_1b7
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1094
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1095
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1098
    :goto_1c0
    return-void

    .line 1066
    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v5       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v9       #i:I
    .restart local v15       #numRecords:I
    :cond_1c1
    :try_start_1c1
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 1068
    const-string v18, "DiskCacheSEC"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Wrote index with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " records."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    if-eqz v18, :cond_20f

    .line 1072
    const-string v18, "DiskCacheSEC"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "rename to = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20b
    move-object v4, v5

    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 1081
    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_1b2

    .line 1074
    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v5       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :cond_20f
    const-string v18, "DiskCacheSEC"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to rename the index file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". delete TEMP"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_232
    .catchall {:try_start_1c1 .. :try_end_232} :catchall_278
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_232} :catch_188
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_232} :catch_233

    goto :goto_20b

    .line 1082
    .end local v9           #i:I
    .end local v15           #numRecords:I
    :catch_233
    move-exception v6

    move-object v4, v5

    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 1083
    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .local v6, e:Ljava/lang/Exception;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    :goto_237
    :try_start_237
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1084
    const-string v18, "DiskCacheSEC"

    const-string v19, "Unable to write tempfile "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_241
    .catchall {:try_start_237 .. :try_end_241} :catchall_25c

    .line 1087
    if-eqz v17, :cond_246

    .line 1088
    :try_start_243
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_246} :catch_257

    .line 1093
    :cond_246
    :goto_246
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1094
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1095
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_1c0

    .line 1090
    .end local v6           #e:Ljava/lang/Exception;
    :catch_251
    move-exception v6

    .line 1091
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b7

    .line 1090
    :catch_257
    move-exception v6

    .line 1091
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_246

    .line 1086
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_25c
    move-exception v18

    .line 1087
    :goto_25d
    if-eqz v17, :cond_262

    .line 1088
    :try_start_25f
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_262
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_262} :catch_26c

    .line 1093
    :cond_262
    :goto_262
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1094
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1095
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v18

    .line 1090
    :catch_26c
    move-exception v6

    .line 1091
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_262

    .line 1086
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_271
    move-exception v18

    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_25d

    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_274
    move-exception v18

    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_25d

    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v5       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_278
    move-exception v18

    move-object v4, v5

    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_25d

    .line 1082
    :catch_27d
    move-exception v6

    goto :goto_237

    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catch_27f
    move-exception v6

    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_237

    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catch_282
    move-exception v6

    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_237

    .line 1077
    :catch_286
    move-exception v6

    goto/16 :goto_18c

    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catch_289
    move-exception v6

    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto/16 :goto_18c

    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catch_28d
    move-exception v6

    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto/16 :goto_18c
.end method
