.class public Lcom/google/android/opengl/common/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/common/Pool$Allocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllocator:Lcom/google/android/opengl/common/Pool$Allocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/opengl/common/Pool$Allocator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mFreeList:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mFreeListIndex:I


# direct methods
.method public constructor <init>(ILcom/google/android/opengl/common/Pool$Allocator;)V
    .registers 4
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/opengl/common/Pool$Allocator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/google/android/opengl/common/Pool;,"Lcom/google/android/opengl/common/Pool<TE;>;"
    .local p2, allocator:Lcom/google/android/opengl/common/Pool$Allocator;,"Lcom/google/android/opengl/common/Pool$Allocator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/opengl/common/Pool;->mFreeList:[Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/common/Pool;->mFreeListIndex:I

    .line 20
    iput-object p2, p0, Lcom/google/android/opengl/common/Pool;->mAllocator:Lcom/google/android/opengl/common/Pool$Allocator;

    .line 21
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
    .line 24
    .local p0, this:Lcom/google/android/opengl/common/Pool;,"Lcom/google/android/opengl/common/Pool<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v2, p0, Lcom/google/android/opengl/common/Pool;->mFreeListIndex:I

    if-nez v2, :cond_d

    .line 26
    iget-object v2, p0, Lcom/google/android/opengl/common/Pool;->mAllocator:Lcom/google/android/opengl/common/Pool$Allocator;

    invoke-interface {v2}, Lcom/google/android/opengl/common/Pool$Allocator;->allocate()Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1d

    move-result-object v1

    .line 32
    :goto_b
    monitor-exit p0

    return-object v1

    .line 29
    :cond_d
    :try_start_d
    iget v2, p0, Lcom/google/android/opengl/common/Pool;->mFreeListIndex:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/google/android/opengl/common/Pool;->mFreeListIndex:I

    .line 30
    .local v0, index:I
    iget-object v2, p0, Lcom/google/android/opengl/common/Pool;->mFreeList:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 31
    .local v1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/android/opengl/common/Pool;->mFreeList:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1d

    goto :goto_b

    .line 24
    .end local v0           #index:I
    .end local v1           #object:Ljava/lang/Object;,"TE;"
    :catchall_1d
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
    .line 36
    .local p0, this:Lcom/google/android/opengl/common/Pool;,"Lcom/google/android/opengl/common/Pool<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    if-nez p1, :cond_5

    .line 48
    :goto_3
    monitor-exit p0

    return-void

    .line 39
    :cond_5
    :try_start_5
    iget v0, p0, Lcom/google/android/opengl/common/Pool;->mFreeListIndex:I

    .line 40
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/opengl/common/Pool;->mFreeList:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_15

    .line 42
    iget-object v1, p0, Lcom/google/android/opengl/common/Pool;->mAllocator:Lcom/google/android/opengl/common/Pool$Allocator;

    invoke-interface {v1, p1}, Lcom/google/android/opengl/common/Pool$Allocator;->destroy(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    goto :goto_3

    .line 36
    .end local v0           #index:I
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 45
    .restart local v0       #index:I
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/opengl/common/Pool;->mFreeList:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 46
    iget v1, p0, Lcom/google/android/opengl/common/Pool;->mFreeListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/opengl/common/Pool;->mFreeListIndex:I
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_12

    goto :goto_3
.end method
