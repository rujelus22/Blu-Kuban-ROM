.class Lc/v;
.super Ljava/util/LinkedHashMap;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lc/v;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lc/v;->a:I

    return v0
.end method

.method public a(JJ)V
    .registers 10

    invoke-virtual {p0}, Lc/v;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/F;

    invoke-virtual {v1}, Le/F;->b()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_29

    invoke-virtual {p0, v0}, Lc/v;->a(Ljava/util/Map$Entry;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_29
    invoke-virtual {v1}, Le/F;->c()J

    move-result-wide v3

    cmp-long v1, v3, p3

    if-gez v1, :cond_8

    invoke-virtual {p0, v0}, Lc/v;->a(Ljava/util/Map$Entry;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_38
    return-void
.end method

.method protected a(Ljava/util/Map$Entry;)V
    .registers 2

    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4

    invoke-virtual {p0}, Lc/v;->size()I

    move-result v0

    iget v1, p0, Lc/v;->a:I

    if-le v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lc/v;->a(Ljava/util/Map$Entry;)V

    :cond_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method
