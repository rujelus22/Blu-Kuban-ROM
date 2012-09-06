.class final Lorg/simpleframework/xml/core/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field private final map:Ljava/util/Map;

.field private final strict:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Session;-><init>(Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    .line 78
    iput-boolean p1, p0, Lorg/simpleframework/xml/core/Session;->strict:Z

    .line 79
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isStrict()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Session;->strict:Z

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
