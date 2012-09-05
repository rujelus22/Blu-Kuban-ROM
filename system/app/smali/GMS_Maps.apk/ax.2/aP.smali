.class public Lax/aP;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Hashtable;


# instance fields
.field private final b:Lax/aS;

.field private final c:Z

.field private d:Ljava/lang/Long;

.field private final e:Lcom/google/googlenav/ah;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Boolean;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lax/aP;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const-wide/16 v1, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lax/aP;->g:I

    iput-object v3, p0, Lax/aP;->h:Ljava/lang/Boolean;

    iput-wide v1, p0, Lax/aP;->i:J

    iput-wide v1, p0, Lax/aP;->j:J

    iput-wide v1, p0, Lax/aP;->k:J

    iput-wide v1, p0, Lax/aP;->l:J

    invoke-static {}, Lar/r;->a()V

    iput-object v3, p0, Lax/aP;->b:Lax/aS;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/aP;->c:Z

    iput-object v3, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    return-void
.end method

.method public constructor <init>(Lax/aS;ZLcom/google/googlenav/ah;)V
    .registers 7

    const-wide/16 v1, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lax/aP;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lax/aP;->h:Ljava/lang/Boolean;

    iput-wide v1, p0, Lax/aP;->i:J

    iput-wide v1, p0, Lax/aP;->j:J

    iput-wide v1, p0, Lax/aP;->k:J

    iput-wide v1, p0, Lax/aP;->l:J

    iput-object p1, p0, Lax/aP;->b:Lax/aS;

    iput-boolean p2, p0, Lax/aP;->c:Z

    iput-object p3, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {p3}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/aP;->o:Ljava/lang/String;

    iget-object v0, p0, Lax/aP;->o:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/aP;->o:Ljava/lang/String;

    :cond_32
    return-void
.end method

.method public static A()V
    .registers 1

    sget-object v0, Lax/aP;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method private N()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lax/aP;->G()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->c(Lam/b;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lax/aP;->c(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static a(Lcom/google/googlenav/a;)Z
    .registers 5

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->f()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lam/b;)LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/a;->e()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private e(J)V
    .registers 5

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1, p1, p2}, Lam/b;->b(IJ)V

    iput-wide p1, p0, Lax/aP;->l:J

    return-void
.end method


# virtual methods
.method public B()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lax/aP;->y()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->a(B)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->a(B)V

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->b(Z)V

    goto :goto_e
.end method

.method public C()C
    .registers 2

    invoke-virtual {p0}, Lax/aP;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-char v0, Lcom/google/googlenav/ui/bw;->C:C

    :goto_8
    return v0

    :cond_9
    sget-char v0, Lcom/google/googlenav/ui/bw;->B:C

    goto :goto_8
.end method

