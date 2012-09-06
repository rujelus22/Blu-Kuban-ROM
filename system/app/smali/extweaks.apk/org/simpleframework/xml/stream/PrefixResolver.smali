.class Lorg/simpleframework/xml/stream/PrefixResolver;
.super Ljava/util/LinkedHashMap;
.source "PrefixResolver.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/NamespaceMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lorg/simpleframework/xml/stream/NamespaceMap;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/OutputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    .line 54
    return-void
.end method

.method private resolvePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_13

    .line 183
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/PrefixResolver;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 189
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private resolveReference(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_d

    .line 165
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->size()I

    move-result v0

    .line 116
    if-lez v0, :cond_f

    .line 117
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    if-eqz v0, :cond_f

    .line 123
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolvePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getReference(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 139
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/PrefixResolver;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    if-eqz v1, :cond_a

    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 149
    :goto_24
    return-object v0

    :cond_25
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolveReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
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
    .line 201
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 80
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/PrefixResolver;->setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolvePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_8

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/PrefixResolver;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7
.end method
