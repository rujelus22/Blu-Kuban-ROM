.class public Lcom/google/android/apps/translate/history/BaseDb;
.super Ljava/lang/Object;
.source "BaseDb.java"


# static fields
.field private static final BUFFER_SIZE:I = 0xc800

.field static final COLLATOR:Ljava/text/Collator; = null

.field private static final DEBUG:Z = false

.field private static final EMPTY_ENTRY:Lcom/google/android/apps/translate/history/Entry; = null

.field private static final ENTRY_ATIME_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLUSHER_DELAY_MS:I = 0x1388

.field private static final FLUSHER_TIMEOUT_MS:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "BaseDb"

.field private static final VERSION:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbName:Ljava/lang/String;

.field private final mEntries:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation
.end field

.field mFlusherThread:Ljava/lang/Thread;

.field private mIsOnMemoryDb:Z

.field private mLastModifiedTimeMs:J

.field private mLoadedInMemory:Z

.field private final mLruEntries:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCount:I

.field mMemoryDirty:Z

.field private final mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/apps/translate/history/Entry;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/history/BaseDb;->EMPTY_ENTRY:Lcom/google/android/apps/translate/history/Entry;

    .line 44
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/history/BaseDb;->COLLATOR:Ljava/text/Collator;

    .line 46
    sget-object v0, Lcom/google/android/apps/translate/history/BaseDb;->COLLATOR:Ljava/text/Collator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 55
    new-instance v0, Lcom/google/android/apps/translate/history/BaseDb$1;

    invoke-direct {v0}, Lcom/google/android/apps/translate/history/BaseDb$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/history/BaseDb;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lcom/google/android/apps/translate/history/BaseDb$2;

    invoke-direct {v0}, Lcom/google/android/apps/translate/history/BaseDb$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/history/BaseDb;->ENTRY_ATIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 7
    .parameter "context"
    .parameter "dbName"
    .parameter "maxCount"
    .parameter "isOnMemoryDb"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/google/android/apps/translate/history/BaseDb;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    .line 126
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/google/android/apps/translate/history/BaseDb;->ENTRY_ATIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mIsOnMemoryDb:Z

    .line 148
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    .line 150
    iput p3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMaxCount:I

    .line 151
    iput-boolean p4, p0, Lcom/google/android/apps/translate/history/BaseDb;->mIsOnMemoryDb:Z

    .line 152
    return-void
.end method

