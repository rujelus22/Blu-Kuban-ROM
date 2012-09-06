.class public final Lde/innosystec/unrar/unpack/b;
.super Lde/innosystec/unrar/unpack/d;


# static fields
.field public static a:[I


# instance fields
.field private aA:Z

.field private aB:I

.field private aC:I

.field private final an:Lde/innosystec/unrar/unpack/ppm/b;

.field private ao:I

.field private ap:Lde/innosystec/unrar/unpack/vm/b;

.field private aq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/e;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/e;",
            ">;"
        }
    .end annotation
.end field

.field private as:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private at:I

.field private au:Z

.field private av:[B

.field private aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

.field private ax:Z

.field private ay:J

.field private az:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0xe

    const/16 v4, 0xc

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x3

    aput v2, v0, v1

    aput v2, v0, v3

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0xd

    aput v2, v0, v1

    aput v2, v0, v5

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v5, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/b;->a:[I

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/unpack/a;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/d;-><init>()V

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/b;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/b;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    new-instance v0, Lde/innosystec/unrar/unpack/vm/b;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/b;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    const/16 v0, 0x194

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    iput-object p1, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->ax:Z

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->c:Z

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->d:Z

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->f:Z

    return-void
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/f;)V
    .registers 8

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_38

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v0

    const/4 v1, 0x6

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    long-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x24

    iget-wide v3, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x28

    iget-wide v3, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/f;)V

    :cond_38
    return-void
.end method

