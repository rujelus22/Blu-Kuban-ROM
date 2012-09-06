.class public Ln/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# instance fields
.field private final a:Ln/m;

.field private final b:Ln/U;

.field private final c:[Ln/E;

.field private final d:Ljava/lang/String;

.field private final e:Ln/ag;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:F

.field private final j:I

.field private final k:Z

.field private final l:[I


# direct methods
.method public constructor <init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[I)V
    .registers 23
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
    .line 72
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

    invoke-direct/range {v0 .. v11}, Ln/H;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[IZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[IZ)V
    .registers 13
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
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Ln/H;->a:Ln/m;

    .line 92
    iput-object p2, p0, Ln/H;->b:Ln/U;

    .line 93
    iput-object p3, p0, Ln/H;->c:[Ln/E;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Ln/H;->d:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Ln/H;->e:Ln/ag;

    .line 96
    iput p5, p0, Ln/H;->f:I

    .line 97
    iput-object p6, p0, Ln/H;->g:Ljava/lang/String;

    .line 98
    iput p7, p0, Ln/H;->h:I

    .line 99
    iput p8, p0, Ln/H;->i:F

    .line 100
    iput p9, p0, Ln/H;->j:I

    .line 101
    iput-object p10, p0, Ln/H;->l:[I

    .line 102
    iput-boolean p11, p0, Ln/H;->k:Z

    .line 103
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/H;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Ln/H;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;Z)Ln/H;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;Z)Ln/H;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ln/U;->a(Ljava/io/DataInput;Ln/am;)Ln/U;

    move-result-object v10

    .line 141
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 142
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ln/ah;->a(I)Ln/ag;

    move-result-object v6

    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v13

    .line 148
    move-object/from16 v0, p4

    invoke-static {v13, v0}, Ln/L;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 149
    aget-object v7, p4, v13

    .line 153
    :cond_21
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v9

    .line 154
    new-array v11, v9, [Ln/E;

    .line 155
    const/4 v2, 0x0

    move v8, v2

    :goto_29
    if-ge v8, v9, :cond_3d

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 156
    invoke-static/range {v2 .. v7}, Ln/E;->a(Ljava/io/DataInput;ILn/ah;[Ljava/lang/String;Ln/ag;Ljava/lang/String;)Ln/E;

    move-result-object v2

    aput-object v2, v11, v8

    .line 155
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_29

    .line 161
    :cond_3d
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v15

    .line 164
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-static {v2}, Ln/L;->c(I)F

    move-result v16

    .line 168
    const/16 v2, 0x9

    move/from16 v0, p1

    if-eq v0, v2, :cond_55

    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_7b

    .line 169
    :cond_55
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v17

    .line 176
    :goto_59
    const/4 v9, 0x0

    .line 177
    const/4 v2, 0x1

    move/from16 v0, v17

    invoke-static {v2, v0}, Ln/L;->a(II)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 178
    invoke-static/range {p0 .. p0}, Ln/m;->a(Ljava/io/DataInput;)Ln/n;

    move-result-object v9

    .line 184
    :cond_67
    :goto_67
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 185
    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 186
    const/4 v2, 0x0

    :goto_70
    if-ge v2, v3, :cond_96

    .line 187
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v18, v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 171
    :cond_7b
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    .line 172
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    or-int v17, v2, v3

    goto :goto_59

    .line 179
    :cond_88
    const/4 v2, 0x2

    move/from16 v0, v17

    invoke-static {v2, v0}, Ln/L;->a(II)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 180
    invoke-static/range {p0 .. p0}, Ln/m;->b(Ljava/io/DataInput;)Ln/o;

    move-result-object v9

    goto :goto_67

    .line 190
    :cond_96
    if-eqz p5, :cond_a0

    .line 191
    new-instance v8, Ln/I;

    move-object v12, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v18}, Ln/I;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[I)V

    .line 194
    :goto_9f
    return-object v8

    :cond_a0
    new-instance v8, Ln/H;

    move-object v12, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v18}, Ln/H;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[I)V

    goto :goto_9f
.end method


# virtual methods
.method public a(I)Ln/E;
    .registers 3
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Ln/H;->c:[Ln/E;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Ln/m;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Ln/H;->a:Ln/m;

    return-object v0
.end method

.method public b()Ln/U;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Ln/H;->b:Ln/U;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Ln/H;->c:[Ln/E;

    array-length v0, v0

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Ln/H;->i:F

    return v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Ln/H;->e:Ln/ag;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Ln/H;->k:Z

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 277
    const/16 v0, 0x8

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 282
    iget v0, p0, Ln/H;->h:I

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Ln/H;->l:[I

    return-object v0
.end method

.method public m()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Ln/H;->b:Ln/U;

    invoke-virtual {v1}, Ln/U;->h()I

    move-result v3

    .line 323
    iget-object v1, p0, Ln/H;->c:[Ln/E;

    if-eqz v1, :cond_1d

    .line 324
    iget-object v4, p0, Ln/H;->c:[Ln/E;

    array-length v5, v4

    move v1, v0

    :goto_f
    if-ge v1, v5, :cond_1d

    aget-object v2, v4, v1

    .line 325
    invoke-virtual {v2}, Ln/E;->d()I

    move-result v2

    add-int/2addr v2, v0

    .line 324
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_f

    .line 328
    :cond_1d
    iget-object v1, p0, Ln/H;->a:Ln/m;

    invoke-static {v1}, Ln/L;->a(Ln/m;)I

    move-result v1

    add-int/lit8 v1, v1, 0x38

    iget-object v2, p0, Ln/H;->g:Ljava/lang/String;

    invoke-static {v2}, Ln/L;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ln/H;->e:Ln/ag;

    invoke-static {v2}, Ln/L;->a(Ln/ag;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 333
    return v0
.end method
