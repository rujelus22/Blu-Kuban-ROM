.class public final Lcom/cooliris/media/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFreeList:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mFreeListIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<TE;>;"
    .local p1, objects:[Ljava/lang/Object;,"[TE;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/cooliris/media/Pool;->mFreeList:[Ljava/lang/Object;

    .line 26
    array-length v0, p1

    iput v0, p0, Lcom/cooliris/media/Pool;->mFreeListIndex:I

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized create()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<TE;>;"
    const/4 v1, 0x0

    .line 31
    monitor-enter p0

    :try_start_2
    iget v2, p0, Lcom/cooliris/media/Pool;->mFreeListIndex:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/cooliris/media/Pool;->mFreeListIndex:I

    .line 32
    .local v0, index:I
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/cooliris/media/Pool;->mFreeList:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 33
    iget-object v2, p0, Lcom/cooliris/media/Pool;->mFreeList:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 34
    .local v1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/cooliris/media/Pool;->mFreeList:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 37
    .end local v1           #object:Ljava/lang/Object;,"TE;"
    :cond_18
    monitor-exit p0

    return-object v1

    .line 31
    .end local v0           #index:I
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized delete(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/cooliris/media/Pool;->mFreeListIndex:I

    .line 42
    .local v0, index:I
    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/cooliris/media/Pool;->mFreeList:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 43
    iget-object v1, p0, Lcom/cooliris/media/Pool;->mFreeList:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 44
    iget v1, p0, Lcom/cooliris/media/Pool;->mFreeListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cooliris/media/Pool;->mFreeListIndex:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 46
    :cond_14
    monitor-exit p0

    return-void

    .line 41
    .end local v0           #index:I
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method
