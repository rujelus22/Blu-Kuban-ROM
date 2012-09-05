.class public Lcom/google/googlenav/ui/at;
.super Lcom/google/googlenav/ui/as;

# interfaces
.implements Lcom/google/googlenav/ui/ag;


# static fields
.field public static final a:I


# instance fields
.field private final b:LaE/h;

.field private c:LaJ/p;

.field private d:LaJ/u;

.field private final e:Lcom/google/googlenav/ui/D;

.field private f:Z

.field private g:Z

.field private h:I

.field private final i:[Lcom/google/googlenav/ui/aR;

.field private final j:Landroid/graphics/Point;

.field private final k:Landroid/graphics/Point;

.field private l:J

.field private m:J

.field private n:[Lah/f;

.field private o:I

.field private p:Z

.field private q:Lt/y;

.field private final r:LaJ/v;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/at;->a:I

    return-void
.end method

.method public constructor <init>(LaE/h;Lcom/google/googlenav/ui/D;LaJ/u;LaJ/p;)V
    .registers 9

    const-wide/high16 v2, -0x8000

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/as;-><init>()V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/at;->f:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/at;->g:Z

    iput v1, p0, Lcom/google/googlenav/ui/at;->h:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/at;->j:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/at;->k:Landroid/graphics/Point;

    iput-wide v2, p0, Lcom/google/googlenav/ui/at;->l:J

    iput-wide v2, p0, Lcom/google/googlenav/ui/at;->m:J

    new-instance v0, Lcom/google/googlenav/ui/au;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/au;-><init>(Lcom/google/googlenav/ui/at;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/at;->r:LaJ/v;

    iput-object p1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    iput-object p2, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/at;->a(LaJ/u;)V

    iput-object p4, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aR;

    aput-object p0, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/ui/at;->i:[Lcom/google/googlenav/ui/aR;

    return-void
.end method

.method private J()Z
    .registers 3

    const-string v0, "GPS_FIX"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laf/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private K()V
    .registers 7

    const/4 v4, 0x1

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->f()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->a()Lt/y;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, LaY/Y;->a(LaJ/B;Lt/y;Ljava/lang/String;Z[Ljava/lang/String;)LaY/x;

    move-result-object v0

    invoke-virtual {v0, v4}, LaY/x;->i(Z)V

    const-string v0, "GPS_FIX"

    invoke-static {v0, v4}, Laf/l;->a(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method private L()Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->Q()J

    move-result-wide v3

    const-wide/16 v5, 0x1f40

    add-long/2addr v5, v3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_30

    move v0, v1

    :goto_1c
    iget-object v5, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/D;->P()J

    move-result-wide v5

    const-wide/32 v7, 0x6ddd00

    add-long/2addr v5, v7

    cmp-long v3, v5, v3

    if-gez v3, :cond_32

    move v3, v1

    :goto_2b
    if-eqz v3, :cond_34

    if-eqz v0, :cond_34

    :goto_2f
    return v1

    :cond_30
    move v0, v2

    goto :goto_1c

    :cond_32
    move v3, v2

    goto :goto_2b

    :cond_34
    move v1, v2

    goto :goto_2f
.end method

.method private M()V
    .registers 3

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/ui/at;->l:J

    return-void
.end method

.method private N()I
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->i()I

    move-result v0

    if-ltz v0, :cond_2d

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->r()LaJ/B;

    move-result-object v1

    invoke-static {v1}, LaE/n;->e(LaJ/B;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, LaE/n;->k()LaE/n;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v2}, LaE/h;->r()LaJ/B;

    move-result-object v2

    invoke-virtual {v1, v2}, LaE/n;->b(LaJ/B;)Z

    move-result v1

    if-nez v1, :cond_26

    add-int/lit16 v0, v0, 0x275

    :cond_26
    const/16 v1, 0x64

    if-le v0, v1, :cond_2e

    rem-int/lit8 v1, v0, 0x64

    sub-int/2addr v0, v1

    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    const/16 v1, 0xa

    if-le v0, v1, :cond_2d

    rem-int/lit8 v1, v0, 0xa

    sub-int/2addr v0, v1

    goto :goto_2d
.end method

.method private O()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->i()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1c

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->P()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private P()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->i()I

    move-result v1

    invoke-virtual {v0, v1}, LaJ/p;->c(I)I

    move-result v0

    return v0
.end method

.method public static a(ILaJ/B;)LaJ/Y;
    .registers 8

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    int-to-long v0, p0

    int-to-long v2, p0

    mul-long v1, v0, v2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->O()I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->P()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    const/16 v0, 0x16

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :goto_24
    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v4

    invoke-virtual {p1, v4}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, LaJ/Y;->d()LaJ/Y;

    move-result-object v0

    goto :goto_24
.end method

.method private a(ZZ)LaJ/Y;
    .registers 6

    const/16 v2, 0x13

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    if-eqz p1, :cond_3b

    const/16 v0, 0xf

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->r()LaJ/B;

    move-result-object v1

    invoke-static {v1}, LaJ/p;->h(LaJ/B;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {v2}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :cond_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->A()Lt/y;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-static {v2}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    :cond_3b
    :goto_3b
    if-eqz p2, :cond_49

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->p()LaJ/Y;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v1, v0}, LaJ/Y;->b(LaJ/Y;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_49
    move-object v0, v1

    goto :goto_10

    :cond_4b
    move-object v1, v0

    goto :goto_3b
.end method

.method private a(Lah/e;II)V
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->n:[Lah/f;

    if-eqz v0, :cond_d

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/at;->a(I)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_d
    invoke-static {}, Lcom/google/googlenav/ui/bw;->ac()[Lah/f;

    move-result-object v2

    const/4 v0, 0x2

    new-array v0, v0, [Lah/f;

    iput-object v0, p0, Lcom/google/googlenav/ui/at;->n:[Lah/f;

    iget-object v3, p0, Lcom/google/googlenav/ui/at;->n:[Lah/f;

    aget-object v0, v2, v4

    if-nez v0, :cond_4b

    move-object v0, v1

    :goto_1d
    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->n:[Lah/f;

    aget-object v3, v2, v5

    if-nez v3, :cond_52

    :goto_25
    aput-object v1, v0, v5

    iput p3, p0, Lcom/google/googlenav/ui/at;->o:I

    :cond_29
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->n:[Lah/f;

    aget-object v0, v1, v0

    if-eqz v0, :cond_4a

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->j:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-interface {v0}, Lah/f;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->j:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0}, Lah/f;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lah/e;->a(Lah/f;II)V

    :cond_4a
    return-void

    :cond_4b
    aget-object v0, v2, v4

    invoke-interface {v0, p3}, Lah/f;->a(I)Lah/f;

    move-result-object v0

    goto :goto_1d

    :cond_52
    aget-object v1, v2, v5

    invoke-interface {v1, p3}, Lah/f;->a(I)Lah/f;

    move-result-object v1

    goto :goto_25
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/at;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/at;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/at;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/at;->p:Z

    return p1
.end method

.method private static b(J)J
    .registers 4

    mul-long v0, p0, p0

    return-wide v0
.end method

.method private c(Lcom/google/googlenav/ui/C;)V
    .registers 9

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->af()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->k:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->y()I

    move-result v1

    invoke-virtual {v0, v1}, LaJ/p;->c(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->w()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->A()I

    move-result v6

    :goto_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->k:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->k:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->k:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->k()I

    move-result v5

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/bw;->a(Lah/e;Landroid/graphics/Point;IIII)V

    goto :goto_a

    :cond_4f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->m()I

    move-result v6

    goto :goto_2a
.end method

.method private d(Lcom/google/googlenav/ui/C;)V
    .registers 15

    const/4 v12, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->af()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->r()I

    move-result v5

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->q()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->k()I

    move-result v1

    sget v4, Lcom/google/googlenav/ui/at;->a:I

    move v3, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/bf;->a(Lah/e;IIIIIZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->k()I

    move-result v1

    sget v3, Lcom/google/googlenav/ui/at;->a:I

    sub-int v3, v7, v3

    sget v4, Lcom/google/googlenav/ui/at;->a:I

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/bf;->a(Lah/e;IIIIIZ)V

    sget v9, Lcom/google/googlenav/ui/at;->a:I

    sget v1, Lcom/google/googlenav/ui/at;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v7, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->k()I

    move-result v7

    sget v10, Lcom/google/googlenav/ui/at;->a:I

    move-object v6, v0

    move v8, v2

    invoke-static/range {v6 .. v12}, Lcom/google/googlenav/ui/bf;->a(Lah/e;IIIIIZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->k()I

    move-result v7

    sget v1, Lcom/google/googlenav/ui/at;->a:I

    sub-int v8, v5, v1

    sget v10, Lcom/google/googlenav/ui/at;->a:I

    move-object v6, v0

    invoke-static/range {v6 .. v12}, Lcom/google/googlenav/ui/bf;->a(Lah/e;IIIIIZ)V

    goto :goto_c
.end method


# virtual methods
.method public A()I
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->O()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x33cccccc

    goto :goto_7

    :cond_12
    const v0, 0x208cc6ef

    goto :goto_7
.end method

.method public B()LaE/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    return-object v0
.end method

.method public C()Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->o()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->m()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    iget-object v3, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v3}, LaE/h;->i()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LaJ/u;->a(ILaJ/B;)F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    float-to-long v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public D()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->E()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->F()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public E()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->l()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .registers 2

    invoke-static {}, LaI/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, LaI/c;->k()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public G()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/at;->f:Z

    return-void
.end method

.method public H()V
    .registers 7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->Q()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->G()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->M()V

    goto :goto_19
.end method

.method public I()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->A()Lt/y;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->a(Lt/y;)V

    :cond_15
    return-void
.end method

.method public a()Lt/y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->A()Lt/y;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->o()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->t()I

    move-result v0

    if-ne v0, p1, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->u()I

    move-result v0

    if-eq v0, p2, :cond_6

    :cond_13
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->v()V

    goto :goto_6
.end method

.method public a(J)V
    .registers 7

    iget-wide v0, p0, Lcom/google/googlenav/ui/at;->l:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    iget-wide v0, p0, Lcom/google/googlenav/ui/at;->l:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_44

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-nez v0, :cond_41

    const/16 v0, 0x4e6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->Z()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->D()Lcom/google/googlenav/ui/wizard/eA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eA;->C()V

    :cond_41
    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->M()V

    :cond_44
    return-void
.end method

.method public a(LaJ/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    return-void
.end method

.method public a(LaJ/u;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->r:LaJ/v;

    invoke-virtual {v0, v1}, LaJ/u;->b(LaJ/v;)V

    :cond_b
    iput-object p1, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->r:LaJ/v;

    invoke-virtual {p1, v0}, LaJ/u;->a(LaJ/v;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->O()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/at;->c(Lcom/google/googlenav/ui/C;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;IZ)V
    .registers 9

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->g()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/at;->j:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v4}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    if-eqz p3, :cond_7e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->q()Z

    move-result v0

    if-nez v0, :cond_7e

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->b()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/google/googlenav/ui/at;->g:Z

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    :goto_2b
    if-ne v0, v1, :cond_7a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->q()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ad()[Lah/f;

    move-result-object v0

    :goto_37
    array-length v1, v0

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lah/f;->b()I

    move-result v1

    iget-object v3, p0, Lcom/google/googlenav/ui/at;->j:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/googlenav/ui/at;->j:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    invoke-interface {v2, v0, v3, v1}, Lah/e;->a(Lah/f;II)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->y()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->e()I

    move-result v0

    goto :goto_2b

    :cond_62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->n()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2b

    :cond_75
    invoke-static {}, Lcom/google/googlenav/ui/bw;->ab()[Lah/f;

    move-result-object v0

    goto :goto_37

    :cond_7a
    invoke-direct {p0, v2, p2, v0}, Lcom/google/googlenav/ui/at;->a(Lah/e;II)V

    goto :goto_52

    :cond_7e
    move v0, v1

    goto :goto_2b
.end method

.method public a(Z)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->r()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v2, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v3

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v2}, LaE/h;->A()Lt/y;

    move-result-object v2

    if-eqz v2, :cond_2d

    move v2, v1

    :goto_1c
    if-nez v2, :cond_22

    const/16 v4, 0xa

    if-le v3, v4, :cond_28

    :cond_22
    if-eqz v2, :cond_29

    const/16 v2, 0x12

    if-gt v3, v2, :cond_29

    :cond_28
    move v0, v1

    :cond_29
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/googlenav/ui/at;->a(ZZZ)V

    goto :goto_8

    :cond_2d
    move v2, v0

    goto :goto_1c
.end method

.method public a(ZZZ)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_99

    iput-boolean v3, p0, Lcom/google/googlenav/ui/at;->g:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->f()V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/at;->a(ZZ)LaJ/Y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    iput-boolean v3, p0, Lcom/google/googlenav/ui/at;->p:Z

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v2, v1, v0}, LaJ/u;->a(LaJ/B;LaJ/Y;)V

    iget v0, p0, Lcom/google/googlenav/ui/at;->h:I

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/google/googlenav/ui/at;->h:I

    if-eq v0, v3, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->t()Z

    move-result v0

    if-nez v0, :cond_3d

    iget v0, p0, Lcom/google/googlenav/ui/at;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->t()Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_3d
    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->N()I

    move-result v0

    if-ltz v0, :cond_58

    const/16 v1, 0x1c2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;Z)V

    :cond_58
    iput v3, p0, Lcom/google/googlenav/ui/at;->h:I

    :cond_5a
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aw()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->an()Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {v0}, LaY/K;->bP()V

    :cond_85
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->I()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->M()V

    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->t()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->u()V

    :cond_98
    return-void

    :cond_99
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->j()Z

    move-result v0

    if-eqz v0, :cond_8b

    iput-boolean v3, p0, Lcom/google/googlenav/ui/at;->g:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->t()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->f()V

    goto :goto_8b

    :cond_b1
    const/16 v0, 0x242

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/googlenav/ui/at;->l:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_8b

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/ui/at;->l:J

    goto :goto_8b
.end method

.method a(I)Z
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/at;->o:I

    sub-int v0, p1, v0

    invoke-static {v0}, Lar/i;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public a(Laq/b;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/at;->a(Z)V

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b(Lcom/google/googlenav/ui/C;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/at;->d(Lcom/google/googlenav/ui/C;)V

    :cond_9
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->v()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->t()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->j()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/at;->f:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->G()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->J()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->L()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->i:[Lcom/google/googlenav/ui/aR;

    return-object v0
.end method

.method public e()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlenav/ui/at;->m:J

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->c()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, v1, v1, v1}, Lcom/google/googlenav/ui/at;->a(ZZZ)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->J()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->K()V

    :cond_2d
    iput-boolean v1, p0, Lcom/google/googlenav/ui/at;->f:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->A()Lt/y;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->q:Lt/y;

    if-nez v0, :cond_6d

    move v0, v1

    :goto_3c
    iget-boolean v3, p0, Lcom/google/googlenav/ui/at;->g:Z

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->c()LaJ/B;

    move-result-object v3

    invoke-virtual {v2, v3}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    if-eqz v0, :cond_5e

    :cond_4e
    iput-boolean v1, p0, Lcom/google/googlenav/ui/at;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_91

    const/16 v0, 0x13

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :goto_59
    iget-object v1, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    invoke-virtual {v1, v2, v0}, LaJ/u;->a(LaJ/B;LaJ/Y;)V

    :cond_5e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->I()V

    :cond_61
    :goto_61
    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->M()V

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->A()Lt/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/at;->q:Lt/y;

    :cond_6c
    return-void

    :cond_6d
    const/4 v0, 0x0

    goto :goto_3c

    :cond_6f
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->q:Lt/y;

    if-eqz v1, :cond_8b

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->q:Lt/y;

    invoke-virtual {v1, v2}, Lr/l;->c(Lt/y;)Z

    move-result v1

    if-nez v1, :cond_8d

    :cond_8b
    if-eqz v0, :cond_61

    :cond_8d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->I()V

    goto :goto_61

    :cond_91
    move-object v0, v1

    goto :goto_59
.end method

.method public f()[Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->N()I

    move-result v1

    if-ltz v1, :cond_2a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->q()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x1c4

    :goto_e
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    const-string v1, "\n"

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const/16 v0, 0x4dc

    goto :goto_e

    :cond_2a
    const/16 v0, 0x4dd

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public i()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->z()LaJ/B;

    move-result-object v0

    if-nez v0, :cond_9

    const/16 v0, 0x2a

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->O()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, LaJ/B;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->i()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_8

    :cond_1d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public j()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->O()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x73aaaaaa

    goto :goto_7

    :cond_12
    const v0, 0x73217bce

    goto :goto_7
.end method

.method public m()I
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->O()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x33cccccc

    goto :goto_7

    :cond_12
    const v0, 0x338cc6ef

    goto :goto_7
.end method

.method public n()Z
    .registers 2

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/at;->g:Z

    return v0
.end method

.method public p()LaJ/Y;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->i()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->q()LaJ/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/at;->a(ILaJ/B;)LaJ/Y;

    move-result-object v0

    goto :goto_9
.end method

.method public q()Z
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/at;->m:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public r()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->k()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x1c1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;Z)V

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public s()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v2}, LaE/h;->m()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/google/googlenav/ui/at;->f:Z

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    :goto_f
    return v0

    :cond_10
    iget v2, p0, Lcom/google/googlenav/ui/at;->h:I

    if-ne v2, v0, :cond_30

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v2}, LaE/h;->t()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->ao()Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/google/googlenav/ui/at;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/googlenav/ui/at;->h:I

    goto :goto_f

    :cond_30
    move v0, v1

    goto :goto_f
.end method

.method t()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->r()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method u()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->q()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public v()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/at;->g:Z

    return-void
.end method

.method w()Z
    .registers 14

    const/4 v12, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v1}, LaE/h;->m()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/google/googlenav/ui/at;->d:LaJ/u;

    instance-of v1, v1, LaJ/h;

    if-nez v1, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method should not be called except for drawing image maps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v1, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v2

    invoke-virtual {v1, v2}, LaJ/p;->c(LaJ/B;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->r()I

    move-result v4

    iget-object v1, p0, Lcom/google/googlenav/ui/at;->c:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->q()I

    move-result v5

    invoke-direct {p0}, Lcom/google/googlenav/ui/at;->P()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/at;->b(J)J

    move-result-wide v6

    move v2, v0

    :goto_39
    if-ge v2, v12, :cond_5e

    move v1, v0

    :goto_3c
    if-ge v1, v12, :cond_5a

    mul-int v8, v2, v4

    iget v9, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/at;->b(J)J

    move-result-wide v8

    mul-int v10, v1, v5

    iget v11, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/at;->b(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v8, v8, v6

    if-gtz v8, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_5a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_39

    :cond_5e
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public x()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public y()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->b:LaE/h;

    invoke-virtual {v0}, LaE/h;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public z()LaJ/B;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v0

    return-object v0
.end method
