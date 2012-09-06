.class Lcom/google/googlenav/ui/view/dialog/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/actionbar/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/ce;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/ce;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cf;->a:Lcom/google/googlenav/ui/view/dialog/ce;

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

    .line 269
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "20"

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
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public a(LaI/w;)Z
    .registers 4
    .parameter

    .prologue
    .line 292
    invoke-virtual {p1}, LaI/w;->g()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-nez v0, :cond_8

    .line 295
    const/4 v0, 0x0

    .line 299
    :goto_7
    return v0

    .line 298
    :cond_8
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapsActivity;->showStarDetails(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()V
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cf;->a:Lcom/google/googlenav/ui/view/dialog/ce;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/ce;->d:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->h()V

    .line 288
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method
