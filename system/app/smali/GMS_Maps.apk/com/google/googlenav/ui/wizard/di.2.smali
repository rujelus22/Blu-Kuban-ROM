.class Lcom/google/googlenav/ui/wizard/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dq;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dg;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/googlenav/a;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->d(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->h(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->e(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/dl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dl;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/di;Lcom/google/googlenav/a;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/di;->a(Lcom/google/googlenav/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/di;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/di;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->d(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    const/16 v2, 0x1a2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->h(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->e(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/dl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dl;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/16 v0, 0x88

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    new-instance v0, Lcom/google/googlenav/ca;

    invoke-direct {v0}, Lcom/google/googlenav/ca;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->a(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/dm;->i()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->a:Lam/b;

    :goto_23
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->c(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/E;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/E;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void

    :cond_33
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->b:Lam/b;

    goto :goto_23
.end method

.method public b()V
    .registers 4

    const/16 v0, 0x9c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    new-instance v0, Lcom/google/googlenav/ca;

    invoke-direct {v0}, Lcom/google/googlenav/ca;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->a(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/dm;->h()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->d:Lam/b;

    :goto_23
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->c(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/E;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/E;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void

    :cond_33
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->c:Lam/b;

    goto :goto_23
.end method

.method public c()V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->d(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->f(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/aL;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dj;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dj;-><init>(Lcom/google/googlenav/ui/wizard/di;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aS;)V

    return-void
.end method
