.class final Lx/G;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private final c:Lx/aa;

.field private d:I


# direct methods
.method constructor <init>(Lx/aa;I[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lx/G;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lx/G;->b:I

    iput-object p1, p0, Lx/G;->c:Lx/aa;

    iput p2, p0, Lx/G;->d:I

    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lx/G;->b:I

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Lx/G;->c:Lx/aa;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lx/G;->c:Lx/aa;

    iget v2, p0, Lx/G;->d:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lx/aa;->a(J)V

    iget-object v0, p0, Lx/G;->c:Lx/aa;

    iget-object v2, p0, Lx/G;->a:[B

    const/4 v3, 0x0

    iget v4, p0, Lx/G;->b:I

    invoke-interface {v0, v2, v3, v4}, Lx/aa;->b([BII)V

    iget-object v0, p0, Lx/G;->c:Lx/aa;

    invoke-interface {v0}, Lx/aa;->b()V

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2b

    iget v0, p0, Lx/G;->d:I

    iget v1, p0, Lx/G;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lx/G;->d:I

    iput v5, p0, Lx/G;->b:I

    goto :goto_5

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

    array-length v0, p1

    iget v1, p0, Lx/G;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lx/G;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    invoke-virtual {p0}, Lx/G;->a()V

    :cond_c
    array-length v0, p1

    iget-object v1, p0, Lx/G;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_32

    iget-object v1, p0, Lx/G;->c:Lx/aa;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lx/G;->c:Lx/aa;

    iget v2, p0, Lx/G;->d:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lx/aa;->a(J)V

    iget-object v0, p0, Lx/G;->c:Lx/aa;

    invoke-interface {v0, p1}, Lx/aa;->b([B)V

    iget-object v0, p0, Lx/G;->c:Lx/aa;

    invoke-interface {v0}, Lx/aa;->b()V

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2f

    iget v0, p0, Lx/G;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lx/G;->d:I

    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    const/4 v0, 0x0

    iget-object v1, p0, Lx/G;->a:[B

    iget v2, p0, Lx/G;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lx/G;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lx/G;->b:I

    goto :goto_2e
.end method

.method b()V
    .registers 1

    invoke-virtual {p0}, Lx/G;->a()V

    return-void
.end method
