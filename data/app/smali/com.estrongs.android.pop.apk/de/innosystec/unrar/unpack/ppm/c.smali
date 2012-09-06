.class public Lde/innosystec/unrar/unpack/ppm/c;
.super Lde/innosystec/unrar/unpack/ppm/d;


# static fields
.field public static final a:I

.field public static final b:[I

.field private static final f:I


# instance fields
.field private g:I

.field private final h:Lde/innosystec/unrar/unpack/ppm/a;

.field private final i:Lde/innosystec/unrar/unpack/ppm/j;

.field private j:I

.field private final k:Lde/innosystec/unrar/unpack/ppm/j;

.field private final l:Lde/innosystec/unrar/unpack/ppm/j;

.field private final m:Lde/innosystec/unrar/unpack/ppm/j;

.field private final n:Lde/innosystec/unrar/unpack/ppm/j;

.field private final o:Lde/innosystec/unrar/unpack/ppm/j;

.field private p:Lde/innosystec/unrar/unpack/ppm/c;

.field private final q:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lde/innosystec/unrar/unpack/ppm/c;->f:I

    sget v0, Lde/innosystec/unrar/unpack/ppm/c;->f:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    sput v0, Lde/innosystec/unrar/unpack/ppm/c;->a:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lde/innosystec/unrar/unpack/ppm/c;->b:[I

    return-void

    nop

    :array_1a
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/d;-><init>([B)V

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->k:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->l:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->m:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->n:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->o:Lde/innosystec/unrar/unpack/ppm/j;

    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->p:Lde/innosystec/unrar/unpack/ppm/c;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->q:[I

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, p1}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/a;

    invoke-direct {v0, p1}, Lde/innosystec/unrar/unpack/ppm/a;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    return-void
.end method

.method private a(Lde/innosystec/unrar/unpack/ppm/b;Lde/innosystec/unrar/unpack/ppm/j;)I
    .registers 7

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->a()Lde/innosystec/unrar/unpack/ppm/l;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/c;->b([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->j()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->o()[I

    move-result-object v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->n()[I

    move-result-object v2

    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->i()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    return v0
.end method

.method private b([B)Lde/innosystec/unrar/unpack/ppm/c;
    .registers 4

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->p:Lde/innosystec/unrar/unpack/ppm/c;

    if-nez v0, :cond_c

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->p:Lde/innosystec/unrar/unpack/ppm/c;

    :cond_c
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->p:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v0

    return-object v0
.end method

.method private c(Lde/innosystec/unrar/unpack/ppm/b;I)Lde/innosystec/unrar/unpack/ppm/i;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v3

    const/16 v0, 0x100

    if-eq v3, v0, :cond_66

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/c;->b([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->p()[I

    move-result-object v4

    add-int/lit8 v5, p2, -0x1

    aget v4, v4, v5

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p2, v0, :cond_60

    move v0, v1

    :goto_29
    add-int v5, v2, v0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v0

    mul-int/lit8 v3, v3, 0xb

    if-ge v0, v3, :cond_62

    move v0, v1

    :goto_36
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->h()I

    move-result v3

    if-le v3, p2, :cond_64

    :goto_3f
    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->k()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->c()[[Lde/innosystec/unrar/unpack/ppm/i;

    move-result-object v1

    aget-object v1, v1, v4

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/i;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lde/innosystec/unrar/unpack/ppm/f;->c(J)V

    :goto_5f
    return-object v0

    :cond_60
    move v0, v2

    goto :goto_29

    :cond_62
    move v0, v2

    goto :goto_36

    :cond_64
    move v1, v2

    goto :goto_3f

    :cond_66
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->d()Lde/innosystec/unrar/unpack/ppm/i;

    move-result-object v0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lde/innosystec/unrar/unpack/ppm/f;->c(J)V

    goto :goto_5f
.end method


# virtual methods
.method public a(III)I
    .registers 6

    const/4 v0, 0x1

    sub-int v1, p2, p3

    shl-int/2addr v0, v1

    add-int/2addr v0, p1

    ushr-int/2addr v0, p2

    return v0
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/b;Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/k;)I
    .registers 6

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->a()Lde/innosystec/unrar/unpack/ppm/l;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/c;->b([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->a()Lde/innosystec/unrar/unpack/ppm/l;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/l;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->a(I)V

    invoke-virtual {v0, p3}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/k;)V

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/c;)V

    invoke-virtual {p2, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/c;)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    return v0
.end method

.method public a()Lde/innosystec/unrar/unpack/ppm/a;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    return-object v0
.end method

.method public a([B)Lde/innosystec/unrar/unpack/ppm/c;
    .registers 3

    iput-object p1, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->d:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/a;->a([B)Lde/innosystec/unrar/unpack/ppm/a;

    return-object p0
.end method

.method public final a(I)V
    .registers 5

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->g:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    if-eqz v0, :cond_12

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->d:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lde/innosystec/unrar/b/b;->a([BIS)V

    :cond_12
    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/b;)V
    .registers 15

    const/4 v8, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v4

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    new-instance v5, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    new-instance v6, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v0

    invoke-direct {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    new-instance v7, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v0

    invoke-direct {v7, v0}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    :goto_32
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v2

    if-ne v0, v2, :cond_15c

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v0

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v7, v8}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v0, v8}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v0

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->s()I

    move-result v0

    if-eqz v0, :cond_16d

    move v0, v1

    :goto_62
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v8

    add-int/2addr v8, v0

    ushr-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    iget-object v8, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v9

    invoke-virtual {v8, v9}, Lde/innosystec/unrar/unpack/ppm/a;->a(I)V

    :cond_75
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v8

    add-int/2addr v8, v0

    ushr-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    iget-object v8, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v9

    invoke-virtual {v8, v9}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v7, v8}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v8

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v9

    if-le v8, v9, :cond_f5

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v8

    invoke-virtual {v5, v8}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    new-instance v8, Lde/innosystec/unrar/unpack/ppm/k;

    invoke-direct {v8}, Lde/innosystec/unrar/unpack/ppm/k;-><init>()V

    invoke-virtual {v8, v5}, Lde/innosystec/unrar/unpack/ppm/k;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    new-instance v9, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    new-instance v10, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    :cond_c4
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v9, v11}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v5, v9}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->d()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v10, v11}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v11

    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v12

    if-eq v11, v12, :cond_f2

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v11

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v12

    if-gt v11, v12, :cond_c4

    :cond_f2
    invoke-virtual {v5, v8}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/k;)V

    :cond_f5
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_75

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    if-nez v0, :cond_170

    :cond_ff
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->d()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    if-eqz v0, :cond_ff

    add-int v0, v2, v3

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/ppm/c;->a(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v2

    if-ne v2, v1, :cond_171

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/k;

    invoke-direct {v2}, Lde/innosystec/unrar/unpack/ppm/k;-><init>()V

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    invoke-virtual {v7, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v2, v7}, Lde/innosystec/unrar/unpack/ppm/k;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    :cond_12b
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v3

    ushr-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/k;->c(I)V

    ushr-int/lit8 v0, v0, 0x1

    if-gt v0, v1, :cond_12b

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->a()Lde/innosystec/unrar/unpack/ppm/l;

    move-result-object v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v1

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Lde/innosystec/unrar/unpack/ppm/l;->b(II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/k;)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    :goto_15b
    return-void

    :cond_15c
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-static {v6, v7}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->d()Lde/innosystec/unrar/unpack/ppm/j;

    goto/16 :goto_32

    :cond_16d
    const/4 v0, 0x0

    goto/16 :goto_62

    :cond_170
    move v0, v2

    :cond_171
    ushr-int/lit8 v1, v0, 0x1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    add-int/lit8 v0, v4, 0x1

    ushr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_19a

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->a()Lde/innosystec/unrar/unpack/ppm/l;

    move-result-object v3

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->a(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/a;->a_(I)V

    :cond_19a
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    goto :goto_15b
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/b;I)V
    .registers 7

    const/4 v1, 0x4

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->m:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->n:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v1

    invoke-virtual {v0, p2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    add-int/lit8 v2, p2, -0x6

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v3

    if-le v2, v3, :cond_53

    invoke-static {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v1, 0x7c

    if-le v0, v1, :cond_53

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/b;)V

    :cond_53
    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/c;)V
    .registers 3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/c;->b(I)V

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/k;)V
    .registers 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/k;)V

    return-void
.end method

.method public final b()I
    .registers 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    if-eqz v0, :cond_12

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->d:I

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->g:I

    :cond_12
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->g:I

    return v0
.end method

.method public b(I)V
    .registers 4

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/c;->j:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    if-eqz v0, :cond_f

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->d:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lde/innosystec/unrar/b/b;->c([BII)V

    :cond_f
    return-void
.end method

.method public b(Lde/innosystec/unrar/unpack/ppm/b;)V
    .registers 15

    const v12, 0xffff

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->k:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->n()[I

    move-result-object v3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Lde/innosystec/unrar/unpack/ppm/b;->h(I)V

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, p1, v2}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/b;Lde/innosystec/unrar/unpack/ppm/j;)I

    move-result v4

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->l()[[I

    move-result-object v5

    aget-object v5, v5, v3

    aget v5, v5, v4

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/ppm/e;->a(I)J

    move-result-wide v6

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-gez v6, :cond_93

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v6

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v7

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v6

    const/16 v7, 0x80

    if-ge v6, v7, :cond_60

    move v0, v1

    :cond_60
    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/f;->b(J)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/f;->a(J)V

    add-int/lit16 v0, v5, 0x80

    invoke-virtual {p0, v5, v11, v10}, Lde/innosystec/unrar/unpack/ppm/c;->a(III)I

    move-result v2

    sub-int/2addr v0, v2

    and-int/2addr v0, v12

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->l()[[I

    move-result-object v2

    aget-object v2, v2, v3

    aput v0, v2, v4

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/ppm/b;->d(I)V

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/ppm/b;->g(I)V

    :goto_92
    return-void

    :cond_93
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v6

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v6

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lde/innosystec/unrar/unpack/ppm/f;->b(J)V

    invoke-virtual {p0, v5, v11, v10}, Lde/innosystec/unrar/unpack/ppm/c;->a(III)I

    move-result v6

    sub-int/2addr v5, v6

    and-int/2addr v5, v12

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->l()[[I

    move-result-object v6

    aget-object v3, v6, v3

    aput v5, v3, v4

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v3

    const-wide/16 v6, 0x4000

    invoke-virtual {v3, v6, v7}, Lde/innosystec/unrar/unpack/ppm/f;->a(J)V

    sget-object v3, Lde/innosystec/unrar/unpack/ppm/c;->b:[I

    ushr-int/lit8 v4, v5, 0xa

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Lde/innosystec/unrar/unpack/ppm/b;->e(I)V

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/ppm/b;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->g()[I

    move-result-object v1

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->f()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/ppm/b;->d(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    goto :goto_92
.end method

.method public b(Lde/innosystec/unrar/unpack/ppm/b;I)V
    .registers 6

    const/4 v2, 0x4

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->o:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v1

    invoke-virtual {v1, p2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v1

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v1, 0x7c

    if-le v0, v1, :cond_2c

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/b;)V

    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/ppm/b;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/ppm/b;->f(I)V

    return-void
.end method

.method public c()Lde/innosystec/unrar/unpack/ppm/j;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    return-object v0
.end method

.method public c(I)V
    .registers 4

    invoke-super {p0, p1}, Lde/innosystec/unrar/unpack/ppm/d;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/a;->c(I)V

    return-void
.end method

.method public c(Lde/innosystec/unrar/unpack/ppm/b;)Z
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->h()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(Lde/innosystec/unrar/unpack/ppm/b;I)Lde/innosystec/unrar/unpack/ppm/i;

    move-result-object v5

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v6

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->k:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v7

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->l:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v8

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v7, v2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    move v3, v0

    move v2, v1

    move v0, v1

    :cond_34
    :goto_34
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->g()[I

    move-result-object v4

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v9

    aget v4, v4, v9

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->f()I

    move-result v9

    if-eq v4, v9, :cond_34

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/c;->q:[I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v10

    aput v10, v9, v0

    add-int/lit8 v0, v3, -0x1

    if-nez v0, :cond_106

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/ppm/f;->a(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->b()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v9

    cmp-long v0, v2, v9

    if-ltz v0, :cond_73

    :goto_72
    return v1

    :cond_73
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->q:[I

    aget v0, v0, v1

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    int-to-long v9, v4

    cmp-long v0, v2, v9

    if-gez v0, :cond_b5

    move v0, v1

    :goto_80
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v4

    add-int/2addr v0, v4

    int-to-long v8, v0

    cmp-long v4, v8, v2

    if-lez v4, :cond_ab

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lde/innosystec/unrar/unpack/ppm/f;->a(J)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v1

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lde/innosystec/unrar/unpack/ppm/f;->b(J)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/i;->b()V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/c;->b(Lde/innosystec/unrar/unpack/ppm/b;I)V

    :goto_a9
    const/4 v1, 0x1

    goto :goto_72

    :cond_ab
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/c;->q:[I

    add-int/lit8 v1, v1, 0x1

    aget v4, v4, v1

    invoke-virtual {v7, v4}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    goto :goto_80

    :cond_b5
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    int-to-long v1, v4

    invoke-virtual {v0, v1, v2}, Lde/innosystec/unrar/unpack/ppm/f;->b(J)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lde/innosystec/unrar/unpack/ppm/f;->a(J)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->h()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v0, -0x1

    :cond_d7
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->q:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    invoke-virtual {v8, v2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->g()[I

    move-result-object v2

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->f()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_d7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/i;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/ppm/b;->c(I)V

    goto :goto_a9

    :cond_106
    move v3, v0

    move v0, v2

    move v2, v4

    goto/16 :goto_34
.end method

.method public d()I
    .registers 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    if-eqz v0, :cond_10

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->d:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->j:I

    :cond_10
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/c;->j:I

    return v0
.end method

.method public d(Lde/innosystec/unrar/unpack/ppm/b;)Z
    .registers 13

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->m()Lde/innosystec/unrar/unpack/ppm/e;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lde/innosystec/unrar/unpack/ppm/f;->c(J)V

    new-instance v5, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v2

    invoke-direct {v5, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v2

    invoke-virtual {v5, v2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->b()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-ltz v2, :cond_39

    move v1, v0

    :goto_38
    return v1

    :cond_39
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v2

    int-to-long v8, v2

    cmp-long v3, v6, v8

    if-gez v3, :cond_8f

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v3

    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Lde/innosystec/unrar/unpack/ppm/f;->a(J)V

    mul-int/lit8 v3, v2, 0x2

    int-to-long v6, v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_5a

    move v0, v1

    :cond_5a
    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/ppm/b;->d(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/ppm/b;->g(I)V

    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v2

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    const/16 v2, 0x7c

    if-le v0, v2, :cond_85

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/b;)V

    :cond_85
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lde/innosystec/unrar/unpack/ppm/f;->b(J)V

    goto :goto_38

    :cond_8f
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    if-nez v3, :cond_9b

    move v1, v0

    goto :goto_38

    :cond_9b
    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/ppm/b;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :cond_a4
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v9

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v9

    add-int/2addr v2, v9

    int-to-long v9, v2

    cmp-long v9, v9, v6

    if-lez v9, :cond_d1

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v3

    sub-int v3, v2, v3

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/f;->b(J)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lde/innosystec/unrar/unpack/ppm/f;->a(J)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/b;I)V

    goto/16 :goto_38

    :cond_d1
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_a4

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->n()[I

    move-result-object v3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v6

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v6

    aget v3, v3, v6

    invoke-virtual {p1, v3}, Lde/innosystec/unrar/unpack/ppm/b;->h(I)V

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v3

    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Lde/innosystec/unrar/unpack/ppm/f;->b(J)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->g()[I

    move-result-object v2

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->f()I

    move-result v6

    aput v6, v2, v3

    invoke-virtual {p1, v8}, Lde/innosystec/unrar/unpack/ppm/b;->c(I)V

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->q()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    move v0, v2

    :cond_109
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->g()[I

    move-result-object v2

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/j;->d()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/b;->f()I

    move-result v6

    aput v6, v2, v3

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_109

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/e;->a()Lde/innosystec/unrar/unpack/ppm/f;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/innosystec/unrar/unpack/ppm/f;->a(J)V

    goto/16 :goto_38
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PPMContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lde/innosystec/unrar/unpack/ppm/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  numStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freqData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->h:Lde/innosystec/unrar/unpack/ppm/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  oneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/c;->i:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
