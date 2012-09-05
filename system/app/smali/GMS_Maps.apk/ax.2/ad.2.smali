.class public final Lax/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cv;


# instance fields
.field final synthetic a:Lax/ac;


# direct methods
.method public constructor <init>(Lax/ac;)V
    .registers 2

    iput-object p1, p0, Lax/ad;->a:Lax/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/ad;->a:Lax/ac;

    iget-object v1, v1, Lax/ac;->d:Lax/bq;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "roi"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lax/ad;->a:Lax/ac;

    invoke-static {v0}, Lax/ac;->b(Lax/ac;)LaY/Y;

    move-result-object v0

    iget-object v1, p0, Lax/ad;->a:Lax/ac;

    invoke-static {v1}, Lax/ac;->a(Lax/ac;)I

    move-result v1

    invoke-virtual {v0, v1}, LaY/Y;->e(I)V

    iget-object v0, p0, Lax/ad;->a:Lax/ac;

    invoke-static {v0}, Lax/ac;->b(Lax/ac;)LaY/Y;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/Y;->g(Z)V

    iget-object v0, p0, Lax/ad;->a:Lax/ac;

    iget-object v0, v0, Lax/ac;->d:Lax/bq;

    invoke-virtual {v0}, Lax/bq;->n()V

    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "oi"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
