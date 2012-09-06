.class public Lk/j;
.super Lk/k;
.source "SourceFile"


# instance fields
.field private final b:[LA/j;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lk/k;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x190

    new-array v0, v0, [LA/j;

    iput-object v0, p0, Lk/j;->b:[LA/j;

    .line 22
    iput v1, p0, Lk/j;->d:I

    .line 23
    iput v1, p0, Lk/j;->e:I

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .registers 6

    .prologue
    const/16 v1, 0x190

    .line 32
    monitor-enter p0

    :try_start_3
    iget v0, p0, Lk/j;->e:I

    if-ge v0, v1, :cond_1a

    .line 33
    iget v0, p0, Lk/j;->e:I

    new-array v0, v0, [LA/j;

    .line 34
    iget-object v1, p0, Lk/j;->b:[LA/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lk/j;->e:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :goto_14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_37

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 36
    :cond_1a
    const/16 v0, 0x190

    :try_start_1c
    new-array v0, v0, [LA/j;

    .line 37
    iget-object v1, p0, Lk/j;->b:[LA/j;

    iget v2, p0, Lk/j;->d:I

    const/4 v3, 0x0

    iget v4, p0, Lk/j;->d:I

    rsub-int v4, v4, 0x190

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v1, p0, Lk/j;->b:[LA/j;

    const/4 v2, 0x0

    iget v3, p0, Lk/j;->d:I

    rsub-int v3, v3, 0x190

    iget v4, p0, Lk/j;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_37

    goto :goto_14

    .line 32
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LA/j;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x190

    .line 47
    monitor-enter p0

    if-nez p1, :cond_e

    .line 48
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 47
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 50
    :cond_e
    :try_start_e
    iget v0, p0, Lk/j;->e:I

    if-ne v0, v2, :cond_4c

    .line 51
    iget v0, p0, Lk/j;->d:I

    .line 52
    iget v1, p0, Lk/j;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/j;->d:I

    .line 53
    iget v1, p0, Lk/j;->d:I

    if-ne v1, v2, :cond_21

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lk/j;->d:I

    .line 56
    :cond_21
    iget-object v1, p0, Lk/j;->b:[LA/j;

    aget-object v1, v1, v0

    instance-of v1, v1, Lk/A;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lk/j;->b:[LA/j;

    iget v2, p0, Lk/j;->d:I

    aget-object v1, v1, v2

    instance-of v1, v1, Lk/A;

    if-nez v1, :cond_46

    .line 60
    iget-object v1, p0, Lk/j;->b:[LA/j;

    iget v2, p0, Lk/j;->d:I

    iget-object v3, p0, Lk/j;->b:[LA/j;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 61
    iget-object v1, p0, Lk/j;->b:[LA/j;

    iget v2, p0, Lk/j;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, LA/j;->f()V

    .line 63
    :cond_46
    iget-object v1, p0, Lk/j;->b:[LA/j;

    aput-object p1, v1, v0
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_b

    .line 68
    :goto_4a
    monitor-exit p0

    return-void

    .line 65
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lk/j;->b:[LA/j;

    iget v1, p0, Lk/j;->e:I

    aput-object p1, v0, v1

    .line 66
    iget v0, p0, Lk/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/j;->e:I
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_b

    goto :goto_4a
.end method
