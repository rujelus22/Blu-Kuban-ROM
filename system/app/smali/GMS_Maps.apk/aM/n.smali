.class public LaM/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lam/b;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LaM/n;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LaM/n;->c:Lam/b;

    const/4 v0, -0x1

    iput v0, p0, LaM/n;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/n;->d:Z

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/n;->a:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, LaM/n;->b:I

    invoke-virtual {p1, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, LaM/n;->c:Lam/b;

    :cond_20
    invoke-virtual {p1, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1, v3}, Lam/b;->b(I)Z

    move-result v0

    :goto_2a
    iput-boolean v0, p0, LaM/n;->d:Z

    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static a(Lam/b;)LaM/n;
    .registers 4

    new-instance v0, LaM/n;

    invoke-direct {v0}, LaM/n;-><init>()V

    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/n;->a(Ljava/lang/String;)V

    new-instance v1, Lam/b;

    sget-object v2, LbC/a;->b:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lam/b;->b(ILam/b;)V

    invoke-virtual {v0, v1}, LaM/n;->b(Lam/b;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaM/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, LaM/n;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LaM/n;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaM/n;->d:Z

    return-void
.end method

.method public b()Lam/b;
    .registers 2

    iget-object v0, p0, LaM/n;->c:Lam/b;

    return-object v0
.end method

.method public b(Lam/b;)V
    .registers 2

    iput-object p1, p0, LaM/n;->c:Lam/b;

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, LaM/n;->d:Z

    return v0
.end method

.method public d()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbC/a;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-object v2, p0, LaM/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget v1, p0, LaM/n;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v1, 0x2

    iget v2, p0, LaM/n;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_18
    iget-object v1, p0, LaM/n;->c:Lam/b;

    if-eqz v1, :cond_22

    const/4 v1, 0x3

    iget-object v2, p0, LaM/n;->c:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_22
    const/4 v1, 0x4

    iget-boolean v2, p0, LaM/n;->d:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    return-object v0
.end method
