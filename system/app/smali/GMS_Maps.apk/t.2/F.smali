.class public Lt/F;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# instance fields
.field private a:Lt/P;

.field private b:Lt/Z;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private final g:[I


# direct methods
.method public constructor <init>(Lt/P;Lt/Z;ILjava/lang/String;II[I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/F;->a:Lt/P;

    iput-object p2, p0, Lt/F;->b:Lt/Z;

    iput p3, p0, Lt/F;->c:I

    iput-object p4, p0, Lt/F;->d:Ljava/lang/String;

    iput p5, p0, Lt/F;->e:I

    iput p6, p0, Lt/F;->f:I

    iput-object p7, p0, Lt/F;->g:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/F;
    .registers 15

    invoke-static {p0, p2}, Lt/P;->a(Ljava/io/DataInput;Lt/af;)Lt/P;

    move-result-object v1

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-virtual {p3, v0}, Lt/aa;->a(I)Lt/Z;

    move-result-object v2

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, p4}, Lt/H;->a(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    aget-object v4, p4, v3

    :cond_19
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v8

    new-array v7, v8, [I

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v8, :cond_33

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_33
    new-instance v0, Lt/F;

    invoke-direct/range {v0 .. v7}, Lt/F;-><init>(Lt/P;Lt/Z;ILjava/lang/String;II[I)V

    return-object v0
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lt/P;
    .registers 2

    iget-object v0, p0, Lt/F;->a:Lt/P;

    return-object v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/F;->b:Lt/Z;

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lt/F;->e:I

    return v0
.end method

.method public k()[I
    .registers 2

    iget-object v0, p0, Lt/F;->g:[I

    return-object v0
.end method

.method public l()I
    .registers 3

    iget-object v0, p0, Lt/F;->a:Lt/P;

    invoke-virtual {v0}, Lt/P;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iget-object v1, p0, Lt/F;->d:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt/F;->b:Lt/Z;

    invoke-static {v1}, Lt/H;->a(Lt/Z;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
