.class public Lcom/google/googlenav/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/E;


# instance fields
.field private a:Lcom/google/googlenav/ah;

.field private b:B


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/googlenav/bk;->b:B

    iput-object p1, p0, Lcom/google/googlenav/bk;->a:Lcom/google/googlenav/ah;

    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/bk;->b:B

    return-void
.end method

.method public a(I)V
    .registers 3

    if-eqz p1, :cond_b

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    return-void
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/bk;->a:Lcom/google/googlenav/ah;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/bk;->b:B

    return v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bk;->a:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method public f()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
