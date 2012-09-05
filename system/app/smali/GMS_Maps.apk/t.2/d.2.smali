.class public Lt/d;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# instance fields
.field private final a:Lt/m;

.field private final b:Lt/ai;

.field private final c:[B

.field private final d:Lt/Z;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:[I


# direct methods
.method public constructor <init>(Lt/m;Lt/ai;[BLt/Z;ILjava/lang/String;II[I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/d;->a:Lt/m;

    iput-object p2, p0, Lt/d;->b:Lt/ai;

    iput-object p3, p0, Lt/d;->c:[B

    iput-object p4, p0, Lt/d;->d:Lt/Z;

    iput p5, p0, Lt/d;->e:I

    iput-object p6, p0, Lt/d;->f:Ljava/lang/String;

    iput p7, p0, Lt/d;->g:I

    iput p8, p0, Lt/d;->h:I

    iput-object p9, p0, Lt/d;->i:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/d;
    .registers 18

    invoke-static {p0, p2}, Lt/ai;->a(Ljava/io/DataInput;Lt/af;)Lt/ai;

    move-result-object v3

    invoke-virtual {v3}, Lt/ai;->a()I

    move-result v1

    new-array v4, v1, [B

    invoke-interface {p0, v4}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lt/aa;->a(I)Lt/Z;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v6

    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lt/H;->a(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    aget-object v7, p4, v6

    :cond_26
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v8

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1, v9}, Lt/H;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {p0}, Lt/m;->a(Ljava/io/DataInput;)Lt/m;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v11

    new-array v10, v11, [I

    const/4 v1, 0x0

    :goto_41
    if-ge v1, v11, :cond_58

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v12

    aput v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_4c
    const/4 v1, 0x2

    invoke-static {v1, v9}, Lt/H;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {p0}, Lt/m;->b(Ljava/io/DataInput;)Lt/m;

    move-result-object v2

    goto :goto_3a

    :cond_58
    new-instance v1, Lt/d;

    invoke-direct/range {v1 .. v10}, Lt/d;-><init>(Lt/m;Lt/ai;[BLt/Z;ILjava/lang/String;II[I)V

    return-object v1
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/d;->a:Lt/m;

    return-object v0
.end method

.method public b()Lt/ai;
    .registers 2

    iget-object v0, p0, Lt/d;->b:Lt/ai;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lt/d;->c:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()[B
    .registers 2

    iget-object v0, p0, Lt/d;->c:[B

    return-object v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/d;->d:Lt/Z;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lt/d;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lt/d;->g:I

    return v0
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Lt/d;->h:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method public k()[I
    .registers 2

    iget-object v0, p0, Lt/d;->i:[I

    return-object v0
.end method

.method public l()I
    .registers 4

    iget-object v0, p0, Lt/d;->b:Lt/ai;

    invoke-virtual {v0}, Lt/ai;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    iget-object v1, p0, Lt/d;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/d;->a:Lt/m;

    invoke-static {v1}, Lt/H;->a(Lt/m;)I

    move-result v1

    iget-object v2, p0, Lt/d;->f:Ljava/lang/String;

    invoke-static {v2}, Lt/H;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lt/d;->d:Lt/Z;

    invoke-static {v2}, Lt/H;->a(Lt/Z;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
