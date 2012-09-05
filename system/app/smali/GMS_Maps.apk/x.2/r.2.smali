.class public Lx/r;
.super Ljava/lang/Object;


# instance fields
.field final a:Lt/af;

.field final b:Lx/aw;

.field final c:Z

.field final d:Lx/g;

.field final e:Z

.field f:I

.field private g:Lx/r;


# direct methods
.method protected constructor <init>(Lt/af;Lx/aw;)V
    .registers 9

    sget-object v3, Lx/g;->b:Lx/g;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lx/r;-><init>(Lt/af;Lx/aw;Lx/g;ZI)V

    return-void
.end method

.method protected constructor <init>(Lt/af;Lx/aw;Lx/g;ZI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lx/r;->g:Lx/r;

    iput-object p1, p0, Lx/r;->a:Lt/af;

    iput-object p2, p0, Lx/r;->b:Lx/aw;

    iput-object p3, p0, Lx/r;->d:Lx/g;

    sget-object v0, Lx/g;->e:Lx/g;

    invoke-virtual {p3, v0}, Lx/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lx/g;->d:Lx/g;

    invoke-virtual {p3, v0}, Lx/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Lx/r;->c:Z

    iput-boolean p4, p0, Lx/r;->e:Z

    iput p5, p0, Lx/r;->f:I

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private b(ILt/ae;)V
    .registers 5

    iget-object v0, p0, Lx/r;->b:Lx/aw;

    iget-object v1, p0, Lx/r;->a:Lt/af;

    invoke-interface {v0, v1, p1, p2}, Lx/aw;->a(Lt/af;ILt/ae;)V

    return-void
.end method


# virtual methods
.method protected a()Lt/af;
    .registers 2

    iget-object v0, p0, Lx/r;->a:Lt/af;

    return-object v0
.end method

.method protected a(I)V
    .registers 2

    iput p1, p0, Lx/r;->f:I

    return-void
.end method

.method a(ILt/ae;)V
    .registers 3

    :goto_0
    if-eqz p0, :cond_8

    invoke-direct {p0, p1, p2}, Lx/r;->b(ILt/ae;)V

    iget-object p0, p0, Lx/r;->g:Lx/r;

    goto :goto_0

    :cond_8
    return-void
.end method

.method a(Lx/r;)V
    .registers 3

    iget-object v0, p0, Lx/r;->g:Lx/r;

    iput-object v0, p1, Lx/r;->g:Lx/r;

    iput-object p1, p0, Lx/r;->g:Lx/r;

    return-void
.end method

.method protected b()Lx/g;
    .registers 2

    iget-object v0, p0, Lx/r;->d:Lx/g;

    return-object v0
.end method

.method protected c()Z
    .registers 2

    iget-boolean v0, p0, Lx/r;->c:Z

    return v0
.end method

.method protected d()Z
    .registers 2

    iget-boolean v0, p0, Lx/r;->e:Z

    return v0
.end method

.method protected e()I
    .registers 2

    iget v0, p0, Lx/r;->f:I

    return v0
.end method

.method protected f()Z
    .registers 2

    :goto_0
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lx/r;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object p0, p0, Lx/r;->g:Lx/r;

    goto :goto_0

    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method
