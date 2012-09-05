.class public Lax/by;
.super Ljava/lang/Object;


# instance fields
.field private a:Lam/b;

.field private b:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lam/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax/by;->a:Lam/b;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lax/by;->a:Lam/b;

    invoke-virtual {v2, v0}, Lam/b;->e(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lax/by;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lax/by;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lax/by;->a:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lax/by;->a:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 3

    const/4 v1, 0x7

    iget-object v0, p0, Lax/by;->a:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lax/by;->a:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public e()Lam/b;
    .registers 3

    const/4 v1, 0x7

    iget-object v0, p0, Lax/by;->a:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lax/by;->a:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
