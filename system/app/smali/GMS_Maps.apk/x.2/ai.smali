.class Lx/ai;
.super Lat/a;


# instance fields
.field a:Lam/b;

.field b:Lx/ad;

.field final synthetic c:Lx/ag;


# direct methods
.method private constructor <init>(Lx/ag;Lam/b;Lx/ad;)V
    .registers 4

    iput-object p1, p0, Lx/ai;->c:Lx/ag;

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p2, p0, Lx/ai;->a:Lam/b;

    iput-object p3, p0, Lx/ai;->b:Lx/ad;

    return-void
.end method

.method synthetic constructor <init>(Lx/ag;Lam/b;Lx/ad;Lx/ah;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lx/ai;-><init>(Lx/ag;Lam/b;Lx/ad;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    iget-object v0, p0, Lx/ai;->a:Lam/b;

    invoke-virtual {v0}, Lam/b;->f()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, LbD/es;->b:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->l(I)I

    move-result v3

    if-nez v3, :cond_f

    :goto_e
    return v0

    :cond_f
    invoke-virtual {v2, v1, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    iget-object v2, p0, Lx/ai;->b:Lx/ad;

    invoke-virtual {v2, v0}, Lx/ad;->a(Lam/b;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lx/ai;->b:Lx/ad;

    invoke-virtual {v2}, Lx/ad;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lx/ai;->c:Lx/ag;

    invoke-static {v2}, Lx/ag;->a(Lx/ag;)Lx/w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lx/w;->a(Lam/b;)V

    :cond_2c
    move v0, v1

    goto :goto_e
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lx/ai;->b:Lx/ad;

    invoke-virtual {v0}, Lx/ad;->i()V

    return-void
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
