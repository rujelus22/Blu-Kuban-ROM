.class Lcom/google/googlenav/ui/wizard/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aS;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/di;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/di;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->d(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    const/16 v0, 0xb7

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    return-void
.end method

.method public a(Lcom/google/googlenav/a;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->d(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->e(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    const/16 v1, 0xb8

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/dg;->b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/b;->b(Lam/b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/di;->a(Lcom/google/googlenav/ui/wizard/di;Lcom/google/googlenav/a;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->a:Lcom/google/googlenav/ui/wizard/dg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dg;->d(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dj;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/di;->a(Lcom/google/googlenav/ui/wizard/di;Ljava/lang/String;)V

    return-void
.end method
