.class public Lcom/google/googlenav/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/E;


# instance fields
.field private a:B

.field private b:Lcom/google/googlenav/E;

.field private c:Lcom/google/googlenav/E;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    iput-object p2, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/E;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    return-object v0
.end method

.method public a(B)V
    .registers 3

    iput-byte p1, p0, Lcom/google/googlenav/n;->a:B

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->a(B)V

    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->a(B)V

    return-void
.end method

.method public a(I)V
    .registers 4

    const/4 v1, -0x1

    if-gez p1, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(I)V

    :goto_d
    if-gez p1, :cond_3a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/n;->a(B)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge p1, v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(I)V

    goto :goto_d

    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    iget-object v1, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(I)V

    goto :goto_d

    :cond_3a
    invoke-virtual {p0}, Lcom/google/googlenav/n;->d()B

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/n;->a(B)V

    goto :goto_13
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge p1, v0, :cond_f

    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_e

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()Lcom/google/googlenav/E;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    return-object v0
.end method

.method public c()I
    .registers 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-eq v0, v1, :cond_a

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9

    :cond_1a
    move v0, v1

    goto :goto_9
.end method

.method public c(I)I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    if-ge p1, v1, :cond_16

    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v1, p1}, Lcom/google/googlenav/E;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->c(I)I
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    goto :goto_15

    :catch_1f
    move-exception v0

    const/4 v0, -0x1

    goto :goto_15
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/n;->a:B

    return v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    goto :goto_f
.end method

.method public f()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
