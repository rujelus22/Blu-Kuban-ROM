.class Lcom/google/googlenav/ui/wizard/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/y;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gd;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gd;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Lcom/google/googlenav/ui/wizard/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Lcom/google/googlenav/ui/wizard/gd;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(Z)V

    .line 308
    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 4
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Lcom/google/googlenav/ui/wizard/gd;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/gg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/gg;->a(Lcom/google/googlenav/h;)V

    .line 302
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Lcom/google/googlenav/ui/wizard/gd;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(Z)V

    .line 303
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Lcom/google/googlenav/ui/wizard/gd;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/gg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gg;->b()V

    .line 313
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Lcom/google/googlenav/ui/wizard/gd;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gd;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/gg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gg;->c()V

    .line 318
    return-void
.end method
