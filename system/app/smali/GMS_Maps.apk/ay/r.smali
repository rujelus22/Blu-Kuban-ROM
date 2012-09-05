.class public Lay/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/googlenav/android/ac;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/android/ac;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lay/r;->b:Ljava/util/Map;

    iput-object p2, p0, Lay/r;->c:Lcom/google/googlenav/android/ac;

    new-instance v0, LK/bW;

    invoke-direct {v0}, LK/bW;-><init>()V

    invoke-virtual {v0, p1}, LK/bW;->a(I)LK/bW;

    move-result-object v0

    invoke-virtual {v0}, LK/bW;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lay/r;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic a(Lay/r;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2

    iget-object v0, p0, Lay/r;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/bG;Lay/u;Z)V
    .registers 8

    invoke-virtual {p0, p1}, Lay/r;->b(Lcom/google/googlenav/ui/bG;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aP;

    new-instance v3, Lay/s;

    invoke-direct {v3, p0, v0, p2}, Lay/s;-><init>(Lay/r;Ljava/lang/String;Lay/u;)V

    invoke-direct {v2, v0, p3, v3}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;ZLcom/google/googlenav/aR;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/bG;Ljava/util/List;Lay/u;Lay/q;)V
    .registers 8

    invoke-virtual {p0, p1}, Lay/r;->b(Lcom/google/googlenav/ui/bG;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lay/r;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lay/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lay/r;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lay/u;->a()V

    goto :goto_11
.end method

.method private a(Ljava/util/List;Lay/u;)V
    .registers 7

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bG;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1e

    const/4 v3, 0x1

    :goto_17
    invoke-direct {p0, v0, p2, v3}, Lay/r;->a(Lcom/google/googlenav/ui/bG;Lay/u;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1e
    move v3, v2

    goto :goto_17

    :cond_20
    return-void
.end method

.method static synthetic b(Lay/r;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lay/r;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lay/r;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lay/r;->c:Lcom/google/googlenav/android/ac;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/bG;)Lah/f;
    .registers 4

    iget-object v0, p0, Lay/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0, p1}, Lay/r;->b(Lcom/google/googlenav/ui/bG;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Lah/f;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lay/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bG;Lay/q;)V
    .registers 4

    invoke-static {p1}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    return-void
.end method

.method public a(Ljava/lang/Iterable;Lay/q;)V
    .registers 8

    new-instance v1, Lay/u;

    invoke-direct {v1}, Lay/u;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bG;

    invoke-direct {p0, v0, v2, v1, p2}, Lay/r;->a(Lcom/google/googlenav/ui/bG;Ljava/util/List;Lay/u;Lay/q;)V

    goto :goto_1e

    :cond_2e
    invoke-direct {p0, v2, v1}, Lay/r;->a(Ljava/util/List;Lay/u;)V

    return-void
.end method

.method public a(Ljava/util/List;Lay/q;)V
    .registers 7

    new-instance v2, Lay/u;

    invoke-direct {v2}, Lay/u;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bG;

    invoke-direct {p0, v0, v3, v2, p2}, Lay/r;->a(Lcom/google/googlenav/ui/bG;Ljava/util/List;Lay/u;Lay/q;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_23
    invoke-direct {p0, v3, v2}, Lay/r;->a(Ljava/util/List;Lay/u;)V

    return-void
.end method

.method public b()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lay/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/f;

    invoke-interface {v0}, Lah/f;->g()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    :cond_1f
    return v1
.end method

.method protected b(Lcom/google/googlenav/ui/bG;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bG;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bG;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/aP;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/googlenav/ui/bG;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lay/r;->b(Lcom/google/googlenav/ui/bG;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lay/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
