.class public Lau/i;
.super Lau/b;


# direct methods
.method public constructor <init>(Lau/k;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lau/b;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    const/4 v0, 0x3

    iput v0, p0, Lau/i;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/x;)V
    .registers 3

    invoke-direct {p0, p1}, Lau/b;-><init>(Lcom/google/googlenav/ui/x;)V

    const/4 v0, 0x3

    iput v0, p0, Lau/i;->b:I

    return-void
.end method


# virtual methods
.method M()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lau/i;->d(I)Lam/b;

    move-result-object v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public aM()Lau/b;
    .registers 3

    new-instance v0, Lau/i;

    invoke-virtual {p0}, Lau/i;->ar()Lau/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lau/i;-><init>(Lau/k;)V

    return-object v0
.end method

.method public p()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .registers 2

    invoke-static {}, Lu/O;->a()Z

    move-result v0

    return v0
.end method