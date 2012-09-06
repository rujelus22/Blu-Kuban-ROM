.class Lorg/simpleframework/xml/core/Collector;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Criteria;


# instance fields
.field private final alias:Lorg/simpleframework/xml/core/Collector$Registry;

.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final registry:Lorg/simpleframework/xml/core/Collector$Registry;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/Collector$Registry;-><init>(Lorg/simpleframework/xml/core/Collector;Lorg/simpleframework/xml/core/Collector$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    .line 62
    new-instance v0, Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/Collector$Registry;-><init>(Lorg/simpleframework/xml/core/Collector;Lorg/simpleframework/xml/core/Collector$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    .line 63
    iput-object p1, p0, Lorg/simpleframework/xml/core/Collector;->context:Lorg/simpleframework/xml/core/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Collector$Registry;->values()Ljava/util/Collection;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    .line 166
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Variable;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 169
    invoke-interface {v2, p1, v0}, Lorg/simpleframework/xml/core/Contact;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 171
    :cond_22
    return-void
.end method

.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;
    .registers 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Collector$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Collector$Registry;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;
    .registers 7
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Collector$Registry;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    .line 106
    if-eqz v0, :cond_31

    .line 107
    iget-object v1, p0, Lorg/simpleframework/xml/core/Collector;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Variable;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lorg/simpleframework/xml/core/Collector;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/core/Variable;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    iget-object v4, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v4, v1}, Lorg/simpleframework/xml/core/Collector$Registry;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 113
    :cond_2c
    iget-object v1, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/core/Collector$Registry;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_31
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Collector$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    return-object v0
.end method

.method public set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 139
    new-instance v1, Lorg/simpleframework/xml/core/Variable;

    invoke-direct {v1, p1, p2}, Lorg/simpleframework/xml/core/Variable;-><init>(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 141
    if-eqz p1, :cond_36

    .line 142
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Label;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lorg/simpleframework/xml/core/Collector;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/core/Label;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v2

    .line 145
    iget-object v3, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v3, v2}, Lorg/simpleframework/xml/core/Collector$Registry;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 146
    iget-object v3, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v3, v2, v1}, Lorg/simpleframework/xml/core/Collector$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_20
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/core/Collector$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 152
    :cond_36
    return-void
.end method
