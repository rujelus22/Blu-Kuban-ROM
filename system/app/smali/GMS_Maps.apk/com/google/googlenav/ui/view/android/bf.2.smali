.class Lcom/google/googlenav/ui/view/android/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/p;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/be;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/be;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bf;->a:Lcom/google/googlenav/ui/view/android/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)Z
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:Lcom/google/googlenav/ui/view/android/be;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/be;->a(Lcom/google/googlenav/ui/view/android/be;)Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->hide()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:Lcom/google/googlenav/ui/view/android/be;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/be;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:Lcom/google/googlenav/ui/view/android/be;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/be;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:Lcom/google/googlenav/ui/view/android/be;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/be;->a(Lcom/google/googlenav/ui/view/android/be;)Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->hide()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bf;->a:Lcom/google/googlenav/ui/view/android/be;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/be;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
