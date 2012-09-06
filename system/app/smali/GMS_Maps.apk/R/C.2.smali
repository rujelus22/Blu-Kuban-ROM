.class final Lr/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private final c:Lr/X;

.field private d:I


# direct methods
.method constructor <init>(Lr/X;I[B)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3277
    iput-object p3, p0, Lr/C;->a:[B

    .line 3278
    const/4 v0, 0x0

    iput v0, p0, Lr/C;->b:I

    .line 3279
    iput-object p1, p0, Lr/C;->c:Lr/X;

    .line 3280
    iput p2, p0, Lr/C;->d:I

    .line 3281
    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3302
    iget v0, p0, Lr/C;->b:I

    if-nez v0, :cond_6

    .line 3312
    :goto_5
    return-void

    .line 3305
    :cond_6
    iget-object v1, p0, Lr/C;->c:Lr/X;

    monitor-enter v1

    .line 3306
    :try_start_9
    iget-object v0, p0, Lr/C;->c:Lr/X;

    iget v2, p0, Lr/C;->d:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lr/X;->a(J)V

    .line 3307
    iget-object v0, p0, Lr/C;->c:Lr/X;

    iget-object v2, p0, Lr/C;->a:[B

    const/4 v3, 0x0

    iget v4, p0, Lr/C;->b:I

    invoke-interface {v0, v2, v3, v4}, Lr/X;->b([BII)V

    .line 3308
    iget-object v0, p0, Lr/C;->c:Lr/X;

    invoke-interface {v0}, Lr/X;->b()V

    .line 3309
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2b

    .line 3310
    iget v0, p0, Lr/C;->d:I

    iget v1, p0, Lr/C;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lr/C;->d:I

    .line 3311
    iput v5, p0, Lr/C;->b:I

    goto :goto_5

    .line 3309
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method a([B)V
    .registers 6
    .parameter

    .prologue
    .line 3284
    array-length v0, p1

    iget v1, p0, Lr/C;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lr/C;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 3285
    invoke-virtual {p0}, Lr/C;->a()V

    .line 3288
    :cond_c
    array-length v0, p1

    iget-object v1, p0, Lr/C;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_32

    .line 3289
    iget-object v1, p0, Lr/C;->c:Lr/X;

    monitor-enter v1

    .line 3290
    :try_start_15
    iget-object v0, p0, Lr/C;->c:Lr/X;

    iget v2, p0, Lr/C;->d:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lr/X;->a(J)V

    .line 3291
    iget-object v0, p0, Lr/C;->c:Lr/X;

    invoke-interface {v0, p1}, Lr/X;->b([B)V

    .line 3292
    iget-object v0, p0, Lr/C;->c:Lr/X;

    invoke-interface {v0}, Lr/X;->b()V

    .line 3293
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2f

    .line 3294
    iget v0, p0, Lr/C;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lr/C;->d:I

    .line 3299
    :goto_2e
    return-void

    .line 3293
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    .line 3296
    :cond_32
    const/4 v0, 0x0

    iget-object v1, p0, Lr/C;->a:[B

    iget v2, p0, Lr/C;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3297
    iget v0, p0, Lr/C;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lr/C;->b:I

    goto :goto_2e
.end method

.method b()V
    .registers 1

    .prologue
    .line 3315
    invoke-virtual {p0}, Lr/C;->a()V

    .line 3316
    return-void
.end method
