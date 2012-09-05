.class LaY/E;
.super Ljava/lang/Object;

# interfaces
.implements LaY/aZ;


# instance fields
.field final synthetic a:LaY/D;


# direct methods
.method constructor <init>(LaY/D;)V
    .registers 2

    iput-object p1, p0, LaY/E;->a:LaY/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bl;
    .registers 4

    iget-object v0, p0, LaY/E;->a:LaY/D;

    invoke-static {v0}, LaY/D;->a(LaY/D;)LaY/G;

    move-result-object v0

    invoke-virtual {v0}, LaY/G;->i()Lab/b;

    move-result-object v0

    invoke-virtual {v0}, Lab/b;->k()[Lcom/google/googlenav/ah;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_20

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    iget-object v1, p0, LaY/E;->a:LaY/D;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, LaY/D;->a(LaY/D;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    goto :goto_1f
.end method
