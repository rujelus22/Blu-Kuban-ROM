.class public final Lcom/google/android/youtube/core/utils/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a(Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 24
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_20

    aget-object v3, p1, v1

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 26
    iget-object v5, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v5, v3, :cond_b

    .line 31
    :goto_1b
    return-object v0

    .line 24
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 31
    :cond_20
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static a(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Ljava/util/Set;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 54
    iget-object v3, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v3, p1, :cond_9

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 56
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 59
    :cond_20
    return-object v1
.end method

.method public static a(Ljava/util/Set;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 69
    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    if-eq v0, p1, :cond_4

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 73
    :cond_18
    return-void
.end method

.method public static a(Ljava/util/Set;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 77
    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 81
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
