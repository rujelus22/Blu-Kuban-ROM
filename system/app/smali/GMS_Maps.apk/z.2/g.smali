.class public Lz/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;

.field protected final b:I

.field private c:Lz/j;

.field private d:Lz/j;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    iput p1, p0, Lz/g;->b:I

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/j;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-direct {p0, v0}, Lz/g;->b(Lz/j;)V

    if-eqz p2, :cond_16

    iget-object v1, v0, Lz/j;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lz/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, v0, Lz/j;->d:Ljava/lang/Object;

    goto :goto_b
.end method

.method private a(Lz/j;)V
    .registers 3

    iget-object v0, p0, Lz/g;->d:Lz/j;

    if-nez v0, :cond_9

    iput-object p1, p0, Lz/g;->c:Lz/j;

    iput-object p1, p0, Lz/g;->d:Lz/j;

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lz/g;->d:Lz/j;

    iput-object v0, p1, Lz/j;->a:Lz/j;

    iput-object p1, v0, Lz/j;->b:Lz/j;

    iput-object p1, p0, Lz/g;->d:Lz/j;

    goto :goto_8
.end method

.method private b(Lz/j;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Lz/j;->a:Lz/j;

    iget-object v1, p1, Lz/j;->b:Lz/j;

    if-eqz v0, :cond_9

    iput-object v1, v0, Lz/j;->b:Lz/j;

    :cond_9
    if-eqz v1, :cond_d

    iput-object v0, v1, Lz/j;->a:Lz/j;

    :cond_d
    iput-object v2, p1, Lz/j;->a:Lz/j;

    iput-object v2, p1, Lz/j;->b:Lz/j;

    iget-object v2, p0, Lz/g;->c:Lz/j;

    if-ne v2, p1, :cond_17

    iput-object v1, p0, Lz/g;->c:Lz/j;

    :cond_17
    iget-object v1, p0, Lz/g;->d:Lz/j;

    if-ne v1, p1, :cond_1d

    iput-object v0, p0, Lz/g;->d:Lz/j;

    :cond_1d
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/j;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lz/j;->d:Ljava/lang/Object;

    goto :goto_b
.end method

.method public a(I)V
    .registers 4

    :goto_0
    iget-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_18

    iget-object v0, p0, Lz/g;->c:Lz/j;

    iget-object v0, v0, Lz/j;->c:Ljava/lang/Object;

    iget-object v1, p0, Lz/g;->c:Lz/j;

    iget-object v1, v1, Lz/j;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lz/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_18
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/j;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-direct {p0, v0}, Lz/g;->b(Lz/j;)V

    invoke-direct {p0, v0}, Lz/g;->a(Lz/j;)V

    iget-object v0, v0, Lz/j;->d:Ljava/lang/Object;

    goto :goto_b
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lz/g;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/j;

    if-nez v0, :cond_11

    iget v1, p0, Lz/g;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lz/g;->a(I)V

    :cond_11
    new-instance v1, Lz/j;

    invoke-direct {v1}, Lz/j;-><init>()V

    iput-object p2, v1, Lz/j;->d:Ljava/lang/Object;

    iput-object p1, v1, Lz/j;->c:Ljava/lang/Object;

    if-eqz v0, :cond_29

    invoke-direct {p0, v0}, Lz/g;->b(Lz/j;)V

    iget-object v2, v0, Lz/j;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lz/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lz/j;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lz/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    iget-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    iget-object v2, v1, Lz/j;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lz/g;->a(Lz/j;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz/g;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz/g;->a(I)V

    return-void
.end method

.method public final g()I
    .registers 2

    iget-object v0, p0, Lz/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lz/g;->d:Lz/j;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lz/g;->d:Lz/j;

    iget-object v0, v0, Lz/j;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public final i()Ljava/util/Collection;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lz/g;->g()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lz/g;->c:Lz/j;

    :goto_b
    if-eqz v0, :cond_15

    iget-object v2, v0, Lz/j;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lz/j;->b:Lz/j;

    goto :goto_b

    :cond_15
    return-object v1
.end method

.method public j()Lz/h;
    .registers 3

    new-instance v0, Lz/h;

    iget-object v1, p0, Lz/g;->c:Lz/j;

    invoke-direct {v0, v1}, Lz/h;-><init>(Lz/j;)V

    return-object v0
.end method
