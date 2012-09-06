.class Lorg/simpleframework/xml/core/LabelMap;
.super Ljava/util/LinkedHashMap;
.source "LabelMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/Label;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/Label;",
        ">;"
    }
.end annotation


# instance fields
.field private final policy:Lorg/simpleframework/xml/core/Policy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    .line 60
    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 99
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 100
    if-eqz v0, :cond_9

    .line 101
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 108
    :cond_26
    return-object v1
.end method

.method public getKeys(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 124
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 125
    if-eqz v0, :cond_9

    .line 126
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 133
    :cond_26
    return-object v1
.end method

.method public getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;
    .registers 3
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/LabelMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public getLabels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;
    .registers 6
    .parameter

    .prologue
    .line 190
    new-instance v1, Lorg/simpleframework/xml/core/LabelMap;

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    .line 192
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 193
    if-eqz v0, :cond_b

    .line 194
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v1, v3, v0}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 199
    :cond_21
    return-object v1
.end method

.method public getPaths()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 146
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 147
    if-eqz v0, :cond_9

    .line 148
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 153
    :cond_1f
    return-object v1
.end method

.method public getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 169
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 170
    if-eqz v0, :cond_9

    .line 171
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 176
    :cond_1f
    return-object v1
.end method

.method public isStrict(Lorg/simpleframework/xml/core/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    if-nez v0, :cond_9

    .line 216
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->isStrict()Z

    move-result v0

    .line 218
    :goto_8
    return v0

    :cond_9
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Policy;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
