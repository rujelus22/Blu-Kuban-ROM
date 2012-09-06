.class public Lde/innosystec/unrar/unpack/vm/b;
.super Lde/innosystec/unrar/unpack/vm/a;


# static fields
.field private static synthetic g:[I

.field private static synthetic h:[I


# instance fields
.field private a:[B

.field private b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/vm/a;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const v0, 0x17d7840

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    return-void
.end method

.method private a(III)I
    .registers 9

    div-int/lit8 v0, p2, 0x8

    and-int/lit8 v1, p2, 0x7

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v4, p1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/2addr v3, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    ushr-int/2addr v0, v1

    const/4 v1, -0x1

    rsub-int/lit8 v2, p3, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public static a(Lde/innosystec/unrar/unpack/vm/a;)I
    .registers 5

    const/4 v3, 0x2

    const/16 v2, 0x10

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    const v1, 0xc000

    and-int/2addr v1, v0

    sparse-switch v1, :sswitch_data_52

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    :goto_22
    return v0

    :sswitch_23
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0xf

    goto :goto_22

    :sswitch_2c
    and-int/lit16 v1, v0, 0x3c00

    if-nez v1, :cond_3c

    shr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, -0x100

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    goto :goto_22

    :cond_3c
    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    goto :goto_22

    :sswitch_46
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/a;->n()I

    move-result v0

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/a;->d(I)V

    goto :goto_22

    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_23
        0x4000 -> :sswitch_2c
        0x8000 -> :sswitch_46
    .end sparse-switch
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/e;)I
    .registers 4

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/e;->c()Lde/innosystec/unrar/unpack/vm/VMOpType;

    move-result-object v0

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/e;->d()I

    move-result v0

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/e;->a()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x3ffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-static {v1, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    :goto_1b
    return v0

    :cond_1c
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/e;->d()I

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-static {v1, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    goto :goto_1b
.end method

.method private a(Z[BI)I
    .registers 5

    if-eqz p1, :cond_10

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_b

    aget-byte v0, p2, p3

    :goto_a
    return v0

    :cond_b
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    goto :goto_a

    :cond_10
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p2, p3}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    goto :goto_a

    :cond_1b
    invoke-static {p2, p3}, Lde/innosystec/unrar/b/b;->a([BI)I

    move-result v0

    goto :goto_a
.end method

.method private a([BI)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x7

    new-array v1, v1, [Lde/innosystec/unrar/unpack/vm/g;

    new-instance v2, Lde/innosystec/unrar/unpack/vm/g;

    const/16 v3, 0x35

    const v4, -0x52a89779

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v2, v3, v4, v5}, Lde/innosystec/unrar/unpack/vm/g;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lde/innosystec/unrar/unpack/vm/g;

    const/16 v4, 0x39

    const v5, 0x3cd7e57e

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/g;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lde/innosystec/unrar/unpack/vm/g;

    const/16 v4, 0x78

    const v5, 0x3769893f

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/g;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lde/innosystec/unrar/unpack/vm/g;

    const/16 v4, 0x1d

    const v5, 0xe06077d

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/g;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lde/innosystec/unrar/unpack/vm/g;

    const/16 v4, 0x95

    const v5, 0x1c2c5dc8

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/g;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lde/innosystec/unrar/unpack/vm/g;

    const/16 v4, 0xd8

    const v5, -0x437a18ff

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/g;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lde/innosystec/unrar/unpack/vm/g;

    const/16 v4, 0x28

    const v5, 0x46b9c560

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/g;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v1, v2

    const/4 v2, -0x1

    array-length v3, p1

    invoke-static {v2, p1, v0, v3}, Lde/innosystec/unrar/a/a;->a(I[BII)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    :goto_74
    array-length v3, v1

    if-lt v0, v3, :cond_7a

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    :goto_79
    return-object v0

    :cond_7a
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/g;->a()I

    move-result v3

    if-ne v3, v2, :cond_92

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/g;->b()I

    move-result v3

    array-length v4, p1

    if-ne v3, v4, :cond_92

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/g;->c()Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v0

    goto :goto_79

    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_74
.end method

.method private a(IIII)V
    .registers 12

    div-int/lit8 v3, p3, 0x8

    and-int/lit8 v0, p3, 0x7

    const/4 v1, -0x1

    rsub-int/lit8 v2, p4, 0x20

    ushr-int/2addr v1, v2

    shl-int/2addr v1, v0

    xor-int/lit8 v1, v1, -0x1

    shl-int v2, p2, v0

    const/4 v0, 0x0

    :goto_e
    const/4 v4, 0x4

    if-lt v0, v4, :cond_12

    return-void

    :cond_12
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v5, p1, v3

    add-int/2addr v5, v0

    aget-byte v6, v4, v5

    and-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v5, p1, v3

    add-int/2addr v5, v0

    aget-byte v6, v4, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    ushr-int/lit8 v1, v1, 0x8

    const/high16 v4, -0x100

    or-int/2addr v1, v4

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/VMStandardFilters;)V
    .registers 29

    invoke-static {}, Lde/innosystec/unrar/unpack/vm/b;->d()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_42e

    :cond_d
    :goto_d
    return-void

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-long v5, v2

    const v2, 0x3c000

    if-ge v4, v2, :cond_d

    const/high16 v7, 0x100

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_74

    const/16 v2, 0xe9

    :goto_2e
    int-to-byte v8, v2

    const/4 v2, 0x0

    :goto_30
    add-int/lit8 v3, v4, -0x4

    if-ge v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v9, v2

    const/16 v9, 0xe8

    if-eq v2, v9, :cond_42

    if-ne v2, v8, :cond_42b

    :cond_42
    int-to-long v9, v3

    add-long/2addr v9, v5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v11, v2

    const-wide/32 v13, -0x80000000

    and-long/2addr v13, v11

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-eqz v2, :cond_77

    add-long/2addr v9, v11

    const-wide/32 v13, -0x80000000

    and-long/2addr v9, v13

    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-nez v2, :cond_71

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    long-to-int v10, v11

    add-int/2addr v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3, v10}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    :cond_71
    :goto_71
    add-int/lit8 v2, v3, 0x4

    goto :goto_30

    :cond_74
    const/16 v2, 0xe8

    goto :goto_2e

    :cond_77
    int-to-long v13, v7

    sub-long v13, v11, v13

    const-wide/32 v15, -0x80000000

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-eqz v2, :cond_71

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    sub-long v9, v11, v9

    long-to-int v9, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v3, v9}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_71

    :pswitch_92
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-long v3, v2

    const v2, 0x3c000

    if-ge v6, v2, :cond_d

    const/4 v2, 0x0

    const/16 v5, 0x10

    new-array v7, v5, [B

    const/4 v5, 0x0

    const/4 v8, 0x4

    aput-byte v8, v7, v5

    const/4 v5, 0x1

    const/4 v8, 0x4

    aput-byte v8, v7, v5

    const/4 v5, 0x2

    const/4 v8, 0x6

    aput-byte v8, v7, v5

    const/4 v5, 0x3

    const/4 v8, 0x6

    aput-byte v8, v7, v5

    const/4 v5, 0x6

    const/4 v8, 0x7

    aput-byte v8, v7, v5

    const/4 v5, 0x7

    const/4 v8, 0x7

    aput-byte v8, v7, v5

    const/16 v5, 0x8

    const/4 v8, 0x4

    aput-byte v8, v7, v5

    const/16 v5, 0x9

    const/4 v8, 0x4

    aput-byte v8, v7, v5

    const/16 v5, 0xc

    const/4 v8, 0x4

    aput-byte v8, v7, v5

    const/16 v5, 0xd

    const/4 v8, 0x4

    aput-byte v8, v7, v5

    const/4 v5, 0x4

    ushr-long/2addr v3, v5

    move-wide/from16 v25, v3

    move-wide/from16 v4, v25

    move v3, v2

    :goto_e0
    add-int/lit8 v2, v6, -0x15

    if-ge v3, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, -0x10

    if-ltz v2, :cond_f8

    aget-byte v8, v7, v2

    if-eqz v8, :cond_f8

    const/4 v2, 0x0

    :goto_f5
    const/4 v9, 0x2

    if-le v2, v9, :cond_104

    :cond_f8
    add-int/lit8 v2, v3, 0x10

    const-wide/16 v8, 0x1

    add-long v3, v4, v8

    move-wide/from16 v25, v3

    move-wide/from16 v4, v25

    move v3, v2

    goto :goto_e0

    :cond_104
    const/4 v9, 0x1

    shl-int/2addr v9, v2

    and-int/2addr v9, v8

    if-eqz v9, :cond_133

    mul-int/lit8 v9, v2, 0x29

    add-int/lit8 v9, v9, 0x5

    add-int/lit8 v10, v9, 0x25

    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lde/innosystec/unrar/unpack/vm/b;->a(III)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_133

    add-int/lit8 v10, v9, 0xd

    const/16 v11, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lde/innosystec/unrar/unpack/vm/b;->a(III)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v10, v4

    long-to-int v10, v10

    const v11, 0xfffff

    and-int/2addr v10, v11

    add-int/lit8 v9, v9, 0xd

    const/16 v11, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v9, v11}, Lde/innosystec/unrar/unpack/vm/b;->a(IIII)V

    :cond_133
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    :pswitch_136
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    and-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v8, v2, -0x1

    const/4 v4, 0x0

    mul-int/lit8 v2, v7, 0x2

    and-int/lit8 v9, v2, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v5, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v7}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const v2, 0x1e000

    if-ge v7, v2, :cond_d

    const/4 v2, 0x0

    move v6, v2

    :goto_161
    if-ge v6, v8, :cond_d

    const/4 v3, 0x0

    add-int v2, v7, v6

    :goto_166
    if-lt v2, v9, :cond_16c

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_161

    :cond_16c
    move-object/from16 v0, p0

    iget-object v10, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v11, v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v10, v2

    add-int/2addr v2, v8

    move v4, v5

    goto :goto_166

    :pswitch_17f
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v11, v2, -0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    const/4 v12, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v6, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v10}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const v2, 0x1e000

    if-ge v10, v2, :cond_d

    if-ltz v4, :cond_d

    const/4 v6, 0x0

    :goto_1ad
    if-lt v6, v12, :cond_1db

    add-int/lit8 v3, v10, -0x2

    move v2, v4

    :goto_1b2
    if-ge v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v5, v10, v2

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v6, v10, v2

    aget-byte v7, v5, v6

    add-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v6, v10, v2

    add-int/lit8 v6, v6, 0x2

    aget-byte v7, v5, v6

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v2, v2, 0x3

    goto :goto_1b2

    :cond_1db
    const-wide/16 v2, 0x0

    move v7, v5

    move v5, v6

    :goto_1df
    if-lt v5, v10, :cond_1e5

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_1ad

    :cond_1e5
    sub-int v8, v5, v11

    const/4 v9, 0x3

    if-lt v8, v9, :cond_226

    add-int/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    aget-byte v9, v9, v8

    and-int/lit16 v9, v9, 0xff

    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, v13, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v13, v9

    add-long/2addr v13, v2

    int-to-long v15, v8

    sub-long/2addr v13, v15

    sub-long v15, v13, v2

    long-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v16, v13, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    int-to-long v0, v8

    move-wide/from16 v17, v0

    sub-long v13, v13, v17

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move/from16 v0, v16

    if-gt v15, v0, :cond_249

    if-gt v15, v13, :cond_249

    :cond_226
    :goto_226
    move-object/from16 v0, p0

    iget-object v8, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v8, v7

    int-to-long v7, v7

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    const-wide/16 v7, 0xff

    and-long/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v3, v10, v5

    const-wide/16 v13, 0xff

    and-long/2addr v13, v7

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v2, v3

    add-int v2, v5, v12

    move v5, v2

    move-wide v2, v7

    move v7, v9

    goto :goto_1df

    :cond_249
    move/from16 v0, v16

    if-gt v0, v13, :cond_24f

    int-to-long v2, v9

    goto :goto_226

    :cond_24f
    int-to-long v2, v8

    goto :goto_226

    :pswitch_251
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v20, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x0

    aget v21, v2, v3

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3c020

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v4, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const v2, 0x1e000

    move/from16 v0, v20

    if-ge v0, v2, :cond_d

    const/4 v12, 0x0

    :goto_277
    move/from16 v0, v21

    if-ge v12, v0, :cond_d

    const-wide/16 v10, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x7

    new-array v0, v2, [J

    move-object/from16 v22, v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-wide v15, v10

    move v11, v12

    move v10, v2

    move v2, v3

    move v3, v4

    move-wide/from16 v25, v5

    move-wide/from16 v4, v25

    move v6, v13

    :goto_294
    move/from16 v0, v20

    if-lt v11, v0, :cond_29c

    add-int/lit8 v12, v12, 0x1

    move v13, v6

    goto :goto_277

    :cond_29c
    long-to-int v13, v4

    sub-int/2addr v13, v3

    long-to-int v14, v4

    const-wide/16 v3, 0x8

    mul-long/2addr v3, v15

    mul-int v5, v9, v14

    int-to-long v0, v5

    move-wide/from16 v17, v0

    add-long v3, v3, v17

    mul-int v5, v8, v13

    int-to-long v0, v5

    move-wide/from16 v17, v0

    add-long v3, v3, v17

    mul-int v5, v7, v2

    int-to-long v0, v5

    move-wide/from16 v17, v0

    add-long v3, v3, v17

    const/4 v5, 0x3

    ushr-long/2addr v3, v5

    const-wide/16 v17, 0xff

    and-long v3, v3, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v19, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v17, -0x1

    and-long v17, v17, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v4, v20, v11

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v3, v4

    sub-long v3, v17, v15

    long-to-int v3, v3

    int-to-byte v3, v3

    int-to-long v15, v3

    long-to-int v3, v5

    int-to-byte v3, v3

    shl-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    aget-wide v5, v22, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    aput-wide v5, v22, v4

    const/4 v4, 0x1

    aget-wide v5, v22, v4

    sub-int v23, v3, v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    aput-wide v5, v22, v4

    const/4 v4, 0x2

    aget-wide v5, v22, v4

    add-int v23, v3, v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    aput-wide v5, v22, v4

    const/4 v4, 0x3

    aget-wide v5, v22, v4

    sub-int v23, v3, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    aput-wide v5, v22, v4

    const/4 v4, 0x4

    aget-wide v5, v22, v4

    add-int v23, v3, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    aput-wide v5, v22, v4

    const/4 v4, 0x5

    aget-wide v5, v22, v4

    sub-int v23, v3, v2

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    aput-wide v5, v22, v4

    const/4 v4, 0x6

    aget-wide v5, v22, v4

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v5

    aput-wide v2, v22, v4

    and-int/lit8 v2, v10, 0x1f

    if-nez v2, :cond_37a

    const/4 v2, 0x0

    aget-wide v5, v22, v2

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v23, 0x0

    aput-wide v23, v22, v2

    const/4 v2, 0x1

    :goto_36d
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v2, v0, :cond_38f

    long-to-int v2, v3

    packed-switch v2, :pswitch_data_440

    :cond_37a
    move v2, v7

    move v3, v8

    move v4, v9

    :goto_37d
    add-int v6, v11, v21

    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v11, v6

    move v7, v2

    move v8, v3

    move v9, v4

    move v2, v13

    move v3, v14

    move-wide v4, v15

    move/from16 v6, v19

    move-wide/from16 v15, v17

    goto/16 :goto_294

    :cond_38f
    aget-wide v23, v22, v2

    cmp-long v23, v23, v5

    if-gez v23, :cond_398

    aget-wide v5, v22, v2

    int-to-long v3, v2

    :cond_398
    const-wide/16 v23, 0x0

    aput-wide v23, v22, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_36d

    :pswitch_39f
    const/16 v2, -0x10

    if-lt v9, v2, :cond_37a

    add-int/lit8 v2, v9, -0x1

    move v3, v8

    move v4, v2

    move v2, v7

    goto :goto_37d

    :pswitch_3a9
    const/16 v2, 0x10

    if-ge v9, v2, :cond_37a

    add-int/lit8 v2, v9, 0x1

    move v3, v8

    move v4, v2

    move v2, v7

    goto :goto_37d

    :pswitch_3b3
    const/16 v2, -0x10

    if-lt v8, v2, :cond_37a

    add-int/lit8 v2, v8, -0x1

    move v3, v2

    move v4, v9

    move v2, v7

    goto :goto_37d

    :pswitch_3bd
    const/16 v2, 0x10

    if-ge v8, v2, :cond_37a

    add-int/lit8 v2, v8, 0x1

    move v3, v2

    move v4, v9

    move v2, v7

    goto :goto_37d

    :pswitch_3c7
    const/16 v2, -0x10

    if-lt v7, v2, :cond_37a

    add-int/lit8 v2, v7, -0x1

    move v3, v8

    move v4, v9

    goto :goto_37d

    :pswitch_3d0
    const/16 v2, 0x10

    if-ge v7, v2, :cond_37a

    add-int/lit8 v2, v7, 0x1

    move v3, v8

    move v4, v9

    goto :goto_37d

    :pswitch_3d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x4

    aget v6, v2, v3

    const/4 v3, 0x0

    const v2, 0x1e000

    if-ge v6, v2, :cond_d

    move v5, v6

    :goto_3e7
    if-lt v3, v6, :cond_406

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3c01c

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_d

    :cond_406
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_429

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_41f

    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    :cond_41f
    :goto_41f
    move-object/from16 v0, p0

    iget-object v7, v0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int/lit8 v4, v5, 0x1

    aput-byte v2, v7, v5

    move v5, v4

    goto :goto_3e7

    :cond_429
    move v3, v4

    goto :goto_41f

    :cond_42b
    move v2, v3

    goto/16 :goto_30

    :pswitch_data_42e
    .packed-switch 0x2
        :pswitch_e
        :pswitch_e
        :pswitch_92
        :pswitch_17f
        :pswitch_251
        :pswitch_136
        :pswitch_3d9
    .end packed-switch

    :pswitch_data_440
    .packed-switch 0x1
        :pswitch_39f
        :pswitch_3a9
        :pswitch_3b3
        :pswitch_3bd
        :pswitch_3c7
        :pswitch_3d0
    .end packed-switch
.end method

.method private a(Lde/innosystec/unrar/unpack/vm/e;Z)V
    .registers 7

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_23

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/e;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->c(I)V

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_22
    return-void

    :cond_23
    const v1, 0xc000

    and-int/2addr v1, v0

    if-nez v1, :cond_49

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    if-eqz p2, :cond_3d

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_22

    :cond_3d
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    goto :goto_22

    :cond_49
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_68

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/e;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->c(I)V

    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/e;->a(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_22

    :cond_68
    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_86

    shr-int/lit8 v0, v0, 0x9

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/e;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->c(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_7e
    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/e;->a(I)V

    goto :goto_22

    :cond_86
    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_7e
.end method

.method private a(Z[BII)V
    .registers 6

    if-eqz p1, :cond_17

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_c

    int-to-byte v0, p4

    aput-byte v0, p2, p3

    :goto_b
    return-void

    :cond_c
    aget-byte v0, p2, p3

    and-int/lit16 v0, p4, 0xff

    int-to-byte v0, v0

    or-int/lit8 v0, v0, 0x0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    goto :goto_b

    :cond_17
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p2, p3, p4}, Lde/innosystec/unrar/b/b;->c([BII)V

    goto :goto_b

    :cond_21
    invoke-static {p2, p3, p4}, Lde/innosystec/unrar/b/b;->a([BII)V

    goto :goto_b
.end method

.method private a(I)Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lde/innosystec/unrar/unpack/vm/b;->e:I

    if-lt p1, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    if-gtz v1, :cond_10

    const/4 v0, 0x0

    goto :goto_5

    :cond_10
    iput p1, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    goto :goto_5
.end method

.method private a(Ljava/util/List;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/d;",
            ">;I)Z"
        }
    .end annotation

    const v0, 0x17d7840

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    iput p2, p0, Lde/innosystec/unrar/unpack/vm/b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    :goto_a
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/d;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/e;)I

    move-result v3

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->c()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/e;)I

    move-result v1

    invoke-static {}, Lde/innosystec/unrar/unpack/vm/b;->c()[I

    move-result-object v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_7f8

    :cond_33
    :goto_33
    :pswitch_33
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->d:I

    goto :goto_a

    :pswitch_40
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v2, v4, v3, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_33

    :pswitch_54
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_33

    :pswitch_62
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto :goto_33

    :pswitch_70
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    sub-int v0, v2, v0

    if-nez v0, :cond_91

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto :goto_33

    :cond_91
    if-le v0, v2, :cond_97

    const/4 v0, 0x1

    :goto_94
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto :goto_33

    :cond_97
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    goto :goto_94

    :pswitch_9f
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_bb

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_33

    :cond_bb
    if-le v1, v0, :cond_c2

    const/4 v0, 0x1

    :goto_be
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_33

    :cond_c2
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    goto :goto_be

    :pswitch_ca
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_e6

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_33

    :cond_e6
    if-le v1, v0, :cond_ed

    const/4 v0, 0x1

    :goto_e9
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_33

    :cond_ed
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    goto :goto_e9

    :pswitch_f5
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v5, v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v7, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v7, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    const-wide/16 v5, -0x1

    and-long/2addr v1, v5

    long-to-int v2, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_13f

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_129

    const/4 v1, 0x1

    :goto_11b
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    move v1, v2

    :goto_11e
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_129
    if-nez v2, :cond_132

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    goto :goto_11b

    :cond_132
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_13d

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    goto :goto_11b

    :cond_13d
    const/4 v1, 0x0

    goto :goto_11b

    :cond_13f
    if-ge v2, v4, :cond_146

    const/4 v1, 0x1

    :goto_142
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    move v1, v2

    goto :goto_11e

    :cond_146
    if-nez v2, :cond_14f

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    goto :goto_142

    :cond_14f
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_142

    :pswitch_157
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_177
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_197
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v8

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    if-nez v4, :cond_1ca

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_1bd
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_1ca
    if-le v4, v2, :cond_1ce

    const/4 v1, 0x1

    goto :goto_1bd

    :cond_1ce
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v4

    goto :goto_1bd

    :pswitch_1d6
    const/4 v0, 0x1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_1f6
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v8, v9, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_216
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_22d
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_244
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v4, 0x0

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    if-eqz v2, :cond_25b

    and-int/lit16 v1, v1, 0xff

    :cond_25b
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    if-nez v1, :cond_270

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    :goto_26c
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_33

    :cond_270
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    goto :goto_26c

    :pswitch_278
    const/4 v0, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_28c
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_2a0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v4, -0x2

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    if-nez v1, :cond_2c4

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    :goto_2c0
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_33

    :cond_2c4
    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    and-int/2addr v0, v1

    goto :goto_2c0

    :pswitch_2cc
    const/4 v0, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x2

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_2e0
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x2

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_2f4
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_300
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    xor-int/2addr v2, v1

    if-nez v2, :cond_32a

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_31d
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_32a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_31d

    :pswitch_332
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    and-int/2addr v2, v1

    if-nez v2, :cond_35c

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_34f
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_35c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_34f

    :pswitch_364
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    or-int/2addr v2, v1

    if-nez v2, :cond_38e

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_381
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_38e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_381

    :pswitch_396
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_3b7

    sget-object v0, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v0

    :goto_3b3
    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    goto/16 :goto_33

    :cond_3b7
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    goto :goto_3b3

    :pswitch_3bf
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_3d6
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_3ed
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_404
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_422
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v2

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_440
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_33

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_457
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x4

    aput v2, v0, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v4, 0x7

    aget v2, v2, v4

    const v4, 0x3ffff

    and-int/2addr v2, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_478
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const v6, 0x3ffff

    and-int/2addr v5, v6

    invoke-direct {p0, v2, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    goto/16 :goto_33

    :pswitch_499
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x4

    aput v2, v0, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v4, 0x7

    aget v2, v2, v4

    const v4, 0x3ffff

    and-int/2addr v2, v4

    iget v4, p0, Lde/innosystec/unrar/unpack/vm/b;->f:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v0, v1, v2, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    goto/16 :goto_a

    :pswitch_4c1
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_4d8
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v5

    shl-int v6, v4, v5

    if-nez v6, :cond_514

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    move v2, v1

    :goto_4f7
    add-int/lit8 v1, v5, -0x1

    shl-int v1, v4, v1

    const/high16 v4, -0x8000

    and-int/2addr v1, v4

    if-eqz v1, :cond_51d

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_506
    or-int/2addr v1, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_514
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v6

    move v2, v1

    goto :goto_4f7

    :cond_51d
    const/4 v1, 0x0

    goto :goto_506

    :pswitch_51f
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    ushr-int v5, v2, v4

    if-nez v5, :cond_555

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_53d
    add-int/lit8 v4, v4, -0x1

    ushr-int/2addr v2, v4

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_555
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v5

    goto :goto_53d

    :pswitch_55d
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    shr-int v5, v2, v4

    if-nez v5, :cond_593

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_57b
    add-int/lit8 v4, v4, -0x1

    shr-int/2addr v2, v4

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_593
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v5

    goto :goto_57b

    :pswitch_59b
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    neg-int v2, v1

    if-nez v2, :cond_5bb

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    :goto_5ae
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_5bb
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v4

    and-int/2addr v4, v2

    or-int/2addr v1, v4

    goto :goto_5ae

    :pswitch_5ca
    const/4 v0, 0x1

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_5da
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_5ea
    const/4 v1, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v2, 0x7

    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x4

    :goto_5f2
    const/16 v2, 0x8

    if-lt v1, v2, :cond_601

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x20

    aput v2, v0, v1

    goto/16 :goto_33

    :cond_601
    const/4 v2, 0x0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v4, 0x3ffff

    and-int/2addr v4, v0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    aget v5, v5, v1

    invoke-direct {p0, v2, v3, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x4

    goto :goto_5f2

    :pswitch_614
    const/4 v1, 0x0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v2, 0x7

    aget v0, v0, v2

    :goto_61a
    const/16 v2, 0x8

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    rsub-int/lit8 v3, v1, 0x7

    const/4 v4, 0x0

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v6, 0x3ffff

    and-int/2addr v6, v0

    invoke-direct {p0, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_61a

    :pswitch_634
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x4

    aput v2, v0, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    iget v3, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-direct {p0, v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_650
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    goto/16 :goto_33

    :pswitch_66d
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_67c
    const/4 v0, 0x0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v4, v5, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_68c
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v4

    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v6

    iget-object v7, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v6, v7, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v6

    invoke-direct {p0, v4, v5, v3, v6}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v3, v1, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_6b4
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v8, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v8, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v6

    and-long/2addr v1, v4

    const-wide/16 v4, -0x1

    and-long/2addr v1, v4

    const-wide/16 v4, -0x1

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_6e0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v2

    div-int v1, v2, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :pswitch_703
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    iget v2, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v5, v2

    int-to-long v6, v4

    const-wide/16 v8, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v10, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v8

    and-long/2addr v1, v6

    const-wide/16 v6, -0x1

    int-to-long v8, v5

    add-long/2addr v6, v8

    and-long/2addr v1, v6

    const-wide/16 v6, -0x1

    and-long/2addr v1, v6

    long-to-int v1, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    if-eqz v2, :cond_7f4

    and-int/lit16 v1, v1, 0xff

    move v2, v1

    :goto_738
    if-lt v2, v4, :cond_73e

    if-ne v2, v4, :cond_74c

    if-eqz v5, :cond_74c

    :cond_73e
    const/4 v1, 0x1

    :goto_73f
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_74c
    if-nez v2, :cond_755

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    goto :goto_73f

    :cond_755
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_73f

    :pswitch_75d
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v4, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v4

    iget v2, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v5

    and-int/2addr v5, v2

    int-to-long v6, v4

    const-wide/16 v8, -0x1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v2, v10, v1}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v8, v1

    and-long/2addr v1, v6

    const-wide/16 v6, -0x1

    int-to-long v8, v5

    sub-long/2addr v6, v8

    and-long/2addr v1, v6

    const-wide/16 v6, -0x1

    and-long/2addr v1, v6

    long-to-int v1, v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v2

    if-eqz v2, :cond_7f2

    and-int/lit16 v1, v1, 0xff

    move v2, v1

    :goto_793
    if-gt v2, v4, :cond_799

    if-ne v2, v4, :cond_7a7

    if-eqz v5, :cond_7a7

    :cond_799
    const/4 v1, 0x1

    :goto_79a
    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BII)V

    goto/16 :goto_33

    :cond_7a7
    if-nez v2, :cond_7b0

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    goto :goto_79a

    :cond_7b0
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v1

    and-int/2addr v1, v2

    goto :goto_79a

    :pswitch_7b8
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    const/high16 v1, 0x4

    if-lt v0, v1, :cond_7c3

    const/4 v0, 0x1

    return v0

    :cond_7c3
    const/4 v0, 0x0

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const v3, 0x3ffff

    and-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(I)Z

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    goto/16 :goto_a

    :pswitch_7e1
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/e;->b()I

    move-result v0

    invoke-static {v0}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->findFilter(I)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    goto/16 :goto_33

    :cond_7f2
    move v2, v1

    goto :goto_793

    :cond_7f4
    move v2, v1

    goto/16 :goto_738

    nop

    :pswitch_data_7f8
    .packed-switch 0x1
        :pswitch_40
        :pswitch_70
        :pswitch_f5
        :pswitch_197
        :pswitch_216
        :pswitch_22d
        :pswitch_244
        :pswitch_2a0
        :pswitch_2f4
        :pswitch_300
        :pswitch_332
        :pswitch_364
        :pswitch_396
        :pswitch_3bf
        :pswitch_3d6
        :pswitch_3ed
        :pswitch_404
        :pswitch_422
        :pswitch_440
        :pswitch_457
        :pswitch_478
        :pswitch_499
        :pswitch_7b8
        :pswitch_4c1
        :pswitch_4d8
        :pswitch_51f
        :pswitch_55d
        :pswitch_59b
        :pswitch_5ea
        :pswitch_614
        :pswitch_634
        :pswitch_650
        :pswitch_66d
        :pswitch_67c
        :pswitch_68c
        :pswitch_6b4
        :pswitch_6e0
        :pswitch_703
        :pswitch_75d
        :pswitch_33
        :pswitch_54
        :pswitch_62
        :pswitch_9f
        :pswitch_ca
        :pswitch_157
        :pswitch_177
        :pswitch_1d6
        :pswitch_1f6
        :pswitch_278
        :pswitch_28c
        :pswitch_2cc
        :pswitch_2e0
        :pswitch_5ca
        :pswitch_5da
        :pswitch_7e1
    .end packed-switch
.end method

.method private a([B)Z
    .registers 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private b(Lde/innosystec/unrar/unpack/vm/f;)V
    .registers 9

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/d;

    invoke-static {}, Lde/innosystec/unrar/unpack/vm/b;->c()[I

    move-result-object v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e8

    sget-object v1, Lde/innosystec/unrar/unpack/vm/c;->a:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_3e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_83

    move v1, v3

    :goto_45
    if-nez v1, :cond_8

    invoke-static {}, Lde/innosystec/unrar/unpack/vm/b;->c()[I

    move-result-object v1

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_f0

    goto :goto_8

    :sswitch_59
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_a5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_61
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_8

    :pswitch_65
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_6d
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_8

    :cond_71
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_6d

    :pswitch_74
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_80

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_7c
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_8

    :cond_80
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_7c

    :cond_83
    sget-object v6, Lde/innosystec/unrar/unpack/vm/c;->a:[B

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/innosystec/unrar/unpack/vm/d;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v1

    aget-byte v1, v6, v1

    and-int/lit8 v6, v1, 0x38

    if-eqz v6, :cond_9b

    const/4 v1, 0x1

    goto :goto_45

    :cond_9b
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a1

    move v1, v3

    goto :goto_45

    :cond_a1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3e

    :cond_a5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_61

    :sswitch_a8
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_b5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_b0
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_b5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_b0

    :sswitch_b8
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_c5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_c0
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_c5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_c0

    :sswitch_c8
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_d5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_d0
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_d5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_d0

    :sswitch_d8
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v1

    if-eqz v1, :cond_e5

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_e0
    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_8

    :cond_e5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_e0

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_65
        :pswitch_74
    .end packed-switch

    :sswitch_data_f0
    .sparse-switch
        0x3 -> :sswitch_59
        0x4 -> :sswitch_a8
        0x7 -> :sswitch_b8
        0x8 -> :sswitch_c8
        0x1c -> :sswitch_d8
    .end sparse-switch
.end method

.method static synthetic c()[I
    .registers 3

    sget-object v0, Lde/innosystec/unrar/unpack/vm/b;->g:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/VMCommands;->values()[Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADC:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_2c6

    :goto_16
    :try_start_16
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_2c3

    :goto_1f
    :try_start_1f
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_2c0

    :goto_29
    :try_start_29
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_2bd

    :goto_33
    :try_start_33
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_AND:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_2ba

    :goto_3d
    :try_start_3d
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CALL:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_2b7

    :goto_47
    :try_start_47
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMP:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_50} :catch_2b4

    :goto_50
    :try_start_50
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_2b1

    :goto_5a
    :try_start_5a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_2ae

    :goto_64
    :try_start_64
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DEC:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_2ab

    :goto_6e
    :try_start_6e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_2a8

    :goto_78
    :try_start_78
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_2a5

    :goto_82
    :try_start_82
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DIV:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_2a2

    :goto_8c
    :try_start_8c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INC:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_95} :catch_29f

    :goto_95
    :try_start_95
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_29c

    :goto_9f
    :try_start_9f
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_299

    :goto_a9
    :try_start_a9
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JA:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_296

    :goto_b3
    :try_start_b3
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JAE:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_293

    :goto_bd
    :try_start_bd
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c7} :catch_290

    :goto_c7
    :try_start_c7
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JBE:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d1} :catch_28d

    :goto_d1
    :try_start_d1
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JMP:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_db} :catch_28a

    :goto_db
    :try_start_db
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JNS:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e5} :catch_287

    :goto_e5
    :try_start_e5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JNZ:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_ee} :catch_284

    :goto_ee
    :try_start_ee
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JS:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_f8} :catch_281

    :goto_f8
    :try_start_f8
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JZ:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_101} :catch_27e

    :goto_101
    :try_start_101
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOV:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10a} :catch_27b

    :goto_10a
    :try_start_10a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_114} :catch_278

    :goto_114
    :try_start_114
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_11e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_11e} :catch_275

    :goto_11e
    :try_start_11e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVSX:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11e .. :try_end_128} :catch_272

    :goto_128
    :try_start_128
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVZX:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_132} :catch_26f

    :goto_132
    :try_start_132
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MUL:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13c} :catch_26c

    :goto_13c
    :try_start_13c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEG:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_146} :catch_269

    :goto_146
    :try_start_146
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_150} :catch_266

    :goto_150
    :try_start_150
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_15a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15a} :catch_263

    :goto_15a
    :try_start_15a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NOT:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15a .. :try_end_164} :catch_260

    :goto_164
    :try_start_164
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_OR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_16e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_164 .. :try_end_16e} :catch_25d

    :goto_16e
    :try_start_16e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_POP:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_178} :catch_25a

    :goto_178
    :try_start_178
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_POPA:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_182} :catch_257

    :goto_182
    :try_start_182
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_POPF:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18c} :catch_254

    :goto_18c
    :try_start_18c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PRINT:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_196
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_196} :catch_251

    :goto_196
    :try_start_196
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PUSH:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a0} :catch_24e

    :goto_1a0
    :try_start_1a0
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PUSHA:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a0 .. :try_end_1aa} :catch_24b

    :goto_1aa
    :try_start_1aa
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PUSHF:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1aa .. :try_end_1b4} :catch_248

    :goto_1b4
    :try_start_1b4
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b4 .. :try_end_1be} :catch_245

    :goto_1be
    :try_start_1be
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SAR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1c8} :catch_243

    :goto_1c8
    :try_start_1c8
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SBB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d2} :catch_241

    :goto_1d2
    :try_start_1d2
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SHL:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d2 .. :try_end_1dc} :catch_23f

    :goto_1dc
    :try_start_1dc
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SHR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e6} :catch_23d

    :goto_1e6
    :try_start_1e6
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_STANDARD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_1f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e6 .. :try_end_1f0} :catch_23b

    :goto_1f0
    :try_start_1f0
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f0 .. :try_end_1f9} :catch_239

    :goto_1f9
    :try_start_1f9
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_203
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f9 .. :try_end_203} :catch_237

    :goto_203
    :try_start_203
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_20d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_203 .. :try_end_20d} :catch_235

    :goto_20d
    :try_start_20d
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_TEST:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20d .. :try_end_217} :catch_233

    :goto_217
    :try_start_217
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_XCHG:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_221} :catch_231

    :goto_221
    :try_start_221
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_XOR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_22b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_221 .. :try_end_22b} :catch_22f

    :goto_22b
    sput-object v0, Lde/innosystec/unrar/unpack/vm/b;->g:[I

    goto/16 :goto_4

    :catch_22f
    move-exception v1

    goto :goto_22b

    :catch_231
    move-exception v1

    goto :goto_221

    :catch_233
    move-exception v1

    goto :goto_217

    :catch_235
    move-exception v1

    goto :goto_20d

    :catch_237
    move-exception v1

    goto :goto_203

    :catch_239
    move-exception v1

    goto :goto_1f9

    :catch_23b
    move-exception v1

    goto :goto_1f0

    :catch_23d
    move-exception v1

    goto :goto_1e6

    :catch_23f
    move-exception v1

    goto :goto_1dc

    :catch_241
    move-exception v1

    goto :goto_1d2

    :catch_243
    move-exception v1

    goto :goto_1c8

    :catch_245
    move-exception v1

    goto/16 :goto_1be

    :catch_248
    move-exception v1

    goto/16 :goto_1b4

    :catch_24b
    move-exception v1

    goto/16 :goto_1aa

    :catch_24e
    move-exception v1

    goto/16 :goto_1a0

    :catch_251
    move-exception v1

    goto/16 :goto_196

    :catch_254
    move-exception v1

    goto/16 :goto_18c

    :catch_257
    move-exception v1

    goto/16 :goto_182

    :catch_25a
    move-exception v1

    goto/16 :goto_178

    :catch_25d
    move-exception v1

    goto/16 :goto_16e

    :catch_260
    move-exception v1

    goto/16 :goto_164

    :catch_263
    move-exception v1

    goto/16 :goto_15a

    :catch_266
    move-exception v1

    goto/16 :goto_150

    :catch_269
    move-exception v1

    goto/16 :goto_146

    :catch_26c
    move-exception v1

    goto/16 :goto_13c

    :catch_26f
    move-exception v1

    goto/16 :goto_132

    :catch_272
    move-exception v1

    goto/16 :goto_128

    :catch_275
    move-exception v1

    goto/16 :goto_11e

    :catch_278
    move-exception v1

    goto/16 :goto_114

    :catch_27b
    move-exception v1

    goto/16 :goto_10a

    :catch_27e
    move-exception v1

    goto/16 :goto_101

    :catch_281
    move-exception v1

    goto/16 :goto_f8

    :catch_284
    move-exception v1

    goto/16 :goto_ee

    :catch_287
    move-exception v1

    goto/16 :goto_e5

    :catch_28a
    move-exception v1

    goto/16 :goto_db

    :catch_28d
    move-exception v1

    goto/16 :goto_d1

    :catch_290
    move-exception v1

    goto/16 :goto_c7

    :catch_293
    move-exception v1

    goto/16 :goto_bd

    :catch_296
    move-exception v1

    goto/16 :goto_b3

    :catch_299
    move-exception v1

    goto/16 :goto_a9

    :catch_29c
    move-exception v1

    goto/16 :goto_9f

    :catch_29f
    move-exception v1

    goto/16 :goto_95

    :catch_2a2
    move-exception v1

    goto/16 :goto_8c

    :catch_2a5
    move-exception v1

    goto/16 :goto_82

    :catch_2a8
    move-exception v1

    goto/16 :goto_78

    :catch_2ab
    move-exception v1

    goto/16 :goto_6e

    :catch_2ae
    move-exception v1

    goto/16 :goto_64

    :catch_2b1
    move-exception v1

    goto/16 :goto_5a

    :catch_2b4
    move-exception v1

    goto/16 :goto_50

    :catch_2b7
    move-exception v1

    goto/16 :goto_47

    :catch_2ba
    move-exception v1

    goto/16 :goto_3d

    :catch_2bd
    move-exception v1

    goto/16 :goto_33

    :catch_2c0
    move-exception v1

    goto/16 :goto_29

    :catch_2c3
    move-exception v1

    goto/16 :goto_1f

    :catch_2c6
    move-exception v1

    goto/16 :goto_16
.end method

.method static synthetic d()[I
    .registers 3

    sget-object v0, Lde/innosystec/unrar/unpack/vm/b;->h:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->values()[Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_66

    :goto_15
    :try_start_15
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_64

    :goto_1e
    :try_start_1e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_62

    :goto_27
    :try_start_27
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_60

    :goto_30
    :try_start_30
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_5e

    :goto_39
    :try_start_39
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_5c

    :goto_42
    :try_start_42
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_5a

    :goto_4b
    :try_start_4b
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_58

    :goto_55
    sput-object v0, Lde/innosystec/unrar/unpack/vm/b;->h:[I

    goto :goto_4

    :catch_58
    move-exception v1

    goto :goto_55

    :catch_5a
    move-exception v1

    goto :goto_4b

    :catch_5c
    move-exception v1

    goto :goto_42

    :catch_5e
    move-exception v1

    goto :goto_39

    :catch_60
    move-exception v1

    goto :goto_30

    :catch_62
    move-exception v1

    goto :goto_27

    :catch_64
    move-exception v1

    goto :goto_1e

    :catch_66
    move-exception v1

    goto :goto_15
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    if-nez v0, :cond_b

    const v0, 0x40004

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    :cond_b
    return-void
.end method

.method public a(I[BII)V
    .registers 10

    const/high16 v4, 0x4

    if-ge p1, v4, :cond_d

    const/4 v0, 0x0

    :goto_5
    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_e

    :cond_d
    return-void

    :cond_e
    sub-int v1, v4, p1

    if-lt v1, v0, :cond_d

    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public a(Lde/innosystec/unrar/unpack/vm/f;)V
    .registers 16

    const-wide/16 v12, 0x0

    const/high16 v11, 0x4

    const v10, 0x3ffff

    const v9, 0x3c000

    const/4 v1, 0x0

    move v0, v1

    :goto_c
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_bc

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0x2000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    cmp-long v0, v3, v12

    if-eqz v0, :cond_2e

    move v2, v1

    :goto_29
    int-to-long v5, v2

    cmp-long v0, v5, v3

    if-ltz v0, :cond_ca

    :cond_2e
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x2000

    sub-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    and-long/2addr v5, v7

    cmp-long v0, v5, v12

    if-eqz v0, :cond_4b

    move v2, v1

    :goto_46
    int-to-long v7, v2

    cmp-long v0, v7, v5

    if-ltz v0, :cond_e3

    :cond_4b
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    const/4 v2, 0x7

    aput v11, v0, v2

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/b;->c:I

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_fe

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->a()Ljava/util/List;

    move-result-object v0

    :goto_60
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->c()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_75

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/d;

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v0, v2}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    :cond_75
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v2, 0x3c020

    invoke-direct {p0, v1, v0, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    and-int v2, v0, v10

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v3, 0x3c01c

    invoke-direct {p0, v1, v0, v3}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    and-int/2addr v0, v10

    add-int v3, v2, v0

    if-lt v3, v11, :cond_90

    move v0, v1

    move v2, v1

    :cond_90
    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/f;->b(I)V

    invoke-virtual {p1, v0}, Lde/innosystec/unrar/unpack/vm/f;->c(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    const v2, 0x3c030

    invoke-direct {p0, v1, v0, v2}, Lde/innosystec/unrar/unpack/vm/b;->a(Z[BI)I

    move-result v0

    const/16 v2, 0x1fc0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v3, v0, 0x40

    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    :goto_b7
    add-int/lit8 v2, v0, 0x40

    if-lt v1, v2, :cond_104

    :cond_bb
    return-void

    :cond_bc
    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/b;->b:[I

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->g()[I

    move-result-object v3

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_ca
    iget-object v5, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v6, v9, v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_29

    :cond_e3
    iget-object v7, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    long-to-int v0, v3

    add-int/2addr v0, v9

    add-int v8, v0, v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v7, v8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_46

    :cond_fe
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->b()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_60

    :cond_104
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/f;->f()Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    add-int v4, v9, v1

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7
.end method

.method public a(Ljava/util/Vector;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a([BILde/innosystec/unrar/unpack/vm/f;)V
    .registers 13

    const v8, 0x8000

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->l()V

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v0

    :goto_f
    if-lt v1, v3, :cond_b1

    move v1, v2

    move v3, v0

    :goto_13
    if-lt v1, p2, :cond_bf

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    invoke-virtual {p3, v0}, Lde/innosystec/unrar/unpack/vm/f;->a(I)V

    aget-byte v1, p1, v0

    if-ne v3, v1, :cond_7f

    invoke-direct {p0, p1, p2}, Lde/innosystec/unrar/unpack/vm/b;->a([BI)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v1

    sget-object v3, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    if-eq v1, v3, :cond_5f

    new-instance v3, Lde/innosystec/unrar/unpack/vm/d;

    invoke-direct {v3}, Lde/innosystec/unrar/unpack/vm/d;-><init>()V

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_STANDARD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v4

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->getFilter()I

    move-result v1

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->c()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(I)V

    move p2, v0

    :cond_5f
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v1

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    and-int/2addr v1, v8

    if-eqz v1, :cond_7b

    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/a;)I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v5, 0x0

    and-long/2addr v3, v5

    move v1, v0

    :goto_72
    iget v5, p0, Lde/innosystec/unrar/unpack/vm/b;->ak:I

    if-ge v5, p2, :cond_7b

    int-to-long v5, v1

    cmp-long v5, v5, v3

    if-ltz v5, :cond_c7

    :cond_7b
    :goto_7b
    iget v1, p0, Lde/innosystec/unrar/unpack/vm/b;->ak:I

    if-lt v1, p2, :cond_df

    :cond_7f
    new-instance v0, Lde/innosystec/unrar/unpack/vm/d;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/d;-><init>()V

    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/d;->c()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    sget-object v2, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lde/innosystec/unrar/unpack/vm/f;->a(I)V

    if-eqz p2, :cond_b0

    invoke-direct {p0, p3}, Lde/innosystec/unrar/unpack/vm/b;->b(Lde/innosystec/unrar/unpack/vm/f;)V

    :cond_b0
    return-void

    :cond_b1
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/b;->am:[B

    aget-byte v5, v4, v1

    aget-byte v6, p1, v1

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    :cond_bf
    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :cond_c7
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->h()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_df
    new-instance v3, Lde/innosystec/unrar/unpack/vm/d;

    invoke-direct {v3}, Lde/innosystec/unrar/unpack/vm/d;-><init>()V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v1

    and-int v4, v1, v8

    if-nez v4, :cond_165

    shr-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->findVMCommand(I)Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v1

    invoke-virtual {v3, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_f9
    sget-object v1, Lde/innosystec/unrar/unpack/vm/c;->a:[B

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_177

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/b;->n()I

    move-result v1

    shr-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_175

    move v1, v2

    :goto_112
    invoke-virtual {v3, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Z)V

    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    :goto_118
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->c()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v1, v4}, Lde/innosystec/unrar/unpack/vm/e;->a(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    sget-object v1, Lde/innosystec/unrar/unpack/vm/c;->a:[B

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_153

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v4

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/e;Z)V

    const/4 v4, 0x2

    if-ne v1, v4, :cond_17b

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->c()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->a()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lde/innosystec/unrar/unpack/vm/b;->a(Lde/innosystec/unrar/unpack/vm/e;Z)V

    :cond_153
    :goto_153
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Lde/innosystec/unrar/unpack/vm/f;->a(I)V

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    :cond_165
    shr-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x18

    invoke-static {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->findVMCommand(I)Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v1

    invoke-virtual {v3, v1}, Lde/innosystec/unrar/unpack/vm/d;->a(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/b;->d(I)V

    goto :goto_f9

    :cond_175
    move v1, v0

    goto :goto_112

    :cond_177
    invoke-virtual {v3, v0}, Lde/innosystec/unrar/unpack/vm/d;->a(Z)V

    goto :goto_118

    :cond_17b
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/e;->c()Lde/innosystec/unrar/unpack/vm/VMOpType;

    move-result-object v1

    sget-object v4, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    if-ne v1, v4, :cond_153

    sget-object v1, Lde/innosystec/unrar/unpack/vm/c;->a:[B

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->d()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v4

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_153

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/e;->b()I

    move-result v1

    const/16 v4, 0x100

    if-lt v1, v4, :cond_1ad

    add-int/lit16 v1, v1, -0x100

    :goto_1a5
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/d;->b()Lde/innosystec/unrar/unpack/vm/e;

    move-result-object v4

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/vm/e;->b(I)V

    goto :goto_153

    :cond_1ad
    const/16 v4, 0x88

    if-lt v1, v4, :cond_1b9

    add-int/lit16 v1, v1, -0x108

    :cond_1b3
    :goto_1b3
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/vm/f;->c()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1a5

    :cond_1b9
    const/16 v4, 0x10

    if-lt v1, v4, :cond_1c0

    add-int/lit8 v1, v1, -0x8

    goto :goto_1b3

    :cond_1c0
    if-lt v1, v7, :cond_1b3

    add-int/lit8 v1, v1, -0x10

    goto :goto_1b3
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/b;->a:[B

    return-object v0
.end method
