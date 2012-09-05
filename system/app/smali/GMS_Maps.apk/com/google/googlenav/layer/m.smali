.class public Lcom/google/googlenav/layer/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/google/googlenav/layer/m;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:[Lam/b;

.field private final g:B

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private m:I

.field private n:I

.field private o:[Lcom/google/googlenav/e;

.field private p:[[B

.field private final q:I

.field private r:J

.field private final s:J

.field private t:Lt/m;

.field private u:Lam/b;

.field private v:Lam/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/layer/m;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 10

    const/16 v7, 0x16

    const/16 v5, 0x12

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v6}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    invoke-static {p1, v7}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {p1, v0, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->h:I

    const/4 v0, 0x4

    invoke-static {p1, v0, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->i:I

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->j:Z

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->k:Z

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->l:Z

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v2

    new-array v0, v2, [Lam/b;

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    move v0, v1

    :goto_52
    if-ge v0, v2, :cond_5f

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_5f
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v2

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v3

    if-nez v3, :cond_b9

    iput-byte v5, p0, Lcom/google/googlenav/layer/m;->g:B

    :goto_71
    const/16 v0, 0x15

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->q:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_e3

    const/16 v1, 0x3d

    invoke-static {v0, v1, v6}, Lam/g;->c(Lam/b;II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/m;->m:I

    const/16 v1, 0x3e

    invoke-static {v0, v1, v7}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->n:I

    :goto_91
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lam/g;->g(Lam/b;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/layer/m;->r:J

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lam/g;->g(Lam/b;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/layer/m;->s:J

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/m;->a(Ljava/lang/String;)Lt/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->t:Lt/m;

    :cond_b5
    invoke-direct {p0, p1}, Lcom/google/googlenav/layer/m;->a(Lam/b;)V

    return-void

    :cond_b9
    new-array v0, v3, [Lcom/google/googlenav/e;

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->p:[[B

    move v0, v1

    :goto_c2
    if-ge v0, v3, :cond_de

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v0}, Lam/b;->b(II)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/layer/m;->p:[[B

    aput-object v4, v5, v0

    array-length v5, v4

    invoke-interface {v2, v4, v1, v5}, Lah/h;->a([BII)Lah/f;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    invoke-static {v4}, Lcom/google/googlenav/e;->a(Lah/f;)Lcom/google/googlenav/e;

    move-result-object v4

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    :cond_de
    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/google/googlenav/layer/m;->g:B

    goto :goto_71

    :cond_e3
    iput v6, p0, Lcom/google/googlenav/layer/m;->m:I

    iput v7, p0, Lcom/google/googlenav/layer/m;->n:I

    goto :goto_91
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/layer/m;->h:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/layer/m;->i:I

    iput-boolean v2, p0, Lcom/google/googlenav/layer/m;->j:Z

    iput-boolean v1, p0, Lcom/google/googlenav/layer/m;->k:Z

    iput-boolean v1, p0, Lcom/google/googlenav/layer/m;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->t:Lt/m;

    new-array v0, v1, [Lam/b;

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/google/googlenav/layer/m;->g:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/layer/m;->q:I

    iput v2, p0, Lcom/google/googlenav/layer/m;->m:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/google/googlenav/layer/m;->n:I

    iput-wide v3, p0, Lcom/google/googlenav/layer/m;->r:J

    iput-wide v3, p0, Lcom/google/googlenav/layer/m;->s:J

    return-void
.end method

.method private a(Lam/b;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    const-string v1, "msid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->u:Lam/b;

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lam/b;

    const/16 v1, 0x47

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lam/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lam/b;

    const/16 v1, 0x48

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lam/b;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lam/b;

    const/16 v1, 0x49

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lam/b;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lam/b;

    const/16 v1, 0x73

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lam/b;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lam/b;

    const/16 v1, 0x74

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lam/b;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_60
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/e;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    if-eqz v0, :cond_b

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    aget-object v0, v0, p1

    goto :goto_c
.end method

.method public a([Lam/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/layer/m;->m:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/google/googlenav/layer/m;->n:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/layer/m;->r()Lcom/google/googlenav/layer/m;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    return-object v0
.end method

.method public f()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/layer/m;->g:B

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/m;->q:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/m;->h:I

    return v0
.end method

.method public i()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/layer/m;->r:J

    return-wide v0
.end method

.method public j()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/layer/m;->s:J

    return-wide v0
.end method

.method public k()Z
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/m;->i:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/layer/m;->l:Z

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/layer/m;->j:Z

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/layer/m;->k:Z

    return v0
.end method

.method public o()Lam/b;
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Lam/b;

    sget-object v0, LbD/da;->a:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_2a
    const/4 v0, 0x4

    iget v3, p0, Lcom/google/googlenav/layer/m;->i:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    const/4 v0, 0x5

    iget v3, p0, Lcom/google/googlenav/layer/m;->h:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    new-instance v0, Lam/b;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lam/b;-><init>(Lam/e;)V

    const/16 v3, 0x3d

    iget v4, p0, Lcom/google/googlenav/layer/m;->m:I

    invoke-virtual {v0, v3, v4}, Lam/b;->h(II)V

    const/16 v3, 0x3e

    iget v4, p0, Lcom/google/googlenav/layer/m;->n:I

    invoke-virtual {v0, v3, v4}, Lam/b;->h(II)V

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lam/b;->b(ILam/b;)V

    const/16 v0, 0x8

    iget-wide v3, p0, Lcom/google/googlenav/layer/m;->r:J

    invoke-virtual {v2, v0, v3, v4}, Lam/b;->b(IJ)V

    const/16 v0, 0x9

    iget-wide v3, p0, Lcom/google/googlenav/layer/m;->s:J

    invoke-virtual {v2, v0, v3, v4}, Lam/b;->b(IJ)V

    const/16 v0, 0x10

    iget-boolean v3, p0, Lcom/google/googlenav/layer/m;->k:Z

    invoke-virtual {v2, v0, v3}, Lam/b;->b(IZ)V

    const/16 v0, 0x13

    iget-boolean v3, p0, Lcom/google/googlenav/layer/m;->j:Z

    invoke-virtual {v2, v0, v3}, Lam/b;->b(IZ)V

    const/16 v0, 0x14

    iget-boolean v3, p0, Lcom/google/googlenav/layer/m;->l:Z

    invoke-virtual {v2, v0, v3}, Lam/b;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->p:[[B

    if-eqz v0, :cond_87

    move v0, v1

    :goto_76
    iget-object v3, p0, Lcom/google/googlenav/layer/m;->p:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_87

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/googlenav/layer/m;->p:[[B

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lam/b;->a(I[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_87
    const/16 v0, 0x15

    iget v3, p0, Lcom/google/googlenav/layer/m;->q:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    if-eqz v0, :cond_a3

    :goto_92
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    array-length v0, v0

    if-ge v1, v0, :cond_a3

    const/16 v0, 0x12

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->f:[Lam/b;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_a3
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    const-string v1, "msid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->u:Lam/b;

    invoke-virtual {v2, v0, v1}, Lam/b;->a(ILam/b;)V

    :cond_bb
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->t:Lt/m;

    if-eqz v0, :cond_ca

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->t:Lt/m;

    invoke-virtual {v1}, Lt/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_ca
    return-object v2
.end method

.method public p()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lam/b;

    return-object v0
.end method

.method public q()Lt/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->t:Lt/m;

    return-object v0
.end method

.method protected r()Lcom/google/googlenav/layer/m;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/m;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
