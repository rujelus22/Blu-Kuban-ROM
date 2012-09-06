.class abstract LahI;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements LakD;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LakD",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:I

.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 120
    iput-object p1, p0, LahI;->a:Ljava/util/Map;

    .line 121
    return-void
.end method

.method static synthetic a(LahI;)I
    .registers 3
    .parameter

    .prologue
    .line 88
    iget v0, p0, LahI;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, LahI;->a:I

    return v0
.end method

.method static synthetic a(LahI;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iget v0, p0, LahI;->a:I

    add-int/2addr v0, p1

    iput v0, p0, LahI;->a:I

    return v0
.end method

.method static synthetic a(LahI;Ljava/lang/Object;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, LahI;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1012
    :try_start_1
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_1a

    .line 1020
    if-eqz v0, :cond_17

    .line 1021
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1022
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1023
    iget v0, p0, LahI;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, LahI;->a:I

    :cond_17
    move v0, v1

    move v1, v0

    .line 1025
    :goto_19
    return v1

    .line 1015
    :catch_1a
    move-exception v0

    goto :goto_19

    .line 1013
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method static synthetic a(LahI;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, LahI;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 364
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_d

    .line 365
    new-instance v0, LahW;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, LahW;-><init>(LahI;Ljava/lang/Object;Ljava/util/SortedSet;LahR;)V

    .line 371
    :goto_c
    return-object v0

    .line 366
    :cond_d
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_19

    .line 367
    new-instance v0, LahV;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, LahV;-><init>(LahI;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_c

    .line 368
    :cond_19
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_24

    .line 369
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, LahI;->a(Ljava/lang/Object;Ljava/util/List;LahR;)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 371
    :cond_24
    new-instance v0, LahR;

    invoke-direct {v0, p0, p1, p2, v1}, LahR;-><init>(LahI;Ljava/lang/Object;Ljava/util/Collection;LahR;)V

    goto :goto_c
.end method

.method static synthetic a(LahI;Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, LahI;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 640
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic a(LahI;Ljava/lang/Object;Ljava/util/List;LahR;)Ljava/util/List;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, LahI;->a(Ljava/lang/Object;Ljava/util/List;LahR;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;LahR;)Ljava/util/List;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "LahI",
            "<TK;TV;>.ahR;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 377
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, LahO;

    invoke-direct {v0, p0, p1, p2, p3}, LahO;-><init>(LahI;Ljava/lang/Object;Ljava/util/List;LahR;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, LahT;

    invoke-direct {v0, p0, p1, p2, p3}, LahT;-><init>(LahI;Ljava/lang/Object;Ljava/util/List;LahR;)V

    goto :goto_9
.end method

.method static synthetic a(LahI;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(LahI;)I
    .registers 3
    .parameter

    .prologue
    .line 88
    iget v0, p0, LahI;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LahI;->a:I

    return v0
.end method

.method static synthetic b(LahI;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iget v0, p0, LahI;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, LahI;->a:I

    return v0
.end method

.method private b()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1162
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, LahP;

    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, LahP;-><init>(LahI;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, LahJ;

    iget-object v1, p0, LahI;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, LahJ;-><init>(LahI;Ljava/util/Map;)V

    goto :goto_10
.end method

.method private b()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, LahQ;

    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, LahQ;-><init>(LahI;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, LahM;

    iget-object v1, p0, LahI;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, LahM;-><init>(LahI;Ljava/util/Map;)V

    goto :goto_10
.end method

.method private c(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 213
    if-nez v0, :cond_13

    .line 214
    invoke-virtual {p0, p1}, LahI;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 215
    iget-object v1, p0, LahI;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_13
    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, LahI;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, LahI;->b:Ljava/util/Map;

    .line 1158
    if-nez v0, :cond_a

    invoke-direct {p0}, LahI;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LahI;->b:Ljava/util/Map;

    :cond_a
    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, LahI;->a:Ljava/util/Set;

    .line 867
    if-nez v0, :cond_a

    invoke-direct {p0}, LahI;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LahI;->a:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 335
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_a

    .line 337
    :cond_1a
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    const/4 v0, 0x0

    iput v0, p0, LahI;->a:I

    .line 339
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1}, LahI;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 203
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 204
    iget v0, p0, LahI;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LahI;->a:I

    .line 205
    const/4 v0, 0x1

    .line 207
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 351
    if-nez v0, :cond_e

    .line 352
    invoke-virtual {p0, p1}, LahI;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 354
    :cond_e
    invoke-direct {p0, p1, v0}, LahI;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1352
    if-ne p1, p0, :cond_4

    .line 1353
    const/4 v0, 0x1

    .line 1359
    :goto_3
    return v0

    .line 1355
    :cond_4
    instance-of v0, p1, LakD;

    if-eqz v0, :cond_15

    .line 1356
    check-cast p1, LakD;

    .line 1357
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-interface {p1}, LakD;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 1359
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1371
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1382
    iget-object v0, p0, LahI;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
