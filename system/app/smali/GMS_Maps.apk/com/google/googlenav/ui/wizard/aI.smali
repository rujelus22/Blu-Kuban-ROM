.class Lcom/google/googlenav/ui/wizard/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lam/c;


# instance fields
.field final synthetic a:Lam/i;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ag;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ag;Lam/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ai;->b:Lcom/google/googlenav/ui/wizard/ag;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ai;->a:Lam/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ai;->b:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ak;->a(ZLam/n;)V

    .line 259
    return-void
.end method

.method public a(Lam/n;)V
    .registers 4
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ai;->a:Lam/i;

    invoke-virtual {p1}, Lam/n;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/i;->a(Ljava/util/List;)V

    .line 251
    return-void
.end method

.method public b(Lam/n;)V
    .registers 4
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ai;->b:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/google/googlenav/ui/wizard/ak;->a(ZLam/n;)V

    .line 255
    return-void
.end method
