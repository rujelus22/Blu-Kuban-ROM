.class Lcom/google/googlenav/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/h;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 5836
    iput-object p1, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5836
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/aa;-><init>(Lcom/google/googlenav/ui/v;)V

    return-void
.end method


# virtual methods
.method public D_()V
    .registers 2

    .prologue
    .line 5870
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->D_()V

    .line 5871
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->g()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->D_()V

    .line 5872
    iget-object v0, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->l(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/friend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/a;->a()V

    .line 5873
    return-void
.end method

.method public E_()V
    .registers 2

    .prologue
    .line 5877
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->E_()V

    .line 5878
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->g()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->E_()V

    .line 5879
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 5889
    return-void
.end method

.method public L_()V
    .registers 3

    .prologue
    .line 5842
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    .line 5843
    if-eqz v0, :cond_14

    .line 5844
    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v1

    invoke-interface {v1}, Lax/m;->L_()V

    .line 5845
    invoke-virtual {v0}, Lax/l;->g()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->L_()V

    .line 5850
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/googlenav/ui/v;->c:Z

    .line 5855
    :try_start_19
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_24

    .line 5864
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 5866
    :goto_23
    return-void

    .line 5856
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 5884
    return-void
.end method
