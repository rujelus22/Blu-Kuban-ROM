.class public Lcom/google/api/client/util/o;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field final classInfo:Lcom/google/api/client/util/g;

.field unknownFields:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/api/client/util/a;->a()Lcom/google/api/client/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/g;->a(Ljava/lang/Class;)Lcom/google/api/client/util/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/o;->classInfo:Lcom/google/api/client/util/g;

    .line 183
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/util/o;
    .registers 3

    .prologue
    .line 126
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/o;

    .line 127
    invoke-static {p0, v0}, Lcom/google/api/client/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/api/client/util/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 129
    return-object v0

    .line 130
    :catch_14
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/api/client/util/o;->clone()Lcom/google/api/client/util/o;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 115
    new-instance v0, Lcom/google/api/client/util/q;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/q;-><init>(Lcom/google/api/client/util/o;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 57
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 58
    const/4 v0, 0x0

    .line 65
    :goto_5
    return-object v0

    .line 60
    :cond_6
    check-cast p1, Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/google/api/client/util/o;->classInfo:Lcom/google/api/client/util/g;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_15

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 65
    :cond_15
    iget-object v0, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public final getUnknownKeys()Ljava/util/Map;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/util/o;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/util/o;->classInfo:Lcom/google/api/client/util/g;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_10

    .line 72
    invoke-virtual {v1, p0}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-virtual {v1, p0, p2}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 95
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/api/client/util/o;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 98
    :cond_22
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 102
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    move-object v0, p1

    .line 103
    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/google/api/client/util/o;->classInfo:Lcom/google/api/client/util/g;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_15

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 108
    :cond_15
    iget-object v0, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/api/client/util/o;->classInfo:Lcom/google/api/client/util/g;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_c

    .line 87
    invoke-virtual {v0, p0, p2}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :goto_b
    return-void

    .line 90
    :cond_c
    iget-object v0, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public final setUnknownKeys(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    .line 151
    return-void
.end method
