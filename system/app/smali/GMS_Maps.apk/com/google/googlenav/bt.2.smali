.class public Lcom/google/googlenav/bt;
.super Lcom/google/googlenav/ah;


# direct methods
.method public constructor <init>(LaM/m;)V
    .registers 4

    invoke-virtual {p1}, LaM/m;->d()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, LaM/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;)V

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->d(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->a(B)V

    invoke-virtual {p1}, LaM/m;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->a(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(LaM/m;Lam/b;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/googlenav/ah;-><init>(Lam/b;)V

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->d(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->a(B)V

    invoke-virtual {p1}, LaM/m;->d()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, LaM/m;->d()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->c(LaJ/g;)V

    :cond_1b
    invoke-virtual {p1}, LaM/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, LaM/m;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bt;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/bt;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