.method public D()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->m()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lax/aP;->k()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lax/aP;->m()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lax/aP;->n()Z

    move-result v1

    if-nez v1, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_3d
    invoke-virtual {p0}, Lax/aP;->o()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public E()[Lcom/google/googlenav/a;
    .registers 8

    const/16 v6, 0x9c

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    new-array v3, v2, [Lcom/google/googlenav/a;

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_25

    invoke-virtual {v1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/a;

    invoke-direct {v5, v4}, Lcom/google/googlenav/a;-><init>(Lam/b;)V

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    return-object v3
.end method

.method public F()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->j()Z

    move-result v2

    if-eqz v2, :cond_1b

    array-length v2, v1

    if-lez v2, :cond_1b

    aget-object v1, v1, v0

    invoke-static {v1}, Lax/aP;->a(Lcom/google/googlenav/a;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public G()Lcom/google/googlenav/a;
    .registers 3

    invoke-virtual {p0}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public H()LaJ/B;
    .registers 3

    invoke-virtual {p0}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lam/b;)LaJ/B;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {p0}, Lax/aP;->d()LaJ/B;

    move-result-object v0

    goto :goto_15
.end method

.method public I()J
    .registers 6

    invoke-virtual {p0}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/googlenav/a;->b()J

    move-result-wide v3

    sub-long v0, v1, v3

    :goto_1f
    return-wide v0

    :cond_20
    invoke-virtual {p0}, Lax/aP;->s()J

    move-result-wide v0

    goto :goto_1f
.end method

.method public J()Z
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lax/aP;->d(J)Z

    move-result v0

    return v0
.end method

.method public K()Z
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public L()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/aP;->n:Z

    return-void
.end method

.method public M()Z
    .registers 2

    iget-boolean v0, p0, Lax/aP;->n:Z

    return v0
.end method

.method public a()Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method public a(ZZ)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lax/aP;->G()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lax/aP;->N()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_31

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    const/16 v2, 0x8e

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_31
    :goto_31
    return-object v0

    :cond_32
    invoke-virtual {p0, p2}, Lax/aP;->g(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    iput p1, p0, Lax/aP;->g:I

    iget-object v0, p0, Lax/aP;->b:Lax/aS;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lax/aP;->b:Lax/aS;

    invoke-virtual {v0}, Lax/aS;->h()V

    :cond_1c
    return-void
.end method

.method public a(J)V
    .registers 7

    iget-wide v0, p0, Lax/aP;->k:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lax/aP;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lax/aP;->k:J

    :cond_e
    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x79

    invoke-virtual {v0, v1, p1, p2}, Lam/b;->b(IJ)V

    iput-wide p1, p0, Lax/aP;->i:J

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_3e

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lax/aP;->l:J

    :goto_36
    const/16 v1, 0x82

    iget-wide v2, p0, Lax/aP;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    return-void

    :cond_3e
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lax/aP;->l:J

    goto :goto_36
.end method

.method public a(LaJ/g;)V
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ah;->c(LaJ/g;)V

    iget-object v0, p0, Lax/aP;->b:Lax/aS;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/aP;->b:Lax/aS;

    invoke-virtual {v0}, Lax/aS;->h()V

    :cond_e
    return-void
.end method

.method public a(Lcom/google/googlenav/a;I)V
    .registers 6

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x9c

    invoke-virtual {p1}, Lcom/google/googlenav/a;->j()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lam/b;->a(IILam/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lax/aP;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Lt/y;)V
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ah;->a(Lt/y;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-void
.end method

.method public a(Lam/b;)Z
    .registers 14

    const/4 v2, 0x0

    const/16 v11, 0x9

    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    const/high16 v8, -0x8000

    const/4 v1, 0x5

    invoke-static {p1, v1, v8}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v3, 0x6

    invoke-static {p1, v3, v8}, Lam/g;->c(Lam/b;II)I

    move-result v3

    if-eq v1, v8, :cond_8c

    if-eq v3, v8, :cond_8c

    const/4 v4, 0x7

    invoke-static {p1, v4}, Lam/g;->f(Lam/b;I)J

    move-result-wide v4

    invoke-virtual {p0}, Lax/aP;->r()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_24

    :goto_23
    return v0

    :cond_24
    cmp-long v6, v4, v9

    if-eqz v6, :cond_2b

    invoke-virtual {p0, v4, v5}, Lax/aP;->a(J)V

    :cond_2b
    new-instance v4, LaJ/B;

    invoke-direct {v4, v1, v3}, LaJ/B;-><init>(II)V

    invoke-virtual {p0, v4}, Lax/aP;->a(LaJ/g;)V

    invoke-virtual {p0}, Lax/aP;->w()V

    invoke-virtual {p1, v11}, Lam/b;->l(I)I

    move-result v3

    move v1, v0

    :goto_3b
    if-ge v1, v3, :cond_47

    invoke-virtual {p1, v11, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lax/aP;->b(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_47
    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lax/aP;->a(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lam/g;->f(Lam/b;I)J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-eqz v1, :cond_5d

    invoke-virtual {p0, v3, v4}, Lax/aP;->c(J)V

    :cond_5d
    const/16 v1, 0xf

    invoke-static {p1, v1}, Lam/g;->f(Lam/b;I)J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-eqz v1, :cond_6a

    invoke-virtual {p0, v3, v4}, Lax/aP;->b(J)V

    :cond_6a
    const/16 v1, 0xe

    invoke-static {p1, v1}, Lam/g;->f(Lam/b;I)J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-eqz v1, :cond_77

    invoke-direct {p0, v3, v4}, Lax/aP;->e(J)V

    :cond_77
    const/16 v1, 0x10

    invoke-static {p1, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lax/aP;->d(Z)V

    invoke-virtual {p0}, Lax/aP;->K()Z

    move-result v1

    if-eqz v1, :cond_8c

    iput-boolean v0, p0, Lax/aP;->n:Z

    invoke-virtual {p0, v0}, Lax/aP;->h(Z)V

    const/4 v0, 0x1

    :cond_8c
    const/16 v1, 0x1b

    invoke-static {p1, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1c

    invoke-static {p1, v3, v8}, Lam/g;->c(Lam/b;II)I

    move-result v3

    if-eqz v1, :cond_af

    invoke-static {v1}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v1

    :goto_9e
    if-eqz v1, :cond_aa

    new-instance v2, Lt/y;

    invoke-direct {v2, v1, v3}, Lt/y;-><init>(Lt/r;I)V

    invoke-virtual {p0, v2}, Lax/aP;->a(Lt/y;)V

    goto/16 :goto_23

    :cond_aa
    invoke-virtual {p0, v2}, Lax/aP;->a(Lt/y;)V

    goto/16 :goto_23

    :cond_af
    move-object v1, v2

    goto :goto_9e
.end method

.method public b(J)V
    .registers 5

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x83

    invoke-virtual {v0, v1, p1, p2}, Lam/b;->b(IJ)V

    iput-wide p1, p0, Lax/aP;->j:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ah;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lax/aP;->c:Z

    return v0
.end method

.method public c(Z)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_15

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public c(J)V
    .registers 7

    const/16 v3, 0x7a

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_18

    invoke-virtual {v0, v3, p1, p2}, Lam/b;->b(IJ)V

    :goto_17
    return-void

    :cond_18
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lam/b;->b(IJ)V

    goto :goto_17
.end method

.method public c()Z
    .registers 2

    invoke-virtual {p0}, Lax/aP;->d()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()LaJ/B;
    .registers 6

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lax/aP;->p()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lax/aP;->u()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2a

    invoke-virtual {p0}, Lax/aP;->G()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->f(Lam/b;)LaJ/B;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/aP;->f:Z

    return-void
.end method

.method public d(J)Z
    .registers 7

    invoke-virtual {p0}, Lax/aP;->r()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public e(Z)I
    .registers 3

    invoke-virtual {p0}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_c

    const v0, 0x600000ff

    :goto_b
    return v0

    :cond_c
    const v0, 0x500000ff

    goto :goto_b

    :cond_10
    if-eqz p1, :cond_16

    const v0, 0x40800080

    goto :goto_b

    :cond_16
    const v0, 0x20800080

    goto :goto_b
.end method

.method public e()Lt/y;
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public f(Z)I
    .registers 3

    invoke-virtual {p0}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_c

    const v0, 0x180000ff

    :goto_b
    return v0

    :cond_c
    const v0, 0x100000ff

    goto :goto_b

    :cond_10
    if-eqz p1, :cond_16

    const v0, 0x20800080

    goto :goto_b

    :cond_16
    const v0, 0x10800080

    goto :goto_b
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lax/aP;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 5

    const/16 v0, 0x153

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lax/aP;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lax/aP;->m:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lax/aP;->g()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0, p1}, Lax/aP;->c(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public h()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .registers 4

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-void
.end method

.method public i()I
    .registers 5

    iget v0, p0, Lax/aP;->g:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x80

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lam/g;->a(Lam/b;III)I

    move-result v0

    iput v0, p0, Lax/aP;->g:I

    :cond_16
    iget v0, p0, Lax/aP;->g:I

    return v0
.end method

.method public j()I
    .registers 5

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0xa2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lam/g;->a(Lam/b;III)I

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/16 v1, 0xa3

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    goto :goto_f
.end method

.method public l()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lax/aP;->i()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public m()Z
    .registers 3

    invoke-virtual {p0}, Lax/aP;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public n()Z
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aP;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lam/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Lam/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public p()Z
    .registers 4

    invoke-virtual {p0}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lax/aP;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_28
    iput-object v0, p0, Lax/aP;->h:Ljava/lang/Boolean;

    :cond_2a
    iget-object v0, p0, Lax/aP;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_7

    :cond_31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_28
.end method

.method public q()Ljava/lang/Long;
    .registers 5

    iget-object v0, p0, Lax/aP;->d:Ljava/lang/Long;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Lam/b;->e(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lax/aP;->d:Ljava/lang/Long;

    :cond_1d
    iget-object v0, p0, Lax/aP;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public r()J
    .registers 5

    iget-wide v0, p0, Lax/aP;->i:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x79

    invoke-static {v0, v1, v2}, Lam/g;->d(Lam/b;II)J

    move-result-wide v0

    iput-wide v0, p0, Lax/aP;->i:J

    :cond_18
    iget-wide v0, p0, Lax/aP;->i:J

    return-wide v0
.end method

.method public s()J
    .registers 5

    iget-wide v0, p0, Lax/aP;->l:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x82

    invoke-static {v0, v1, v2}, Lam/g;->d(Lam/b;II)J

    move-result-wide v0

    iput-wide v0, p0, Lax/aP;->l:J

    :cond_18
    iget-wide v0, p0, Lax/aP;->l:J

    return-wide v0
.end method

.method public t()J
    .registers 5

    iget-wide v0, p0, Lax/aP;->k:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lax/aP;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lax/aP;->k:J

    :cond_e
    iget-wide v0, p0, Lax/aP;->k:J

    return-wide v0
.end method

.method public u()J
    .registers 4

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x7a

    invoke-static {v0, v1, v2}, Lam/g;->d(Lam/b;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .registers 4

    const/4 v2, 0x4

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    :goto_7
    invoke-virtual {v0, v2}, Lam/b;->l(I)I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lam/b;->g(II)V

    goto :goto_7

    :cond_12
    return-void
.end method

.method public x()Z
    .registers 3

    iget-object v0, p0, Lax/aP;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aP;->c()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lax/aP;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lax/aP;->b()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lax/aP;->J()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lax/aP;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public z()Z
    .registers 5

    invoke-virtual {p0}, Lax/aP;->y()Z

    move-result v0

    sget-object v1, Lax/aP;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lax/aP;->y()Z

    move-result v1

    if-eq v1, v0, :cond_24

    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_23

    iget-object v1, p0, Lax/aP;->b:Lax/aS;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lax/aP;->b:Lax/aS;

    invoke-virtual {v1}, Lax/aS;->h()V

    :cond_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_18
.end method
