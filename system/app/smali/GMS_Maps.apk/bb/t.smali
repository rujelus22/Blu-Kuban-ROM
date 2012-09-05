.class public Lbb/t;
.super Lbb/f;


# instance fields
.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Ljava/util/List;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lbb/f;-><init>(IILjava/lang/String;[Laq/a;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbb/t;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bD()I

    move-result v0

    iput v0, p0, Lbb/t;->j:I

    iput-object p2, p0, Lbb/t;->k:Ljava/util/List;

    iget-object v0, p0, Lbb/t;->k:Ljava/util/List;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbb/t;->k:Ljava/util/List;

    :cond_22
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 7

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lbb/t;->k:Ljava/util/List;

    sget-object v2, Lcom/google/googlenav/ah;->a:Lcom/google/common/base/o;

    invoke-static {v0, v2}, LK/J;->a(Ljava/util/Collection;Lcom/google/common/base/o;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, LK/bR;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lbb/t;->k:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_15

    :cond_36
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bC;Lcom/google/googlenav/ah;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->a()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbb/t;->h:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbb/t;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->bD()I

    move-result v0

    iput v0, p0, Lbb/t;->j:I

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbb/t;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lbb/t;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_d

    invoke-direct {p0, p1}, Lbb/t;->b(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method public g()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lbb/t;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbb/t;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lbb/t;->j:I

    return v0
.end method

.method public j()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lbb/t;->k:Ljava/util/List;

    return-object v0
.end method
