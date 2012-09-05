.class public final Llibcore/io/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/DiskLruCache$Entry;,
        Llibcore/io/DiskLruCache$Editor;,
        Llibcore/io/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/io/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 13
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    .line 148
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 153
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 155
    new-instance v0, Llibcore/io/DiskLruCache$1;

    invoke-direct {v0, p0}, Llibcore/io/DiskLruCache$1;-><init>(Llibcore/io/DiskLruCache;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 172
    iput-object p1, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    .line 173
    iput p2, p0, Llibcore/io/DiskLruCache;->appVersion:I

    .line 174
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    .line 175
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 176
    iput p3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    .line 177
    iput-wide p4, p0, Llibcore/io/DiskLruCache;->maxSize:J

    .line 178
    return-void
.end method

.method static synthetic access$000(Llibcore/io/DiskLruCache;)Ljava/io/Writer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Llibcore/io/DiskLruCache;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1400(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Llibcore/io/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Editor;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Llibcore/io/DiskLruCache;->completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$1800(Llibcore/io/DiskLruCache;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Llibcore/io/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Llibcore/io/DiskLruCache;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Llibcore/io/DiskLruCache;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Llibcore/io/DiskLruCache;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Llibcore/io/DiskLruCache;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_c

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_c
    return-void
.end method

.method private declared-synchronized completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V
    .registers 15
    .parameter "editor"
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    monitor-enter p0

    :try_start_1
    #getter for: Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;
    invoke-static {p1}, Llibcore/io/DiskLruCache$Editor;->access$1300(Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Entry;

    move-result-object v2

    .line 438
    .local v2, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_14

    .line 439
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 437
    .end local v2           #entry:Llibcore/io/DiskLruCache$Entry;
    :catchall_11
    move-exception v8

    monitor-exit p0

    throw v8

    .line 443
    .restart local v2       #entry:Llibcore/io/DiskLruCache$Entry;
    :cond_14
    if-eqz p2, :cond_4a

    :try_start_16
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 444
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    iget v8, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4a

    .line 445
    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_47

    .line 446
    invoke-virtual {p1}, Llibcore/io/DiskLruCache$Editor;->abort()V

    .line 447
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 444
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 452
    .end local v3           #i:I
    :cond_4a
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4b
    iget v8, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7f

    .line 453
    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 454
    .local v1, dirty:Ljava/io/File;
    if-eqz p2, :cond_7b

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 456
    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 457
    .local v0, clean:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 458
    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 459
    .local v6, oldLength:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 460
    .local v4, newLength:J
    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 461
    iget-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    .line 452
    .end local v0           #clean:Ljava/io/File;
    .end local v4           #newLength:J
    .end local v6           #oldLength:J
    :cond_78
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 464
    :cond_7b
    invoke-static {v1}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_78

    .line 468
    .end local v1           #dirty:Ljava/io/File;
    :cond_7f
    iget v8, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    .line 469
    const/4 v8, 0x0

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v2, v8}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 470
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_d5

    .line 471
    const/4 v8, 0x1

    #setter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Llibcore/io/DiskLruCache$Entry;->access$602(Llibcore/io/DiskLruCache$Entry;Z)Z

    .line 472
    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Llibcore/io/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 478
    :goto_be
    iget-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    iget-wide v10, p0, Llibcore/io/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_cc

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 479
    :cond_cc
    iget-object v8, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_d3
    .catchall {:try_start_16 .. :try_end_d3} :catchall_11

    .line 481
    :cond_d3
    monitor-exit p0

    return-void

    .line 474
    :cond_d5
    :try_start_d5
    iget-object v8, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_d5 .. :try_end_100} :catchall_11

    goto :goto_be
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_9
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_9} :catch_a

    .line 345
    :cond_9
    return-void

    .line 340
    :catch_a
    move-exception v0

    .line 341
    .local v0, errnoException:Llibcore/io/ErrnoException;
    iget v1, v0, Llibcore/io/ErrnoException;->errno:I

    sget v2, Llibcore/io/OsConstants;->ENOENT:I

    if-eq v1, v2, :cond_9

    .line 342
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .registers 4

    .prologue
    .line 488
    const/16 v0, 0x7d0

    .line 489
    .local v0, REDUNDANT_OP_COMPACT_THRESHOLD:I
    iget v1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_14

    iget v1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static open(Ljava/io/File;IIJ)Llibcore/io/DiskLruCache;
    .registers 13
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_e

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_e
    if-gtz p2, :cond_18

    .line 196
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_18
    new-instance v0, Llibcore/io/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 201
    .local v0, cache:Llibcore/io/DiskLruCache;
    iget-object v1, v0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 203
    :try_start_29
    invoke-direct {v0}, Llibcore/io/DiskLruCache;->readJournal()V

    .line 204
    invoke-direct {v0}, Llibcore/io/DiskLruCache;->processJournal()V

    .line 205
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3e} :catch_40

    move-object v6, v0

    .line 218
    .end local v0           #cache:Llibcore/io/DiskLruCache;
    .local v6, cache:Ljava/lang/Object;
    :goto_3f
    return-object v6

    .line 207
    .end local v6           #cache:Ljava/lang/Object;
    .restart local v0       #cache:Llibcore/io/DiskLruCache;
    :catch_40
    move-exception v7

    .line 208
    .local v7, journalIsCorrupt:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskLruCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->delete()V

    .line 215
    .end local v7           #journalIsCorrupt:Ljava/io/IOException;
    :cond_6e
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 216
    new-instance v0, Llibcore/io/DiskLruCache;

    .end local v0           #cache:Llibcore/io/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 217
    .restart local v0       #cache:Llibcore/io/DiskLruCache;
    invoke-direct {v0}, Llibcore/io/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 218
    .restart local v6       #cache:Ljava/lang/Object;
    goto :goto_3f
