.class public Lx/al;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/X;

.field private final b:Lt/L;

.field private final c:Lt/L;

.field private final d:Lt/V;

.field private final e:F

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:Ljava/util/ArrayList;

.field private j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lt/X;Lt/L;Lt/L;ZZI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/al;->a:Lt/X;

    iput-object p2, p0, Lx/al;->b:Lt/L;

    iput-object p3, p0, Lx/al;->c:Lt/L;

    iput-boolean p4, p0, Lx/al;->f:Z

    iput-boolean p5, p0, Lx/al;->g:Z

    iput p6, p0, Lx/al;->h:I

    invoke-static {p2, p3}, Lt/V;->a(Lt/L;Lt/L;)Lt/V;

    move-result-object v0

    iget v1, p0, Lx/al;->h:I

    invoke-virtual {v0, v1}, Lt/V;->b(I)Lt/V;

    move-result-object v0

    iput-object v0, p0, Lx/al;->d:Lt/V;

    iget-object v0, p0, Lx/al;->b:Lt/L;

    iget-object v1, p0, Lx/al;->c:Lt/L;

    invoke-static {v0, v1}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v0

    iput v0, p0, Lx/al;->e:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/al;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lx/al;)Lt/L;
    .registers 2

    iget-object v0, p0, Lx/al;->c:Lt/L;

    return-object v0
.end method

.method static a(Lx/al;Lx/al;)Z
    .registers 9

    const/16 v6, 0x80

    const/16 v5, 0x50

    const/4 v0, 0x0

    iget v1, p0, Lx/al;->e:F

    iget v2, p1, Lx/al;->e:F

    invoke-static {v1, v2}, Lt/N;->a(FF)F

    move-result v1

    const/high16 v2, 0x4307

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v1, p0, Lx/al;->a:Lt/X;

    invoke-virtual {v1}, Lt/X;->f()I

    move-result v1

    iget-object v2, p1, Lx/al;->a:Lt/X;

    invoke-virtual {v2}, Lt/X;->f()I

    move-result v2

    iget-object v3, p0, Lx/al;->a:Lt/X;

    invoke-virtual {v3}, Lt/X;->j()Z

    move-result v3

    iget-object v4, p1, Lx/al;->a:Lt/X;

    invoke-virtual {v4}, Lt/X;->j()Z

    move-result v4

    if-lt v1, v6, :cond_32

    if-gt v2, v5, :cond_32

    if-eqz v4, :cond_13

    :cond_32
    if-lt v2, v6, :cond_38

    if-gt v1, v5, :cond_38

    if-eqz v3, :cond_13

    :cond_38
    if-eqz v3, :cond_44

    if-nez v4, :cond_44

    iget-boolean v1, p0, Lx/al;->g:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lx/al;->f:Z

    if-eqz v1, :cond_13

    :cond_44
    if-eqz v4, :cond_50

    if-nez v3, :cond_50

    iget-boolean v1, p1, Lx/al;->g:Z

    if-nez v1, :cond_50

    iget-boolean v1, p1, Lx/al;->f:Z

    if-eqz v1, :cond_13

    :cond_50
    const/4 v0, 0x1

    goto :goto_13
.end method

.method static synthetic b(Lx/al;)Lt/L;
    .registers 2

    iget-object v0, p0, Lx/al;->b:Lt/L;

    return-object v0
.end method

.method static synthetic c(Lx/al;)Lt/X;
    .registers 2

    iget-object v0, p0, Lx/al;->a:Lt/X;

    return-object v0
.end method

.method static synthetic d(Lx/al;)F
    .registers 2

    iget v0, p0, Lx/al;->e:F

    return v0
.end method

.method static synthetic e(Lx/al;)Lt/V;
    .registers 2

    iget-object v0, p0, Lx/al;->d:Lt/V;

    return-object v0
.end method

.method static synthetic f(Lx/al;)Z
    .registers 2

    iget-boolean v0, p0, Lx/al;->g:Z

    return v0
.end method

.method static synthetic g(Lx/al;)Z
    .registers 2

    iget-boolean v0, p0, Lx/al;->f:Z

    return v0
.end method

.method static synthetic h(Lx/al;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lx/al;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lx/al;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lx/al;->j:Ljava/lang/Object;

    return-void
.end method

.method public b()Lt/X;
    .registers 2

    iget-object v0, p0, Lx/al;->a:Lt/X;

    return-object v0
.end method

.method public c()Lt/L;
    .registers 2

    iget-object v0, p0, Lx/al;->b:Lt/L;

    return-object v0
.end method

.method public d()Lt/L;
    .registers 2

    iget-object v0, p0, Lx/al;->c:Lt/L;

    return-object v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lx/al;->e:F

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lx/al;->j:Ljava/lang/Object;

    return-object v0
.end method
