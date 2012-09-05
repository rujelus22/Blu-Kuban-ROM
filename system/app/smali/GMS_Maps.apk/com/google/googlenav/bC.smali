.class public Lcom/google/googlenav/bC;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Z

.field private final c:Ljava/util/List;

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bC;->c:Ljava/util/List;

    iput-object v1, p0, Lcom/google/googlenav/bC;->d:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/googlenav/bC;->a:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/bC;->b:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/bC;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bC;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bC;->c:Ljava/util/List;

    iput-object v2, p0, Lcom/google/googlenav/bC;->d:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/google/googlenav/bC;->b:Z

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bC;->d:Ljava/lang/Integer;

    :goto_23
    invoke-virtual {p1, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1, v3}, Lam/b;->d(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bC;->a:Ljava/lang/Integer;

    :goto_33
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_5a

    const/4 v0, 0x0

    :goto_3c
    invoke-virtual {v1, v4}, Lam/b;->l(I)I

    move-result v2

    if-ge v0, v2, :cond_5a

    invoke-virtual {v1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-static {v2}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/bC;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_54
    iput-object v2, p0, Lcom/google/googlenav/bC;->d:Ljava/lang/Integer;

    goto :goto_23

    :cond_57
    iput-object v2, p0, Lcom/google/googlenav/bC;->a:Ljava/lang/Integer;

    goto :goto_33

    :cond_5a
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bC;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bC;->b:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bC;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bC;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bC;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bC;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
