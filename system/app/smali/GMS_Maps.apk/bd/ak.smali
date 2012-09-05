.class public Lbd/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private a:Lcom/google/googlenav/bN;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bN;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/ak;->a:Lcom/google/googlenav/bN;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v0, Lbd/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbd/am;-><init>(Lbd/ak;Lbd/al;)V

    check-cast p1, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-static {v0, p1}, Lbd/am;->a(Lbd/am;Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lbd/am;

    invoke-static {p2}, Lbd/am;->a(Lbd/am;)Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    move-result-object v0

    iget-object v1, p0, Lbd/ak;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f030185

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