.method private dumpEntry(Ljava/lang/String;Lcom/google/android/apps/translate/history/Entry;)V
    .registers 8
    .parameter "tag"
    .parameter "entry"

    .prologue
    .line 478
    const-string v0, "BaseDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DbName       ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "BaseDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " InputText    ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "BaseDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OutputText   ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "BaseDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AccessedTime ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseDb;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getAccessedTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/translate/Util;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "BaseDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CreatedTime  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseDb;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getCreatedTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/translate/Util;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private getFilteredEntries(ILjava/lang/String;Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 8
    .parameter "count"
    .parameter "prefixFilter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    .local p3, entries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/translate/history/Entry;>;"
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 285
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/Entry;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    .line 286
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    if-nez p1, :cond_17

    .line 298
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_16
    return-object v2

    .line 289
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/google/android/apps/translate/Util;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/google/android/apps/translate/Util;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 291
    :cond_2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 p1, p1, -0x1

    goto :goto_8
.end method

.method private declared-synchronized loadIntoMemory()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 421
    monitor-enter p0

    :try_start_2
    iget-boolean v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLoadedInMemory:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mIsOnMemoryDb:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_5b

    if-eqz v7, :cond_c

    .line 475
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 428
    :cond_c
    const/4 v4, 0x0

    .line 430
    .local v4, stream:Ljava/io/DataInputStream;
    const/4 v7, 0x0

    :try_start_e
    iput-boolean v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z

    .line 431
    iget-object v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    .line 432
    iget-object v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 433
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/google/android/apps/translate/history/BaseDb;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    const v9, 0xc800

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_32} :catch_dc
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_32} :catch_ac

    .line 436
    .end local v4           #stream:Ljava/io/DataInputStream;
    .local v5, stream:Ljava/io/DataInputStream;
    :try_start_32
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLastModifiedTimeMs:J

    .line 437
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 438
    .local v6, version:I
    if-ne v6, v10, :cond_6b

    .line 439
    const/4 v0, 0x0

    .local v0, count:I
    :goto_3f
    iget v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMaxCount:I

    if-ge v0, v7, :cond_51

    .line 440
    invoke-static {v5}, Lcom/google/android/apps/translate/history/Entry;->readData(Ljava/io/DataInputStream;)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v2

    .line 441
    .local v2, entry:Lcom/google/android/apps/translate/history/Entry;
    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_4e} :catch_99
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_4e} :catch_d9

    move-result v7

    if-eqz v7, :cond_5e

    .line 462
    .end local v0           #count:I
    .end local v2           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_51
    :goto_51
    if-eqz v5, :cond_de

    .line 464
    :try_start_53
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_a9

    move-object v4, v5

    .line 471
    .end local v3           #file:Ljava/io/File;
    .end local v5           #stream:Ljava/io/DataInputStream;
    .end local v6           #version:I
    .restart local v4       #stream:Ljava/io/DataInputStream;
    :cond_57
    :goto_57
    const/4 v7, 0x1

    :try_start_58
    iput-boolean v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLoadedInMemory:Z
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_5b

    goto :goto_a

    .line 421
    .end local v4           #stream:Ljava/io/DataInputStream;
    :catchall_5b
    move-exception v7

    monitor-exit p0

    throw v7

    .line 448
    .restart local v0       #count:I
    .restart local v2       #entry:Lcom/google/android/apps/translate/history/Entry;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #stream:Ljava/io/DataInputStream;
    .restart local v6       #version:I
    :cond_5e
    :try_start_5e
    iget-object v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v7, v2, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v7, v2, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 451
    .end local v0           #count:I
    .end local v2           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_6b
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isWarning()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upgrading database from version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", which will destroy all old data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_5e .. :try_end_98} :catchall_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_98} :catch_99
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_98} :catch_d9

    goto :goto_51

    .line 455
    .end local v6           #version:I
    :catch_99
    move-exception v1

    move-object v4, v5

    .line 456
    .end local v3           #file:Ljava/io/File;
    .end local v5           #stream:Ljava/io/DataInputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v4       #stream:Ljava/io/DataInputStream;
    :goto_9b
    :try_start_9b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLastModifiedTimeMs:J
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_cd

    .line 462
    if-eqz v4, :cond_57

    .line 464
    :try_start_a3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_57

    .line 465
    :catch_a7
    move-exception v7

    goto :goto_57

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #stream:Ljava/io/DataInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #stream:Ljava/io/DataInputStream;
    .restart local v6       #version:I
    :catch_a9
    move-exception v7

    move-object v4, v5

    .line 467
    .end local v5           #stream:Ljava/io/DataInputStream;
    .restart local v4       #stream:Ljava/io/DataInputStream;
    goto :goto_57

    .line 457
    .end local v3           #file:Ljava/io/File;
    .end local v6           #version:I
    :catch_ac
    move-exception v1

    .line 460
    .local v1, e:Ljava/io/IOException;
    :goto_ad
    :try_start_ad
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadIntoMemory failed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c5
    .catchall {:try_start_ad .. :try_end_c5} :catchall_cd

    .line 462
    if-eqz v4, :cond_57

    .line 464
    :try_start_c7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_57

    .line 465
    :catch_cb
    move-exception v7

    goto :goto_57

    .line 462
    .end local v1           #e:Ljava/io/IOException;
    :catchall_cd
    move-exception v7

    :goto_ce
    if-eqz v4, :cond_d3

    .line 464
    :try_start_d0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    .line 467
    :cond_d3
    :goto_d3
    :try_start_d3
    throw v7
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_5b

    .line 465
    :catch_d4
    move-exception v8

    goto :goto_d3

    .line 462
    .end local v4           #stream:Ljava/io/DataInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #stream:Ljava/io/DataInputStream;
    :catchall_d6
    move-exception v7

    move-object v4, v5

    .end local v5           #stream:Ljava/io/DataInputStream;
    .restart local v4       #stream:Ljava/io/DataInputStream;
    goto :goto_ce

    .line 457
    .end local v4           #stream:Ljava/io/DataInputStream;
    .restart local v5       #stream:Ljava/io/DataInputStream;
    :catch_d9
    move-exception v1

    move-object v4, v5

    .end local v5           #stream:Ljava/io/DataInputStream;
    .restart local v4       #stream:Ljava/io/DataInputStream;
    goto :goto_ad

    .line 455
    .end local v3           #file:Ljava/io/File;
    :catch_dc
    move-exception v1

    goto :goto_9b

    .end local v4           #stream:Ljava/io/DataInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #stream:Ljava/io/DataInputStream;
    .restart local v6       #version:I
    :cond_de
    move-object v4, v5

    .end local v5           #stream:Ljava/io/DataInputStream;
    .restart local v4       #stream:Ljava/io/DataInputStream;
    goto/16 :goto_57
