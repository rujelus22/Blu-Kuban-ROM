.class public Lcom/google/googlenav/common/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    monitor-enter p2

    move v0, p1

    .line 89
    :goto_2
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 90
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 92
    sub-int v2, v0, p1

    invoke-interface {p2, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    :cond_14
    monitor-exit p2

    .line 95
    return-void

    .line 94
    :catchall_16
    move-exception v0

    monitor-exit p2
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a([I)Z
    .registers 2
    .parameter

    .prologue
    .line 343
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
