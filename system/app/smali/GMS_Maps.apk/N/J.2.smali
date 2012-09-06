.class public Ln/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# instance fields
.field private a:Ln/U;

.field private b:Ln/ag;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private final g:[I


# direct methods
.method public constructor <init>(Ln/U;Ln/ag;ILjava/lang/String;II[I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ln/J;->a:Ln/U;

    .line 47
    iput-object p2, p0, Ln/J;->b:Ln/ag;

    .line 48
    iput p3, p0, Ln/J;->c:I

    .line 49
    iput-object p4, p0, Ln/J;->d:Ljava/lang/String;

    .line 50
    iput p5, p0, Ln/J;->e:I

    .line 51
    iput p6, p0, Ln/J;->f:I

    .line 52
    iput-object p7, p0, Ln/J;->g:[I

    .line 53
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/J;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p0, p2}, Ln/U;->a(Ljava/io/DataInput;Ln/am;)Ln/U;

    move-result-object v1

    .line 72
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 73
    invoke-virtual {p3, v0}, Ln/ah;->a(I)Ln/ag;

    move-result-object v2

    .line 76
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static {v3, p4}, Ln/L;->a(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 79
    aget-object v4, p4, v3

    .line 83
    :cond_19
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    .line 86
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 89
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v8

    .line 90
    new-array v7, v8, [I

    .line 91
    const/4 v0, 0x0

    :goto_28
    if-ge v0, v8, :cond_33

    .line 92
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v7, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 95
    :cond_33
    new-instance v0, Ln/J;

    invoke-direct/range {v0 .. v7}, Ln/J;-><init>(Ln/U;Ln/ag;ILjava/lang/String;II[I)V

    return-object v0
.end method


# virtual methods
.method public a()Ln/m;
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ln/U;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ln/J;->a:Ln/U;

    return-object v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ln/J;->b:Ln/ag;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x5

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Ln/J;->e:I

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Ln/J;->g:[I

    return-object v0
.end method

.method public m()I
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Ln/J;->a:Ln/U;

    invoke-virtual {v0}, Ln/U;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iget-object v1, p0, Ln/J;->d:Ljava/lang/String;

    invoke-static {v1}, Ln/L;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ln/J;->b:Ln/ag;

    invoke-static {v1}, Ln/L;->a(Ln/ag;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
