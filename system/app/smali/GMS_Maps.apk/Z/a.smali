.class public abstract LZ/a;
.super Ljava/lang/Object;

# interfaces
.implements LZ/d;


# instance fields
.field protected final a:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(LZ/e;)V
    .registers 5

    iget-object v1, p0, LZ/a;->a:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, LZ/a;->b(LZ/e;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_f
    monitor-exit v1

    return-void

    :cond_11
    iget-object v2, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_f

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, LZ/a;->h()[LZ/e;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1}, LZ/e;->a(LZ/d;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method protected b(LZ/e;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    iget-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/ref/WeakReference;

    if-ne v2, v3, :cond_1e

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_1e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_24
    return v1

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_29
    const/4 v1, -0x1

    goto :goto_24
.end method

.method public h()[LZ/e;
    .registers 8

    const/4 v1, 0x0

    iget-object v4, p0, LZ/a;->a:Ljava/util/Vector;

    monitor-enter v4

    :try_start_4
    iget-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [LZ/e;

    iget-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_15
    if-ltz v3, :cond_49

    iget-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/ref/WeakReference;

    if-ne v5, v6, :cond_41

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    add-int v5, v3, v1

    check-cast v0, LZ/e;

    aput-object v0, v2, v5

    move v0, v1

    :goto_34
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_15

    :cond_39
    iget-object v0, p0, LZ/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_34

    :cond_41
    add-int v5, v3, v1

    check-cast v0, LZ/e;

    aput-object v0, v2, v5

    move v0, v1

    goto :goto_34

    :cond_49
    if-lez v1, :cond_59

    array-length v0, v2

    sub-int/2addr v0, v1

    new-array v0, v0, [LZ/e;

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v2, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_54
    monitor-exit v4

    return-object v0

    :catchall_56
    move-exception v0

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    move-object v0, v2

    goto :goto_54
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LZ/a;->a(Ljava/lang/Object;)V

    return-void
.end method
