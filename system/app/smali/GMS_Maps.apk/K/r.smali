.class abstract LK/r;
.super Ljava/lang/Object;

# interfaces
.implements LK/cd;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:I

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    iput-object p1, p0, LK/r;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(LK/r;I)I
    .registers 3

    iget v0, p0, LK/r;->b:I

    add-int/2addr v0, p1

    iput v0, p0, LK/r;->b:I

    return v0
.end method

.method static synthetic a(LK/r;Ljava/lang/Object;)I
    .registers 3

    invoke-direct {p0, p1}, LK/r;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(LK/r;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    invoke-direct {p0, p1, p2}, LK/r;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, LK/r;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, LK/r;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_d

    new-instance v0, LK/F;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, LK/F;-><init>(LK/r;Ljava/lang/Object;Ljava/util/SortedSet;LK/A;)V

    :goto_c
    return-object v0

    :cond_d
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_19

    new-instance v0, LK/E;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, LK/E;-><init>(LK/r;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_c

    :cond_19
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_24

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, LK/r;->a(Ljava/lang/Object;Ljava/util/List;LK/A;)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_24
    new-instance v0, LK/A;

    invoke-direct {v0, p0, p1, p2, v1}, LK/A;-><init>(LK/r;Ljava/lang/Object;Ljava/util/Collection;LK/A;)V

    goto :goto_c
.end method

.method static synthetic a(LK/r;Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3

    invoke-direct {p0, p1}, LK/r;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3

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

.method static synthetic a(LK/r;Ljava/lang/Object;Ljava/util/List;LK/A;)Ljava/util/List;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, LK/r;->a(Ljava/lang/Object;Ljava/util/List;LK/A;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;LK/A;)Ljava/util/List;
    .registers 5

    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, LK/x;

    invoke-direct {v0, p0, p1, p2, p3}, LK/x;-><init>(LK/r;Ljava/lang/Object;Ljava/util/List;LK/A;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, LK/C;

    invoke-direct {v0, p0, p1, p2, p3}, LK/C;-><init>(LK/r;Ljava/lang/Object;Ljava/util/List;LK/A;)V

    goto :goto_9
.end method

.method static synthetic a(LK/r;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, LK/z;

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, LK/z;-><init>(LK/r;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, LK/v;

    iget-object v1, p0, LK/r;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, LK/v;-><init>(LK/r;Ljava/util/Map;)V

    goto :goto_10
.end method

.method static synthetic b(LK/r;)I
    .registers 3

    iget v0, p0, LK/r;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, LK/r;->b:I

    return v0
.end method

.method static synthetic b(LK/r;I)I
    .registers 3

    iget v0, p0, LK/r;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, LK/r;->b:I

    return v0
.end method

.method static synthetic c(LK/r;)I
    .registers 3

    iget v0, p0, LK/r;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LK/r;->b:I

    return v0
.end method

.method private d(Ljava/lang/Object;)I
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_1a

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget v0, p0, LK/r;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, LK/r;->b:I

    :cond_17
    move v0, v1

    move v1, v0

    :goto_19
    return v1

    :catch_1a
    move-exception v0

    goto :goto_19

    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method private g()Ljava/util/Map;
    .registers 3

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, LK/y;

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, LK/y;-><init>(LK/r;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, LK/s;

    iget-object v1, p0, LK/r;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, LK/s;-><init>(LK/r;Ljava/util/Map;)V

    goto :goto_10
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    invoke-direct {p0, p1}, LK/r;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_2b

    invoke-static {p2}, LK/J;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    :cond_20
    iget v3, p0, LK/r;->b:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, LK/r;->b:I

    goto :goto_b

    :cond_2b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_2f
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1}, LK/r;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, LK/r;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LK/r;->b:I

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, LK/r;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :cond_e
    invoke-direct {p0, p1, v0}, LK/r;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, LK/r;->d:Ljava/util/Map;

    if-nez v0, :cond_a

    invoke-direct {p0}, LK/r;->g()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LK/r;->d:Ljava/util/Map;

    :cond_a
    return-object v0
.end method

.method abstract c()Ljava/util/Collection;
.end method

.method c(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0}, LK/r;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget v0, p0, LK/r;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, LK/r;->b:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, LK/cd;

    if-eqz v0, :cond_15

    check-cast p1, LK/cd;

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    invoke-interface {p1}, LK/cd;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LK/r;->c:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-direct {p0}, LK/r;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LK/r;->c:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LK/r;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
