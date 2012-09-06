.class public abstract LaiC;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LaiC;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "LaiC",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Laik;->a:Laik;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)LaiC;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "LaiC",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 264
    instance-of v0, p0, LaiC;

    if-eqz v0, :cond_13

    instance-of v0, p0, LaiK;

    if-nez v0, :cond_13

    move-object v0, p0

    .line 269
    check-cast v0, LaiC;

    .line 270
    invoke-virtual {v0}, LaiC;->a()Z

    move-result v2

    if-nez v2, :cond_13

    .line 289
    :goto_12
    return-object v0

    .line 276
    :cond_13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 277
    array-length v2, v0

    packed-switch v2, :pswitch_data_5e

    .line 284
    :goto_23
    array-length v2, v0

    if-ge v1, v2, :cond_57

    .line 285
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 286
    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 287
    invoke-static {v2, v3}, LaiC;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 279
    :pswitch_3b
    invoke-static {}, LaiC;->a()LaiC;

    move-result-object v0

    goto :goto_12

    .line 281
    :pswitch_40
    new-instance v2, Lala;

    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, LaiC;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {v2, v0}, Lala;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v2

    goto :goto_12

    .line 289
    :cond_57
    new-instance v1, LakK;

    invoke-direct {v1, v0}, LakK;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_12

    .line 277
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "null key"

    invoke-static {p0, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null value"

    invoke-static {p1, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lakz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract a()Laiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laiv",
            "<TV;>;"
        }
    .end annotation
.end method

.method abstract a()Z
.end method

.method public abstract b()LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<TK;>;"
        }
    .end annotation
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0, p1}, LaiC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, LaiC;->a()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 375
    if-ne p1, p0, :cond_4

    .line 376
    const/4 v0, 0x1

    .line 382
    :goto_3
    return v0

    .line 378
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 379
    check-cast p1, Ljava/util/Map;

    .line 380
    invoke-virtual {p0}, LaiC;->a()LaiE;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, LaiE;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 382
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 390
    invoke-virtual {p0}, LaiC;->a()LaiE;

    move-result-object v0

    invoke-virtual {v0}, LaiE;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 337
    invoke-virtual {p0}, LaiC;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, LaiC;->b()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    invoke-static {p0}, Lakz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, LaiC;->a()Laiv;

    move-result-object v0

    return-object v0
.end method
