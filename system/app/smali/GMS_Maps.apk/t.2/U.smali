.class public Lt/U;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:I

.field private final d:Lt/Z;

.field private final e:[I


# direct methods
.method public constructor <init>(I[BILt/Z;[I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/U;->a:I

    iput-object p2, p0, Lt/U;->b:[B

    iput p3, p0, Lt/U;->c:I

    iput-object p4, p0, Lt/U;->d:Lt/Z;

    iput-object p5, p0, Lt/U;->e:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/aa;)Lt/U;
    .registers 10

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v2, v0, [B

    invoke-interface {p0, v2}, Ljava/io/DataInput;->readFully([B)V

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v5, v4, [I

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v4, :cond_23

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_23
    new-instance v0, Lt/U;

    invoke-static {}, Lt/Z;->a()Lt/Z;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lt/U;-><init>(I[BILt/Z;[I)V

    return-object v0
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    sget-object v0, Lt/m;->a:Lt/m;

    return-object v0
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lt/U;->b:[B

    return-object v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/U;->d:Lt/Z;

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lt/U;->c:I

    return v0
.end method

.method public k()[I
    .registers 2

    iget-object v0, p0, Lt/U;->e:[I

    return-object v0
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lt/U;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
