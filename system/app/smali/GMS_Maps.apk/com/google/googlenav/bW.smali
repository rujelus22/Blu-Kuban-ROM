.class public Lcom/google/googlenav/bW;
.super Lcom/google/googlenav/ah;


# instance fields
.field private b:Lcom/google/googlenav/bN;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bN;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->h()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;B)V

    iput-object p1, p0, Lcom/google/googlenav/bW;->b:Lcom/google/googlenav/bN;

    return-void
.end method


# virtual methods
.method public av()Lcom/google/googlenav/bN;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bW;->b:Lcom/google/googlenav/bN;

    return-object v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()Lar/k;
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ah;->g()Lar/k;

    move-result-object v0

    return-object v0
.end method
