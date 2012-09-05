.class Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
.super Ljava/lang/Object;
.source "DatabaseConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/DatabaseConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PoolObj"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUSY:Z = false

.field private static final FREE:Z = true


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mFreeBusyFlag:Z

.field private mHolderIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNumHolders:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 270
    const-class v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 287
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    .line 285
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    .line 288
    iput-object p1, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 289
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 270
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->acquire()V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->release()V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->verify()V

    return-void
.end method

.method private declared-synchronized acquire()V
    .registers 5

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    const-string v2, "DatabaseConnectionPool"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 293
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1a

    .line 292
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 294
    :cond_1d
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 295
    .local v0, id:J
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_3b

    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 296
    :cond_3b
    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v0           #id:J
    :cond_44
    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    .line 300
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_1a

    .line 301
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized isFree()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 318
    monitor-enter p0

    :try_start_2
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 319
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->verify()V

    .line 321
    :cond_e
    iget-boolean v1, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_16

    if-ne v1, v0, :cond_14

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 318
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized release()V
    .registers 5

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    const-string v2, "DatabaseConnectionPool"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 306
    .local v0, id:J
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_29

    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-eq v2, v3, :cond_29

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_26

    .line 304
    .end local v0           #id:J
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2

    .line 307
    .restart local v0       #id:J
    :cond_29
    :try_start_29
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_3f

    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 308
    :cond_3f
    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 311
    .end local v0           #id:J
    :cond_48
    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    .line 312
    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-nez v2, :cond_55

    .line 313
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_26

    .line 315
    :cond_55
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized verify()V
    .registers 3

    .prologue
    .line 325
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 326
    sget-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v0, :cond_25

    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 325
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :cond_17
    :try_start_17
    sget-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v0, :cond_25

    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-gtz v0, :cond_25

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_14

    .line 330
    :cond_25
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized getNumHolders()I
    .registers 2

    .prologue
    .line 336
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v0, buff:Ljava/lang/StringBuilder;
    const-string v3, ", conn # "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-short v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const-string v3, ", mCountHolders = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    monitor-enter p0

    .line 346
    :try_start_17
    iget v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    const-string v3, ", freeBusyFlag = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-boolean v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 349
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 350
    .local v2, l:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 352
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Ljava/lang/Long;
    :catchall_4f
    move-exception v3

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_4f

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
