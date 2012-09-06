.class public Ln/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# instance fields
.field private final a:Ln/U;

.field private final b:Ln/ag;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:[I


# direct methods
.method private constructor <init>(Ln/U;Ln/ag;ILjava/lang/String;II[I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ln/aw;->a:Ln/U;

    .line 51
    iput-object p2, p0, Ln/aw;->b:Ln/ag;

    .line 52
    iput p3, p0, Ln/aw;->c:I

    .line 53
    iput-object p4, p0, Ln/aw;->d:Ljava/lang/String;

    .line 54
    iput p5, p0, Ln/aw;->f:I

    .line 55
    iput p6, p0, Ln/aw;->e:I

    .line 56
    iput-object p7, p0, Ln/aw;->g:[I

    .line 57
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/l;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {p0, p2}, Ln/U;->a(Ljava/io/DataInput;Ln/am;)Ln/U;

    move-result-object v1

    .line 75
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 76
    invoke-virtual {p3, v0}, Ln/ah;->a(I)Ln/ag;

    move-result-object v2

    .line 79
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-static {v3, p4}, Ln/L;->a(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 82
    aget-object v4, p4, v3

    .line 85
    :cond_19
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

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
    new-instance v0, Ln/aw;

    invoke-direct/range {v0 .. v7}, Ln/aw;-><init>(Ln/U;Ln/ag;ILjava/lang/String;II[I)V

    return-object v0
.end method


# virtual methods
.method public a()Ln/m;
    .registers 2

    .prologue
    .line 158
    sget-object v0, Ln/m;->a:Ln/m;

    return-object v0
.end method

.method public b()Ln/U;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Ln/aw;->a:Ln/U;

    return-object v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 104
    iget v0, p0, Ln/aw;->e:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Ln/aw;->f:I

    return v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ln/aw;->b:Ln/ag;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 143
    const/16 v0, 0x9

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Ln/aw;->g:[I

    return-object v0
.end method

.method public m()I
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Ln/aw;->a:Ln/U;

    invoke-virtual {v0}, Ln/U;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iget-object v1, p0, Ln/aw;->d:Ljava/lang/String;

    invoke-static {v1}, Ln/L;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ln/aw;->b:Ln/ag;

    invoke-static {v1}, Ln/L;->a(Ln/ag;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
