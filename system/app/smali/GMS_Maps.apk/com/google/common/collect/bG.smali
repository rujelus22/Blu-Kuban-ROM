.class public Lcom/google/common/collect/bG;
.super Lcom/google/common/collect/bz;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/dl;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient a:Lcom/google/common/collect/bR;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bx;ILjava/util/Comparator;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/bz;-><init>(Lcom/google/common/collect/bx;I)V

    .line 333
    if-nez p3, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/google/common/collect/bG;->a:Lcom/google/common/collect/bR;

    .line 335
    return-void

    .line 333
    :cond_9
    invoke-static {p3}, Lcom/google/common/collect/bR;->a(Ljava/util/Comparator;)Lcom/google/common/collect/bR;

    move-result-object v0

    goto :goto_6
.end method

.method static synthetic a(Lcom/google/common/collect/cL;Ljava/util/Comparator;)Lcom/google/common/collect/bG;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/google/common/collect/bG;->b(Lcom/google/common/collect/cL;Ljava/util/Comparator;)Lcom/google/common/collect/bG;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/cL;Ljava/util/Comparator;)Lcom/google/common/collect/bG;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-interface {p0}, Lcom/google/common/collect/cL;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 295
    invoke-static {}, Lcom/google/common/collect/bG;->e()Lcom/google/common/collect/bG;

    move-result-object v0

    .line 323
    :cond_f
    :goto_f
    return-object v0

    .line 298
    :cond_10
    instance-of v0, p0, Lcom/google/common/collect/bG;

    if-eqz v0, :cond_1d

    move-object v0, p0

    .line 300
    check-cast v0, Lcom/google/common/collect/bG;

    .line 302
    invoke-virtual {v0}, Lcom/google/common/collect/bG;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 307
    :cond_1d
    invoke-static {}, Lcom/google/common/collect/bx;->i()Lcom/google/common/collect/by;

    move-result-object v2

    .line 308
    const/4 v0, 0x0

    .line 311
    invoke-interface {p0}, Lcom/google/common/collect/cL;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 314
    if-nez p1, :cond_5b

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 317
    :goto_4b
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 318
    invoke-virtual {v2, v4, v0}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    .line 319
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_59
    move v1, v0

    .line 321
    goto :goto_2f

    .line 314
    :cond_5b
    invoke-static {p1, v0}, Lcom/google/common/collect/bR;->a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/bR;

    move-result-object v0

    goto :goto_4b

    .line 323
    :cond_60
    new-instance v0, Lcom/google/common/collect/bG;

    invoke-virtual {v2}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v2

    invoke-direct {v0, v2, v1, p1}, Lcom/google/common/collect/bG;-><init>(Lcom/google/common/collect/bx;ILjava/util/Comparator;)V

    goto :goto_f

    :cond_6a
    move v0, v1

    goto :goto_59
.end method

.method public static e()Lcom/google/common/collect/bG;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/be;->a:Lcom/google/common/collect/be;

    return-object v0
.end method

.method public static f()Lcom/google/common/collect/bH;
    .registers 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/common/collect/bH;

    invoke-direct {v0}, Lcom/google/common/collect/bH;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/br;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bG;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bG;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/bG;->b:Lcom/google/common/collect/bx;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 348
    if-eqz v0, :cond_b

    .line 353
    :goto_a
    return-object v0

    .line 350
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/bG;->a:Lcom/google/common/collect/bR;

    if-eqz v0, :cond_12

    .line 351
    iget-object v0, p0, Lcom/google/common/collect/bG;->a:Lcom/google/common/collect/bR;

    goto :goto_a

    .line 353
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_a
.end method
