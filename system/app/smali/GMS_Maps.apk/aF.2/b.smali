.class public LaF/b;
.super Ljava/lang/Object;


# static fields
.field private static a:LaF/c;

.field private static b:Z

.field private static n:LaF/b;

.field private static o:J

.field private static p:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, LaF/b;->b:Z

    const-wide/32 v0, -0x927c0

    sput-wide v0, LaF/b;->o:J

    const/4 v0, -0x1

    sput v0, LaF/b;->p:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIJ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaF/b;->c:Ljava/lang/String;

    iput p3, p0, LaF/b;->j:I

    iput p4, p0, LaF/b;->i:I

    iput p5, p0, LaF/b;->h:I

    iput p6, p0, LaF/b;->f:I

    iput p7, p0, LaF/b;->g:I

    iput p8, p0, LaF/b;->d:I

    iput p9, p0, LaF/b;->e:I

    iput p2, p0, LaF/b;->l:I

    iput p10, p0, LaF/b;->k:I

    iput-wide p11, p0, LaF/b;->m:J

    return-void
.end method

.method public static a(Ljava/lang/String;IIIIIIIII)LaF/b;
    .registers 23

    new-instance v0, LaF/b;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v12}, LaF/b;-><init>(Ljava/lang/String;IIIIIIIIIJ)V

    return-object v0
.end method

.method public static a(LaF/c;)V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, LaF/b;->b:Z

    if-nez p0, :cond_8

    invoke-static {}, LaF/b;->b()V

    :cond_8
    sput-object p0, LaF/b;->a:LaF/c;

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, LaF/b;->b:Z

    return v0
.end method

.method static b()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, LaF/b;->b:Z

    return-void
.end method

.method public static c()I
    .registers 6

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    sget-wide v2, LaF/b;->o:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_29

    invoke-static {}, LaF/b;->d()LaF/b;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, LaF/b;->i()I

    move-result v2

    sput v2, LaF/b;->p:I

    :cond_27
    sput-wide v0, LaF/b;->o:J

    :cond_29
    sget v0, LaF/b;->p:I

    return v0
.end method

.method public static d()LaF/b;
    .registers 1

    sget-object v0, LaF/b;->a:LaF/c;

    if-nez v0, :cond_9

    invoke-static {}, LaF/b;->e()LaF/b;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, LaF/b;->a:LaF/c;

    invoke-interface {v0}, LaF/c;->a()LaF/b;

    move-result-object v0

    goto :goto_8
.end method

.method public static e()LaF/b;
    .registers 13

    const/4 v2, -0x1

    sget-object v0, LaF/b;->n:LaF/b;

    if-nez v0, :cond_21

    new-instance v0, LaF/b;

    const/4 v1, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v11

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v12}, LaF/b;-><init>(Ljava/lang/String;IIIIIIIIIJ)V

    sput-object v0, LaF/b;->n:LaF/b;

    :cond_21
    sget-object v0, LaF/b;->n:LaF/b;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, LaF/b;

    iget v2, p0, LaF/b;->j:I

    iget v3, p1, LaF/b;->j:I

    if-ne v2, v3, :cond_21

    iget v2, p0, LaF/b;->i:I

    iget v3, p1, LaF/b;->i:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public f()Z
    .registers 3

    iget v0, p0, LaF/b;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public g()I
    .registers 2

    iget v0, p0, LaF/b;->j:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, LaF/b;->i:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, LaF/b;->j:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, LaF/b;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, LaF/b;->f:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, LaF/b;->g:I

    return v0
.end method

.method public k()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, Lbr/O;->e:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x4

    iget v2, p0, LaF/b;->e:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x5

    iget v2, p0, LaF/b;->d:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x1

    iget v2, p0, LaF/b;->l:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    iget-object v2, p0, LaF/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method public l()Lam/b;
    .registers 6

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, Lbr/v;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-wide v1, p0, LaF/b;->m:J

    invoke-virtual {v0, v3, v1, v2}, Lam/b;->b(IJ)V

    new-instance v1, Lam/b;

    sget-object v2, Lbr/v;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget v2, p0, LaF/b;->j:I

    invoke-virtual {v1, v3, v2}, Lam/b;->h(II)V

    iget v2, p0, LaF/b;->i:I

    invoke-virtual {v1, v4, v2}, Lam/b;->h(II)V

    const/4 v2, 0x3

    iget v3, p0, LaF/b;->g:I

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    const/4 v2, 0x4

    iget v3, p0, LaF/b;->f:I

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    const/4 v2, 0x5

    iget v3, p0, LaF/b;->k:I

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILam/b;)V

    return-object v0
.end method