.end method

.method private processJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 287
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Llibcore/io/DiskLruCache$Entry;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 289
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_34

    .line 290
    const/4 v2, 0x0

    .local v2, t:I
    :goto_22
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_f

    .line 291
    iget-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 294
    .end local v2           #t:I
    :cond_34
    const/4 v3, 0x0

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 295
    const/4 v2, 0x0

    .restart local v2       #t:I
    :goto_39
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_4e

    .line 296
    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 297
    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 299
    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 302
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v2           #t:I
    :cond_52
    return-void
.end method

.method private readJournal()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 224
    .local v3, in:Ljava/io/InputStream;
    :try_start_c
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, magic:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, version:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, appVersionString:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, valueCountString:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, blank:Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    iget v7, p0, Llibcore/io/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    iget v7, p0, Llibcore/io/DiskLruCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 234
    :cond_50
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8d
    .catchall {:try_start_c .. :try_end_8d} :catchall_8d

    .line 246
    .end local v0           #appVersionString:Ljava/lang/String;
    .end local v1           #blank:Ljava/lang/String;
    .end local v4           #magic:Ljava/lang/String;
    .end local v5           #valueCountString:Ljava/lang/String;
    .end local v6           #version:Ljava/lang/String;
    :catchall_8d
    move-exception v7

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .line 240
    .restart local v0       #appVersionString:Ljava/lang/String;
    .restart local v1       #blank:Ljava/lang/String;
    .restart local v4       #magic:Ljava/lang/String;
    .restart local v5       #valueCountString:Ljava/lang/String;
    .restart local v6       #version:Ljava/lang/String;
    :cond_92
    :goto_92
    :try_start_92
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Llibcore/io/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_8d
    .catch Ljava/io/EOFException; {:try_start_92 .. :try_end_99} :catch_9a

    goto :goto_92

    .line 241
    :catch_9a
    move-exception v2

    .line 246
    .local v2, endOfJournal:Ljava/io/EOFException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 248
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 11
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 251
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, parts:[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_26

    .line 253
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_26
    aget-object v1, v2, v8

    .line 257
    .local v1, key:Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    array-length v3, v2

    if-ne v3, v5, :cond_3b

    .line 258
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3a
    :goto_3a
    return-void

    .line 262
    :cond_3b
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 263
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    if-nez v0, :cond_4f

    .line 264
    new-instance v0, Llibcore/io/DiskLruCache$Entry;

    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Llibcore/io/DiskLruCache$Entry;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;Llibcore/io/DiskLruCache$1;)V

    .line 265
    .restart local v0       #entry:Llibcore/io/DiskLruCache$Entry;
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_4f
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    array-length v3, v2

    iget v4, p0, Llibcore/io/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_71

    .line 269
    #setter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v8}, Llibcore/io/DiskLruCache$Entry;->access$602(Llibcore/io/DiskLruCache$Entry;Z)Z

    .line 270
    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v7}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 271
    array-length v3, v2

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    #calls: Llibcore/io/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$800(Llibcore/io/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_3a

    .line 272
    :cond_71
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    array-length v3, v2

    if-ne v3, v5, :cond_87

    .line 273
    new-instance v3, Llibcore/io/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Llibcore/io/DiskLruCache$Editor;-><init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$1;)V

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    goto :goto_3a

    .line 274
    :cond_87
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    array-length v3, v2

    if-eq v3, v5, :cond_3a

    .line 277
    :cond_94
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_a

    .line 310
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 313
    :cond_a
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 314
    .local v2, writer:Ljava/io/Writer;
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 315
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 316
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 317
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 318
    iget v3, p0, Llibcore/io/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 319
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 320
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 322
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 325
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_8b

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_88

    goto :goto_55

    .line 309
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #writer:Ljava/io/Writer;
    :catchall_88
    move-exception v3

    monitor-exit p0

    throw v3

    .line 328
    .restart local v0       #entry:Llibcore/io/DiskLruCache$Entry;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_8b
    :try_start_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_55

    .line 332
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    :cond_b4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 333
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 334
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_cd
    .catchall {:try_start_8b .. :try_end_cd} :catchall_88

    .line 335
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    :goto_0
    iget-wide v1, p0, Llibcore/io/DiskLruCache;->size:J

    iget-wide v3, p0, Llibcore/io/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_18

    .line 568
    iget-object v1, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    .line 569
    .local v0, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Llibcore/io/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 571
    .end local v0           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Llibcore/io/DiskLruCache$Entry;>;"
    :cond_18
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 5
    .parameter "key"

    .prologue
    .line 584
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 585
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_37
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v2, :cond_7

    .line 564
    :goto_5
    monitor-exit p0

    return-void

    .line 556
    :cond_7
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 557
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 558
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    .line 553
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2

    .line 561
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_33
    :try_start_33
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    .line 562
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 563
    const/4 v2, 0x0

    iput-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_5
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Llibcore/io/DiskLruCache;->close()V

    .line 580
    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V

    .line 581
    return-void
