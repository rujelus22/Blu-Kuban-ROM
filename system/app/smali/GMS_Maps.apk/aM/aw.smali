.class LaM/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/actionbar/b;


# instance fields
.field final synthetic a:LaM/av;


# direct methods
.method constructor <init>(LaM/av;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, LaM/aw;->a:LaM/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "22"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x4f5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public a(LaI/w;)Z
    .registers 4
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, LaI/w;->g()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_8

    .line 144
    const/4 v0, 0x0

    .line 148
    :goto_7
    return v0

    .line 147
    :cond_8
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapsActivity;->showStarOnMap(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, LaM/aw;->a:LaM/av;

    invoke-static {v0}, LaM/av;->a(LaM/av;)LaM/ay;

    move-result-object v0

    sget-object v1, LaM/ay;->b:LaM/ay;

    if-ne v0, v1, :cond_1e

    .line 128
    iget-object v0, p0, LaM/aw;->a:LaM/av;

    invoke-static {v0}, LaM/av;->b(LaM/av;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->u()LaM/bj;

    move-result-object v0

    .line 129
    iget-object v1, p0, LaM/aw;->a:LaM/av;

    invoke-static {v1}, LaM/av;->b(LaM/av;)LaM/am;

    move-result-object v1

    invoke-virtual {v1, v0}, LaM/am;->g(LaM/i;)V

    .line 137
    :cond_1d
    :goto_1d
    return-void

    .line 130
    :cond_1e
    iget-object v0, p0, LaM/aw;->a:LaM/av;

    invoke-static {v0}, LaM/av;->c(LaM/av;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 135
    iget-object v0, p0, LaM/aw;->a:LaM/av;

    invoke-static {v0}, LaM/av;->c(LaM/av;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    goto :goto_1d
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
