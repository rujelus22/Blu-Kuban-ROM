.class public Lt/X;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# instance fields
.field private final a:Lt/m;

.field private final b:Lt/P;

.field private final c:[Lt/A;

.field private final d:Lt/Z;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:[I


# direct methods
.method public constructor <init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;III[I)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/X;->a:Lt/m;

    iput-object p2, p0, Lt/X;->b:Lt/P;

    if-nez p3, :cond_c

    const/4 v0, 0x0

    new-array p3, v0, [Lt/A;

    :cond_c
    iput-object p3, p0, Lt/X;->c:[Lt/A;

    iput-object p4, p0, Lt/X;->d:Lt/Z;

    iput p5, p0, Lt/X;->e:I

    iput-object p6, p0, Lt/X;->f:Ljava/lang/String;

    iput p7, p0, Lt/X;->g:I

    iput p8, p0, Lt/X;->h:I

    iput p9, p0, Lt/X;->i:I

    iput-object p10, p0, Lt/X;->j:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/X;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lt/P;->a(Ljava/io/DataInput;Lt/af;)Lt/P;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lt/aa;->a(I)Lt/Z;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v13

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v13, v0}, Lt/H;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    aget-object v7, p4, v13

    :cond_21
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v9

    new-array v11, v9, [Lt/A;

    const/4 v2, 0x0

    move v8, v2

    :goto_29
    if-ge v8, v9, :cond_3d

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lt/A;->a(Ljava/io/DataInput;ILt/aa;[Ljava/lang/String;Lt/Z;Ljava/lang/String;)Lt/A;

    move-result-object v2

    aput-object v2, v11, v8

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_29

    :cond_3d
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v15

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v16

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lt/H;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-static/range {p0 .. p0}, Lt/m;->a(Ljava/io/DataInput;)Lt/m;

    move-result-object v9

    :cond_55
    :goto_55
    ushr-int/lit8 v17, v2, 0x2

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    :goto_60
    if-ge v2, v3, :cond_77

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v18, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_6b
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lt/H;->a(II)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-static/range {p0 .. p0}, Lt/m;->b(Ljava/io/DataInput;)Lt/m;

    move-result-object v9

    goto :goto_55

    :cond_77
    new-instance v8, Lt/X;

    move-object v12, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v18}, Lt/X;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;III[I)V

    return-object v8
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lt/X;->c:[Lt/A;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lt/A;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/X;->a:Lt/m;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lt/X;->c:[Lt/A;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lt/A;->b()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lt/X;->c:[Lt/A;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt/A;->a(I)Lt/B;

    move-result-object v0

    invoke-virtual {v0}, Lt/B;->g()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()Lt/P;
    .registers 2

    iget-object v0, p0, Lt/X;->b:Lt/P;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lt/X;->c:[Lt/A;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lt/X;->c:[Lt/A;

    array-length v0, v0

    goto :goto_5
.end method

.method public c(I)Lt/A;
    .registers 3

    iget-object v0, p0, Lt/X;->c:[Lt/A;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lt/X;->c:[Lt/A;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lt/X;->c:[Lt/A;

    array-length v0, v0

    goto :goto_5
.end method

.method public d(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lt/X;->c:[Lt/A;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lt/A;->b()I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Lt/X;->c:[Lt/A;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lt/A;->a(I)Lt/B;

    move-result-object v1

    invoke-virtual {v1}, Lt/B;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/X;->d:Lt/Z;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lt/X;->g:I

    return v0
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Lt/X;->i:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lt/X;->h:I

    return v0
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Lt/X;->i:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method public k()[I
    .registers 2

    iget-object v0, p0, Lt/X;->j:[I

    return-object v0
.end method

.method public l()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lt/X;->b:Lt/P;

    invoke-virtual {v1}, Lt/P;->g()I

    move-result v1

    add-int/lit8 v3, v1, 0x38

    iget-object v1, p0, Lt/X;->c:[Lt/A;

    if-eqz v1, :cond_1f

    iget-object v4, p0, Lt/X;->c:[Lt/A;

    array-length v5, v4

    move v1, v0

    :goto_11
    if-ge v1, v5, :cond_1f

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lt/A;->d()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_11

    :cond_1f
    iget-object v1, p0, Lt/X;->a:Lt/m;

    invoke-static {v1}, Lt/H;->a(Lt/m;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/X;->d:Lt/Z;

    invoke-static {v1}, Lt/H;->a(Lt/Z;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/X;->f:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public m()Z
    .registers 3

    iget v0, p0, Lt/X;->i:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 3

    iget v0, p0, Lt/X;->i:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lt/X;->i:I

    invoke-static {v1, v0}, Lt/H;->a(II)Z

    move-result v1

    if-nez v1, :cond_12

    iget v1, p0, Lt/X;->i:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lt/H;->a(II)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_12
    iget v1, p0, Lt/X;->g:I

    const/16 v2, 0x80

    if-ge v1, v2, :cond_23

    iget v1, p0, Lt/X;->i:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lt/H;->a(II)Z

    move-result v1

    if-nez v1, :cond_23

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public p()Z
    .registers 3

    iget v0, p0, Lt/X;->i:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lt/X;->i:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public q()Z
    .registers 3

    iget v0, p0, Lt/X;->i:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 3

    iget v0, p0, Lt/X;->i:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method
