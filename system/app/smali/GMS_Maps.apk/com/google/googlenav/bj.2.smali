.class public Lcom/google/googlenav/bj;
.super Ljava/lang/Object;


# instance fields
.field private a:Lam/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static b()Lam/b;
    .registers 3

    new-instance v0, Lam/b;

    sget-object v1, LbD/V;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method private b(Lam/b;)Z
    .registers 7

    const/4 v3, 0x2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    invoke-virtual {v1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    invoke-virtual {v1, v3}, Lam/b;->e(I)J

    move-result-wide v1

    invoke-virtual {p1, v3}, Lam/b;->e(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a()Lam/b;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    if-nez v0, :cond_33

    :try_start_4
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "ShortbreadToken"

    invoke-interface {v0, v1}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_29

    array-length v1, v0

    if-lez v1, :cond_29

    sget-object v1, LbD/V;->c:Lam/e;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bj;->a:Lam/b;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_36

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    if-nez v0, :cond_33

    invoke-static {}, Lcom/google/googlenav/bj;->b()Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    :cond_33
    iget-object v0, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    return-object v0

    :catch_36
    move-exception v0

    goto :goto_29
.end method

.method public a(Lam/b;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/bj;->b(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_26

    iput-object p1, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    :try_start_8
    new-instance v0, Lan/b;

    invoke-direct {v0}, Lan/b;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    invoke-static {v0, v1}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "ShortbreadToken"

    invoke-virtual {v0}, Lan/b;->a()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lbf/c;->a()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bj;->a:Lam/b;

    goto :goto_26
.end method
