.class Lcom/google/common/collect/Synchronized$SynchronizedSet;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSet;,"Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    .local p1, delegate:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 245
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 241
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSet;,"Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 241
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSet;,"Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSet;,"Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 252
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSet;,"Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    if-ne p1, p0, :cond_4

    .line 253
    const/4 v0, 0x1

    .line 256
    :goto_3
    return v0

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_3

    .line 257
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 261
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedSet;,"Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 263
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
