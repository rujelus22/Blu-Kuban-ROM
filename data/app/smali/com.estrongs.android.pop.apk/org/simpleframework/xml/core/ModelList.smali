.class Lorg/simpleframework/xml/core/ModelList;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/core/Model;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/simpleframework/xml/core/ModelList;
    .registers 4

    new-instance v1, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    goto :goto_9
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public lookup(I)Lorg/simpleframework/xml/core/Model;
    .registers 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->size()I

    move-result v0

    if-gt p1, v0, :cond_f

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ModelList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public register(Lorg/simpleframework/xml/core/Model;)V
    .registers 6

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Model;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v1, :cond_c

    return-void

    :cond_c
    if-lt v0, v2, :cond_12

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/core/ModelList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_1b

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3, p1}, Lorg/simpleframework/xml/core/ModelList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public take()Lorg/simpleframework/xml/core/Model;
    .registers 3

    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ModelList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_7
.end method
