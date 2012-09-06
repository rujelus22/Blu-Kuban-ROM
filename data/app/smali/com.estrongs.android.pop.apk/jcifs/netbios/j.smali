.class Ljcifs/netbios/j;
.super Ljcifs/netbios/f;


# instance fields
.field private A:Ljcifs/netbios/g;

.field private B:I

.field private C:[B

.field private D:[B

.field z:[Ljcifs/netbios/g;


# direct methods
.method constructor <init>(Ljcifs/netbios/g;)V
    .registers 3

    invoke-direct {p0}, Ljcifs/netbios/f;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0}, Ljcifs/netbios/b;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/j;->r:Ljcifs/netbios/b;

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/j;->C:[B

    return-void
.end method

.method private n([BI)I
    .registers 19

    move-object/from16 v0, p0

    iget v1, v0, Ljcifs/netbios/j;->B:I

    new-array v1, v1, [Ljcifs/netbios/g;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljcifs/netbios/j;->z:[Ljcifs/netbios/g;

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iget-object v1, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v14, v1, Ljcifs/netbios/b;->c:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v1, 0x0

    move v12, v1

    move/from16 v13, p2

    :goto_17
    :try_start_17
    move-object/from16 v0, p0

    iget v1, v0, Ljcifs/netbios/j;->B:I

    if-ge v12, v1, :cond_125

    add-int/lit8 v1, v13, 0xe

    :goto_1f
    aget-byte v2, p1, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_28

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_28
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Ljcifs/netbios/b;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v13, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v10, v1, 0xff

    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_f9

    const/4 v4, 0x1

    :goto_45
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x60

    shr-int/lit8 v5, v1, 0x5

    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_fc

    const/4 v6, 0x1

    :goto_58
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_ff

    const/4 v7, 0x1

    :goto_63
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_102

    const/4 v8, 0x1

    :goto_6d
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_105

    const/4 v9, 0x1

    :goto_77
    if-nez v11, :cond_108

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iget-object v1, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget v1, v1, Ljcifs/netbios/b;->d:I

    if-ne v1, v10, :cond_108

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iget-object v1, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    sget-object v2, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    if-eq v1, v2, :cond_9b

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iget-object v1, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v1, v1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_108

    :cond_9b
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iget-object v1, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    sget-object v2, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    if-ne v1, v2, :cond_b0

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    new-instance v2, Ljcifs/netbios/b;

    invoke-direct {v2, v3, v10, v14}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    :cond_b0
    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iput-boolean v4, v1, Ljcifs/netbios/g;->i:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iput v5, v1, Ljcifs/netbios/g;->h:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iput-boolean v6, v1, Ljcifs/netbios/g;->j:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iput-boolean v7, v1, Ljcifs/netbios/g;->k:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iput-boolean v8, v1, Ljcifs/netbios/g;->l:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iput-boolean v9, v1, Ljcifs/netbios/g;->m:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/netbios/j;->C:[B

    iput-object v2, v1, Ljcifs/netbios/g;->o:[B

    move-object/from16 v0, p0

    iget-object v1, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljcifs/netbios/g;->n:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/netbios/j;->z:[Ljcifs/netbios/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    aput-object v3, v2, v12

    :goto_f0
    add-int/lit8 v3, v13, 0x12

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v11, v1

    move v13, v3

    goto/16 :goto_17

    :cond_f9
    const/4 v4, 0x0

    goto/16 :goto_45

    :cond_fc
    const/4 v6, 0x0

    goto/16 :goto_58

    :cond_ff
    const/4 v7, 0x0

    goto/16 :goto_63

    :cond_102
    const/4 v8, 0x0

    goto/16 :goto_6d

    :cond_105
    const/4 v9, 0x0

    goto/16 :goto_77

    :cond_108
    move-object/from16 v0, p0

    iget-object v15, v0, Ljcifs/netbios/j;->z:[Ljcifs/netbios/g;

    new-instance v1, Ljcifs/netbios/g;

    new-instance v2, Ljcifs/netbios/b;

    invoke-direct {v2, v3, v10, v14}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/j;->A:Ljcifs/netbios/g;

    iget v3, v3, Ljcifs/netbios/g;->g:I

    move-object/from16 v0, p0

    iget-object v10, v0, Ljcifs/netbios/j;->C:[B

    invoke-direct/range {v1 .. v10}, Ljcifs/netbios/g;-><init>(Ljcifs/netbios/b;IZIZZZZ[B)V

    aput-object v1, v15, v12
    :try_end_122
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_122} :catch_124

    move v1, v11

    goto :goto_f0

    :catch_124
    move-exception v1

    :cond_125
    sub-int v1, v13, p2

    return v1
.end method


# virtual methods
.method a([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method b([BI)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/j;->m([BI)I

    move-result v0

    return v0
.end method

.method c([BI)I
    .registers 9

    const/4 v5, 0x0

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/netbios/j;->B:I

    iget v0, p0, Ljcifs/netbios/j;->B:I

    mul-int/lit8 v0, v0, 0x12

    iget v1, p0, Ljcifs/netbios/j;->x:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Ljcifs/netbios/j;->B:I

    add-int/2addr v0, v2

    iget-object v3, p0, Ljcifs/netbios/j;->C:[B

    const/4 v4, 0x6

    invoke-static {p1, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v2}, Ljcifs/netbios/j;->n([BI)I

    move-result v0

    add-int/2addr v0, v2

    new-array v2, v1, [B

    iput-object v2, p0, Ljcifs/netbios/j;->D:[B

    iget-object v2, p0, Ljcifs/netbios/j;->D:[B

    invoke-static {p1, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/netbios/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
