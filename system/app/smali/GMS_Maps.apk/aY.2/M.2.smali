.class LaY/M;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aV;

.field final synthetic b:LaY/K;


# direct methods
.method constructor <init>(LaY/K;Lcom/google/googlenav/aV;)V
    .registers 3

    iput-object p1, p0, LaY/M;->b:LaY/K;

    iput-object p2, p0, LaY/M;->a:Lcom/google/googlenav/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)V
    .registers 6

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, LaY/M;->a:Lcom/google/googlenav/aV;

    if-eq p1, v0, :cond_14

    iget-object v0, p0, LaY/M;->b:LaY/K;

    const/4 v1, 0x0

    check-cast p1, Lcom/google/googlenav/aV;

    invoke-virtual {v0, v1, p1}, LaY/K;->a(ZLcom/google/googlenav/aV;)V

    :cond_14
    iget-object v0, p0, LaY/M;->b:LaY/K;

    invoke-static {v0}, LaY/K;->b(LaY/K;)Lax/r;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    return-void
.end method
