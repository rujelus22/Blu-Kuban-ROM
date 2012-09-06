.class public Ln/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:I

.field private final d:Ln/ag;

.field private final e:[I


# direct methods
.method public constructor <init>(I[BILn/ag;[I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Ln/Z;->a:I

    .line 37
    iput-object p2, p0, Ln/Z;->b:[B

    .line 38
    iput p3, p0, Ln/Z;->c:I

    .line 39
    iput-object p4, p0, Ln/Z;->d:Ln/ag;

    .line 40
    iput-object p5, p0, Ln/Z;->e:[I

    .line 41
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/ah;)Ln/Z;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 55
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 56
    new-array v2, v0, [B

    .line 57
    invoke-interface {p0, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 59
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 62
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 63
    new-array v5, v4, [I

    .line 64
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v4, :cond_23

    .line 65
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v6

    aput v6, v5, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 69
    :cond_23
    new-instance v0, Ln/Z;

    invoke-static {}, Ln/ag;->a()Ln/ag;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ln/Z;-><init>(I[BILn/ag;[I)V

    return-object v0
.end method


# virtual methods
.method public a()Ln/m;
    .registers 2

    .prologue
    .line 127
    sget-object v0, Ln/m;->a:Ln/m;

    return-object v0
.end method

.method public b()[B
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Ln/Z;->b:[B

    return-object v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ln/Z;->d:Ln/ag;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x6

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Ln/Z;->c:I

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Ln/Z;->e:[I

    return-object v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Ln/Z;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
