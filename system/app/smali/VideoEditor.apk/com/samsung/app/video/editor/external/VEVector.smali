.class public Lcom/samsung/app/video/editor/external/VEVector;
.super Ljava/util/Vector;
.source "VEVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    .local p0, this:Lcom/samsung/app/video/editor/external/VEVector;,"Lcom/samsung/app/video/editor/external/VEVector<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "i"

    .prologue
    .line 25
    .local p0, this:Lcom/samsung/app/video/editor/external/VEVector;,"Lcom/samsung/app/video/editor/external/VEVector<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Vector;-><init>(I)V

    .line 26
    return-void
.end method

.method private doDeleteInternally(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/samsung/app/video/editor/external/VEVector;,"Lcom/samsung/app/video/editor/external/VEVector<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    instance-of v0, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-eqz v0, :cond_a

    .line 38
    check-cast p1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .end local p1           #object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->deleteAllClipArts()V

    .line 42
    :cond_9
    :goto_9
    return-void

    .line 39
    .restart local p1       #object:Ljava/lang/Object;,"TE;"
    :cond_a
    instance-of v0, p1, Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_9

    .line 40
    check-cast p1, Lcom/samsung/app/video/editor/external/Element;

    .end local p1           #object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    goto :goto_9
.end method

.method private doDeleteInternallyForObject(Ljava/lang/Object;)V
    .registers 3
    .parameter "object"

    .prologue
    .line 45
    .local p0, this:Lcom/samsung/app/video/editor/external/VEVector;,"Lcom/samsung/app/video/editor/external/VEVector<TE;>;"
    instance-of v0, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-eqz v0, :cond_a

    .line 47
    check-cast p1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .end local p1
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->deleteAllClipArts()V

    .line 51
    :cond_9
    :goto_9
    return-void

    .line 48
    .restart local p1
    :cond_a
    instance-of v0, p1, Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_9

    .line 49
    check-cast p1, Lcom/samsung/app/video/editor/external/Element;

    .end local p1
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized remove(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/samsung/app/video/editor/external/VEVector;,"Lcom/samsung/app/video/editor/external/VEVector<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/app/video/editor/external/VEVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, object:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, v0}, Lcom/samsung/app/video/editor/external/VEVector;->doDeleteInternally(Ljava/lang/Object;)V

    .line 32
    invoke-super {p0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 30
    .end local v0           #object:Ljava/lang/Object;,"TE;"
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/samsung/app/video/editor/external/VEVector;,"Lcom/samsung/app/video/editor/external/VEVector<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 60
    .local p0, this:Lcom/samsung/app/video/editor/external/VEVector;,"Lcom/samsung/app/video/editor/external/VEVector<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/VEVector;->doDeleteInternallyForObject(Ljava/lang/Object;)V

    .line 61
    invoke-super {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result v0

    monitor-exit p0

    return v0

    .line 60
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
