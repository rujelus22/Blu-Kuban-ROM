.class LaY/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:LaY/bh;


# direct methods
.method constructor <init>(LaY/bh;)V
    .registers 2

    iput-object p1, p0, LaY/bi;->a:LaY/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "do"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->x()V

    iget-object v0, p0, LaY/bi;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->a(LaY/bh;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "dc"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method
