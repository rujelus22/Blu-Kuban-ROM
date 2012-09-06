.class public Lde/innosystec/unrar/unpack/ppm/b;
.super Ljava/lang/Object;


# static fields
.field private static w:[I


# instance fields
.field private final A:Lde/innosystec/unrar/unpack/ppm/j;

.field private final B:Lde/innosystec/unrar/unpack/ppm/k;

.field private final C:Lde/innosystec/unrar/unpack/ppm/k;

.field private final D:Lde/innosystec/unrar/unpack/ppm/c;

.field private final E:Lde/innosystec/unrar/unpack/ppm/c;

.field private final F:Lde/innosystec/unrar/unpack/ppm/c;

.field private final G:Lde/innosystec/unrar/unpack/ppm/c;

.field private final H:[I

.field private a:[[Lde/innosystec/unrar/unpack/ppm/i;

.field private b:Lde/innosystec/unrar/unpack/ppm/i;

.field private c:Lde/innosystec/unrar/unpack/ppm/c;

.field private d:Lde/innosystec/unrar/unpack/ppm/c;

.field private e:Lde/innosystec/unrar/unpack/ppm/c;

.field private f:Lde/innosystec/unrar/unpack/ppm/j;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:I

.field private r:I

.field private s:I

.field private t:[[I

.field private u:Lde/innosystec/unrar/unpack/ppm/e;

.field private v:Lde/innosystec/unrar/unpack/ppm/l;

.field private final x:Lde/innosystec/unrar/unpack/ppm/j;

.field private final y:Lde/innosystec/unrar/unpack/ppm/j;

.field private final z:Lde/innosystec/unrar/unpack/ppm/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lde/innosystec/unrar/unpack/ppm/b;->w:[I

    return-void

    :array_a
    .array-data 0x4
        0xddt 0x3ct 0x0t 0x0t
        0x3ft 0x1ft 0x0t 0x0t
        0xbft 0x59t 0x0t 0x0t
        0xf3t 0x48t 0x0t 0x0t
        0xa1t 0x64t 0x0t 0x0t
        0xbct 0x5at 0x0t 0x0t
        0x32t 0x66t 0x0t 0x0t
        0x51t 0x60t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    const/16 v4, 0x40

    const/16 v3, 0x100

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lde/innosystec/unrar/unpack/ppm/i;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lde/innosystec/unrar/unpack/ppm/i;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    const/16 v0, 0x80

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->t:[[I

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/e;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/l;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/l;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->x:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->y:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->z:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->A:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/k;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/k;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->B:Lde/innosystec/unrar/unpack/ppm/k;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/k;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/k;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->C:Lde/innosystec/unrar/unpack/ppm/k;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->D:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->E:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->F:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->G:Lde/innosystec/unrar/unpack/ppm/c;

    new-array v0, v4, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->d:Lde/innosystec/unrar/unpack/ppm/c;

    return-void
.end method

.method private a(ZLde/innosystec/unrar/unpack/ppm/j;)I
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/b;->C:Lde/innosystec/unrar/unpack/ppm/k;

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->x:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v5

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->D:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v6

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v2

    invoke-virtual {v6, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->E:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v7

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v2

    invoke-virtual {v7, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->y:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v8

    if-nez p1, :cond_183

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    aput v3, v2, v1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v2

    if-nez v2, :cond_17f

    move v3, v0

    move v2, v0

    :goto_52
    if-nez v3, :cond_af

    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    if-eqz v3, :cond_17c

    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    move v3, v0

    :goto_69
    if-nez v3, :cond_9e

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v3

    if-eq v3, v0, :cond_b6

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v9

    if-eq v3, v9, :cond_9e

    :cond_8f
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v9

    if-ne v3, v9, :cond_8f

    :cond_9e
    :goto_9e
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v3

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v9

    if-eq v3, v9, :cond_c2

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    :cond_af
    :goto_af
    if-nez v2, :cond_d4

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    :cond_b5
    :goto_b5
    return v1

    :cond_b6
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    goto :goto_9e

    :cond_c2
    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v10

    aput v10, v9, v2

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v2

    if-nez v2, :cond_178

    move v2, v3

    goto :goto_af

    :cond_d4
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v9

    aget-byte v3, v3, v9

    invoke-virtual {v4, v3}, Lde/innosystec/unrar/unpack/ppm/k;->a(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lde/innosystec/unrar/unpack/ppm/k;->d(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v3

    if-eq v3, v0, :cond_16b

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v7

    if-le v3, v7, :cond_b5

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    invoke-virtual {v8, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v7

    if-eq v3, v7, :cond_11e

    :cond_111
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v7

    if-ne v3, v7, :cond_111

    :cond_11e
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    mul-int/lit8 v8, v3, 0x2

    if-gt v8, v7, :cond_160

    mul-int/lit8 v3, v3, 0x5

    if-le v3, v7, :cond_15e

    :goto_13a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/ppm/k;->b(I)V

    move v0, v2

    :cond_140
    :goto_140
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->H:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    invoke-virtual {v5, v2}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6, p0, v5, v4}, Lde/innosystec/unrar/unpack/ppm/c;->a(Lde/innosystec/unrar/unpack/ppm/b;Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/k;)I

    move-result v2

    invoke-virtual {v6, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v2

    if-eqz v2, :cond_b5

    if-nez v0, :cond_140

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    goto/16 :goto_b5

    :cond_15e
    move v0, v1

    goto :goto_13a

    :cond_160
    mul-int/lit8 v0, v3, 0x2

    mul-int/lit8 v3, v7, 0x3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v3, v7, 0x2

    div-int/2addr v0, v3

    goto :goto_13a

    :cond_16b
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lde/innosystec/unrar/unpack/ppm/k;->b(I)V

    move v0, v2

    goto :goto_140

    :cond_178
    move v2, v3

    move v3, v1

    goto/16 :goto_69

    :cond_17c
    move v3, v1

    goto/16 :goto_69

    :cond_17f
    move v3, v1

    move v2, v0

    goto/16 :goto_52

    :cond_183
    move v3, v1

    move v2, v1

    goto/16 :goto_52
.end method

.method private i(I)V
    .registers 8

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->t()V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    aput v3, v1, v3

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    move v1, v3

    :goto_13
    const/16 v2, 0x9

    if-lt v1, v2, :cond_37

    move v1, v3

    :goto_18
    const/16 v2, 0xf5

    if-lt v1, v2, :cond_41

    move v1, v3

    :goto_1d
    const/4 v2, 0x3

    if-lt v1, v2, :cond_4b

    move v2, v0

    move v4, v1

    :goto_22
    const/16 v5, 0x100

    if-lt v4, v5, :cond_52

    move v0, v3

    :goto_27
    const/16 v1, 0x40

    if-lt v0, v1, :cond_62

    move v0, v3

    :goto_2c
    const/16 v1, 0xc0

    if-lt v0, v1, :cond_69

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->b:Lde/innosystec/unrar/unpack/ppm/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/i;->b(I)V

    return-void

    :cond_37
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x4

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_41
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    add-int/lit8 v4, v1, 0xb

    const/4 v5, 0x6

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_4b
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_52
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    aput v1, v5, v4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_5f

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_62
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_69
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    add-int/lit8 v2, v0, 0x40

    const/16 v3, 0x8

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method

.method private t()V
    .registers 10

    const/16 v5, 0x100

    const/16 v8, 0x80

    const/16 v0, 0xc

    const/4 v1, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->i()V

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    if-ge v2, v0, :cond_17

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    :cond_17
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->e()I

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->b(I)V

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/ppm/c;->a(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lde/innosystec/unrar/unpack/ppm/a;->a(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v8}, Lde/innosystec/unrar/unpack/ppm/l;->b(I)I

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/a;->a_(I)V

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/j;

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    iput v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    move v0, v1

    :goto_7b
    if-lt v0, v5, :cond_86

    move v3, v1

    :goto_7e
    if-lt v3, v8, :cond_99

    move v2, v1

    :goto_81
    const/16 v0, 0x19

    if-lt v2, v0, :cond_bf

    return-void

    :cond_86
    mul-int/lit8 v4, v0, 0x6

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v2, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_99
    move v2, v1

    :goto_9a
    const/16 v0, 0x8

    if-lt v2, v0, :cond_a2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7e

    :cond_a2
    move v0, v1

    :goto_a3
    const/16 v4, 0x40

    if-lt v0, v4, :cond_ab

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9a

    :cond_ab
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/b;->t:[[I

    aget-object v4, v4, v3

    add-int v5, v2, v0

    sget-object v6, Lde/innosystec/unrar/unpack/ppm/b;->w:[I

    aget v6, v6, v2

    add-int/lit8 v7, v3, 0x2

    div-int/2addr v6, v7

    rsub-int v6, v6, 0x4000

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x8

    goto :goto_a3

    :cond_bf
    move v0, v1

    :goto_c0
    const/16 v3, 0x10

    if-lt v0, v3, :cond_c8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_81

    :cond_c8
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    mul-int/lit8 v4, v2, 0x5

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/i;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c0
.end method

.method private u()V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private v()V
    .registers 2

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->t()V

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    return-void
.end method

.method private w()V
    .registers 15

    const/4 v13, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/b;->B:Lde/innosystec/unrar/unpack/ppm/k;

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/k;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->z:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v6

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->A:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a([B)Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->F:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v7

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->G:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/c;->a([B)Lde/innosystec/unrar/unpack/ppm/c;

    move-result-object v8

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v3

    invoke-virtual {v7, v3}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v3

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_9d

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    if-eqz v3, :cond_9d

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v3

    if-eq v3, v1, :cond_cc

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v4

    if-eq v3, v4, :cond_8b

    :cond_65
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->f()Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v3

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v4

    if-ne v3, v4, :cond_65

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v3

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v4

    if-lt v3, v4, :cond_8b

    invoke-static {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->d()Lde/innosystec/unrar/unpack/ppm/j;

    :cond_8b
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v3, 0x73

    if-ge v0, v3, :cond_9d

    invoke-virtual {v6, v9}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    :cond_9d
    :goto_9d
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    if-nez v0, :cond_e3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-direct {p0, v1, v6}, Lde/innosystec/unrar/unpack/ppm/b;->a(ZLde/innosystec/unrar/unpack/ppm/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    if-nez v0, :cond_cb

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    :cond_cb
    :goto_cb
    return-void

    :cond_cc
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_9d

    invoke-virtual {v6, v1}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    goto :goto_9d

    :cond_e3
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v3

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->b()V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v0

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/l;->f()I

    move-result v3

    if-lt v0, v3, :cond_116

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto :goto_cb

    :cond_116
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    if-eqz v0, :cond_199

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v3

    if-gt v0, v3, :cond_139

    invoke-direct {p0, v2, v6}, Lde/innosystec/unrar/unpack/ppm/b;->a(ZLde/innosystec/unrar/unpack/ppm/j;)I

    move-result v0

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/k;->d(I)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    if-nez v0, :cond_139

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto :goto_cb

    :cond_139
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    if-nez v0, :cond_15b

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    if-eq v0, v3, :cond_15b

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->d(I)V

    :cond_15b
    :goto_15b
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v9

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int v10, v0, v3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    :goto_17d
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    if-ne v0, v3, :cond_1a8

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    goto/16 :goto_cb

    :cond_199
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/k;->a(Lde/innosystec/unrar/unpack/ppm/c;)V

    goto :goto_15b

    :cond_1a8
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v11

    if-eq v11, v1, :cond_25a

    and-int/lit8 v0, v11, 0x1

    if-nez v0, :cond_1d8

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v4

    ushr-int/lit8 v12, v11, 0x1

    invoke-virtual {v3, v4, v12}, Lde/innosystec/unrar/unpack/ppm/l;->a(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/ppm/a;->a_(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v0

    if-nez v0, :cond_1d8

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto/16 :goto_cb

    :cond_1d8
    mul-int/lit8 v0, v11, 0x2

    if-ge v0, v9, :cond_254

    move v4, v1

    :goto_1dd
    mul-int/lit8 v0, v11, 0x4

    if-gt v0, v9, :cond_256

    move v0, v1

    :goto_1e2
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v3

    mul-int/lit8 v12, v11, 0x8

    if-gt v3, v12, :cond_258

    move v3, v1

    :goto_1ef
    and-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    :goto_1fa
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    mul-int/2addr v3, v0

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/a;->a()I

    move-result v0

    add-int v4, v10, v0

    mul-int/lit8 v0, v4, 0x6

    if-ge v3, v0, :cond_2ad

    if-le v3, v4, :cond_2a7

    move v0, v1

    :goto_21c
    add-int/lit8 v12, v0, 0x1

    mul-int/lit8 v0, v4, 0x4

    if-lt v3, v0, :cond_2aa

    move v0, v1

    :goto_223
    add-int/2addr v0, v12

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    :goto_22b
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v3

    mul-int/lit8 v4, v11, 0x6

    add-int/2addr v3, v4

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6, v8}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/c;)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v3

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/ppm/j;->a(I)V

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/c;->a(I)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v0

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    goto/16 :goto_17d

    :cond_254
    move v4, v2

    goto :goto_1dd

    :cond_256
    move v0, v2

    goto :goto_1e2

    :cond_258
    move v3, v2

    goto :goto_1ef

    :cond_25a
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/l;->b(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v0

    if-nez v0, :cond_26e

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->v()V

    goto/16 :goto_cb

    :cond_26e
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->c()Lde/innosystec/unrar/unpack/ppm/j;

    move-result-object v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lde/innosystec/unrar/unpack/ppm/a;->a(Lde/innosystec/unrar/unpack/ppm/j;)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_29f

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->d(I)V

    :goto_28b
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v0

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/b;->h:I

    add-int/2addr v4, v0

    if-le v9, v13, :cond_2a5

    move v0, v1

    :goto_299
    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/a;->a(I)V

    goto/16 :goto_1fa

    :cond_29f
    const/16 v0, 0x78

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    goto :goto_28b

    :cond_2a5
    move v0, v2

    goto :goto_299

    :cond_2a7
    move v0, v2

    goto/16 :goto_21c

    :cond_2aa
    move v0, v2

    goto/16 :goto_223

    :cond_2ad
    mul-int/lit8 v0, v4, 0x9

    if-lt v3, v0, :cond_2c9

    move v0, v1

    :goto_2b2
    add-int/lit8 v12, v0, 0x4

    mul-int/lit8 v0, v4, 0xc

    if-lt v3, v0, :cond_2cb

    move v0, v1

    :goto_2b9
    add-int/2addr v12, v0

    mul-int/lit8 v0, v4, 0xf

    if-lt v3, v0, :cond_2cd

    move v0, v1

    :goto_2bf
    add-int/2addr v0, v12

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/ppm/a;->b(I)V

    goto/16 :goto_22b

    :cond_2c9
    move v0, v2

    goto :goto_2b2

    :cond_2cb
    move v0, v2

    goto :goto_2b9

    :cond_2cd
    move v0, v2

    goto :goto_2bf
.end method


# virtual methods
.method public a()Lde/innosystec/unrar/unpack/ppm/l;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/b;I)Z
    .registers 11

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/b;->a()I

    move-result v2

    and-int/lit16 v5, v2, 0xff

    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_3d

    move v4, v1

    :goto_f
    if-eqz v4, :cond_3f

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/b;->a()I

    move-result v2

    move v3, v2

    :goto_16
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_21

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/b;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/b;->a(I)V

    :cond_21
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v2, p1}, Lde/innosystec/unrar/unpack/ppm/e;->a(Lde/innosystec/unrar/unpack/b;)V

    if-eqz v4, :cond_8b

    and-int/lit8 v2, v5, 0x1f

    add-int/lit8 v2, v2, 0x1

    if-le v2, v7, :cond_aa

    add-int/lit8 v2, v2, -0x10

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x10

    move v4, v2

    :goto_35
    if-ne v4, v1, :cond_49

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/l;->c()V

    :cond_3c
    :goto_3c
    return v0

    :cond_3d
    move v4, v0

    goto :goto_f

    :cond_3f
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->d()I

    move-result v2

    if-eqz v2, :cond_3c

    move v3, v0

    goto :goto_16

    :cond_49
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/l;->a(I)Z

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->d:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/c;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->r()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lde/innosystec/unrar/unpack/ppm/j;-><init>([B)V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    new-instance v2, Lde/innosystec/unrar/unpack/ppm/i;

    invoke-direct {v2}, Lde/innosystec/unrar/unpack/ppm/i;-><init>()V

    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->b:Lde/innosystec/unrar/unpack/ppm/i;

    move v3, v0

    :goto_84
    const/16 v2, 0x19

    if-lt v3, v2, :cond_95

    invoke-direct {p0, v4}, Lde/innosystec/unrar/unpack/ppm/b;->i(I)V

    :cond_8b
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v2

    if-eqz v2, :cond_3c

    move v0, v1

    goto :goto_3c

    :cond_95
    move v2, v0

    :goto_96
    if-lt v2, v7, :cond_9c

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_84

    :cond_9c
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    aget-object v5, v5, v3

    new-instance v6, Lde/innosystec/unrar/unpack/ppm/i;

    invoke-direct {v6}, Lde/innosystec/unrar/unpack/ppm/i;-><init>()V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    :cond_aa
    move v4, v2

    goto :goto_35
.end method

.method public b()I
    .registers 4

    const/4 v0, -0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_1d

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->g()I

    move-result v2

    if-le v1, v2, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8e

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_1d

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->a()Lde/innosystec/unrar/unpack/ppm/a;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/a;->b()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->g()I

    move-result v2

    if-gt v1, v2, :cond_1d

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, p0}, Lde/innosystec/unrar/unpack/ppm/c;->d(Lde/innosystec/unrar/unpack/ppm/b;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :goto_53
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->c()V

    :goto_58
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->e()I

    move-result v1

    if-eqz v1, :cond_94

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v0

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    if-nez v1, :cond_df

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_df

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->e:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    :cond_88
    :goto_88
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->d()V

    goto :goto_1d

    :cond_8e
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, p0}, Lde/innosystec/unrar/unpack/ppm/c;->b(Lde/innosystec/unrar/unpack/ppm/b;)V

    goto :goto_53

    :cond_94
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->d()V

    :cond_99
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/c;->c(I)V

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->h()I

    move-result v2

    if-le v1, v2, :cond_1d

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/l;->g()I

    move-result v2

    if-gt v1, v2, :cond_1d

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/c;->b()I

    move-result v1

    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    if-eq v1, v2, :cond_99

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->c:Lde/innosystec/unrar/unpack/ppm/c;

    invoke-virtual {v1, p0}, Lde/innosystec/unrar/unpack/ppm/c;->c(Lde/innosystec/unrar/unpack/ppm/b;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/e;->c()V

    goto/16 :goto_58

    :cond_df
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->w()V

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    if-nez v1, :cond_88

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/b;->u()V

    goto :goto_88
.end method

.method public b(I)V
    .registers 3

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->f()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/b;->a(I)V

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    return-void
.end method

.method public c()[[Lde/innosystec/unrar/unpack/ppm/i;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->a:[[Lde/innosystec/unrar/unpack/ppm/i;

    return-object v0
.end method

.method public d()Lde/innosystec/unrar/unpack/ppm/i;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->b:Lde/innosystec/unrar/unpack/ppm/i;

    return-object v0
.end method

.method public d(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    return v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->h:I

    return-void
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    return v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    return-void
.end method

.method public g(I)V
    .registers 3

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/b;->i()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/b;->f(I)V

    return-void
.end method

.method public g()[I
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->m:[I

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    return v0
.end method

.method public h(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->s:I

    return-void
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->s:I

    return v0
.end method

.method public l()[[I
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->t:[[I

    return-object v0
.end method

.method public m()Lde/innosystec/unrar/unpack/ppm/e;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    return-object v0
.end method

.method public n()[I
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->p:[I

    return-object v0
.end method

.method public o()[I
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->o:[I

    return-object v0
.end method

.method public p()[I
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->n:[I

    return-object v0
.end method

.method public q()Lde/innosystec/unrar/unpack/ppm/j;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    return-object v0
.end method

.method public r()[B
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelPPM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  numMasked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  initEsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  orderFall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  maxOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  runLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  initRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  escCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  prevSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  foundState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->f:Lde/innosystec/unrar/unpack/ppm/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  coder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->u:Lde/innosystec/unrar/unpack/ppm/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  subAlloc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/b;->v:Lde/innosystec/unrar/unpack/ppm/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
