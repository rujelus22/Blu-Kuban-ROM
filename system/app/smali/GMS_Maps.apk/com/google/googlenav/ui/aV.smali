.class public Lcom/google/googlenav/ui/aV;
.super Ljava/lang/Object;


# static fields
.field private static final o:Lah/d;

.field private static final p:Lah/d;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/googlenav/ui/bw;

.field private final l:Landroid/graphics/Point;

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const/high16 v0, -0x100

    invoke-static {v1, v1, v0}, Lcom/google/googlenav/I;->a(IZI)Lah/d;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/aV;->o:Lah/d;

    const/4 v0, -0x1

    invoke-static {v1, v1, v0}, Lcom/google/googlenav/I;->a(IZI)Lah/d;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/aV;->p:Lah/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/googlenav/ui/aV;->a:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->b:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->c:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->d:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->e:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->f:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->g:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->j:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->l:Landroid/graphics/Point;

    iput v2, p0, Lcom/google/googlenav/ui/aV;->m:I

    iput v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->k:Lcom/google/googlenav/ui/bw;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aV;->a:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aV;->b:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aV;->c:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/aV;->d:I

    iget v0, p0, Lcom/google/googlenav/ui/aV;->b:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/aV;->e:I

    iget v0, p0, Lcom/google/googlenav/ui/aV;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/aV;->f:I

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/aV;->a(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/aW;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/aV;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/aV;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/aX;->a:Lcom/google/googlenav/ui/aV;

    return-object v0
.end method

.method private static a(Lah/e;Ljava/lang/String;ZII)V
    .registers 6

    if-eqz p2, :cond_26

    sget-object v0, Lcom/google/googlenav/ui/aV;->o:Lah/d;

    :goto_4
    invoke-interface {p0, v0}, Lah/e;->a(Lah/d;)V

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p0, p1, v0, p4}, Lah/e;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p0, p1, v0, p4}, Lah/e;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, p4, -0x1

    invoke-interface {p0, p1, p3, v0}, Lah/e;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, p4, 0x1

    invoke-interface {p0, p1, p3, v0}, Lah/e;->a(Ljava/lang/String;II)V

    if-eqz p2, :cond_29

    sget-object v0, Lcom/google/googlenav/ui/aV;->p:Lah/d;

    :goto_1f
    invoke-interface {p0, v0}, Lah/e;->a(Lah/d;)V

    invoke-interface {p0, p1, p3, p4}, Lah/e;->a(Ljava/lang/String;II)V

    return-void

    :cond_26
    sget-object v0, Lcom/google/googlenav/ui/aV;->p:Lah/d;

    goto :goto_4

    :cond_29
    sget-object v0, Lcom/google/googlenav/ui/aV;->o:Lah/d;

    goto :goto_1f
.end method

.method private a(Z)V
    .registers 5

    iget v0, p0, Lcom/google/googlenav/ui/aV;->a:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget-object v0, p0, Lcom/google/googlenav/ui/aV;->k:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->P()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/aV;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/aV;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/aV;->n:I

    if-eqz p1, :cond_27

    iget v0, p0, Lcom/google/googlenav/ui/aV;->n:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Laf/b;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/aV;->n:I

    :cond_27
    return-void
.end method


# virtual methods
.method public a(LaJ/p;Z)V
    .registers 13

    if-nez p1, :cond_e

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aV;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/aV;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->i:Ljava/lang/String;

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/aV;->a(Z)V

    iget v0, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/aV;->n:I

    invoke-virtual {p1, v0, v1}, LaJ/p;->b(II)LaJ/B;

    move-result-object v1

    iget v0, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->c:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    invoke-virtual {p1, v0, v2}, LaJ/p;->b(II)LaJ/B;

    move-result-object v0

    invoke-virtual {v1, v0}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x400a3f28fd4f4b98L

    mul-double/2addr v4, v2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aV;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->i:Ljava/lang/String;

    sget-object v0, Lar/s;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3f
    if-ltz v0, :cond_7f

    sget-object v6, Lar/s;->a:[I

    aget v6, v6, v0

    int-to-double v6, v6

    sub-double v6, v2, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_f7

    sget-object v2, Lar/s;->a:[I

    aget v0, v2, v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_dd

    const/16 v2, 0xec

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aV;->i:Ljava/lang/String;

    :goto_6c
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, LaJ/B;->c(II)LaJ/B;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/aV;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v2}, LaJ/p;->b(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aV;->l:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->m:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlenav/ui/aV;->g:I

    :cond_7f
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aV;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/aV;->j:Ljava/lang/String;

    sget-object v0, Lar/s;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8b
    if-ltz v0, :cond_d

    sget-object v2, Lar/s;->b:[I

    aget v2, v2, v0

    int-to-double v2, v2

    sub-double v2, v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_114

    sget-object v2, Lar/s;->b:[I

    aget v0, v2, v0

    const/16 v2, 0x14a0

    if-ge v0, v2, :cond_fb

    const/16 v2, 0xea

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aV;->j:Ljava/lang/String;

    :goto_b8
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    int-to-double v4, v0

    const-wide v6, 0x400a3f28fd4f4b98L

    div-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, LaJ/B;->c(II)LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/aV;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, LaJ/p;->b(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aV;->l:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/aV;->h:I

    goto/16 :goto_d

    :cond_dd
    const/16 v2, 0xeb

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    div-int/lit16 v7, v0, 0x3e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aV;->i:Ljava/lang/String;

    goto/16 :goto_6c

    :cond_f7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3f

    :cond_fb
    const/16 v2, 0xed

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    div-int/lit16 v5, v0, 0x14a0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/aV;->j:Ljava/lang/String;

    goto :goto_b8

    :cond_114
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8b
.end method

.method public a(Lah/e;Z)V
    .registers 8

    iget v0, p0, Lcom/google/googlenav/ui/aV;->g:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/googlenav/ui/aV;->h:I

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/aV;->g:I

    iget v1, p0, Lcom/google/googlenav/ui/aV;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/aV;->d:I

    add-int/2addr v0, v1

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lah/e;->a(I)V

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/googlenav/ui/aV;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aV;->b:I

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p1, v1, v2, v3, v4}, Lah/e;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->f:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aV;->d:I

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p1, v1, v2, v3, v4}, Lah/e;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->h:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/googlenav/ui/aV;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aV;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v1, v2, v3, v4}, Lah/e;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->g:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/aV;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v1, v2, v3, v4}, Lah/e;->b(IIII)V

    const/high16 v1, -0x100

    invoke-interface {p1, v1}, Lah/e;->a(I)V

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/aV;->d:I

    iget v4, p0, Lcom/google/googlenav/ui/aV;->b:I

    invoke-interface {p1, v1, v2, v3, v4}, Lah/e;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/aV;->d:I

    invoke-interface {p1, v1, v2, v0, v3}, Lah/e;->b(IIII)V

    iget v0, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/aV;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->e:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aV;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, Lah/e;->b(IIII)V

    iget v0, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/aV;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, Lah/e;->b(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aV;->j:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aV;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    sget-object v3, Lcom/google/googlenav/ui/aV;->o:Lah/d;

    invoke-interface {v3}, Lah/d;->a()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/aV;->a:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p2, v1, v2}, Lcom/google/googlenav/ui/aV;->a(Lah/e;Ljava/lang/String;ZII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aV;->i:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/aV;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/aV;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aV;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/aV;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/aV;->a:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, v0, p2, v1, v2}, Lcom/google/googlenav/ui/aV;->a(Lah/e;Ljava/lang/String;ZII)V

    goto/16 :goto_8
.end method
