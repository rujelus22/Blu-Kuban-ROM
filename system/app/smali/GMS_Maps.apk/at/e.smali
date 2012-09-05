.class public Lat/e;
.super Lat/a;


# instance fields
.field private final a:Lam/b;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lat/e;->a:Lam/b;

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lat/e;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, v1, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method private k()Ljava/lang/String;
    .registers 2

    const-string v0, "Cohort"

    invoke-static {v0}, Laf/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x3e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Lat/e;->a:Lam/b;

    invoke-static {p1, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, LbD/V;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lat/e;->a:Lam/b;

    invoke-virtual {v2, v3, v1}, Lam/b;->b(ILjava/lang/String;)V

    const-string v2, "Cohort"

    invoke-static {v2, v1}, Laf/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v0, v4}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lat/h;->a(Lam/b;)V

    :cond_2d
    return v3
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
