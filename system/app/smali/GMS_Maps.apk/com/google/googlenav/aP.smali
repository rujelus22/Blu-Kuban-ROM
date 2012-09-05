.class public Lcom/google/googlenav/aP;
.super Lat/a;


# instance fields
.field private a:Lcom/google/googlenav/aR;

.field private final b:Lcom/google/googlenav/aQ;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private final g:Lam/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/aQ;ILjava/lang/String;I[B)V
    .registers 8

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aP;->f:Z

    new-instance v0, Lam/b;

    sget-object v1, LbD/es;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lcom/google/googlenav/aP;->g:Lam/b;

    iput-object p1, p0, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aQ;

    iput p4, p0, Lcom/google/googlenav/aP;->c:I

    iput-object p3, p0, Lcom/google/googlenav/aP;->d:Ljava/lang/String;

    const/16 v0, 0x23

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aP;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/aP;->g:Lam/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3}, Lam/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/aP;-><init>(Lcom/google/googlenav/aQ;ILjava/lang/String;I[B)V

    iput-object p2, p0, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/googlenav/aR;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    iput-boolean p2, p0, Lcom/google/googlenav/aP;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/imageservice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lar/b;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?fmt=JPEG&maxW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/aP;->g:Lam/b;

    invoke-virtual {v0}, Lam/b;->f()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v0, LbD/es;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v11

    invoke-virtual {p0}, Lcom/google/googlenav/aP;->h_()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return v9

    :cond_f
    invoke-virtual {v11, v9}, Lam/b;->l(I)I

    move-result v12

    move v1, v10

    :goto_14
    if-ge v1, v12, :cond_e

    invoke-virtual {v11, v9, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lam/b;->c(I)[B

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lam/b;->d(I)I

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_53

    move v5, v9

    :goto_2e
    if-nez v1, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aR;

    if-eqz v0, :cond_3e

    iget-object v6, p0, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aR;

    iget-object v7, p0, Lcom/google/googlenav/aP;->d:Ljava/lang/String;

    if-eqz v5, :cond_55

    const/4 v0, 0x0

    :goto_3b
    invoke-interface {v6, v7, v0}, Lcom/google/googlenav/aR;->a(Ljava/lang/String;[B)V

    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aQ;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aQ;

    iget v6, p0, Lcom/google/googlenav/aP;->c:I

    iget-object v7, p0, Lcom/google/googlenav/aP;->e:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-virtual {v2, v8}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/google/googlenav/aQ;->a(ILam/b;Ljava/lang/String;[BZILjava/lang/String;Ljava/lang/String;)V

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_53
    move v5, v10

    goto :goto_2e

    :cond_55
    move-object v0, v4

    goto :goto_3b
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aP;->f:Z

    return v0
.end method
