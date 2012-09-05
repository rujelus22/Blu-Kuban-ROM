.class Lx/an;
.super Lx/f;


# instance fields
.field final synthetic d:Lx/am;


# direct methods
.method constructor <init>(Lx/am;)V
    .registers 2

    iput-object p1, p0, Lx/an;->d:Lx/am;

    invoke-direct {p0, p1}, Lx/f;-><init>(Lx/d;)V

    return-void
.end method


# virtual methods
.method protected b(I)Lt/ae;
    .registers 9

    iget-object v0, p0, Lx/an;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1}, Lx/an;->a(I)Lx/r;

    move-result-object v0

    invoke-virtual {v0}, Lx/r;->a()Lt/af;

    move-result-object v0

    iget-object v1, p0, Lx/an;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->c()J

    move-result-wide v3

    const-wide/32 v5, 0x48190800

    add-long/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Lw/d;->a(Lt/af;[BIJ)Lw/d;

    move-result-object v0

    goto :goto_7
.end method

.method protected c()I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lx/an;->b:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lx/an;->b:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    :try_start_c
    iget-object v1, p0, Lx/an;->b:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lw/d;->a([BI)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_16

    move-result v0

    :goto_15
    return v0

    :catch_16
    move-exception v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 v0, -0x1

    goto :goto_15
.end method

.method protected c(I)[B
    .registers 3

    iget-object v0, p0, Lx/an;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
