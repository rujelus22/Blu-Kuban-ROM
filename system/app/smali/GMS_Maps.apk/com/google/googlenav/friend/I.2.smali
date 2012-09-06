.class public final Lcom/google/googlenav/friend/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dk;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/H;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/H;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/googlenav/friend/I;->a:Lcom/google/googlenav/friend/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 354
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/I;->a:Lcom/google/googlenav/friend/H;

    iget-object v1, v1, Lcom/google/googlenav/friend/H;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 355
    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "roi"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/googlenav/friend/I;->a:Lcom/google/googlenav/friend/H;

    invoke-static {v0}, Lcom/google/googlenav/friend/H;->b(Lcom/google/googlenav/friend/H;)LaM/am;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/I;->a:Lcom/google/googlenav/friend/H;

    invoke-static {v1}, Lcom/google/googlenav/friend/H;->a(Lcom/google/googlenav/friend/H;)I

    move-result v1

    invoke-virtual {v0, v1}, LaM/am;->e(I)V

    .line 335
    iget-object v0, p0, Lcom/google/googlenav/friend/I;->a:Lcom/google/googlenav/friend/H;

    invoke-static {v0}, Lcom/google/googlenav/friend/H;->b(Lcom/google/googlenav/friend/H;)LaM/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/am;->g(Z)V

    .line 336
    iget-object v0, p0, Lcom/google/googlenav/friend/I;->a:Lcom/google/googlenav/friend/H;

    iget-object v0, v0, Lcom/google/googlenav/friend/H;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->s()V

    .line 340
    invoke-static {}, Lcom/google/googlenav/friend/ae;->e()Lcom/google/googlenav/friend/bk;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/google/googlenav/friend/I;->a:Lcom/google/googlenav/friend/H;

    iget-object v1, v1, Lcom/google/googlenav/friend/H;->d:Lcom/google/googlenav/friend/bk;

    if-eq v1, v0, :cond_2d

    .line 343
    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->s()V

    .line 346
    :cond_2d
    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "oi"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method
