.class public Lt/am;
.super Lt/al;


# direct methods
.method public constructor <init>(Lt/l;II)V
    .registers 6

    const/4 v0, 0x0

    or-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, p1, v1, p3}, Lt/al;-><init>(Lt/m;Lt/l;II)V

    return-void
.end method


# virtual methods
.method public a()Lt/l;
    .registers 2

    iget-object v0, p0, Lt/am;->b:Lt/l;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lt/am;->c:I

    invoke-static {v0}, Lt/al;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lt/am;->d:I

    return v0
.end method

.method public d()Z
    .registers 3

    iget v0, p0, Lt/am;->c:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method
