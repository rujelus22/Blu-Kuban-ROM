.class public Ln/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# instance fields
.field private final a:Ln/m;

.field private final b:Ln/U;

.field private final c:[Ln/E;

.field private final d:Ln/ag;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:[I


# direct methods
.method public constructor <init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;III[I)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Ln/ac;->a:Ln/m;

    .line 135
    iput-object p2, p0, Ln/ac;->b:Ln/U;

    .line 136
    if-nez p3, :cond_c

    const/4 v0, 0x0

    new-array p3, v0, [Ln/E;

    :cond_c
    iput-object p3, p0, Ln/ac;->c:[Ln/E;

    .line 137
    iput-object p4, p0, Ln/ac;->d:Ln/ag;

    .line 138
    iput p5, p0, Ln/ac;->e:I

    .line 139
    iput-object p6, p0, Ln/ac;->f:Ljava/lang/String;

    .line 140
    iput p7, p0, Ln/ac;->g:I

    .line 141
    iput p8, p0, Ln/ac;->h:I

    .line 142
    iput p9, p0, Ln/ac;->i:I

    .line 143
    iput-object p10, p0, Ln/ac;->j:[I

    .line 144
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/ac;
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ln/U;->a(Ljava/io/DataInput;Ln/am;)Ln/U;

    move-result-object v10

    .line 166
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 167
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ln/ah;->a(I)Ln/ag;

    move-result-object v6

    .line 170
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v13

    .line 171
    const/4 v7, 0x0

    .line 172
    move-object/from16 v0, p4

    invoke-static {v13, v0}, Ln/L;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 173
    aget-object v7, p4, v13

    .line 177
    :cond_21
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v9

    .line 178
    new-array v11, v9, [Ln/E;

    .line 179
    const/4 v2, 0x0

    move v8, v2

    :goto_29
    if-ge v8, v9, :cond_3d

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 180
    invoke-static/range {v2 .. v7}, Ln/E;->a(Ljava/io/DataInput;ILn/ah;[Ljava/lang/String;Ln/ag;Ljava/lang/String;)Ln/E;

    move-result-object v2

    aput-object v2, v11, v8

    .line 179
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_29

    .line 185
    :cond_3d
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v15

    .line 188
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v16

    .line 191
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 194
    const/4 v9, 0x0

    .line 195
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ln/L;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 196
    invoke-static/range {p0 .. p0}, Ln/m;->a(Ljava/io/DataInput;)Ln/n;

    move-result-object v9

    .line 202
    :cond_55
    :goto_55
    ushr-int/lit8 v17, v2, 0x2

    .line 205
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 206
    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 207
    const/4 v2, 0x0

    :goto_60
    if-ge v2, v3, :cond_77

    .line 208
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v18, v2

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 197
    :cond_6b
    const/4 v3, 0x2

    invoke-static {v3, v2}, Ln/L;->a(II)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 198
    invoke-static/range {p0 .. p0}, Ln/m;->b(Ljava/io/DataInput;)Ln/o;

    move-result-object v9

    goto :goto_55

    .line 211
    :cond_77
    new-instance v8, Ln/ac;

    move-object v12, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v18}, Ln/ac;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;III[I)V

    return-object v8
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ln/E;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ln/m;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Ln/ac;->a:Ln/m;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ln/E;->b()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln/E;->a(I)Ln/F;

    move-result-object v0

    invoke-virtual {v0}, Ln/F;->g()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()Ln/U;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Ln/ac;->b:Ln/U;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    array-length v0, v0

    goto :goto_5
.end method

.method public c(I)Ln/E;
    .registers 3
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ln/ac;->c:[Ln/E;

    array-length v0, v0

    goto :goto_5
.end method

.method public d(I)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Ln/ac;->c:[Ln/E;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ln/E;->b()I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Ln/ac;->c:[Ln/E;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Ln/E;->a(I)Ln/F;

    move-result-object v1

    invoke-virtual {v1}, Ln/F;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Ln/ac;->d:Ln/ag;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Ln/ac;->g:I

    return v0
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 331
    iget v0, p0, Ln/ac;->i:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x2

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Ln/ac;->h:I

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Ln/ac;->i:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 346
    iget v0, p0, Ln/ac;->i:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Ln/ac;->j:[I

    return-object v0
.end method

.method public m()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Ln/ac;->b:Ln/U;

    invoke-virtual {v1}, Ln/U;->h()I

    move-result v1

    add-int/lit8 v3, v1, 0x38

    .line 410
    iget-object v1, p0, Ln/ac;->c:[Ln/E;

    if-eqz v1, :cond_1f

    .line 411
    iget-object v4, p0, Ln/ac;->c:[Ln/E;

    array-length v5, v4

    move v1, v0

    :goto_11
    if-ge v1, v5, :cond_1f

    aget-object v2, v4, v1

    .line 412
    invoke-virtual {v2}, Ln/E;->d()I

    move-result v2

    add-int/2addr v2, v0

    .line 411
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_11

    .line 415
    :cond_1f
    iget-object v1, p0, Ln/ac;->a:Ln/m;

    invoke-static {v1}, Ln/L;->a(Ln/m;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ln/ac;->d:Ln/ag;

    invoke-static {v1}, Ln/L;->a(Ln/ag;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ln/ac;->f:Ljava/lang/String;

    invoke-static {v1}, Ln/L;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 420
    return v0
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 354
    iget v0, p0, Ln/ac;->i:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 3

    .prologue
    .line 364
    invoke-virtual {p0}, Ln/ac;->e()Ln/ag;

    move-result-object v0

    invoke-virtual {v0}, Ln/ag;->g()Z

    move-result v0

    .line 365
    if-nez v0, :cond_10

    invoke-virtual {p0}, Ln/ac;->p()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_10
    invoke-virtual {p0}, Ln/ac;->k()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Ln/ac;->n()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_1c
    iget v0, p0, Ln/ac;->g:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2e

    iget v0, p0, Ln/ac;->i:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public p()Z
    .registers 3

    .prologue
    .line 376
    iget v0, p0, Ln/ac;->i:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Ln/ac;->i:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ln/L;->a(II)Z

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

    .prologue
    .line 385
    iget v0, p0, Ln/ac;->i:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 3

    .prologue
    .line 392
    iget v0, p0, Ln/ac;->i:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method
