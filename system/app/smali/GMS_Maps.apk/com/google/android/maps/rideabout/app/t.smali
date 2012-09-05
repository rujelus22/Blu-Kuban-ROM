.class Lcom/google/android/maps/rideabout/app/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/s;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    check-cast p2, Lcom/google/android/maps/rideabout/app/k;

    invoke-virtual {p2}, Lcom/google/android/maps/rideabout/app/k;->a()Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->b()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v1}, Lcom/google/android/maps/rideabout/app/s;->b(Lcom/google/android/maps/rideabout/app/s;)Lau/v;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v2}, Lcom/google/android/maps/rideabout/app/s;->c(Lcom/google/android/maps/rideabout/app/s;)Lbc/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lau/v;Lbc/d;)V

    :cond_32
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->f()Lcom/google/android/maps/rideabout/app/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/q;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->d(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->e(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->ad()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/s;->g()V

    :cond_69
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;

    return-void
.end method
