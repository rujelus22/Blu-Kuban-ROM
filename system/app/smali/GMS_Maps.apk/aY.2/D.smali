.class public LaY/D;
.super Ljava/lang/Object;


# static fields
.field private static final b:I


# instance fields
.field private a:LaY/G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, LaY/D;->b:I

    return-void
.end method

.method public constructor <init>(LaY/G;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/D;->a:LaY/G;

    return-void
.end method

.method static synthetic a(LaY/D;)LaY/G;
    .registers 2

    invoke-direct {p0}, LaY/D;->f()LaY/G;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lau/b;LaY/G;)Lbb/j;
    .registers 21

    invoke-virtual/range {p3 .. p3}, Lau/b;->ad()Lau/h;

    move-result-object v2

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    move v5, v2

    :goto_8
    if-eqz v5, :cond_63

    invoke-virtual/range {p3 .. p3}, Lau/b;->N()I

    move-result v2

    move v3, v2

    :goto_f
    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p3 .. p3}, Lau/b;->k()I

    move-result v2

    if-nez v2, :cond_71

    move-object/from16 v2, p3

    check-cast v2, Lau/r;

    invoke-virtual {v2}, Lau/r;->aW()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lau/b;->G()Z

    move-result v2

    if-eqz v2, :cond_66

    const/16 v2, 0x234

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_2b
    add-int/2addr v3, v6

    move-object v12, v2

    move v11, v3

    :goto_2e
    new-instance v2, Lbb/j;

    invoke-virtual/range {p3 .. p3}, Lau/b;->aS()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lau/b;->k()I

    move-result v7

    if-eqz p4, :cond_8b

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, LaY/G;->d(Lau/b;)Z

    move-result v3

    if-eqz v3, :cond_8b

    const/4 v8, 0x1

    :goto_45
    if-eqz p4, :cond_8d

    const/4 v9, 0x1

    :goto_48
    if-eqz v5, :cond_8f

    invoke-virtual/range {p3 .. p3}, Lau/b;->P()I

    move-result v10

    :goto_4e
    invoke-virtual/range {p3 .. p3}, Lau/b;->ax()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lau/b;->aJ()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v15}, Lbb/j;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;IIZZIILjava/lang/String;ILjava/lang/String;Lcom/google/googlenav/ui/bl;)V

    return-object v2

    :cond_60
    const/4 v2, 0x0

    move v5, v2

    goto :goto_8

    :cond_63
    const/4 v2, 0x0

    move v3, v2

    goto :goto_f

    :cond_66
    const/16 v2, 0x3c

    if-le v6, v2, :cond_94

    const/16 v2, 0x1d8

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    :cond_71
    invoke-virtual/range {p3 .. p3}, Lau/b;->k()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_91

    if-eqz v5, :cond_91

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lau/b;->aB()I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v2, v6}, Lcom/google/googlenav/ui/wizard/gO;->a(Lau/b;Lcom/google/googlenav/ui/bw;I)Lcom/google/googlenav/ui/bl;

    move-result-object v15

    move-object v12, v4

    move v11, v3

    goto :goto_2e

    :cond_8b
    const/4 v8, 0x0

    goto :goto_45

    :cond_8d
    const/4 v9, 0x0

    goto :goto_48

    :cond_8f
    const/4 v10, 0x0

    goto :goto_4e

    :cond_91
    move-object v12, v4

    move v11, v3

    goto :goto_2e

    :cond_94
    move-object v2, v4

    goto :goto_2b
.end method

.method private static a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    sget v1, LaY/D;->b:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/googlenav/ui/bh;->a(IIII)V

    return-object v0
.end method

