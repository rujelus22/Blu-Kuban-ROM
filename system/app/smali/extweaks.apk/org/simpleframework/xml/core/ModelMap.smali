.class Lorg/simpleframework/xml/core/ModelMap;
.super Ljava/util/LinkedHashMap;
.source "ModelMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelMap;->type:Ljava/lang/Class;

    .line 52
    return-void
.end method

.method private getModels(Lorg/simpleframework/xml/stream/Style;)Lorg/simpleframework/xml/core/ModelMap;
    .registers 8
    .parameter

    .prologue
    .line 135
    new-instance v2, Lorg/simpleframework/xml/core/ModelMap;

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelMap;->type:Ljava/lang/Class;

    invoke-direct {v2, v0}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    .line 139
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    if-eqz v1, :cond_2b

    .line 142
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/ModelList;->build()Lorg/simpleframework/xml/core/ModelList;

    move-result-object v1

    .line 144
    :cond_2b
    invoke-virtual {v2, v4}, Lorg/simpleframework/xml/core/ModelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 145
    new-instance v1, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Path with name \'%s\' is a duplicate of \'%s\' in %s "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelMap;->type:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 147
    :cond_47
    invoke-virtual {v2, v4, v1}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 149
    :cond_4b
    return-object v2
.end method


# virtual methods
.method public getModels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/ModelMap;
    .registers 3
    .parameter

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_a

    .line 119
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ModelMap;->getModels(Lorg/simpleframework/xml/stream/Style;)Lorg/simpleframework/xml/core/ModelMap;

    move-result-object p0

    .line 121
    :cond_a
    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/ModelList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 68
    if-eqz v0, :cond_d

    .line 69
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ModelList;->lookup(I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 71
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public register(Ljava/lang/String;Lorg/simpleframework/xml/core/Model;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 86
    if-nez v0, :cond_10

    .line 87
    new-instance v0, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    .line 88
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_10
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    .line 91
    return-void
.end method
