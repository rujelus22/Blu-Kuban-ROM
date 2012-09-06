.class Lcom/google/googlenav/ui/wizard/cE;
.super Lcom/google/googlenav/bD;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cD;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    invoke-direct {p0}, Lcom/google/googlenav/bD;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cD;->b(Lcom/google/googlenav/ui/wizard/cD;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cD;->a(Lcom/google/googlenav/ui/wizard/cD;)Lcom/google/googlenav/ui/wizard/cG;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cG;->b()V

    .line 113
    :goto_11
    return-void

    .line 110
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cD;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/cD;->a(Lcom/google/googlenav/ui/wizard/cD;Z)Z

    goto :goto_11
.end method

.method public b()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cD;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cD;->a(Lcom/google/googlenav/ui/wizard/cD;)Lcom/google/googlenav/ui/wizard/cG;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cG;->a()V

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cD;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x3f6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/cD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cD;->a()V

    .line 101
    return-void
.end method
