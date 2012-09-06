.class public abstract Lcom/google/common/collect/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/google/common/collect/bx;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 240
    instance-of v0, p0, Lcom/google/common/collect/bx;

    if-eqz v0, :cond_13

    instance-of v0, p0, Lcom/google/common/collect/bK;

    if-nez v0, :cond_13

    move-object v0, p0

    .line 245
    check-cast v0, Lcom/google/common/collect/bx;

    .line 246
    invoke-virtual {v0}, Lcom/google/common/collect/bx;->d()Z

    move-result v2

    if-nez v2, :cond_13

    .line 265
    :goto_12
    return-object v0

    .line 252
    :cond_13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 253
    array-length v2, v0

    packed-switch v2, :pswitch_data_5e

    .line 260
    :goto_23
    array-length v2, v0

    if-ge v1, v2, :cond_57

    .line 261
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 262
    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 263
    invoke-static {v2, v3}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 255
    :pswitch_3b
    invoke-static {}, Lcom/google/common/collect/bx;->h()Lcom/google/common/collect/bx;

    move-result-object v0

    goto :goto_12

    .line 257
    :pswitch_40
    new-instance v2, Lcom/google/common/collect/dq;

    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/common/collect/dq;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v2

    goto :goto_12

    .line 265
    :cond_57
    new-instance v1, Lcom/google/common/collect/db;

    invoke-direct {v1, v0}, Lcom/google/common/collect/db;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_12

    .line 253
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

    .prologue
    .line 139
    const-string v0, "null key"

    invoke-static {p0, v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null value"

    invoke-static {p1, v1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/google/common/collect/db;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/collect/db;-><init>([Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public static h()Lcom/google/common/collect/bx;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/common/collect/bc;->a:Lcom/google/common/collect/bc;

    return-object v0
.end method

.method public static i()Lcom/google/common/collect/by;
    .registers 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0}, Lcom/google/common/collect/by;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/collect/ImmutableSet;
.end method

.method public abstract c()Lcom/google/common/collect/br;
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method abstract d()Z
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 351
    if-ne p1, p0, :cond_4

    .line 352
    const/4 v0, 0x1

    .line 358
    :goto_3
    return v0

    .line 354
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 355
    check-cast p1, Ljava/util/Map;

    .line 356
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 358
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->size()I

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
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->x_()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 370
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->c()Lcom/google/common/collect/br;

    move-result-object v0

    return-object v0
.end method

.method public abstract x_()Lcom/google/common/collect/ImmutableSet;
.end method
