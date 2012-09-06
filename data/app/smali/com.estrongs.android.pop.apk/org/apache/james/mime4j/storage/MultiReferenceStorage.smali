.class public Lorg/apache/james/mime4j/storage/MultiReferenceStorage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private referenceCounter:I

.field private final storage:Lorg/apache/james/mime4j/storage/Storage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/Storage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    return-void
.end method

.method private declared-synchronized decrementCounter()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private declared-synchronized incrementCounter()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addReference()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->incrementCounter()V

    return-void
.end method

.method public delete()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->decrementCounter()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    :cond_b
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
