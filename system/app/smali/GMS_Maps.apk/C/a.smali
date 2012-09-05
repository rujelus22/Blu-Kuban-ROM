.class public LC/a;
.super LC/f;


# instance fields
.field private final a:[LC/j;

.field private b:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, LC/f;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x190

    new-array v0, v0, [LC/j;

    iput-object v0, p0, LC/a;->a:[LC/j;

    iput v1, p0, LC/a;->b:I

    iput v1, p0, LC/a;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .registers 6

    const/16 v1, 0x190

    monitor-enter p0

    :try_start_3
    iget v0, p0, LC/a;->d:I

    if-ge v0, v1, :cond_1a

    iget v0, p0, LC/a;->d:I

    new-array v0, v0, [LC/j;

    iget-object v1, p0, LC/a;->a:[LC/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, LC/a;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_37

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1a
    const/16 v0, 0x190

    :try_start_1c
    new-array v0, v0, [LC/j;

    iget-object v1, p0, LC/a;->a:[LC/j;

    iget v2, p0, LC/a;->b:I

    const/4 v3, 0x0

    iget v4, p0, LC/a;->b:I

    rsub-int v4, v4, 0x190

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LC/a;->a:[LC/j;

    const/4 v2, 0x0

    iget v3, p0, LC/a;->b:I

    rsub-int v3, v3, 0x190

    iget v4, p0, LC/a;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_37

    goto :goto_14

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LC/j;)V
    .registers 5

    const/16 v2, 0x190

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget v0, p0, LC/a;->d:I

    if-ne v0, v2, :cond_27

    iget v0, p0, LC/a;->b:I

    iget v1, p0, LC/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LC/a;->b:I

    iget v1, p0, LC/a;->b:I

    if-ne v1, v2, :cond_21

    const/4 v1, 0x0

    iput v1, p0, LC/a;->b:I

    :cond_21
    :goto_21
    iget-object v1, p0, LC/a;->a:[LC/j;

    aput-object p1, v1, v0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_b

    monitor-exit p0

    return-void

    :cond_27
    :try_start_27
    iget v0, p0, LC/a;->b:I

    iget v1, p0, LC/a;->d:I

    add-int/2addr v0, v1

    iget v1, p0, LC/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LC/a;->d:I
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_b

    goto :goto_21
.end method
