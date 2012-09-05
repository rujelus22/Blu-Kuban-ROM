.class Lcom/google/android/maps/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cR;


# instance fields
.field final synthetic a:Lax/aZ;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Lax/aZ;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/g;->c:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/g;->a:Lax/aZ;

    iput-object p3, p0, Lcom/google/android/maps/g;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Q_()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/g;->b:Ljava/lang/Class;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/g;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/U;->a(Ljava/lang/Class;)V

    :cond_d
    return-void
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/maps/g;->c:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->d(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->p()Lax/bD;

    move-result-object v0

    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/maps/g;->a:Lax/aZ;

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lax/bD;->a(LaJ/B;Ljava/lang/Long;Lam/b;ZLax/aZ;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/k;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/maps/g;->b:Ljava/lang/Class;

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/g;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/U;->a(Ljava/lang/Class;)V

    :goto_2e
    const/4 v0, 0x0

    if-eqz p3, :cond_37

    const/16 v0, 0xb

    invoke-static {p3, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    :cond_37
    invoke-static {v0}, Lax/aA;->b(Ljava/lang/String;)V

    return-void

    :cond_3b
    iget-object v0, p0, Lcom/google/android/maps/g;->c:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->d(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v0

    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/u;->c(LaJ/B;)V

    goto :goto_2e
.end method
