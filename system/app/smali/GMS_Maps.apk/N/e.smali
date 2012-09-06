.class public Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# static fields
.field private static final m:[B

.field private static final n:[I


# instance fields
.field private final a:Ln/m;

.field private final b:Ln/az;

.field private final c:Ln/az;

.field private final d:[B

.field private final e:Ln/ag;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Ln/e;->m:[B

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Ln/e;->n:[I

    return-void

    .line 46
    :array_12
    .array-data 0x1
        0x1t
        0x2t
        0x4t
    .end array-data

    .line 56
    :array_18
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ln/m;Ln/az;Ln/az;[BIILn/ag;ILjava/lang/String;II[I)V
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
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ln/e;->a:Ln/m;

    .line 75
    iput-object p2, p0, Ln/e;->b:Ln/az;

    .line 76
    iput-object p3, p0, Ln/e;->c:Ln/az;

    .line 77
    iput-object p4, p0, Ln/e;->d:[B

    .line 78
    iput p5, p0, Ln/e;->h:I

    .line 79
    iput p6, p0, Ln/e;->i:I

    .line 80
    iput-object p7, p0, Ln/e;->e:Ln/ag;

    .line 81
    iput p8, p0, Ln/e;->f:I

    .line 82
    iput-object p9, p0, Ln/e;->g:Ljava/lang/String;

    .line 83
    iput p10, p0, Ln/e;->j:I

    .line 84
    iput p11, p0, Ln/e;->k:I

    .line 85
    iput-object p12, p0, Ln/e;->l:[I

    .line 86
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/e;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ln/az;->a(Ljava/io/DataInput;Ln/am;)Ln/az;

    move-result-object v5

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ln/az;->a(Ljava/io/DataInput;Ln/am;I)Ln/az;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Ln/az;->a()I

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x1

    .line 112
    :goto_19
    if-eqz v3, :cond_73

    invoke-virtual {v6}, Ln/az;->a()I

    move-result v3

    :goto_1f
    new-array v7, v3, [B

    .line 115
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/io/DataInput;->readFully([B)V

    .line 118
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v8

    .line 121
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v9

    .line 124
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ln/ah;->a(I)Ln/ag;

    move-result-object v10

    .line 128
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v11

    .line 129
    const/4 v12, 0x0

    .line 130
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Ln/L;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 131
    aget-object v12, p4, v11

    .line 135
    :cond_47
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v13

    .line 138
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v14

    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v3, 0x1

    invoke-static {v3, v14}, Ln/L;->a(II)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 143
    invoke-static/range {p0 .. p0}, Ln/m;->a(Ljava/io/DataInput;)Ln/n;

    move-result-object v4

    .line 149
    :cond_5b
    :goto_5b
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v16

    .line 150
    move/from16 v0, v16

    new-array v15, v0, [I

    .line 151
    const/4 v3, 0x0

    :goto_64
    move/from16 v0, v16

    if-ge v3, v0, :cond_84

    .line 152
    invoke-static/range {p0 .. p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v17

    aput v17, v15, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 109
    :cond_71
    const/4 v3, 0x0

    goto :goto_19

    .line 112
    :cond_73
    invoke-virtual {v5}, Ln/az;->a()I

    move-result v3

    goto :goto_1f

    .line 144
    :cond_78
    const/4 v3, 0x2

    invoke-static {v3, v14}, Ln/L;->a(II)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 145
    invoke-static/range {p0 .. p0}, Ln/m;->b(Ljava/io/DataInput;)Ln/o;

    move-result-object v4

    goto :goto_5b

    .line 155
    :cond_84
    new-instance v3, Ln/e;

    invoke-direct/range {v3 .. v15}, Ln/e;-><init>(Ln/m;Ln/az;Ln/az;[BIILn/ag;ILjava/lang/String;II[I)V

    return-object v3
.end method


# virtual methods
.method public a()Ln/m;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Ln/e;->a:Ln/m;

    return-object v0
.end method

.method public a(II)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Ln/e;->d:[B

    aget-byte v0, v0, p1

    sget-object v1, Ln/e;->m:[B

    aget-byte v1, v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()Ln/az;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Ln/e;->b:Ln/az;

    return-object v0
.end method

.method public c()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 211
    move v1, v0

    .line 212
    :goto_2
    iget-object v2, p0, Ln/e;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 213
    sget-object v2, Ln/e;->n:[I

    iget-object v3, p0, Ln/e;->d:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 215
    :cond_15
    return v1
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 219
    iget v0, p0, Ln/e;->k:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Ln/e;->e:Ln/ag;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Ln/e;->h:I

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Ln/e;->i:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x4

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Ln/e;->j:I

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Ln/e;->l:[I

    return-object v0
.end method

.method public m()I
    .registers 4

    .prologue
    .line 272
    iget-object v0, p0, Ln/e;->b:Ln/az;

    invoke-virtual {v0}, Ln/az;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Ln/e;->d:[B

    array-length v1, v1

    add-int/2addr v1, v0

    .line 273
    iget-object v0, p0, Ln/e;->c:Ln/az;

    if-nez v0, :cond_28

    const/4 v0, 0x0

    .line 276
    :goto_11
    iget-object v2, p0, Ln/e;->a:Ln/m;

    invoke-static {v2}, Ln/L;->a(Ln/m;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Ln/e;->g:Ljava/lang/String;

    invoke-static {v2}, Ln/L;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Ln/e;->e:Ln/ag;

    invoke-static {v2}, Ln/L;->a(Ln/ag;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 280
    return v0

    .line 273
    :cond_28
    iget-object v0, p0, Ln/e;->c:Ln/az;

    invoke-virtual {v0}, Ln/az;->b()I

    move-result v0

    goto :goto_11
.end method
