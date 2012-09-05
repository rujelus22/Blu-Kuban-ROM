.class public Lau/h;
.super Ljava/lang/Object;


# instance fields
.field a:[Lau/s;

.field protected b:Ljava/util/List;

.field final synthetic c:Lau/b;

.field private d:[LaJ/B;

.field private e:[I

.field private f:[Lau/m;

.field private g:Ljava/util/List;

.field private h:[LaJ/B;

.field private i:LaJ/B;

.field private j:LaJ/B;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Z

.field private o:I

.field private p:Lau/f;

.field private q:Ljava/lang/String;

.field private r:Lam/b;

.field private s:Lam/b;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:LaJ/B;


# direct methods
.method constructor <init>(Lau/b;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lau/h;->c:Lau/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lau/h;->e:[I

    iput-boolean v1, p0, Lau/h;->t:Z

    return-void
.end method

.method constructor <init>(Lau/b;Lam/b;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lau/h;->c:Lau/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lau/h;->e:[I

    iput-boolean v1, p0, Lau/h;->t:Z

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-direct {p0, p2}, Lau/h;->b(Lam/b;)V

    invoke-direct {p0, p2}, Lau/h;->c(Lam/b;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lau/h;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lau/h;->e(Lam/b;)Z

    move-result v1

    iput-boolean v1, p0, Lau/h;->t:Z

    invoke-direct {p0, v0}, Lau/h;->d(Lam/b;)V

    invoke-virtual {p0}, Lau/h;->v()V

    invoke-direct {p0, v0}, Lau/h;->f(Lam/b;)V

    return-void
.end method

.method static synthetic a(Lau/h;)I
    .registers 2

    iget v0, p0, Lau/h;->x:I

    return v0
.end method

.method static synthetic a(Lau/h;I)I
    .registers 2

    iput p1, p0, Lau/h;->o:I

    return p1
.end method

.method private a(Lam/b;Z)V
    .registers 5

    const/4 v1, 0x2

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, Lau/h;->o:I

    if-eqz p2, :cond_16

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    iput-boolean v0, p0, Lau/h;->l:Z

    invoke-static {p1, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, Lau/h;->k:I

    :cond_16
    iget v0, p0, Lau/h;->o:I

    iget v1, p0, Lau/h;->k:I

    invoke-static {v0, v1}, Lau/f;->a(II)Lau/f;

    move-result-object v0

    iput-object v0, p0, Lau/h;->p:Lau/f;

    return-void
.end method

.method static synthetic a(Lau/h;Lam/b;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lau/h;->a(Lam/b;Z)V

    return-void
.end method

.method private a(Lam/b;I)Z
    .registers 14

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iget-object v2, p0, Lau/h;->c:Lau/b;

    invoke-static {v2}, Lau/b;->a(Lau/b;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lau/h;->c:Lau/b;

    invoke-static {v0}, Lau/b;->e(Lam/b;)I

    move-result v3

    invoke-static {v2, v3}, Lau/b;->a(Lau/b;I)I

    :cond_19
    iget-object v3, p0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0}, LaJ/C;->c(Lam/b;)LaJ/B;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-static {v0}, LaJ/C;->d(Lam/b;)LaJ/Y;

    move-result-object v3

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lam/b;->c(I)[B

    move-result-object v0

    if-nez v0, :cond_31

    new-array v0, v1, [B

    :cond_31
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_3b
    :try_start_3b
    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v5

    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v6

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    iget-object v0, p0, Lau/h;->c:Lau/b;

    invoke-static {v0}, Lau/b;->a(Lau/b;)I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_5e

    iget-object v8, p0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v7, v5, v6, v3}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v5

    aput-object v5, v8, v2

    :goto_5c
    move v2, v0

    goto :goto_3b

    :cond_5e
    iget-object v8, p0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v0, v2, 0x1

    new-instance v9, LaJ/B;

    invoke-virtual {v7}, LaJ/B;->c()I

    move-result v10

    add-int/2addr v5, v10

    invoke-virtual {v7}, LaJ/B;->e()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v9, v5, v6}, LaJ/B;-><init>(II)V

    aput-object v9, v8, v2
    :try_end_73
    .catch Ljava/io/EOFException; {:try_start_3b .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_73} :catch_77

    goto :goto_5c

    :catch_74
    move-exception v0

    const/4 v0, 0x1

    :goto_76
    return v0

    :catch_77
    move-exception v0

    move v0, v1

    goto :goto_76
.end method

.method static synthetic b(Lau/h;)I
    .registers 2

    iget v0, p0, Lau/h;->w:I

    return v0
.end method

.method private b(Lam/b;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lau/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v1

    iput-boolean v1, p0, Lau/h;->l:Z

    invoke-static {v0, v3}, Lam/g;->e(Lam/b;I)I

    move-result v1

    iput v1, p0, Lau/h;->k:I

    invoke-virtual {v0, v2}, Lam/b;->k(I)Z

    move-result v1

    iput-boolean v1, p0, Lau/h;->n:Z

    invoke-static {v0, v2}, Lam/g;->e(Lam/b;I)I

    move-result v1

    iput v1, p0, Lau/h;->m:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lau/h;->q:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v1

    iput v1, p0, Lau/h;->o:I

    iget v1, p0, Lau/h;->o:I

    iget v2, p0, Lau/h;->k:I

    invoke-static {v1, v2}, Lau/f;->a(II)Lau/f;

    move-result-object v1

    iput-object v1, p0, Lau/h;->p:Lau/f;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    iput-object v1, p0, Lau/h;->r:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lau/h;->s:Lam/b;

    return-void
.end method

.method static synthetic c(Lau/h;)LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/h;->y:LaJ/B;

    return-object v0
.end method

.method private c(Lam/b;)Ljava/util/List;
    .registers 8

    const/16 v5, 0x1a

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1d

    new-instance v3, Lau/g;

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lau/g;-><init>(Lam/b;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1d
    return-object v2
.end method

.method static synthetic d(Lau/h;)LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/h;->i:LaJ/B;

    return-object v0
.end method

.method private d(Lam/b;)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lau/h;->d:[LaJ/B;

    array-length v12, v2

    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lam/b;->l(I)I

    move-result v13

    if-nez v13, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lau/h;->k:I

    move-object/from16 v0, p0

    iget v3, v0, Lau/h;->o:I

    add-int/2addr v3, v2

    new-array v2, v12, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lau/h;->e:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lau/h;->e:[I

    const/4 v4, 0x0

    aput v3, v2, v4

    new-array v14, v12, [I

    const/4 v4, 0x0

    const/4 v2, 0x1

    :goto_2a
    if-ge v2, v12, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lau/h;->d:[LaJ/B;

    aget-object v5, v5, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    sget-object v7, Lau/b;->d:LaJ/Y;

    invoke-virtual {v5, v6, v7}, LaJ/B;->a(LaJ/B;LaJ/Y;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_4b
    const/4 v2, 0x0

    move v8, v2

    move v10, v3

    :goto_4e
    if-ge v8, v13, :cond_f

    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lam/b;->d(I)I

    move-result v11

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lam/b;->d(I)I

    move-result v9

    if-lt v9, v12, :cond_6e

    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lau/h;->e:[I

    goto :goto_f

    :cond_6e
    if-eqz v9, :cond_b2

    const-wide/16 v2, 0x0

    move v5, v4

    :goto_73
    if-ge v5, v9, :cond_80

    add-int/lit8 v6, v5, 0x1

    aget v6, v14, v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v2, v6

    goto :goto_73

    :cond_80
    const-wide/16 v5, 0x0

    const-wide/16 v15, 0x0

    cmp-long v7, v2, v15

    if-nez v7, :cond_8a

    const-wide/16 v2, 0x1

    :cond_8a
    :goto_8a
    if-ge v4, v9, :cond_b9

    add-int/lit8 v7, v4, 0x1

    aget v7, v14, v7

    int-to-long v15, v7

    add-long/2addr v5, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lau/h;->e:[I

    add-int/lit8 v15, v4, 0x1

    int-to-long v0, v10

    move-wide/from16 v16, v0

    sub-int v18, v11, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v18, v18, v5

    div-long v18, v18, v2

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v7, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lau/h;->e:[I

    const/4 v3, 0x0

    aput v11, v2, v3

    :cond_b9
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v4, v9

    move v10, v11

    goto :goto_4e
.end method

.method private e(Lam/b;)Z
    .registers 9

    const/4 v6, 0x7

    const/4 v0, 0x0

    iget-object v1, p0, Lau/h;->c:Lau/b;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lau/b;->a(Lau/b;I)I

    invoke-virtual {p1, v6}, Lam/b;->l(I)I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_e
    if-ge v1, v3, :cond_1c

    invoke-virtual {p1, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lau/b;->f(Lam/b;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    new-array v1, v2, [LaJ/B;

    iput-object v1, p0, Lau/h;->d:[LaJ/B;

    move v1, v0

    move v2, v0

    :goto_22
    if-ge v2, v3, :cond_37

    invoke-virtual {p1, v6, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lau/h;->a(Lam/b;I)Z

    move-result v5

    if-nez v5, :cond_2f

    :goto_2e
    return v0

    :cond_2f
    invoke-static {v4}, Lau/b;->f(Lam/b;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_37
    iget-object v1, p0, Lau/h;->d:[LaJ/B;

    aget-object v0, v1, v0

    iput-object v0, p0, Lau/h;->i:LaJ/B;

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    iget-object v1, p0, Lau/h;->d:[LaJ/B;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lau/h;->j:LaJ/B;

    const/4 v0, 0x1

    goto :goto_2e
.end method

.method private f(Lam/b;)V
    .registers 16

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v0

    if-lez v0, :cond_57

    const/16 v1, 0xa

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_57

    new-instance v1, Lam/b;

    sget-object v2, LbD/aR;->n:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lau/h;->c:Lau/b;

    invoke-static {v3}, Lau/b;->b(Lau/b;)Lau/x;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v2, 0x5

    iget-object v3, p0, Lau/h;->d:[LaJ/B;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    const/16 v2, 0xa

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_50

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Lam/b;->b(ILam/b;)V

    :cond_50
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lam/b;->a(ILam/b;)V

    :cond_57
    new-array v1, v0, [Lau/s;

    iput-object v1, p0, Lau/h;->a:[Lau/s;

    new-array v1, v0, [LaJ/B;

    iput-object v1, p0, Lau/h;->h:[LaJ/B;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lau/h;->g:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lau/h;->u:Z

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v13

    :goto_6d
    if-ge v2, v0, :cond_100

    iget-object v3, p0, Lau/h;->a:[Lau/s;

    new-instance v4, Lau/s;

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-direct {v4, v5}, Lau/s;-><init>(Lam/b;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lau/h;->a:[Lau/s;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lau/s;->z()I

    move-result v3

    iget-object v4, p0, Lau/h;->d:[LaJ/B;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_99

    iget-object v3, p0, Lau/h;->a:[Lau/s;

    aget-object v3, v3, v2

    iget-object v4, p0, Lau/h;->d:[LaJ/B;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lau/s;->c(I)V

    :cond_99
    iget-object v3, p0, Lau/h;->a:[Lau/s;

    aget-object v3, v3, v2

    iget-object v4, p0, Lau/h;->h:[LaJ/B;

    iget-object v5, p0, Lau/h;->d:[LaJ/B;

    iget-object v6, p0, Lau/h;->a:[Lau/s;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lau/s;->z()I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    invoke-virtual {v3, v5}, Lau/s;->a(LaJ/B;)V

    iget-boolean v3, p0, Lau/h;->u:Z

    if-nez v3, :cond_cd

    iget-object v3, p0, Lau/h;->c:Lau/b;

    invoke-virtual {v3}, Lau/b;->m()Z

    move-result v3

    if-eqz v3, :cond_cd

    iget-object v3, p0, Lau/h;->a:[Lau/s;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lau/s;->C()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_dc

    if-eqz v1, :cond_cc

    const/4 v1, 0x1

    iput-boolean v1, p0, Lau/h;->u:Z

    :cond_cc
    const/4 v1, 0x1

    :cond_cd
    :goto_cd
    if-nez v2, :cond_de

    iget-object v3, p0, Lau/h;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d9
    :goto_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    :cond_dc
    const/4 v1, 0x0

    goto :goto_cd

    :cond_de
    iget-object v3, p0, Lau/h;->a:[Lau/s;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lau/s;->h()Lt/y;

    move-result-object v3

    iget-object v4, p0, Lau/h;->a:[Lau/s;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lau/s;->h()Lt/y;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d9

    iget-object v3, p0, Lau/h;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    :cond_100
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    :goto_108
    iget-object v0, p0, Lau/h;->a:[Lau/s;

    array-length v0, v0

    if-ge v2, v0, :cond_1cc

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lau/s;->z()I

    move-result v4

    invoke-virtual {v1}, Lau/s;->A()Z

    move-result v0

    if-nez v0, :cond_120

    move v0, v11

    :goto_11c
    add-int/lit8 v2, v2, 0x1

    move v11, v0

    goto :goto_108

    :cond_120
    invoke-virtual {v1}, Lau/s;->C()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_15b

    new-instance v0, Lau/m;

    const/4 v3, 0x0

    iget-object v5, p0, Lau/h;->d:[LaJ/B;

    aget-object v5, v5, v4

    invoke-virtual {v1}, Lau/s;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lau/m;-><init>(Lau/s;IIILaJ/B;Ljava/lang/String;)V

    invoke-virtual {p0}, Lau/h;->u()Z

    move-result v3

    if-eqz v3, :cond_156

    if-nez v7, :cond_1e3

    new-instance v5, Lau/a;

    iget-object v3, p0, Lau/h;->d:[LaJ/B;

    aget-object v9, v3, v4

    invoke-virtual {v1}, Lau/s;->E()Ljava/lang/String;

    move-result-object v10

    move-object v6, v1

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lau/a;-><init>(Lau/s;IILaJ/B;Ljava/lang/String;)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_150
    invoke-virtual {v5, v0}, Lau/a;->a(Lau/m;)V

    :goto_153
    move v0, v11

    move-object v7, v5

    goto :goto_11c

    :cond_156
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v7

    goto :goto_153

    :cond_15b
    invoke-virtual {v1}, Lau/s;->C()I

    move-result v0

    packed-switch v0, :pswitch_data_1e6

    :pswitch_162
    const/4 v3, 0x0

    :goto_163
    if-eqz v7, :cond_1e1

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1c3

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    :goto_170
    invoke-virtual {v7}, Lau/a;->m()Lau/s;

    move-result-object v5

    invoke-virtual {v5, v0}, Lau/s;->a(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_178
    new-instance v0, Lau/m;

    iget-object v5, p0, Lau/h;->d:[LaJ/B;

    aget-object v5, v5, v4

    invoke-virtual {v1}, Lau/s;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lau/m;-><init>(Lau/s;IIILaJ/B;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lau/h;->c:Lau/b;

    invoke-virtual {v4}, Lau/b;->m()Z

    move-result v4

    if-eqz v4, :cond_1dd

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1dd

    if-nez v11, :cond_1db

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lau/m;->a(Z)V

    const/4 v7, 0x1

    :goto_19a
    iget-object v0, p0, Lau/h;->a:[Lau/s;

    add-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lau/s;->z()I

    move-result v4

    new-instance v0, Lau/m;

    const/4 v3, 0x2

    iget-object v5, p0, Lau/h;->d:[LaJ/B;

    aget-object v5, v5, v4

    iget-object v6, p0, Lau/h;->a:[Lau/s;

    add-int/lit8 v9, v2, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lau/s;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lau/m;-><init>(Lau/s;IIILaJ/B;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    move-object v7, v8

    goto/16 :goto_11c

    :pswitch_1bf
    const/4 v3, 0x3

    goto :goto_163

    :pswitch_1c1
    const/4 v3, 0x1

    goto :goto_163

    :cond_1c3
    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lau/s;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_170

    :cond_1cc
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lau/m;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lau/m;

    iput-object v0, p0, Lau/h;->f:[Lau/m;

    return-void

    :cond_1db
    move v7, v11

    goto :goto_19a

    :cond_1dd
    move v0, v11

    move-object v7, v8

    goto/16 :goto_11c

    :cond_1e1
    move-object v8, v7

    goto :goto_178

    :cond_1e3
    move-object v5, v7

    goto/16 :goto_150

    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_1c1
        :pswitch_162
        :pswitch_162
        :pswitch_1bf
    .end packed-switch
.end method

.method private j(I)I
    .registers 5

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lau/h;->c:Lau/b;

    invoke-static {v1}, Lau/b;->a(Lau/b;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lau/h;->d:[LaJ/B;

    aget-object v1, v1, p1

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v0

    sub-int v0, v1, v0

    :goto_1d
    return v0

    :cond_1e
    const/16 v1, 0x16

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    iget-object v2, p0, Lau/h;->d:[LaJ/B;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, LaJ/B;->a(LaJ/Y;)I

    move-result v2

    invoke-virtual {v0, v1}, LaJ/B;->a(LaJ/Y;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_1d
.end method

.method private k(I)I
    .registers 5

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lau/h;->c:Lau/b;

    invoke-static {v1}, Lau/b;->a(Lau/b;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lau/h;->d:[LaJ/B;

    aget-object v1, v1, p1

    invoke-virtual {v1}, LaJ/B;->e()I

    move-result v1

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v0

    sub-int v0, v1, v0

    :goto_1d
    return v0

    :cond_1e
    const/16 v1, 0x16

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    iget-object v2, p0, Lau/h;->d:[LaJ/B;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, LaJ/B;->b(LaJ/Y;)I

    move-result v2

    invoke-virtual {v0, v1}, LaJ/B;->b(LaJ/Y;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_1d
.end method

.method private l(I)Z
    .registers 3

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(I)Lau/m;
    .registers 3

    iget-object v0, p0, Lau/h;->f:[Lau/m;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lau/h;->f:[Lau/m;

    aget-object v0, v0, p1

    goto :goto_5
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lam/b;)V
    .registers 13

    const/4 v9, 0x7

    const/4 v0, 0x1

    const/4 v4, 0x0

    new-instance v6, Lam/b;

    sget-object v1, LbD/aR;->o:Lam/e;

    invoke-direct {v6, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v6}, Lam/b;->a(ILam/b;)V

    iget-object v1, p0, Lau/h;->v:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/16 v1, 0x14

    iget-object v2, p0, Lau/h;->v:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1e
    invoke-virtual {p0}, Lau/h;->l()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x2

    invoke-virtual {p0}, Lau/h;->k()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Lam/b;->h(II)V

    :cond_2c
    invoke-virtual {p0}, Lau/h;->n()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lau/h;->m()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lam/b;->h(II)V

    :cond_39
    iget-object v1, p0, Lau/h;->q:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const/4 v1, 0x6

    iget-object v2, p0, Lau/h;->q:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_47
    iget-object v1, p0, Lau/h;->c:Lau/b;

    invoke-virtual {v1}, Lau/b;->l()Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Lam/b;->h(II)V

    :cond_54
    iget-object v1, p0, Lau/h;->r:Lam/b;

    if-eqz v1, :cond_64

    const/4 v1, 0x4

    iget-object v2, p0, Lau/h;->r:Lam/b;

    invoke-virtual {v6, v1, v2}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lau/h;->s:Lam/b;

    invoke-virtual {v6, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_64
    iget-object v1, p0, Lau/h;->d:[LaJ/B;

    aget-object v3, v1, v4

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v5, v0

    move-object v0, v1

    move-object v1, v2

    :goto_75
    :try_start_75
    iget-object v2, p0, Lau/h;->d:[LaJ/B;

    array-length v2, v2

    if-ge v5, v2, :cond_c3

    invoke-direct {p0, v5}, Lau/h;->j(I)I

    move-result v2

    invoke-direct {p0, v5}, Lau/h;->k(I)I

    move-result v7

    invoke-direct {p0, v2}, Lau/h;->l(I)Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-direct {p0, v7}, Lau/h;->l(I)Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-interface {v0, v2}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-interface {v0, v7}, Ljava/io/DataOutput;->writeShort(I)V

    move-object v2, v3

    :goto_95
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_75

    :cond_9a
    const/4 v0, 0x7

    iget-object v2, p0, Lau/h;->c:Lau/b;

    invoke-static {v2}, Lau/b;->a(Lau/b;)I

    move-result v2

    invoke-static {v3, v2}, Lau/b;->a(LaJ/B;I)Lam/b;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v2, v7}, Lau/b;->a(Lam/b;[B)Lam/b;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lam/b;->a(ILam/b;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_b5} :catch_c2

    :try_start_b5
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lau/h;->d:[LaJ/B;

    aget-object v1, v1, v5
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_be} :catch_ef

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_95

    :catch_c2
    move-exception v0

    :cond_c3
    :goto_c3
    iget-object v0, p0, Lau/h;->c:Lau/b;

    invoke-static {v0}, Lau/b;->a(Lau/b;)I

    move-result v0

    invoke-static {v3, v0}, Lau/b;->a(LaJ/B;I)Lam/b;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Lau/b;->a(Lam/b;[B)Lam/b;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lam/b;->a(ILam/b;)V

    move v0, v4

    :goto_d9
    iget-object v1, p0, Lau/h;->a:[Lau/s;

    array-length v1, v1

    if-ge v0, v1, :cond_ee

    const/16 v1, 0xa

    iget-object v2, p0, Lau/h;->a:[Lau/s;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lau/s;->f()Lam/b;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    :cond_ee
    return-void

    :catch_ef
    move-exception v0

    move-object v1, v2

    goto :goto_c3
.end method

.method a(III)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ge p3, p2, :cond_a

    if-le p1, p3, :cond_8

    if-lt p1, p2, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    if-gt p1, p3, :cond_10

    if-lt p1, p2, :cond_10

    :goto_e
    move v0, v1

    goto :goto_9

    :cond_10
    move v1, v0

    goto :goto_e
.end method

.method public b(I)Lau/s;
    .registers 3

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lau/h;->t:Z

    return v0
.end method

.method public c(I)LaJ/B;
    .registers 3

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lau/s;->g()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lau/h;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lau/h;->f:[Lau/m;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lau/h;->f:[Lau/m;

    array-length v0, v0

    goto :goto_5
.end method

.method public d(I)Lt/y;
    .registers 3

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lau/s;->h()Lt/y;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    array-length v0, v0

    return v0
.end method

.method public e(I)Z
    .registers 3

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    if-eqz v0, :cond_13

    if-ltz p1, :cond_13

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    array-length v0, v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public f(I)I
    .registers 3

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lau/s;->z()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lau/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public g(I)I
    .registers 3

    iget-object v0, p0, Lau/h;->f:[Lau/m;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lau/h;->f:[Lau/m;

    aget-object v0, v0, p1

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lau/h;->f:[Lau/m;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lau/m;->l()I

    move-result v0

    goto :goto_b
.end method

.method public g()[LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    return-object v0
.end method

.method public h(I)J
    .registers 4

    iget-object v0, p0, Lau/h;->f:[Lau/m;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lau/m;->m()Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lau/h;->a:[Lau/s;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lau/s;->h()Lt/y;

    move-result-object v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public i()LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/h;->i:LaJ/B;

    return-object v0
.end method

.method public i(I)Z
    .registers 4

    iget-object v0, p0, Lau/h;->a:[Lau/s;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public j()LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/h;->j:LaJ/B;

    return-object v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lau/h;->k:I

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lau/h;->l:Z

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lau/h;->m:I

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lau/h;->n:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lau/h;->m()I

    move-result v0

    iget-object v1, p0, Lau/h;->c:Lau/b;

    invoke-virtual {v1}, Lau/b;->ax()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lau/h;->o:I

    return v0
.end method

.method public r()Lau/f;
    .registers 2

    iget-object v0, p0, Lau/h;->p:Lau/f;

    return-object v0
.end method

.method public s()Lam/b;
    .registers 2

    iget-object v0, p0, Lau/h;->r:Lam/b;

    return-object v0
.end method

.method public t()Lam/b;
    .registers 2

    iget-object v0, p0, Lau/h;->s:Lam/b;

    return-object v0
.end method

.method public u()Z
    .registers 2

    iget-boolean v0, p0, Lau/h;->u:Z

    return v0
.end method

.method v()V
    .registers 11

    const v9, 0x15752a00

    const/4 v5, 0x0

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    array-length v0, v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v4

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v3

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v2

    iget-object v0, p0, Lau/h;->d:[LaJ/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v1

    iput v5, p0, Lau/h;->x:I

    iput v5, p0, Lau/h;->w:I

    new-instance v0, LaJ/B;

    invoke-direct {v0, v5, v5}, LaJ/B;-><init>(II)V

    iput-object v0, p0, Lau/h;->y:LaJ/B;

    const/4 v0, 0x1

    :goto_36
    iget-object v5, p0, Lau/h;->d:[LaJ/B;

    array-length v5, v5

    if-ge v0, v5, :cond_8f

    iget-object v5, p0, Lau/h;->d:[LaJ/B;

    aget-object v5, v5, v0

    invoke-virtual {v5}, LaJ/B;->e()I

    move-result v5

    iget-object v6, p0, Lau/h;->d:[LaJ/B;

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, LaJ/B;->e()I

    move-result v8

    sub-int v6, v5, v8

    if-gez v6, :cond_b6

    add-int/2addr v6, v9

    move v7, v6

    :goto_53
    sub-int v6, v8, v5

    if-gez v6, :cond_58

    add-int/2addr v6, v9

    :cond_58
    if-ge v6, v7, :cond_79

    invoke-virtual {p0, v4, v5, v8}, Lau/h;->a(III)Z

    move-result v6

    if-eqz v6, :cond_6b

    if-eq v4, v5, :cond_6b

    invoke-virtual {p0, v5, v4, v3}, Lau/h;->a(III)Z

    move-result v4

    if-eqz v4, :cond_6a

    iput v9, p0, Lau/h;->x:I

    :cond_6a
    move v4, v5

    :cond_6b
    :goto_6b
    iget-object v5, p0, Lau/h;->d:[LaJ/B;

    aget-object v5, v5, v0

    invoke-virtual {v5}, LaJ/B;->c()I

    move-result v5

    if-le v5, v2, :cond_8b

    move v2, v5

    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_79
    invoke-virtual {p0, v3, v8, v5}, Lau/h;->a(III)Z

    move-result v6

    if-eqz v6, :cond_6b

    if-eq v3, v5, :cond_6b

    invoke-virtual {p0, v5, v4, v3}, Lau/h;->a(III)Z

    move-result v3

    if-eqz v3, :cond_89

    iput v9, p0, Lau/h;->x:I

    :cond_89
    move v3, v5

    goto :goto_6b

    :cond_8b
    if-ge v5, v1, :cond_76

    move v1, v5

    goto :goto_76

    :cond_8f
    if-lt v3, v4, :cond_ae

    sub-int v0, v3, v4

    :goto_93
    iget v3, p0, Lau/h;->x:I

    if-le v0, v3, :cond_b3

    :goto_97
    iput v0, p0, Lau/h;->x:I

    sub-int v0, v2, v1

    iput v0, p0, Lau/h;->w:I

    new-instance v0, LaJ/B;

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lau/h;->x:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    iput-object v0, p0, Lau/h;->y:LaJ/B;

    goto/16 :goto_9

    :cond_ae
    sub-int v0, v4, v3

    sub-int v0, v9, v0

    goto :goto_93

    :cond_b3
    iget v0, p0, Lau/h;->x:I

    goto :goto_97

    :cond_b6
    move v7, v6

    goto :goto_53
.end method

.method public w()V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lau/h;->u()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_f
    iget-object v4, p0, Lau/h;->f:[Lau/m;

    array-length v4, v4

    if-ge v1, v4, :cond_32

    iget-object v4, p0, Lau/h;->f:[Lau/m;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lau/m;->v()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Lau/m;->z()Lau/a;

    move-result-object v5

    if-eq v0, v5, :cond_2b

    invoke-virtual {v4}, Lau/m;->z()Lau/a;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lau/m;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lau/m;

    iput-object v0, p0, Lau/h;->f:[Lau/m;

    iget-object v0, p0, Lau/h;->c:Lau/b;

    invoke-static {v0, v2}, Lau/b;->b(Lau/b;I)I

    goto :goto_7
.end method

.method public x()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lau/h;->c:Lau/b;

    invoke-virtual {v0}, Lau/b;->m()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_10
    iget-object v0, p0, Lau/h;->f:[Lau/m;

    array-length v0, v0

    if-ge v1, v0, :cond_3f

    iget-object v0, p0, Lau/h;->f:[Lau/m;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lau/m;->r()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Lau/m;->n()Z

    move-result v3

    if-eqz v3, :cond_38

    check-cast v0, Lau/a;

    move v3, v2

    :goto_28
    invoke-virtual {v0}, Lau/a;->h()I

    move-result v5

    if-ge v3, v5, :cond_3b

    invoke-virtual {v0, v3}, Lau/a;->a(I)Lau/m;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_38
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_3f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lau/m;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lau/m;

    iput-object v0, p0, Lau/h;->f:[Lau/m;

    iget-object v0, p0, Lau/h;->c:Lau/b;

    invoke-static {v0, v2}, Lau/b;->b(Lau/b;I)I

    goto :goto_9
.end method

.method public y()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lau/h;->u()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    move v0, v1

    :goto_9
    iget-object v2, p0, Lau/h;->f:[Lau/m;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lau/h;->f:[Lau/m;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lau/m;->r()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_7

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public z()Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lau/h;->a:[Lau/s;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lau/h;->a:[Lau/s;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lau/s;->f()Lam/b;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    :cond_18
    return v1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