.method private a([BII)V
    .registers 8

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->h:J

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    sub-long/2addr v0, v2

    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_20

    long-to-int v0, v0

    :goto_14
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v1, p1, p2, v0}, Lde/innosystec/unrar/unpack/a;->b([BII)V

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    goto :goto_8

    :cond_20
    move v0, p3

    goto :goto_14
.end method

.method private a(ILjava/util/List;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    new-instance v5, Lde/innosystec/unrar/unpack/vm/a;

    invoke-direct {v5}, Lde/innosystec/unrar/unpack/vm/a;-><init>()V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->l()V

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    const v0, 0x8000

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v1, v0, :cond_3c

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/b;->a()V

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_54

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    if-nez v0, :cond_50

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->r()V

    move v1, v0

    :goto_2a
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v1, v0, :cond_3a

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v1, v0, :cond_58

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0

    :cond_3c
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->o()[B

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_50
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_2a

    :cond_54
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->at:I

    move v1, v0

    goto :goto_2a

    :cond_58
    iput v1, p0, Lde/innosystec/unrar/unpack/b;->at:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_71

    const/4 v0, 0x1

    move v2, v0

    :goto_64
    new-instance v6, Lde/innosystec/unrar/unpack/e;

    invoke-direct {v6}, Lde/innosystec/unrar/unpack/e;-><init>()V

    if-eqz v2, :cond_13f

    const/16 v0, 0x400

    if-le v1, v0, :cond_74

    const/4 v0, 0x0

    goto :goto_3b

    :cond_71
    const/4 v0, 0x0

    move v2, v0

    goto :goto_64

    :cond_74
    new-instance v0, Lde/innosystec/unrar/unpack/e;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/e;-><init>()V

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Lde/innosystec/unrar/unpack/e;->d(I)V

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->c(I)V

    move-object v3, v0

    :goto_98
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->c(I)V

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_2e5

    add-int/lit16 v0, v0, 0x102

    move v4, v0

    :goto_af
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/2addr v0, v4

    const v7, 0x3fffff

    and-int/2addr v0, v7

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->b(I)V

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_156

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->a(I)V

    :goto_c4
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v7, p0, Lde/innosystec/unrar/unpack/b;->k:I

    if-eq v0, v7, :cond_171

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v7, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v7

    const v7, 0x3fffff

    and-int/2addr v0, v7

    if-gt v0, v4, :cond_171

    const/4 v0, 0x1

    :goto_d6
    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->a(Z)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v0

    const/4 v1, 0x3

    const v4, 0x3c000

    aput v4, v0, v1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v4

    aput v4, v0, v1

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v4

    aput v4, v0, v1

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_130

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x9

    const/4 v0, 0x7

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    const/4 v0, 0x0

    :goto_12d
    const/4 v4, 0x7

    if-lt v0, v4, :cond_174

    :cond_130
    if-eqz v2, :cond_198

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v1

    const/high16 v0, 0x1

    if-ge v1, v0, :cond_13c

    if-nez v1, :cond_18a

    :cond_13c
    const/4 v0, 0x0

    goto/16 :goto_3b

    :cond_13f
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    invoke-virtual {v6, v1}, Lde/innosystec/unrar/unpack/e;->d(I)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->c(I)V

    move-object v3, v0

    goto/16 :goto_98

    :cond_156
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_16f

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_16a
    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/e;->a(I)V

    goto/16 :goto_c4

    :cond_16f
    const/4 v0, 0x0

    goto :goto_16a

    :cond_171
    const/4 v0, 0x0

    goto/16 :goto_d6

    :cond_174
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v4, v1

    if-eqz v4, :cond_187

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v4

    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v7

    aput v7, v4, v0

    :cond_187
    add-int/lit8 v0, v0, 0x1

    goto :goto_12d

    :cond_18a
    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_18d
    if-lt v0, v1, :cond_24c

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lde/innosystec/unrar/unpack/vm/b;->a([BILde/innosystec/unrar/unpack/vm/f;)V

    :cond_198
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(Ljava/util/List;)V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(I)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1d7

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_1d7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/f;->h()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(Ljava/util/Vector;)V

    :cond_1d7
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1ff

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_1ff
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    const/4 v0, 0x0

    :goto_208
    const/4 v2, 0x7

    if-lt v0, v2, :cond_268

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x1c

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    const/16 v2, 0x2c

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    const/4 v0, 0x0

    :goto_23a
    const/16 v2, 0x10

    if-lt v0, v2, :cond_27c

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2c0

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/vm/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_289

    const/4 v0, 0x0

    goto/16 :goto_3b

    :cond_24c
    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->e(I)Z

    move-result v4

    if-eqz v4, :cond_256

    const/4 v0, 0x0

    goto/16 :goto_3b

    :cond_256
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18d

    :cond_268
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v2, v1, v3, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/Vector;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_208

    :cond_27c
    add-int/lit8 v2, v0, 0x30

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23a

    :cond_289
    invoke-static {v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v1

    const/16 v0, 0x1fc0

    if-le v1, v0, :cond_294

    const/4 v0, 0x0

    goto/16 :goto_3b

    :cond_294
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, v1, 0x40

    if-ge v0, v2, :cond_2b3

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v3, v1, 0x40

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_2b3
    const/16 v2, 0x40

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    :goto_2be
    if-lt v0, v1, :cond_2c3

    :cond_2c0
    const/4 v0, 0x1

    goto/16 :goto_3b

    :cond_2c3
    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->e(I)Z

    move-result v4

    if-eqz v4, :cond_2cd

    const/4 v0, 0x0

    goto/16 :goto_3b

    :cond_2cd
    add-int v4, v2, v0

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v6

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2be

    :cond_2e5
    move v4, v0

    goto/16 :goto_af
.end method

.method private c(II)V
    .registers 7

    const/4 v3, 0x1

    if-eq p2, p1, :cond_5

    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/b;->f:Z

    :cond_5
    if-ge p2, p1, :cond_1a

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    neg-int v1, p1

    const v2, 0x3fffff

    and-int/2addr v1, v2

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/b;->a([BII)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lde/innosystec/unrar/unpack/b;->a([BII)V

    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/b;->d:Z

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    sub-int v1, p2, p1

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/b;->a([BII)V

    goto :goto_19
.end method

.method private d(II)V
    .registers 3

    iput p2, p0, Lde/innosystec/unrar/unpack/b;->M:I

    iput p1, p0, Lde/innosystec/unrar/unpack/b;->N:I

    return-void
.end method

.method private e(II)V
    .registers 10

    const v6, 0x3fffff

    const v2, 0x3ffefc

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, p2

    if-ltz v0, :cond_4f

    if-ge v0, v2, :cond_4f

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    if-ge v1, v2, :cond_4f

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    aput-byte v0, v2, v3

    move v0, v1

    :goto_22
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_27

    :goto_26
    return-void

    :cond_27
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    aput-byte v0, v2, v3

    move v0, v1

    goto :goto_22

    :cond_39
    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    add-int/lit8 v1, v0, 0x1

    and-int/2addr v0, v6

    aget-byte v0, v5, v0

    aput-byte v0, v3, v4

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v6

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    move v0, v1

    move p1, v2

    :cond_4f
    add-int/lit8 v2, p1, -0x1

    if-nez p1, :cond_39

    goto :goto_26
.end method

.method private f(Z)V
    .registers 16

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x3c

    new-array v7, v0, [I

    const/16 v0, 0x3c

    new-array v8, v0, [B

    aget v0, v7, v5

    if-nez v0, :cond_1a

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_15
    sget-object v6, Lde/innosystec/unrar/unpack/b;->a:[I

    array-length v6, v6

    if-lt v0, v6, :cond_2a

    :cond_1a
    iput-boolean v5, p0, Lde/innosystec/unrar/unpack/b;->az:Z

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->c:Z

    if-nez v0, :cond_4f

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/b;->a(Z)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-nez v0, :cond_43

    :cond_29
    :goto_29
    return-void

    :cond_2a
    sget-object v6, Lde/innosystec/unrar/unpack/b;->a:[I

    aget v9, v6, v0

    move v6, v1

    :goto_2f
    if-lt v6, v9, :cond_36

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_36
    aput v4, v7, v2

    int-to-byte v10, v3

    aput-byte v10, v8, v2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int v10, v5, v3

    add-int/2addr v4, v10

    goto :goto_2f

    :cond_43
    if-eqz p1, :cond_49

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    if-nez v0, :cond_4f

    :cond_49
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->t()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_4f
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->aA:Z

    if-nez v0, :cond_29

    :cond_53
    :goto_53
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    const v2, 0x3fffff

    and-int/2addr v0, v2

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->b:I

    if-le v0, v2, :cond_6b

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-nez v0, :cond_6b

    :cond_67
    :goto_67
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->q()V

    goto :goto_29

    :cond_6b
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v2

    const v2, 0x3fffff

    and-int/2addr v0, v2

    const/16 v2, 0x104

    if-ge v0, v2, :cond_90

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->k:I

    if-eq v0, v2, :cond_90

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->q()V

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iget-wide v9, p0, Lde/innosystec/unrar/unpack/b;->h:J

    cmp-long v0, v2, v9

    if-gtz v0, :cond_29

    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->c:Z

    if-eqz v0, :cond_90

    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/b;->az:Z

    goto :goto_29

    :cond_90
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    sget-object v2, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    if-ne v0, v2, :cond_10e

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    if-ne v0, v11, :cond_a1

    iput-boolean v5, p0, Lde/innosystec/unrar/unpack/b;->aA:Z

    goto :goto_67

    :cond_a1
    iget v2, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    if-ne v0, v2, :cond_101

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v2

    if-nez v2, :cond_b4

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->t()Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_67

    :cond_b4
    if-eq v2, v12, :cond_67

    if-eq v2, v11, :cond_67

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c2

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->v()Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_67

    :cond_c2
    if-ne v2, v13, :cond_ef

    move v4, v1

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_c8
    if-ge v4, v13, :cond_cc

    if-eqz v0, :cond_d7

    :cond_cc
    if-nez v0, :cond_67

    add-int/lit8 v0, v2, 0x20

    add-int/lit8 v2, v3, 0x2

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_53

    :cond_d7
    iget-object v6, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v6

    if-ne v6, v11, :cond_e3

    move v0, v5

    :goto_e0
    add-int/lit8 v4, v4, 0x1

    goto :goto_c8

    :cond_e3
    const/4 v9, 0x3

    if-ne v4, v9, :cond_e9

    and-int/lit16 v2, v6, 0xff

    goto :goto_e0

    :cond_e9
    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v3, v6

    goto :goto_e0

    :cond_ef
    const/4 v3, 0x5

    if-ne v2, v3, :cond_101

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    if-eq v0, v11, :cond_67

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, v5}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_53

    :cond_101
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lde/innosystec/unrar/unpack/b;->k:I

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    goto/16 :goto_53

    :cond_10e
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->Z:Lde/innosystec/unrar/unpack/decode/e;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_125

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lde/innosystec/unrar/unpack/b;->k:I

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    goto/16 :goto_53

    :cond_125
    const/16 v2, 0x10f

    if-lt v0, v2, :cond_1af

    sget-object v2, Lde/innosystec/unrar/unpack/b;->ae:[I

    add-int/lit16 v3, v0, -0x10f

    aget v0, v2, v3

    add-int/lit8 v0, v0, 0x3

    sget-object v2, Lde/innosystec/unrar/unpack/b;->af:[B

    aget-byte v2, v2, v3

    if-lez v2, :cond_142

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v3

    rsub-int/lit8 v4, v2, 0x10

    ushr-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_142
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->aa:Lde/innosystec/unrar/unpack/decode/d;

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v3

    aget v2, v7, v3

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v8, v3

    if-lez v4, :cond_172

    const/16 v6, 0x9

    if-le v3, v6, :cond_1a3

    if-le v4, v13, :cond_165

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v3

    rsub-int/lit8 v6, v4, 0x14

    ushr-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 v3, v4, -0x4

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_165
    iget v3, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    if-lez v3, :cond_18d

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    add-int/2addr v2, v3

    :cond_172
    :goto_172
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_182

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v2

    const-wide/32 v9, 0x40000

    cmp-long v3, v3, v9

    if-ltz v3, :cond_182

    add-int/lit8 v0, v0, 0x1

    :cond_182
    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/b;->g(I)V

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/b;->d(II)V

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_53

    :cond_18d
    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->ab:Lde/innosystec/unrar/unpack/decode/f;

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_19f

    const/16 v3, 0xf

    iput v3, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    add-int/2addr v2, v3

    goto :goto_172

    :cond_19f
    add-int/2addr v2, v3

    iput v3, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    goto :goto_172

    :cond_1a3
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v3

    rsub-int/lit8 v6, v4, 0x10

    ushr-int/2addr v3, v6

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lde/innosystec/unrar/unpack/b;->c(I)V

    goto :goto_172

    :cond_1af
    const/16 v2, 0x100

    if-ne v0, v2, :cond_1bb

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->s()Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_67

    :cond_1bb
    const/16 v2, 0x101

    if-ne v0, v2, :cond_1c7

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->u()Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_67

    :cond_1c7
    const/16 v2, 0x102

    if-ne v0, v2, :cond_1d8

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->N:I

    if-eqz v0, :cond_53

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->N:I

    iget v2, p0, Lde/innosystec/unrar/unpack/b;->M:I

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_53

    :cond_1d8
    const/16 v2, 0x107

    if-ge v0, v2, :cond_21a

    add-int/lit16 v0, v0, -0x103

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v2, v2, v0

    :goto_1e2
    if-gtz v0, :cond_20d

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aput v2, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ac:Lde/innosystec/unrar/unpack/decode/h;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v3

    sget-object v0, Lde/innosystec/unrar/unpack/b;->ae:[I

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x2

    sget-object v4, Lde/innosystec/unrar/unpack/b;->af:[B

    aget-byte v3, v4, v3

    if-lez v3, :cond_205

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v4

    rsub-int/lit8 v6, v3, 0x10

    ushr-int/2addr v4, v6

    add-int/2addr v0, v4

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_205
    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/b;->d(II)V

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_53

    :cond_20d
    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    add-int/lit8 v6, v0, -0x1

    aget v4, v4, v6

    aput v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e2

    :cond_21a
    const/16 v2, 0x110

    if-ge v0, v2, :cond_53

    sget-object v2, Lde/innosystec/unrar/unpack/b;->ai:[I

    add-int/lit16 v3, v0, -0x107

    aget v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lde/innosystec/unrar/unpack/b;->aj:[I

    aget v2, v2, v3

    if-lez v2, :cond_237

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v3

    rsub-int/lit8 v4, v2, 0x10

    ushr-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_237
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/b;->g(I)V

    invoke-direct {p0, v12, v0}, Lde/innosystec/unrar/unpack/b;->d(II)V

    invoke-direct {p0, v12, v0}, Lde/innosystec/unrar/unpack/b;->e(II)V

    goto/16 :goto_53
.end method

.method private f(I)[B
    .registers 3

    :try_start_0
    new-array v0, p1, [B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-object v0

    :catch_3
    move-exception v0

    div-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/b;->f(I)[B

    move-result-object v0

    goto :goto_2
.end method

.method private g(I)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v2, v2, v5

    aput v2, v0, v1

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v1, v1, v4

    aput v1, v0, v5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aget v1, v1, v3

    aput v1, v0, v4

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    aput p1, v0, v3

    return-void
.end method

.method private p()V
    .registers 8

    const/4 v6, 0x0

    const/high16 v0, 0x1

    new-array v1, v0, [B

    :cond_5
    :goto_5
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    array-length v2, v1

    int-to-long v2, v2

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/b;->h:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v6, v2}, Lde/innosystec/unrar/unpack/a;->a([BII)I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    :cond_19
    return-void

    :cond_1a
    int-to-long v2, v0

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/b;->h:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_35

    :goto_21
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v2, v1, v6, v0}, Lde/innosystec/unrar/unpack/a;->b([BII)V

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    goto :goto_5

    :cond_35
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/b;->h:J

    long-to-int v0, v2

    goto :goto_21
.end method

.method private q()V
    .registers 15

    const/4 v13, 0x0

    const/16 v12, 0x40

    const v11, 0x3fffff

    const/4 v3, 0x0

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->l:I

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v1

    and-int/2addr v0, v11

    move v2, v3

    move v4, v1

    move v1, v0

    :goto_10
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_22

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    invoke-direct {p0, v4, v0}, Lde/innosystec/unrar/unpack/b;->c(II)V

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->l:I

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    if-nez v0, :cond_33

    move v5, v2

    move v2, v4

    :goto_2e
    add-int/lit8 v0, v5, 0x1

    move v4, v2

    move v2, v0

    goto :goto_10

    :cond_33
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->d()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->a(Z)V

    move v5, v2

    move v2, v4

    goto :goto_2e

    :cond_3f
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->b()I

    move-result v7

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v5

    sub-int v6, v7, v4

    and-int/2addr v6, v11

    if-ge v6, v1, :cond_294

    if-eq v4, v7, :cond_56

    invoke-direct {p0, v4, v7}, Lde/innosystec/unrar/unpack/b;->c(II)V

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v1, v7

    and-int/2addr v1, v11

    move v4, v7

    :cond_56
    if-gt v5, v1, :cond_288

    add-int v1, v7, v5

    and-int v6, v1, v11

    if-lt v7, v6, :cond_60

    if-nez v6, :cond_111

    :cond_60
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    invoke-virtual {v1, v3, v4, v7, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    :goto_67
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->e()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/innosystec/unrar/unpack/e;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v5

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_a1

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    move v1, v3

    :goto_95
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_124

    :cond_a1
    invoke-direct {p0, v5}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/vm/f;)V

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_158

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_cf

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_cf
    move v1, v3

    :goto_d0
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_13e

    :goto_dc
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->d()I

    move-result v8

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->e()I

    move-result v1

    new-array v0, v1, [B

    move v4, v3

    :goto_e7
    if-lt v4, v1, :cond_161

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v4, v2, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    move v5, v2

    move-object v2, v0

    :goto_f1
    add-int/lit8 v0, v5, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_171

    :cond_fb
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0, v2, v3, v4}, Lde/innosystec/unrar/unpack/a;->b([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->f:Z

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    int-to-long v7, v4

    add-long/2addr v0, v7

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->k:I

    sub-int/2addr v0, v6

    and-int v1, v0, v11

    move v2, v6

    goto/16 :goto_2e

    :cond_111
    const/high16 v1, 0x40

    sub-int/2addr v1, v7

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    invoke-virtual {v4, v3, v5, v7, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    invoke-virtual {v4, v1, v5, v3, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    goto/16 :goto_67

    :cond_124
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v8

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v8, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_95

    :cond_13e
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v8

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v8, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_d0

    :cond_158
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto/16 :goto_dc

    :cond_161
    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/b;->b()[B

    move-result-object v5

    add-int v9, v8, v4

    aget-byte v5, v5, v9

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e7

    :cond_171
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    add-int/lit8 v1, v5, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lde/innosystec/unrar/unpack/e;

    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->b()I

    move-result v0

    if-ne v0, v7, :cond_fb

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->a()I

    move-result v0

    if-ne v0, v4, :cond_fb

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->d()Z

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ap:Lde/innosystec/unrar/unpack/vm/b;

    invoke-virtual {v0, v3, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(I[BII)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/e;->f()Lde/innosystec/unrar/unpack/vm/f;

    move-result-object v8

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_1cf

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    move v1, v3

    :goto_1c3
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_223

    :cond_1cf
    invoke-direct {p0, v8}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/vm/f;)V

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_255

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1fd

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_1fd
    move v1, v3

    :goto_1fe
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_23c

    :goto_20a
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->d()I

    move-result v9

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->e()I

    move-result v2

    new-array v1, v2, [B

    move v4, v3

    :goto_215
    if-lt v4, v2, :cond_25d

    add-int/lit8 v0, v5, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v4, v0, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    move v5, v0

    move-object v2, v1

    goto/16 :goto_f1

    :cond_223
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v4

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v4, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c3

    :cond_23c
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v4

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v4, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1fe

    :cond_255
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_20a

    :cond_25d
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    add-int v10, v9, v4

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v1, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_215

    :cond_273
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/e;

    if-eqz v0, :cond_286

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/e;->d()Z

    move-result v1

    if-eqz v1, :cond_286

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/unpack/e;->a(Z)V

    :cond_286
    add-int/lit8 v2, v2, 0x1

    :cond_288
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_273

    iput v4, p0, Lde/innosystec/unrar/unpack/b;->l:I

    goto/16 :goto_21

    :cond_294
    move v5, v2

    move v2, v4

    goto/16 :goto_2e
.end method

.method private r()V
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->as:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->at:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private s()Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_22

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/b;->c(I)V

    move v3, v2

    move v4, v1

    :goto_11
    if-eqz v4, :cond_30

    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    if-nez v3, :cond_20

    if-eqz v4, :cond_21

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->t()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    move v1, v2

    :cond_21
    return v1

    :cond_22
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_27
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/b;->c(I)V

    move v3, v1

    move v4, v0

    goto :goto_11

    :cond_2e
    move v0, v2

    goto :goto_27

    :cond_30
    move v0, v1

    goto :goto_14
.end method

.method private t()Z
    .registers 15

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v2, 0x1

    const/16 v11, 0x14

    const/4 v1, 0x0

    new-array v5, v11, [B

    const/16 v0, 0x194

    new-array v6, v0, [B

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->g:I

    add-int/lit8 v3, v3, -0x19

    if-le v0, v3, :cond_1b

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->al:I

    rsub-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    const-wide/32 v7, 0x8000

    and-long/2addr v7, v3

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_42

    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    invoke-virtual {v0, p0, v1}, Lde/innosystec/unrar/unpack/ppm/b;->a(Lde/innosystec/unrar/unpack/b;I)Z

    move-result v1

    goto :goto_1a

    :cond_42
    sget-object v0, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->aw:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    iput v1, p0, Lde/innosystec/unrar/unpack/b;->aB:I

    iput v1, p0, Lde/innosystec/unrar/unpack/b;->aC:I

    const-wide/16 v7, 0x4000

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_58

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v0, v1

    :goto_5d
    if-lt v0, v11, :cond_9b

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ad:Lde/innosystec/unrar/unpack/decode/b;

    invoke-virtual {p0, v5, v1, v0, v11}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v5, 0x194

    move v3, v1

    :goto_67
    if-lt v3, v5, :cond_d7

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v3, p0, Lde/innosystec/unrar/unpack/b;->g:I

    if-gt v0, v3, :cond_1a

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->Z:Lde/innosystec/unrar/unpack/decode/e;

    const/16 v3, 0x12b

    invoke-virtual {p0, v6, v1, v0, v3}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x12b

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->aa:Lde/innosystec/unrar/unpack/decode/d;

    const/16 v4, 0x3c

    invoke-virtual {p0, v6, v0, v3, v4}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x167

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->ab:Lde/innosystec/unrar/unpack/decode/f;

    const/16 v4, 0x11

    invoke-virtual {p0, v6, v0, v3, v4}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    const/16 v0, 0x178

    iget-object v3, p0, Lde/innosystec/unrar/unpack/b;->ac:Lde/innosystec/unrar/unpack/decode/h;

    const/16 v4, 0x1c

    invoke-virtual {p0, v6, v0, v3, v4}, Lde/innosystec/unrar/unpack/b;->a([BILde/innosystec/unrar/unpack/decode/c;I)V

    move v0, v1

    :goto_94
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    array-length v1, v1

    if-lt v0, v1, :cond_162

    move v1, v2

    goto :goto_1a

    :cond_9b
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v3

    ushr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v13}, Lde/innosystec/unrar/unpack/b;->d(I)V

    const/16 v4, 0xf

    if-ne v3, v4, :cond_d3

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v3

    ushr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v13}, Lde/innosystec/unrar/unpack/b;->d(I)V

    if-nez v3, :cond_be

    const/16 v3, 0xf

    aput-byte v3, v5, v0

    :goto_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_be
    add-int/lit8 v3, v3, 0x2

    move v4, v0

    move v0, v3

    :goto_c2
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_c9

    array-length v0, v5

    if-lt v4, v0, :cond_cc

    :cond_c9
    add-int/lit8 v0, v4, -0x1

    goto :goto_bb

    :cond_cc
    add-int/lit8 v0, v4, 0x1

    aput-byte v1, v5, v4

    move v4, v0

    move v0, v3

    goto :goto_c2

    :cond_d3
    int-to-byte v3, v3

    aput-byte v3, v5, v0

    goto :goto_bb

    :cond_d7
    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v4, p0, Lde/innosystec/unrar/unpack/b;->g:I

    add-int/lit8 v4, v4, -0x5

    if-le v0, v4, :cond_e5

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_e5
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->ad:Lde/innosystec/unrar/unpack/decode/b;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/b;->a(Lde/innosystec/unrar/unpack/decode/c;)I

    move-result v0

    const/16 v4, 0x10

    if-ge v0, v4, :cond_fe

    iget-object v4, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    aget-byte v4, v4, v3

    add-int/2addr v0, v4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    add-int/lit8 v4, v3, 0x1

    move v3, v4

    goto/16 :goto_67

    :cond_fe
    const/16 v4, 0x12

    if-ge v0, v4, :cond_134

    const/16 v4, 0x10

    if-ne v0, v4, :cond_11b

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v12}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v4, v3

    :goto_112
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_14a

    if-lt v4, v5, :cond_129

    move v3, v4

    goto/16 :goto_67

    :cond_11b
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0xb

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v4, v3

    goto :goto_112

    :cond_129
    add-int/lit8 v0, v4, -0x1

    aget-byte v0, v6, v0

    aput-byte v0, v6, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_112

    :cond_134
    const/16 v4, 0x12

    if-ne v0, v4, :cond_14d

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v12}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v4, v3

    :goto_144
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_14a

    if-lt v4, v5, :cond_15b

    :cond_14a
    move v3, v4

    goto/16 :goto_67

    :cond_14d
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->n()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0xb

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lde/innosystec/unrar/unpack/b;->d(I)V

    move v4, v3

    goto :goto_144

    :cond_15b
    add-int/lit8 v0, v4, 0x1

    aput-byte v1, v6, v4

    move v4, v0

    move v0, v3

    goto :goto_144

    :cond_162
    iget-object v1, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    aget-byte v3, v6, v0

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_94
.end method

.method private u()Z
    .registers 9

    const/4 v1, 0x0

    const/16 v7, 0x8

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/b;->c(I)V

    and-int/lit8 v0, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2b

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/b;->c(I)V

    :cond_1e
    :goto_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_24
    if-lt v2, v0, :cond_37

    invoke-direct {p0, v3, v4, v0}, Lde/innosystec/unrar/unpack/b;->a(ILjava/util/List;I)Z

    move-result v0

    :goto_2a
    return v0

    :cond_2b
    if-ne v0, v7, :cond_1e

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v0

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/b;->c(I)V

    goto :goto_1e

    :cond_37
    iget v5, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    iget v6, p0, Lde/innosystec/unrar/unpack/b;->g:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_4b

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    move-result v5

    if-nez v5, :cond_4b

    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_4b

    move v0, v1

    goto :goto_2a

    :cond_4b
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->m()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/b;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24
.end method

.method private v()Z
    .registers 8

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v3

    if-ne v3, v6, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    and-int/lit8 v0, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2c

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    if-ne v0, v6, :cond_1d

    move v0, v1

    goto :goto_b

    :cond_1d
    add-int/lit8 v0, v0, 0x7

    :cond_1f
    :goto_1f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_25
    if-lt v2, v0, :cond_48

    invoke-direct {p0, v3, v4, v0}, Lde/innosystec/unrar/unpack/b;->a(ILjava/util/List;I)Z

    move-result v0

    goto :goto_b

    :cond_2c
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v0

    if-ne v0, v6, :cond_3a

    move v0, v1

    goto :goto_b

    :cond_3a
    iget-object v2, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v2

    if-ne v2, v6, :cond_44

    move v0, v1

    goto :goto_b

    :cond_44
    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v2

    goto :goto_1f

    :cond_48
    iget-object v5, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/b;->b()I

    move-result v5

    if-ne v5, v6, :cond_52

    move v0, v1

    goto :goto_b

    :cond_52
    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25
.end method


# virtual methods
.method public a()I
    .registers 4

    iget v0, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    const/16 v1, 0x7fe2

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->c()Z

    :cond_9
    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->am:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    return-void
.end method

.method public a(IZ)V
    .registers 5

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->e:Lde/innosystec/unrar/unpack/a;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/a;->c()Lde/innosystec/unrar/rarfile/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/g;->o()B

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->p()V

    :cond_11
    sparse-switch p1, :sswitch_data_22

    :goto_14
    return-void

    :sswitch_15
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/b;->b(Z)V

    goto :goto_14

    :sswitch_19
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/b;->d(Z)V

    goto :goto_14

    :sswitch_1d
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/b;->f(Z)V

    goto :goto_14

    nop

    :sswitch_data_22
    .sparse-switch
        0xf -> :sswitch_15
        0x14 -> :sswitch_19
        0x1a -> :sswitch_19
        0x1d -> :sswitch_1d
        0x24 -> :sswitch_1d
    .end sparse-switch
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lde/innosystec/unrar/unpack/b;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->az:Z

    return-void
.end method

.method protected a(Z)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_1f

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/b;->au:Z

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->m:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->M:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->N:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->av:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->k:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lde/innosystec/unrar/unpack/b;->ao:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/b;->r()V

    :cond_1f
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/b;->l()V

    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/b;->aA:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/b;->ay:J

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->g:I

    iput v2, p0, Lde/innosystec/unrar/unpack/b;->b:I

    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/b;->e(Z)V

    return-void
.end method

.method public a([B)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_11

    const/high16 v0, 0x40

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/b;->f(I)[B

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    :goto_b
    iput v1, p0, Lde/innosystec/unrar/unpack/b;->ak:I

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/b;->a(Z)V

    return-void

    :cond_11
    iput-object p1, p0, Lde/innosystec/unrar/unpack/b;->i:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/b;->ax:Z

    goto :goto_b
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lde/innosystec/unrar/unpack/b;->an:Lde/innosystec/unrar/unpack/ppm/b;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/b;->a()Lde/innosystec/unrar/unpack/ppm/l;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/l;->c()V

    :cond_f
    return-void
.end method
