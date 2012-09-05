.class public Lt/j;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# instance fields
.field private a:Lt/Z;


# direct methods
.method public constructor <init>(Lt/Z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/j;->a:Lt/Z;

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/aa;)Lt/j;
    .registers 5

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_d

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    new-instance v0, Lt/j;

    invoke-static {}, Lt/Z;->a()Lt/Z;

    move-result-object v1

    invoke-direct {v0, v1}, Lt/j;-><init>(Lt/Z;)V

    return-object v0
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    sget-object v0, Lt/m;->a:Lt/m;

    return-object v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/j;->a:Lt/Z;

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()[I
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public l()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
