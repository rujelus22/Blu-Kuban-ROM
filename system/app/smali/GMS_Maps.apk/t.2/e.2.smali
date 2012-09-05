.class public Lt/e;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# static fields
.field private static final m:[B

.field private static final n:[I


# instance fields
.field private final a:Lt/m;

.field private final b:Lt/ai;

.field private final c:Lt/ai;

.field private final d:[B

.field private final e:Lt/Z;

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

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lt/e;->m:[B

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lt/e;->n:[I

    return-void

    :array_12
    .array-data 0x1
        0x1t
        0x2t
        0x4t
    .end array-data

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

.method public constructor <init>(Lt/m;Lt/ai;Lt/ai;[BIILt/Z;ILjava/lang/String;II[I)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/e;->a:Lt/m;

    iput-object p2, p0, Lt/e;->b:Lt/ai;

    iput-object p3, p0, Lt/e;->c:Lt/ai;

    iput-object p4, p0, Lt/e;->d:[B

    iput p5, p0, Lt/e;->h:I

    iput p6, p0, Lt/e;->i:I

    iput-object p7, p0, Lt/e;->e:Lt/Z;

    iput p8, p0, Lt/e;->f:I

    iput-object p9, p0, Lt/e;->g:Ljava/lang/String;

    iput p10, p0, Lt/e;->j:I

    iput p11, p0, Lt/e;->k:I

    iput-object p12, p0, Lt/e;->l:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/e;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lt/ai;->a(Ljava/io/DataInput;Lt/af;)Lt/ai;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lt/ai;->a(Ljava/io/DataInput;Lt/af;I)Lt/ai;

    move-result-object v6

    invoke-virtual {v6}, Lt/ai;->a()I

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x1

    :goto_19
    if-eqz v3, :cond_73

    invoke-virtual {v6}, Lt/ai;->a()I

    move-result v3

    :goto_1f
    new-array v7, v3, [B

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/io/DataInput;->readFully([B)V

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v8

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v9

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lt/aa;->a(I)Lt/Z;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lt/H;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    aget-object v12, p4, v11

    :cond_47
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v13

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v14

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v14}, Lt/H;->a(II)Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-static/range {p0 .. p0}, Lt/m;->a(Ljava/io/DataInput;)Lt/m;

    move-result-object v4

    :cond_5b
    :goto_5b
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v16

    move/from16 v0, v16

    new-array v15, v0, [I

    const/4 v3, 0x0

    :goto_64
    move/from16 v0, v16

    if-ge v3, v0, :cond_84

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v17

    aput v17, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_71
    const/4 v3, 0x0

    goto :goto_19

    :cond_73
    invoke-virtual {v5}, Lt/ai;->a()I

    move-result v3

    goto :goto_1f

    :cond_78
    const/4 v3, 0x2

    invoke-static {v3, v14}, Lt/H;->a(II)Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-static/range {p0 .. p0}, Lt/m;->b(Ljava/io/DataInput;)Lt/m;

    move-result-object v4

    goto :goto_5b

    :cond_84
    new-instance v3, Lt/e;

    invoke-direct/range {v3 .. v15}, Lt/e;-><init>(Lt/m;Lt/ai;Lt/ai;[BIILt/Z;ILjava/lang/String;II[I)V

    return-object v3
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/e;->a:Lt/m;

    return-object v0
.end method

.method public a(II)Z
    .registers 5

    iget-object v0, p0, Lt/e;->d:[B

    aget-byte v0, v0, p1

    sget-object v1, Lt/e;->m:[B

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

.method public b()Lt/ai;
    .registers 2

    iget-object v0, p0, Lt/e;->b:Lt/ai;

    return-object v0
.end method

.method public c()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lt/e;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_15

    sget-object v2, Lt/e;->n:[I

    iget-object v3, p0, Lt/e;->d:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    return v1
.end method

.method public d()Z
    .registers 3

    iget v0, p0, Lt/e;->k:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/e;->e:Lt/Z;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lt/e;->h:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lt/e;->i:I

    return v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lt/e;->j:I

    return v0
.end method

.method public k()[I
    .registers 2

    iget-object v0, p0, Lt/e;->l:[I

    return-object v0
.end method

.method public l()I
    .registers 4

    iget-object v0, p0, Lt/e;->b:Lt/ai;

    invoke-virtual {v0}, Lt/ai;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Lt/e;->d:[B

    array-length v1, v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lt/e;->c:Lt/ai;

    if-nez v0, :cond_28

    const/4 v0, 0x0

    :goto_11
    iget-object v2, p0, Lt/e;->a:Lt/m;

    invoke-static {v2}, Lt/H;->a(Lt/m;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lt/e;->g:Ljava/lang/String;

    invoke-static {v2}, Lt/H;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lt/e;->e:Lt/Z;

    invoke-static {v2}, Lt/H;->a(Lt/Z;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    :cond_28
    iget-object v0, p0, Lt/e;->c:Lt/ai;

    invoke-virtual {v0}, Lt/ai;->b()I

    move-result v0

    goto :goto_11
.end method
