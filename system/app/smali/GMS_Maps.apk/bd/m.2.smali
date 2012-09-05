.class public Lbd/m;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private a:Lcom/google/googlenav/Y;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/Y;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/m;->a:Lcom/google/googlenav/Y;

    return-void
.end method

.method static synthetic a(Lbd/m;)Lcom/google/googlenav/Y;
    .registers 2

    iget-object v0, p0, Lbd/m;->a:Lcom/google/googlenav/Y;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v0, Lbd/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbd/o;-><init>(Lbd/m;Lbd/n;)V

    check-cast p1, Lcom/google/googlenav/ui/android/NearbyTransitStationView;

    invoke-static {v0, p1}, Lbd/o;->a(Lbd/o;Lcom/google/googlenav/ui/android/NearbyTransitStationView;)Lcom/google/googlenav/ui/android/NearbyTransitStationView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lbd/o;

    iget-object v0, p0, Lbd/m;->a:Lcom/google/googlenav/Y;

    if-eqz v0, :cond_12

    invoke-static {p2}, Lbd/o;->a(Lbd/o;)Lcom/google/googlenav/ui/android/NearbyTransitStationView;

    move-result-object v0

    new-instance v1, Lbd/n;

    invoke-direct {v1, p0, p1}, Lbd/n;-><init>(Lbd/m;Lcom/google/googlenav/ui/p;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-static {p2}, Lbd/o;->a(Lbd/o;)Lcom/google/googlenav/ui/android/NearbyTransitStationView;

    move-result-object v0

    iget-object v1, p0, Lbd/m;->a:Lcom/google/googlenav/Y;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->a(Lcom/google/googlenav/Y;Lcom/google/googlenav/ui/p;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300d6

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
