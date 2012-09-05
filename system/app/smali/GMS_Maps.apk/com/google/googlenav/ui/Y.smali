.class Lcom/google/googlenav/ui/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lat/p;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/Y;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/ui/E;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Y;-><init>(Lcom/google/googlenav/ui/D;)V

    return-void
.end method

.method private c(Lat/g;)Z
    .registers 3

    invoke-interface {p1}, Lat/g;->f_()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lat/g;->l_()Z

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x7

    if-ne p1, v0, :cond_14

    invoke-static {p3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/Y;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public a(Lat/g;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Y;->c(Lat/g;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/Y;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v1}, Lcom/google/googlenav/ui/D;->f(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/Z;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/Z;-><init>(Lcom/google/googlenav/ui/Y;Lat/g;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_15
    return-void
.end method

.method public b(Lat/g;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Y;->c(Lat/g;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/Y;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v1}, Lcom/google/googlenav/ui/D;->f(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aa;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/aa;-><init>(Lcom/google/googlenav/ui/Y;Lat/g;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_15
    return-void
.end method
