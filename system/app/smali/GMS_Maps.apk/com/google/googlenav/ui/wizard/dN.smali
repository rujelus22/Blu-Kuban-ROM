.class Lcom/google/googlenav/ui/wizard/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dl;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dl;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dn;->a:Lcom/google/googlenav/ui/wizard/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dn;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 357
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dn;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cX;->c()V

    .line 359
    :cond_15
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dn;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 364
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dn;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cX;->e()V

    .line 366
    :cond_15
    return-void
.end method
