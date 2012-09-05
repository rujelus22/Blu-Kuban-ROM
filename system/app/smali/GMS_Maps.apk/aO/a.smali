.class public LaO/a;
.super Ljava/lang/Object;


# instance fields
.field private a:LaJ/u;

.field private final b:Lap/d;

.field private final c:Lap/d;

.field private final d:LaJ/v;


# direct methods
.method private c()V
    .registers 5

    iget-object v0, p0, LaO/a;->c:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    invoke-static {}, Lae/d;->e()Lae/b;

    move-result-object v0

    invoke-virtual {v0}, Lae/b;->a()I

    move-result v0

    iget-object v1, p0, LaO/a;->c:Lap/d;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lap/d;->c(J)V

    iget-object v1, p0, LaO/a;->c:Lap/d;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lap/d;->a(J)V

    iget-object v0, p0, LaO/a;->c:Lap/d;

    invoke-virtual {v0}, Lap/d;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, LaO/a;->c()V

    return-void
.end method

.method public a(LaJ/u;)V
    .registers 4

    iget-object v0, p0, LaO/a;->a:LaJ/u;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaO/a;->a:LaJ/u;

    iget-object v1, p0, LaO/a;->d:LaJ/v;

    invoke-virtual {v0, v1}, LaJ/u;->b(LaJ/v;)V

    :cond_b
    iput-object p1, p0, LaO/a;->a:LaJ/u;

    iget-object v0, p0, LaO/a;->a:LaJ/u;

    iget-object v1, p0, LaO/a;->d:LaJ/v;

    invoke-virtual {v0, v1}, LaJ/u;->a(LaJ/v;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    invoke-virtual {p0, p1}, LaO/a;->b(Z)Lcom/google/googlenav/bb;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aV;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/bb;LaJ/u;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method protected b(Z)Lcom/google/googlenav/bb;
    .registers 8

    const/4 v5, 0x5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aY;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/google/googlenav/aY;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    iget-object v2, p0, LaO/a;->a:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->f()LaJ/H;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v1

    iget-object v2, p0, LaO/a;->a:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->c(I)Lcom/google/googlenav/bc;

    move-result-object v1

    iget-object v2, p0, LaO/a;->a:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->d(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(Ljava/util/Map;)Lcom/google/googlenav/bc;

    move-result-object v0

    if-eqz p1, :cond_5c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->j(Z)Lcom/google/googlenav/bc;

    const-string v1, "28"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    :goto_57
    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    return-object v0

    :cond_5c
    const-string v1, "27"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    goto :goto_57
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, LaO/a;->b:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    iget-object v0, p0, LaO/a;->c:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    return-void
.end method