.end method

.method private onModified()V
    .registers 3

    .prologue
    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLastModifiedTimeMs:J

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z

    .line 362
    return-void
.end method

.method private declared-synchronized saveIntoDbAsync()V
    .registers 4

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mIsOnMemoryDb:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_31

    if-eqz v0, :cond_b

    .line 587
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 551
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mFlusherThread:Ljava/lang/Thread;

    if-nez v0, :cond_34

    .line 552
    new-instance v0, Lcom/google/android/apps/translate/history/BaseDb$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Flusher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/translate/history/BaseDb$3;-><init>(Lcom/google/android/apps/translate/history/BaseDb;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mFlusherThread:Ljava/lang/Thread;

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mFlusherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_31

    goto :goto_9

    .line 547
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    .line 585
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/apps/translate/history/Entry;)V
    .registers 6
    .parameter "entry"

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v3, p1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/history/Entry;

    .line 344
    .local v1, oldEntry:Lcom/google/android/apps/translate/history/Entry;
    if-nez v1, :cond_31

    .line 345
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 346
    .local v0, newCount:I
    iget v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMaxCount:I

    if-le v0, v3, :cond_27

    .line 348
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/history/Entry;

    .line 349
    .local v2, oldest:Lcom/google/android/apps/translate/history/Entry;
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v0           #newCount:I
    .end local v2           #oldest:Lcom/google/android/apps/translate/history/Entry;
    :cond_27
    :goto_27
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v3, p1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseDb;->onModified()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_37

    .line 357
    monitor-exit p0

    return-void

    .line 353
    :cond_31
    :try_start_31
    iget-object v3, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_37

    goto :goto_27

    .line 343
    .end local v1           #oldEntry:Lcom/google/android/apps/translate/history/Entry;
    :catchall_37
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public close(Z)V
    .registers 3
    .parameter "syncFlush"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->flush(Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 176
    return-void
.end method

.method public declared-synchronized exists(Lcom/google/android/apps/translate/history/Entry;)Z
    .registers 3
    .parameter "entry"

    .prologue
    .line 396
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "fromLanguage"
    .parameter "toLanguage"
    .parameter "inputText"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    new-instance v1, Lcom/google/android/apps/translate/history/Entry;

    const-string v2, ""

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush(Z)V
    .registers 2
    .parameter "sync"

    .prologue
    .line 196
    if-eqz p1, :cond_6

    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseDb;->saveIntoDb()V

    .line 201
    :goto_5
    return-void

    .line 199
    :cond_6
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseDb;->saveIntoDbAsync()V

    goto :goto_5
.end method

.method public declared-synchronized get(Lcom/google/android/apps/translate/history/Entry;)Lcom/google/android/apps/translate/history/Entry;
    .registers 3
    .parameter "entry"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/translate/history/Entry;
    .registers 7
    .parameter "fromLanguage"
    .parameter "toLanguage"
    .parameter "inputText"

    .prologue
    .line 240
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    new-instance v1, Lcom/google/android/apps/translate/history/Entry;

    const-string v2, ""

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll(I)Ljava/util/List;
    .registers 4
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseDb;->getAll()Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    move-result v1

    if-lt p1, v1, :cond_d

    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :goto_b
    monitor-exit p0

    return-object v0

    .restart local v0       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result-object v0

    goto :goto_b

    .line 258
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAll(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "count"
    .parameter "prefixFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->getAll(I)Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_18

    move-result-object v0

    .line 276
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/translate/history/BaseDb;->getFilteredEntries(ILjava/lang/String;Ljava/util/Collection;)Ljava/util/ArrayList;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_b

    .line 272
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllByATime()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime(I)Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllByATime(I)Ljava/util/List;
    .registers 5
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/Entry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_19

    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/Entry;>;"
    :goto_14
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1f

    monitor-exit p0

    return-object v1

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_19
    const/4 v2, 0x0

    :try_start_1a
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1f

    move-result-object v0

    goto :goto_14

    .line 317
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/history/Entry;>;"
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAllByATime(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "count"
    .parameter "prefixFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime(I)Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    move-result-object v0

    .line 335
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/BaseDb;->getAllByATime()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/translate/history/BaseDb;->getFilteredEntries(ILjava/lang/String;Ljava/util/Collection;)Ljava/util/ArrayList;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_16

    move-result-object v0

    goto :goto_b

    .line 331
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastModifiedTime()J
    .registers 5

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLastModifiedTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    move-result-wide v0

    :goto_15
    monitor-exit p0

    return-wide v0

    :cond_17
    :try_start_17
    iget-wide v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLastModifiedTimeMs:J
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    goto :goto_15

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRawCount()I
    .registers 2

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public open()Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseDb;->loadIntoMemory()V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 163
    return-object p0
.end method

.method public declared-synchronized remove(Lcom/google/android/apps/translate/history/Entry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    move-object p1, v0

    .line 369
    if-eqz p1, :cond_15

    .line 370
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseDb;->onModified()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 373
    :cond_15
    monitor-exit p0

    return-void

    .line 368
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAll()V
    .registers 2

    .prologue
    .line 379
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 381
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseDb;->onModified()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 382
    monitor-exit p0

    return-void

    .line 379
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method saveIntoDb()V
    .registers 12

    .prologue
    .line 494
    monitor-enter p0

    .line 495
    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/google/android/apps/translate/history/BaseDb;->mIsOnMemoryDb:Z

    if-eqz v6, :cond_b

    .line 496
    :cond_9
    monitor-exit p0

    .line 541
    :goto_a
    return-void

    .line 503
    :cond_b
    iget-object v6, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v3

    .line 504
    .local v3, numEntries:I
    iget-object v6, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v3, [Lcom/google/android/apps/translate/history/Entry;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/translate/history/Entry;

    .line 505
    .local v1, entryLruList:[Lcom/google/android/apps/translate/history/Entry;
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z

    .line 506
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_4c

    .line 509
    iget-object v7, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    monitor-enter v7

    .line 510
    const/4 v4, 0x0

    .line 513
    .local v4, stream:Ljava/io/DataOutputStream;
    :try_start_27
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/google/android/apps/translate/history/BaseDb;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    const v9, 0xc800

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_9a

    .line 516
    .end local v4           #stream:Ljava/io/DataOutputStream;
    .local v5, stream:Ljava/io/DataOutputStream;
    const/4 v6, 0x1

    :try_start_3e
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 517
    const/4 v2, 0x0

    .local v2, i:I
    :goto_42
    if-ge v2, v3, :cond_4f

    .line 518
    aget-object v6, v1, v2

    invoke-virtual {v6, v5}, Lcom/google/android/apps/translate/history/Entry;->writeData(Ljava/io/DataOutputStream;)V
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_c3

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 506
    .end local v1           #entryLruList:[Lcom/google/android/apps/translate/history/Entry;
    .end local v2           #i:I
    .end local v3           #numEntries:I
    .end local v5           #stream:Ljava/io/DataOutputStream;
    :catchall_4c
    move-exception v6

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v6

    .line 522
    .restart local v1       #entryLruList:[Lcom/google/android/apps/translate/history/Entry;
    .restart local v2       #i:I
    .restart local v3       #numEntries:I
    .restart local v5       #stream:Ljava/io/DataOutputStream;
    :cond_4f
    :try_start_4f
    sget-object v6, Lcom/google/android/apps/translate/history/BaseDb;->EMPTY_ENTRY:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/translate/history/Entry;->writeData(Ljava/io/DataOutputStream;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_c3

    .line 524
    if-eqz v5, :cond_59

    .line 526
    :try_start_56
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5f

    :cond_59
    :goto_59
    move-object v4, v5

    .line 537
    .end local v2           #i:I
    .end local v5           #stream:Ljava/io/DataOutputStream;
    .restart local v4       #stream:Ljava/io/DataOutputStream;
    :goto_5a
    :try_start_5a
    monitor-exit v7

    goto :goto_a

    :catchall_5c
    move-exception v6

    :goto_5d
    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5c

    throw v6

    .line 527
    .end local v4           #stream:Ljava/io/DataOutputStream;
    .restart local v2       #i:I
    .restart local v5       #stream:Ljava/io/DataOutputStream;
    :catch_5f
    move-exception v0

    .line 528
    .local v0, e:Ljava/io/IOException;
    :try_start_60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveIntoDb failed into "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_7b} :catch_7c

    goto :goto_59

    .line 533
    :catch_7c
    move-exception v0

    move-object v4, v5

    .line 534
    .end local v2           #i:I
    .end local v5           #stream:Ljava/io/DataOutputStream;
    .restart local v4       #stream:Ljava/io/DataOutputStream;
    :goto_7e
    :try_start_7e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveIntoDb failed into "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z
    :try_end_99
    .catchall {:try_start_7e .. :try_end_99} :catchall_5c

    goto :goto_5a

    .line 524
    .end local v0           #e:Ljava/io/IOException;
    :catchall_9a
    move-exception v6

    :goto_9b
    if-eqz v4, :cond_a0

    .line 526
    :try_start_9d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a3

    .line 530
    :cond_a0
    :goto_a0
    :try_start_a0
    throw v6

    .line 533
    :catch_a1
    move-exception v0

    goto :goto_7e

    .line 527
    :catch_a3
    move-exception v0

    .line 528
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveIntoDb failed into "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/translate/history/BaseDb;->mDbName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v0}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z
    :try_end_bf
    .catchall {:try_start_a0 .. :try_end_bf} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_bf} :catch_a1

    goto :goto_a0

    .line 537
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #stream:Ljava/io/DataOutputStream;
    .restart local v2       #i:I
    .restart local v5       #stream:Ljava/io/DataOutputStream;
    :catchall_c0
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/DataOutputStream;
    .restart local v4       #stream:Ljava/io/DataOutputStream;
    goto :goto_5d

    .line 524
    .end local v2           #i:I
    .end local v4           #stream:Ljava/io/DataOutputStream;
    .restart local v5       #stream:Ljava/io/DataOutputStream;
    :catchall_c3
    move-exception v6

    move-object v4, v5

    .end local v5           #stream:Ljava/io/DataOutputStream;
    .restart local v4       #stream:Ljava/io/DataOutputStream;
    goto :goto_9b
.end method

.method public declared-synchronized updateLastAccessed(Lcom/google/android/apps/translate/history/Entry;)V
    .registers 5
    .parameter "entry"

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    move-object p1, v0

    .line 210
    if-eqz p1, :cond_21

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/apps/translate/history/Entry;->setAccessedTime(J)V

    .line 213
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb;->mLruEntries:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseDb;->onModified()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 216
    :cond_21
    monitor-exit p0

    return-void

    .line 209
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateLastAccessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "fromLanguage"
    .parameter "toLanguage"
    .parameter "inputText"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/translate/history/Entry;

    const-string v1, ""

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/history/BaseDb;->updateLastAccessed(Lcom/google/android/apps/translate/history/Entry;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
