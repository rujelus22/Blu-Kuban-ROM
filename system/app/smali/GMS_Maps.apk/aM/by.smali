.class LaM/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/bx;


# direct methods
.method constructor <init>(LaM/bx;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, LaM/by;->a:LaM/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, LaM/by;->a:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->af()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 162
    iget-object v0, p0, LaM/by;->a:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bp()V

    .line 168
    :cond_d
    :goto_d
    iget-object v0, p0, LaM/by;->a:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->R()V

    .line 169
    return-void

    .line 163
    :cond_13
    iget-object v0, p0, LaM/by;->a:LaM/bx;

    iget-object v0, v0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ad()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, LaM/by;->a:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bH()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->d()Z

    move-result v0

    if-nez v0, :cond_d

    .line 166
    iget-object v0, p0, LaM/by;->a:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bJ()Lcom/google/googlenav/ui/wizard/eO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->e()V

    goto :goto_d
.end method
