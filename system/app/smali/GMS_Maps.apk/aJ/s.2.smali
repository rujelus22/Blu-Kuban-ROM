.class public LaJ/s;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:LaJ/Y;


# instance fields
.field private final b:[LaJ/B;

.field private final c:I

.field private final d:I

.field private final e:Laf/a;

.field private f:Z

.field private g:J

.field private h:J

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x3e8

    sput-wide v0, LaJ/s;->a:J

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->V()I

    move-result v0

    mul-int/lit16 v0, v0, 0x359

    div-int/lit16 v0, v0, 0x3e8

    sput v0, LaJ/s;->j:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->s()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1e24

    div-int/lit16 v0, v0, 0x3e8

    sput v0, LaJ/s;->k:I

    sget v0, LaJ/s;->j:I

    sget v1, LaJ/s;->k:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lar/i;->c(I)I

    move-result v0

    sput v0, LaJ/s;->l:I

    const/16 v0, 0x16

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    sput-object v0, LaJ/s;->m:LaJ/Y;

    return-void
.end method

.method public constructor <init>(LaJ/B;LaJ/B;II)V
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [LaJ/B;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    int-to-long v4, p3

    move-object v0, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, LaJ/s;-><init>([LaJ/B;IIJI)V

    return-void
.end method

.method public constructor <init>([LaJ/B;IIJI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, LaJ/s;->e:Laf/a;

    iput-object p1, p0, LaJ/s;->b:[LaJ/B;

    iput p2, p0, LaJ/s;->c:I

    iput p3, p0, LaJ/s;->d:I

    iput p6, p0, LaJ/s;->i:I

    iput-wide p4, p0, LaJ/s;->h:J

    iget-object v0, p0, LaJ/s;->e:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/s;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/s;->f:Z

    return-void
.end method

.method private a(III)I
    .registers 8

    sub-int v0, p2, p1

    int-to-long v0, v0

    int-to-long v2, p3

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method static a(JJJI)J
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_7

    :goto_6
    return-wide v0

    :cond_7
    const/4 v0, 0x1

    if-ne p6, v0, :cond_e

    mul-long v0, p0, p2

    div-long/2addr v0, p4

    goto :goto_6

    :cond_e
    const/4 v0, 0x2

    if-ne p6, v0, :cond_1e

    mul-long v0, p4, p4

    sub-long v2, p4, p2

    sub-long v4, p4, p2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    mul-long/2addr v0, p0

    mul-long v2, p4, p4

    div-long/2addr v0, v2

    goto :goto_6

    :cond_1e
    const-wide/16 v0, 0x3

    mul-long/2addr v0, p2

    mul-long/2addr v0, p2

    mul-long/2addr v0, p4

    const-wide/16 v2, 0x2

    mul-long/2addr v2, p2

    mul-long/2addr v2, p2

    mul-long/2addr v2, p2

    sub-long/2addr v0, v2

    mul-long/2addr v0, p0

    mul-long v2, p4, p4

    mul-long/2addr v2, p4

    div-long/2addr v0, v2

    goto :goto_6
.end method

.method public static a(LaJ/B;IILaJ/Y;)LaJ/s;
    .registers 14

    const/4 v2, 0x0

    mul-int v0, p1, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    sget v1, LaJ/s;->k:I

    div-int v1, v0, v1

    invoke-static {v0}, Lar/i;->c(I)I

    move-result v0

    sget v3, LaJ/s;->j:I

    if-le v1, v3, :cond_6f

    sget v1, LaJ/s;->l:I

    mul-int/2addr v1, p1

    div-int p1, v1, v0

    sget v1, LaJ/s;->l:I

    mul-int/2addr v1, p2

    div-int p2, v1, v0

    sget v1, LaJ/s;->j:I

    sget v0, LaJ/s;->l:I

    move v3, v0

    move v0, v1

    :goto_22
    if-nez v3, :cond_60

    move v0, v2

    move v1, v2

    :goto_26
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long v3, v4, v6

    sget v5, LaJ/s;->k:I

    int-to-long v5, v5

    div-long v4, v3, v5

    int-to-long v6, v1

    const-wide/32 v8, 0x15752a00

    mul-long/2addr v6, v8

    invoke-virtual {p3}, LaJ/Y;->b()I

    move-result v3

    int-to-long v8, v3

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xaba9500

    div-long/2addr v6, v8

    long-to-int v3, v6

    add-int/lit8 v3, v3, 0x1

    div-int v6, v1, v3

    div-int v7, v0, v3

    add-int/lit8 v0, v3, 0x1

    new-array v1, v0, [LaJ/B;

    aput-object p0, v1, v2

    move v0, v2

    :goto_51
    if-ge v0, v3, :cond_68

    add-int/lit8 v8, v0, 0x1

    aget-object v9, v1, v0

    invoke-virtual {v9, v6, v7, p3}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v9

    aput-object v9, v1, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_60
    mul-int v1, v0, p1

    div-int/2addr v1, v3

    neg-int v1, v1

    mul-int/2addr v0, p2

    div-int/2addr v0, v3

    neg-int v0, v0

    goto :goto_26

    :cond_68
    new-instance v0, LaJ/s;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, LaJ/s;-><init>([LaJ/B;IIJI)V

    return-object v0

    :cond_6f
    move v3, v0

    move v0, v1

    goto :goto_22
.end method


# virtual methods
.method public a()LaJ/B;
    .registers 12

    const/4 v7, 0x1

    const-wide/16 v9, 0x2710

    const/4 v8, 0x0

    iget-object v0, p0, LaJ/s;->e:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v2

    iget-wide v0, p0, LaJ/s;->g:J

    iget-wide v4, p0, LaJ/s;->h:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_1c

    iget v0, p0, LaJ/s;->d:I

    iget-object v1, p0, LaJ/s;->b:[LaJ/B;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2e

    :cond_1c
    iput-boolean v7, p0, LaJ/s;->f:Z

    iget-object v0, p0, LaJ/s;->b:[LaJ/B;

    iget v1, p0, LaJ/s;->d:I

    iget-object v2, p0, LaJ/s;->b:[LaJ/B;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v0, v0, v1

    :goto_2d
    return-object v0

    :cond_2e
    iget v0, p0, LaJ/s;->d:I

    iget v1, p0, LaJ/s;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v9

    iget-wide v4, p0, LaJ/s;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, LaJ/s;->h:J

    iget v6, p0, LaJ/s;->i:I

    invoke-static/range {v0 .. v6}, LaJ/s;->a(JJJI)J

    move-result-wide v1

    iget v0, p0, LaJ/s;->c:I

    int-to-long v3, v0

    div-long v5, v1, v9

    add-long/2addr v3, v5

    long-to-int v0, v3

    iget-object v3, p0, LaJ/s;->b:[LaJ/B;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, p0, LaJ/s;->d:I

    iget v4, p0, LaJ/s;->c:I

    if-le v0, v4, :cond_bc

    move v0, v7

    :goto_5b
    add-int/2addr v0, v3

    iget-object v4, p0, LaJ/s;->b:[LaJ/B;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    rem-long v0, v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, LaJ/s;->b:[LaJ/B;

    aget-object v0, v0, v3

    sget-object v2, LaJ/s;->m:LaJ/Y;

    invoke-virtual {v0, v2}, LaJ/B;->a(LaJ/Y;)I

    move-result v0

    iget-object v2, p0, LaJ/s;->b:[LaJ/B;

    aget-object v2, v2, v4

    sget-object v5, LaJ/s;->m:LaJ/Y;

    invoke-virtual {v2, v5}, LaJ/B;->a(LaJ/Y;)I

    move-result v2

    sub-int v0, v2, v0

    sget-object v2, LaJ/s;->m:LaJ/Y;

    invoke-virtual {v2}, LaJ/Y;->b()I

    move-result v2

    neg-int v5, v2

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_be

    add-int/2addr v0, v2

    :cond_92
    :goto_92
    iget-object v2, p0, LaJ/s;->b:[LaJ/B;

    aget-object v2, v2, v3

    sget-object v5, LaJ/s;->m:LaJ/Y;

    invoke-virtual {v2, v5}, LaJ/B;->b(LaJ/Y;)I

    move-result v2

    iget-object v5, p0, LaJ/s;->b:[LaJ/B;

    aget-object v4, v5, v4

    sget-object v5, LaJ/s;->m:LaJ/Y;

    invoke-virtual {v4, v5}, LaJ/B;->b(LaJ/Y;)I

    move-result v4

    iget-object v5, p0, LaJ/s;->b:[LaJ/B;

    aget-object v3, v5, v3

    invoke-direct {p0, v8, v0, v1}, LaJ/s;->a(III)I

    move-result v0

    sub-int v2, v4, v2

    invoke-direct {p0, v8, v2, v1}, LaJ/s;->a(III)I

    move-result v1

    sget-object v2, LaJ/s;->m:LaJ/Y;

    invoke-virtual {v3, v0, v1, v2}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    goto/16 :goto_2d

    :cond_bc
    const/4 v0, -0x1

    goto :goto_5b

    :cond_be
    div-int/lit8 v5, v2, 0x2

    if-le v0, v5, :cond_92

    sub-int/2addr v0, v2

    goto :goto_92
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, LaJ/s;->f:Z

    return v0
.end method
