.class Lcom/google/googlenav/ui/wizard/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/fU;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gb;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gb;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gb;->a(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 3
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/gg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/gg;->a(Lcom/google/googlenav/h;)V

    .line 283
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gb;->a(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/gg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gg;->d()V

    .line 326
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 288
    new-instance v0, Lcom/google/googlenav/ui/wizard/x;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/x;-><init>()V

    .line 290
    if-eqz p1, :cond_38

    :goto_7
    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/x;->a:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gb;->b(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/aU;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    .line 292
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gb;->c(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->c:Lat/B;

    .line 295
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/fL;->b(Z)V

    .line 296
    new-instance v1, Lcom/google/googlenav/ui/wizard/ge;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ge;-><init>(Lcom/google/googlenav/ui/wizard/gd;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    .line 320
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gb;->e(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/x;)V

    .line 321
    return-void

    .line 290
    :cond_38
    const-string p1, ""

    goto :goto_7
.end method

.method public c()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/gg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gg;->a()V

    .line 336
    return-void
.end method
