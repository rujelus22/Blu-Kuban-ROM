.class public Lcom/google/googlenav/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/al;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 8

    const/4 v1, 0x2

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ak;->c:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/google/googlenav/al;

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/al;-><init>(Lam/b;)V

    :goto_1b
    iput-object v0, p0, Lcom/google/googlenav/ak;->a:Lcom/google/googlenav/al;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ak;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v1, :cond_42

    iget-object v2, p0, Lcom/google/googlenav/ak;->c:Ljava/util/Vector;

    new-instance v3, Lcom/google/googlenav/al;

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-virtual {v4, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/al;-><init>(Lam/b;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    :cond_42
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/al;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ak;->a:Lcom/google/googlenav/al;

    return-object v0
.end method

.method public b()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ak;->c:Ljava/util/Vector;

    return-object v0
.end method
