.class LaY/bq;
.super Ljava/lang/Object;

# interfaces
.implements LaY/bp;


# instance fields
.field final synthetic a:LaY/bh;


# direct methods
.method constructor <init>(LaY/bh;)V
    .registers 2

    iput-object p1, p0, LaY/bq;->a:LaY/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, LaY/bq;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->f()V

    iget-object v0, p0, LaY/bq;->a:LaY/bh;

    iget-object v0, v0, LaY/bh;->f:Lcom/google/googlenav/E;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(B)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
