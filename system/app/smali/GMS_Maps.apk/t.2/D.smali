.class public Lt/D;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# instance fields
.field private final a:Lt/m;

.field private final b:Lt/P;

.field private final c:[Lt/A;

.field private final d:Ljava/lang/String;

.field private final e:Lt/Z;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:F

.field private final j:I

.field private final k:Z

.field private final l:[I


# direct methods
.method public constructor <init>(Lt/P;Ljava/lang/String;Lt/Z;IFI[I)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lt/D;->a:Lt/m;

    iput-object p1, p0, Lt/D;->b:Lt/P;

    iput-object v1, p0, Lt/D;->c:[Lt/A;

    iput-object p2, p0, Lt/D;->d:Ljava/lang/String;

    iput-object p3, p0, Lt/D;->e:Lt/Z;

    const/4 v0, -0x1

    iput v0, p0, Lt/D;->f:I

    iput-object v1, p0, Lt/D;->g:Ljava/lang/String;

    iput p4, p0, Lt/D;->h:I

    iput p5, p0, Lt/D;->i:F

    iput p6, p0, Lt/D;->j:I

    iput-object p7, p0, Lt/D;->l:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/D;->k:Z

    return-void
.end method

.method public constructor <init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[I)V
    .registers 23

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lt/D;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[IZ)V

    return-void
.end method

.method public constructor <init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[IZ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/D;->a:Lt/m;

    iput-object p2, p0, Lt/D;->b:Lt/P;

    iput-object p3, p0, Lt/D;->c:[Lt/A;

    const/4 v0, 0x0

    iput-object v0, p0, Lt/D;->d:Ljava/lang/String;

    iput-object p4, p0, Lt/D;->e:Lt/Z;

    iput p5, p0, Lt/D;->f:I

    iput-object p6, p0, Lt/D;->g:Ljava/lang/String;

    iput p7, p0, Lt/D;->h:I

    iput p8, p0, Lt/D;->i:F

    iput p9, p0, Lt/D;->j:I

    iput-object p10, p0, Lt/D;->l:[I

    iput-boolean p11, p0, Lt/D;->k:Z

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/D;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lt/D;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;Z)Lt/D;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;Z)Lt/D;
    .registers 28

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lt/P;->a(Ljava/io/DataInput;Lt/af;)Lt/P;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v2, 0x9

    move/from16 v0, p1

    if-ge v0, v2, :cond_1c

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/co;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    :cond_1c
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lt/aa;->a(I)Lt/Z;

    move-result-object v6

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_e0

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v8

    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lt/H;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    aget-object v7, p4, v8

    :cond_3c
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v11

    new-array v9, v11, [Lt/A;

    const/4 v2, 0x0

    move v10, v2

    :goto_44
    if-ge v10, v11, :cond_58

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lt/A;->a(Ljava/io/DataInput;ILt/aa;[Ljava/lang/String;Lt/Z;Ljava/lang/String;)Lt/A;

    move-result-object v2

    aput-object v2, v9, v10

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_44

    :cond_58
    move-object v5, v9

    move/from16 v21, v8

    move-object v8, v7

    move/from16 v7, v21

    :goto_5e
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v9

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-static {v2}, Lt/H;->c(I)F

    move-result v10

    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_9f

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    :goto_74
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v11}, Lt/H;->a(II)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-static/range {p0 .. p0}, Lt/m;->a(Ljava/io/DataInput;)Lt/m;

    move-result-object v3

    :cond_80
    :goto_80
    const/4 v2, 0x0

    const/16 v4, 0x8

    move/from16 v0, p1

    if-eq v0, v4, :cond_8d

    const/16 v4, 0x9

    move/from16 v0, p1

    if-ne v0, v4, :cond_91

    :cond_8d
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    :cond_91
    new-array v12, v2, [I

    const/4 v4, 0x0

    :goto_94
    if-ge v4, v2, :cond_b8

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v13

    aput v13, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    :cond_9f
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    or-int v11, v2, v3

    goto :goto_74

    :cond_ac
    const/4 v2, 0x2

    invoke-static {v2, v11}, Lt/H;->a(II)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static/range {p0 .. p0}, Lt/m;->b(Ljava/io/DataInput;)Lt/m;

    move-result-object v3

    goto :goto_80

    :cond_b8
    if-eqz p5, :cond_c1

    new-instance v2, Lt/E;

    move-object v4, v14

    invoke-direct/range {v2 .. v12}, Lt/E;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[I)V

    :goto_c0
    return-object v2

    :cond_c1
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ge v0, v2, :cond_d8

    new-instance v13, Lt/D;

    move-object/from16 v16, v6

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v20}, Lt/D;-><init>(Lt/P;Ljava/lang/String;Lt/Z;IFI[I)V

    :goto_d6
    move-object v2, v13

    goto :goto_c0

    :cond_d8
    new-instance v2, Lt/D;

    move-object v4, v14

    invoke-direct/range {v2 .. v12}, Lt/D;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[I)V

    move-object v13, v2

    goto :goto_d6

    :cond_e0
    move-object v8, v7

    move v7, v2

    goto/16 :goto_5e
.end method


# virtual methods
.method public a(I)Lt/A;
    .registers 3

    iget-object v0, p0, Lt/D;->c:[Lt/A;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/D;->a:Lt/m;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lt/D;->c:[Lt/A;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Lt/P;
    .registers 2

    iget-object v0, p0, Lt/D;->b:Lt/P;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lt/D;->c:[Lt/A;

    array-length v0, v0

    return v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/D;->e:Lt/Z;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/D;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lt/D;->i:F

    return v0
.end method

.method public h()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lt/D;->h:I

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lt/D;->k:Z

    return v0
.end method

.method public k()[I
    .registers 2

    iget-object v0, p0, Lt/D;->l:[I

    return-object v0
.end method

.method public l()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lt/D;->b:Lt/P;

    invoke-virtual {v1}, Lt/P;->g()I

    move-result v1

    iget-object v2, p0, Lt/D;->d:Ljava/lang/String;

    invoke-static {v2}, Lt/H;->a(Ljava/lang/String;)I

    move-result v2

    add-int v3, v1, v2

    iget-object v1, p0, Lt/D;->c:[Lt/A;

    if-eqz v1, :cond_25

    iget-object v4, p0, Lt/D;->c:[Lt/A;

    array-length v5, v4

    move v1, v0

    :goto_17
    if-ge v1, v5, :cond_25

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lt/A;->d()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_17

    :cond_25
    iget-object v1, p0, Lt/D;->a:Lt/m;

    invoke-static {v1}, Lt/H;->a(Lt/m;)I

    move-result v1

    add-int/lit8 v1, v1, 0x38

    iget-object v2, p0, Lt/D;->g:Ljava/lang/String;

    invoke-static {v2}, Lt/H;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lt/D;->e:Lt/Z;

    invoke-static {v2}, Lt/H;->a(Lt/Z;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method
