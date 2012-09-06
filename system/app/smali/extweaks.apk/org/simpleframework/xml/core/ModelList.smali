.class Lorg/simpleframework/xml/core/ModelList;
.super Ljava/util/ArrayList;
.source "ModelList.java"


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

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public build()Lorg/simpleframework/xml/core/ModelList;
    .registers 4

    .prologue
    .line 53
    new-instance v1, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    .line 55
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .line 56
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    goto :goto_9

    .line 58
    :cond_19
    return-object v1
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .line 71
    if-eqz v0, :cond_4

    .line 72
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    const/4 v0, 0x0

    .line 77
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public lookup(I)Lorg/simpleframework/xml/core/Model;
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->size()I

    move-result v0

    .line 92
    if-gt p1, v0, :cond_f

    .line 93
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ModelList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .line 95
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public register(Lorg/simpleframework/xml/core/Model;)V
    .registers 6
    .parameter

    .prologue
    .line 108
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Model;->getIndex()I

    move-result v1

    .line 109
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->size()I

    move-result v2

    .line 111
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_1d

    .line 112
    if-lt v0, v2, :cond_11

    .line 113
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/core/ModelList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_11
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_1a

    .line 116
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3, p1}, Lorg/simpleframework/xml/core/ModelList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 119
    :cond_1d
    return-void
.end method

.method public take()Lorg/simpleframework/xml/core/Model;
    .registers 3

    .prologue
    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ModelList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .line 132
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