.end method

.method public declared-synchronized edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 393
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 394
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/io/DiskLruCache$Entry;

    .line 396
    .local v1, entry:Llibcore/io/DiskLruCache$Entry;
    if-nez v1, :cond_4b

    .line 397
    new-instance v1, Llibcore/io/DiskLruCache$Entry;

    .end local v1           #entry:Llibcore/io/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Llibcore/io/DiskLruCache$Entry;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;Llibcore/io/DiskLruCache$1;)V

    .line 398
    .restart local v1       #entry:Llibcore/io/DiskLruCache$Entry;
    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1d
    new-instance v0, Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Llibcore/io/DiskLruCache$Editor;-><init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$1;)V

    .line 404
    .local v0, editor:Llibcore/io/DiskLruCache$Editor;
    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v1, v0}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 407
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_52

    .line 409
    .end local v0           #editor:Llibcore/io/DiskLruCache$Editor;
    :goto_49
    monitor-exit p0

    return-object v0

    .line 399
    :cond_4b
    :try_start_4b
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v1}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_52

    move-result-object v2

    if-eqz v2, :cond_1d

    goto :goto_49

    .line 393
    .end local v1           #entry:Llibcore/io/DiskLruCache$Entry;
    :catchall_52
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 545
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    .line 546
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 547
    monitor-exit p0

    return-void

    .line 544
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 353
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 354
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 355
    iget-object v5, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/io/DiskLruCache$Entry;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_6b

    .line 356
    .local v1, entry:Llibcore/io/DiskLruCache$Entry;
    if-nez v1, :cond_14

    .line 385
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v4

    .line 360
    :cond_14
    :try_start_14
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 369
    iget v5, p0, Llibcore/io/DiskLruCache;->valueCount:I

    new-array v3, v5, [Ljava/io/InputStream;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_6b

    .line 371
    .local v3, ins:[Ljava/io/InputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    :try_start_1f
    iget v5, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v5, :cond_33

    .line 372
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v1, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v3, v2
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2e} :catch_31

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 374
    :catch_31
    move-exception v0

    .line 376
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_12

    .line 379
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_33
    :try_start_33
    iget v4, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    .line 380
    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 381
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 382
    iget-object v4, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 385
    :cond_64
    new-instance v4, Llibcore/io/DiskLruCache$Snapshot;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Llibcore/io/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;Llibcore/io/DiskLruCache$1;)V
    :try_end_6a
    .catchall {:try_start_33 .. :try_end_6a} :catchall_6b

    goto :goto_12

    .line 353
    .end local v1           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v2           #i:I
    .end local v3           #ins:[Ljava/io/InputStream;
    :catchall_6b
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public maxSize()J
    .registers 3

    .prologue
    .line 424
    iget-wide v0, p0, Llibcore/io/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 501
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 503
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    if-eqz v0, :cond_17

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_42

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 504
    :cond_17
    const/4 v3, 0x0

    .line 524
    :goto_18
    monitor-exit p0

    return v3

    .line 507
    :cond_1a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    :try_start_1b
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_5b

    .line 508
    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 509
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_45

    .line 510
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_42

    .line 500
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3

    .line 512
    .restart local v0       #entry:Llibcore/io/DiskLruCache$Entry;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #i:I
    :cond_45
    :try_start_45
    iget-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    .line 513
    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 516
    .end local v1           #file:Ljava/io/File;
    :cond_5b
    iget v3, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    .line 517
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 518
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 521
    iget-object v3, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_91
    .catchall {:try_start_45 .. :try_end_91} :catchall_42

    .line 524
    :cond_91
    const/4 v3, 0x1

    goto :goto_18
.end method

.method public declared-synchronized size()J
    .registers 3

    .prologue
    .line 433
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/io/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