.method static synthetic a(LaY/D;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/bl;
    .registers 3

    invoke-direct {p0, p1}, LaY/D;->a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lau/b;I)Lcom/google/googlenav/ui/bl;
    .registers 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lau/b;->as()Lau/x;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->z:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lau/b;->as()Lau/x;

    move-result-object v2

    invoke-static {v1, v2}, LaY/D;->a(Ljava/lang/String;Lau/x;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x73

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->b(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0xee

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lau/b;ILjava/util/Vector;)Lcom/google/googlenav/ui/bl;
    .registers 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lau/b;->au()Lau/x;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->z:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lau/b;->au()Lau/x;

    move-result-object v2

    invoke-static {v1, v2}, LaY/D;->a(Ljava/lang/String;Lau/x;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-static {}, LaY/G;->bt()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_2e
    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->b(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/bl;
    .registers 5

    const/4 v2, 0x0

    invoke-static {p1}, LaY/aq;->e(Lcom/google/googlenav/ah;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    new-instance v1, LaY/F;

    invoke-direct {v1, p0}, LaY/F;-><init>(LaY/D;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Z)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x483

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->ae:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->b(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private a(IZZ)Ljava/util/Vector;
    .registers 6

    invoke-direct {p0}, LaY/D;->g()Lau/b;

    move-result-object v0

    invoke-direct {p0}, LaY/D;->d()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, LaY/B;->a(Lau/b;IIZZ)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lau/x;)Ljava/util/Vector;
    .registers 7

    const/4 v0, 0x0

    const/4 v4, -0x1

    if-eqz p1, :cond_a

    invoke-static {}, LaY/G;->bt()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lau/x;->j()Lcom/google/googlenav/ah;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_37

    sget-object v3, Lcom/google/googlenav/ui/bg;->aI:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, LaY/D;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_37
    invoke-virtual {v1}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_a

    sget-object v2, Lcom/google/googlenav/ui/bg;->aI:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, LaY/D;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method private a(Ljava/util/Vector;)V
    .registers 3

    invoke-direct {p0}, LaY/D;->f()LaY/G;

    move-result-object v0

    invoke-virtual {v0}, LaY/G;->i()Lab/b;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, LaY/D;->i()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method static synthetic b(LaY/D;)LaY/G;
    .registers 2

    iget-object v0, p0, LaY/D;->a:LaY/G;

    return-object v0
.end method

.method public static b(Lau/b;I)Lcom/google/googlenav/ui/bl;
    .registers 7

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lau/b;->ae()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/g;

    invoke-virtual {v0}, Lau/g;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/bg;->aJ:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_28
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    goto :goto_2f
.end method

.method private b(Ljava/util/Vector;)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, LaY/G;->bt()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x41f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-direct {p0}, LaY/D;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-direct {p0}, LaY/D;->h()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_51

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->f(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    :cond_51
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private c()Ljava/util/Vector;
    .registers 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, LaY/D;->f()LaY/G;

    move-result-object v2

    invoke-virtual {v2}, LaY/G;->bk()Z

    move-result v0

    if-eqz v0, :cond_58

    sget-char v0, Lcom/google/googlenav/ui/bw;->aF:C

    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->aI:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, LaY/G;->bj()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-direct {p0}, LaY/D;->e()Lau/v;

    move-result-object v0

    invoke-virtual {v0}, Lau/v;->aq()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->aI:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, LaY/G;->br()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    sget-object v2, Lcom/google/googlenav/ui/bg;->A:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_57
    :goto_57
    return-object v1

    :cond_58
    invoke-virtual {v2}, LaY/G;->bj()Z

    move-result v0

    if-eqz v0, :cond_61

    sget-char v0, Lcom/google/googlenav/ui/bw;->aG:C

    goto :goto_11

    :cond_61
    invoke-virtual {v2}, LaY/G;->bm()Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-char v0, Lcom/google/googlenav/ui/bw;->aI:C

    goto :goto_11

    :cond_6a
    sget-char v0, Lcom/google/googlenav/ui/bw;->aH:C

    goto :goto_11

    :cond_6d
    invoke-virtual {v2}, LaY/G;->bp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    sget-object v3, Lcom/google/googlenav/ui/bg;->aI:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7c
    invoke-virtual {v2}, LaY/G;->bq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    sget-object v2, Lcom/google/googlenav/ui/bg;->aI:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_57
.end method

.method private c(Lau/b;I)Ljava/util/Vector;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v1}, LaY/D;->b(Ljava/util/Vector;)V

    invoke-direct {p0}, LaY/D;->f()LaY/G;

    move-result-object v2

    invoke-virtual {v2}, LaY/G;->e()Z

    move-result v2

    if-eqz v2, :cond_57

    const/16 v2, 0x418

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->H:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/bm;

    invoke-direct {v3}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bw;->A:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/googlenav/ui/bm;->b(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_57
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7e

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v3, 0xe7

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7e
    invoke-virtual {p0, v0}, LaY/D;->a(Z)Ljava/util/Vector;

    move-result-object v2

    :goto_82
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_92

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_92
    invoke-direct {p0, v1}, LaY/D;->a(Ljava/util/Vector;)V

    return-object v1
.end method

.method private d()I
    .registers 2

    invoke-direct {p0}, LaY/D;->g()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aI()I

    move-result v0

    return v0
.end method

.method private d(Lau/b;I)Ljava/util/Vector;
    .registers 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0}, LaY/D;->b(Ljava/util/Vector;)V

    invoke-direct {p0}, LaY/D;->f()LaY/G;

    move-result-object v1

    invoke-virtual {v1}, LaY/G;->e()Z

    move-result v1

    if-eqz v1, :cond_56

    const/16 v1, 0x418

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->H:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v1}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bw;->A:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/bm;->b(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_56
    invoke-direct {p0}, LaY/D;->e()Lau/v;

    move-result-object v1

    invoke-static {v1}, LaY/B;->a(Lau/v;)Lcom/google/googlenav/ui/aU;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, LaY/D;->a(Ljava/util/Vector;)V

    return-object v0
.end method

.method private e()Lau/v;
    .registers 2

    iget-object v0, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lau/v;

    return-object v0
.end method

.method private f()LaY/G;
    .registers 2

    iget-object v0, p0, LaY/D;->a:LaY/G;

    return-object v0
.end method

.method private g()Lau/b;
    .registers 2

    iget-object v0, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lau/b;

    return-object v0
.end method

.method private h()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method private i()Lcom/google/googlenav/ui/bl;
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    new-instance v1, LaY/E;

    invoke-direct {v1, p0}, LaY/E;-><init>(LaY/D;)V

    new-instance v2, LaY/aX;

    iget-object v3, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v3}, LaY/G;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, LaY/aX;-><init>(Lcom/google/googlenav/android/ac;LaY/aZ;Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/b;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/view/android/bj;
    .registers 11

    const/4 v1, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->u()Z

    move-result v8

    if-eqz v8, :cond_9b

    const/16 v2, 0x4a7

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_21
    if-eqz v8, :cond_a4

    sget-object v2, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    move-object v6, v2

    :goto_26
    if-eqz v8, :cond_a9

    const/16 v2, 0xe5

    :goto_2a
    new-instance v8, Lcom/google/googlenav/ui/bm;

    invoke-direct {v8}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v7, v6}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v2}, LaY/G;->bj()Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v0}, Lau/m;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {v2, v0}, LaY/G;->c(LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const/4 v0, 0x1

    move v2, v0

    :goto_5c
    if-eqz v2, :cond_ae

    sget-object v0, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    :goto_60
    if-eqz v2, :cond_64

    const/16 v5, 0x5e6

    :cond_64
    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v6, 0x385

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lbb/o;

    const/16 v2, 0x306

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v2, p0, LaY/D;->a:LaY/G;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    return-object v1

    :cond_9b
    const/16 v2, 0x4a9

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_21

    :cond_a4
    sget-object v2, Lcom/google/googlenav/ui/bg;->x:Lcom/google/googlenav/ui/bg;

    move-object v6, v2

    goto/16 :goto_26

    :cond_a9
    move v2, v5

    goto :goto_2a

    :cond_ab
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5c

    :cond_ae
    sget-object v0, Lcom/google/googlenav/ui/bg;->x:Lcom/google/googlenav/ui/bg;

    goto :goto_60
.end method

.method public a()Lcom/google/googlenav/ui/view/android/n;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/n;

    iget-object v1, p0, LaY/D;->a:LaY/G;

    invoke-virtual {p0}, LaY/D;->b()Lbb/o;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/n;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    return-object v0
.end method

.method a(Z)Ljava/util/Vector;
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_7
    invoke-direct {p0}, LaY/D;->g()Lau/b;

    move-result-object v3

    invoke-virtual {v3}, Lau/b;->f()I

    move-result v3

    if-ge v0, v3, :cond_1f

    invoke-direct {p0, v0, v1, p1}, LaY/D;->a(IZZ)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    return-object v2
.end method

.method public a(Lcom/google/googlenav/ui/view/android/bx;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/bx;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/o;

    invoke-direct {p0}, LaY/D;->g()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->m()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-direct {p0}, LaY/D;->d()I

    move-result v2

    invoke-direct {p0, v1, v2}, LaY/D;->d(Lau/b;I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/o;->a(Ljava/util/Vector;)V

    :goto_1b
    iget-object v1, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v1}, LaY/G;->al()[Laq/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/o;->a([Laq/a;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/bx;->v()V

    iget-object v0, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->E()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/bx;->a(I)V

    return-void

    :cond_31
    invoke-direct {p0}, LaY/D;->d()I

    move-result v2

    invoke-direct {p0, v1, v2}, LaY/D;->c(Lau/b;I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/o;->a(Ljava/util/Vector;)V

    goto :goto_1b
.end method

.method public b()Lbb/o;
    .registers 8

    const/4 v6, 0x0

    invoke-direct {p0}, LaY/D;->g()Lau/b;

    move-result-object v0

    invoke-direct {p0}, LaY/D;->d()I

    move-result v1

    invoke-static {v0, v1}, LaY/D;->a(Lau/b;I)Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-direct {p0}, LaY/D;->c()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v0, v1, v3}, LaY/D;->a(Lau/b;ILjava/util/Vector;)Lcom/google/googlenav/ui/bl;

    move-result-object v3

    invoke-static {v0, v1}, LaY/D;->b(Lau/b;I)Lcom/google/googlenav/ui/bl;

    move-result-object v4

    invoke-virtual {v0}, Lau/b;->m()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-direct {p0, v0, v1}, LaY/D;->d(Lau/b;I)Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0}, LaY/D;->f()LaY/G;

    move-result-object v5

    invoke-static {v2, v3, v4, v0, v5}, LaY/D;->a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lau/b;LaY/G;)Lbb/j;

    move-result-object v0

    iget-object v2, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v2}, LaY/G;->al()[Laq/a;

    move-result-object v2

    invoke-static {v0, v6, v1, v2}, Lbb/o;->b(Lbb/n;Lbb/p;Ljava/util/Vector;[Laq/a;)Lbb/o;

    move-result-object v0

    :goto_35
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_47

    const/16 v1, 0xe7

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbb/o;->d:Ljava/lang/String;

    :cond_47
    return-object v0

    :cond_48
    invoke-direct {p0, v0, v1}, LaY/D;->c(Lau/b;I)Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0}, LaY/D;->f()LaY/G;

    move-result-object v5

    invoke-static {v2, v3, v4, v0, v5}, LaY/D;->a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lau/b;LaY/G;)Lbb/j;

    move-result-object v0

    iget-object v2, p0, LaY/D;->a:LaY/G;

    invoke-virtual {v2}, LaY/G;->al()[Laq/a;

    move-result-object v2

    invoke-static {v0, v6, v1, v2}, Lbb/o;->a(Lbb/n;Lbb/p;Ljava/util/Vector;[Laq/a;)Lbb/o;

    move-result-object v0

    goto :goto_35
.end method
