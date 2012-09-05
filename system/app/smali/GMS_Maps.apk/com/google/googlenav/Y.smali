.class public Lcom/google/googlenav/Y;
.super Lcom/google/googlenav/bN;


# instance fields
.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lam/b;I)V
    .registers 4

    sget-object v0, LbD/gH;->b:Lam/e;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/bN;-><init>(Lam/b;Lam/e;)V

    iput p2, p0, Lcom/google/googlenav/Y;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/Y;->d:Z

    return-void
.end method

.method public constructor <init>(Lam/b;II)V
    .registers 6

    invoke-virtual {p1, p2, p3}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    sget-object v1, LbD/gH;->c:Lam/e;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/bN;-><init>(Lam/b;Lam/e;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/Y;->c:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/Y;->c:I

    return-void
.end method

.method public a(Lcom/google/googlenav/bQ;)V
    .registers 7

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/Z;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/Z;-><init>(Lcom/google/googlenav/Y;Lcom/google/googlenav/bQ;)V

    const/16 v2, 0x54

    const-string v3, "ts"

    const-string v4, "r"

    invoke-static {v2, v3, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/Y;->d:Z

    return v0
.end method
