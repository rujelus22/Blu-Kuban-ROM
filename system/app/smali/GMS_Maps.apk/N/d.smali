.class public Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# instance fields
.field private final a:Ln/m;

.field private final b:Ln/az;

.field private final c:[B

.field private final d:Ln/ag;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:[I


# direct methods
.method public constructor <init>(Ln/m;Ln/az;[BLn/ag;ILjava/lang/String;II[I)V
    .registers 10
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ln/d;->a:Ln/m;

    .line 68
    iput-object p2, p0, Ln/d;->b:Ln/az;

    .line 69
    iput-object p3, p0, Ln/d;->c:[B

    .line 70
    iput-object p4, p0, Ln/d;->d:Ln/ag;

    .line 71
    iput p5, p0, Ln/d;->e:I

    .line 72
    iput-object p6, p0, Ln/d;->f:Ljava/lang/String;

    .line 73
    iput p7, p0, Ln/d;->g:I

    .line 74
    iput p8, p0, Ln/d;->h:I

    .line 75
    iput-object p9, p0, Ln/d;->i:[I

    .line 76
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/d;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p0, p2}, Ln/az;->a(Ljava/io/DataInput;Ln/am;)Ln/az;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ln/az;->a()I

    move-result v1

    new-array v4, v1, [B

    .line 99
    invoke-interface {p0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 106
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 107
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ln/ah;->a(I)Ln/ag;

    move-result-object v5

    .line 111
    const/4 v7, 0x0

    .line 112
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 113
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Ln/L;->a(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 114
    aget-object v7, p4, v6

    .line 118
    :cond_26
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v8

    .line 120
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 123
    const/4 v2, 0x0

    .line 124
    const/4 v1, 0x1

    invoke-static {v1, v9}, Ln/L;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 125
    invoke-static {p0}, Ln/m;->a(Ljava/io/DataInput;)Ln/n;

    move-result-object v2

    .line 131
    :cond_3a
    :goto_3a
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v11

    .line 132
    new-array v10, v11, [I

    .line 133
    const/4 v1, 0x0

    :goto_41
    if-ge v1, v11, :cond_58

    .line 134
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v12

    aput v12, v10, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 126
    :cond_4c
    const/4 v1, 0x2

    invoke-static {v1, v9}, Ln/L;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 127
    invoke-static {p0}, Ln/m;->b(Ljava/io/DataInput;)Ln/o;

    move-result-object v2

    goto :goto_3a

    .line 137
    :cond_58
    new-instance v1, Ln/d;

    invoke-direct/range {v1 .. v10}, Ln/d;-><init>(Ln/m;Ln/az;[BLn/ag;ILjava/lang/String;II[I)V

    return-object v1
.end method


# virtual methods
.method public a()Ln/m;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Ln/d;->a:Ln/m;

    return-object v0
.end method

.method public b()Ln/az;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Ln/d;->b:Ln/az;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Ln/d;->c:[B

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

    .prologue
    .line 183
    iget-object v0, p0, Ln/d;->c:[B

    return-object v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Ln/d;->d:Ln/ag;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Ln/d;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Ln/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x3

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Ln/d;->g:I

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 219
    iget v0, p0, Ln/d;->h:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 226
    iget v0, p0, Ln/d;->h:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Ln/d;->i:[I

    return-object v0
.end method

.method public m()I
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Ln/d;->b:Ln/az;

    invoke-virtual {v0}, Ln/az;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    iget-object v1, p0, Ln/d;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 244
    iget-object v1, p0, Ln/d;->a:Ln/m;

    invoke-static {v1}, Ln/L;->a(Ln/m;)I

    move-result v1

    iget-object v2, p0, Ln/d;->f:Ljava/lang/String;

    invoke-static {v2}, Ln/L;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ln/d;->d:Ln/ag;

    invoke-static {v2}, Ln/L;->a(Ln/ag;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 247
    return v0
.end method
