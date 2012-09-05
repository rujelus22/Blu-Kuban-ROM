.class public final Lz/l;
.super Ljava/lang/Object;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Lz/m;

.field private final D:Z

.field private E:I

.field private F:Z

.field private final a:D

.field private final b:D

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:D

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:F

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:D

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:Z

.field private final z:I


# direct methods
.method constructor <init>(Lam/b;)V
    .registers 5

    const/16 v2, 0x1d

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lz/l;->b(Lam/b;I)D

    move-result-wide v0

    iput-wide v0, p0, Lz/l;->a:D

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lz/l;->a(Lam/b;I)D

    move-result-wide v0

    iput-wide v0, p0, Lz/l;->b:D

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->c:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->d:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->e:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->f:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->g:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lz/l;->a(Lam/b;I)D

    move-result-wide v0

    iput-wide v0, p0, Lz/l;->h:D

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->i:I

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->j:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->k:I

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->l:I

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->m:I

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->n:I

    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Lz/l;->o:F

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->p:I

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->q:I

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->r:I

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lz/l;->a(Lam/b;I)D

    move-result-wide v0

    iput-wide v0, p0, Lz/l;->s:D

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->t:I

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->u:I

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->v:I

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->w:I

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->x:I

    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lz/l;->y:Z

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->z:I

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->A:I

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->B:I

    new-instance v1, Lz/m;

    invoke-virtual {p1, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-virtual {p1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_ef
    invoke-direct {v1, v0}, Lz/m;-><init>(Lam/b;)V

    iput-object v1, p0, Lz/l;->C:Lz/m;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lz/l;->D:Z

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lz/l;->E:I

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lz/l;->F:Z

    return-void

    :cond_10d
    new-instance v0, Lam/b;

    sget-object v2, LbD/z;->g:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    goto :goto_ef
.end method

.method private static final a(Lam/b;I)D
    .registers 6

    invoke-virtual {p0, p1}, Lam/b;->d(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static final b(Lam/b;I)D
    .registers 8

    const-wide/high16 v0, 0x4024

    invoke-virtual {p0, p1}, Lam/b;->d(I)I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lz/l;->A:I

    return v0
.end method

.method public B()I
    .registers 2

    iget v0, p0, Lz/l;->B:I

    return v0
.end method

.method public C()Lz/m;
    .registers 2

    iget-object v0, p0, Lz/l;->C:Lz/m;

    return-object v0
.end method

.method public D()Z
    .registers 2

    iget-boolean v0, p0, Lz/l;->D:Z

    return v0
.end method

.method public E()I
    .registers 2

    iget v0, p0, Lz/l;->E:I

    return v0
.end method

.method public F()Z
    .registers 2

    iget-boolean v0, p0, Lz/l;->F:Z

    return v0
.end method

.method public a()D
    .registers 3

    iget-wide v0, p0, Lz/l;->a:D

    return-wide v0
.end method

.method public b()D
    .registers 3

    iget-wide v0, p0, Lz/l;->b:D

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lz/l;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lz/l;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lz/l;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lz/l;->f:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lz/l;->g:I

    return v0
.end method

.method public h()D
    .registers 3

    iget-wide v0, p0, Lz/l;->h:D

    return-wide v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lz/l;->i:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lz/l;->j:I

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lz/l;->k:I

    return v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lz/l;->l:I

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lz/l;->m:I

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lz/l;->n:I

    return v0
.end method

.method public o()F
    .registers 2

    iget v0, p0, Lz/l;->o:F

    return v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lz/l;->p:I

    return v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lz/l;->q:I

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lz/l;->r:I

    return v0
.end method

.method public s()D
    .registers 3

    iget-wide v0, p0, Lz/l;->s:D

    return-wide v0
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lz/l;->t:I

    return v0
.end method

.method public u()I
    .registers 2

    iget v0, p0, Lz/l;->u:I

    return v0
.end method

.method public v()I
    .registers 2

    iget v0, p0, Lz/l;->v:I

    return v0
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lz/l;->w:I

    return v0
.end method

.method public x()I
    .registers 2

    iget v0, p0, Lz/l;->x:I

    return v0
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, Lz/l;->y:Z

    return v0
.end method

.method public z()I
    .registers 2

    iget v0, p0, Lz/l;->z:I

    return v0
.end method
