.class Lcom/google/android/maps/rideabout/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/q;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/q;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Z)Z

    .line 204
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    check-cast p2, Lcom/google/android/maps/rideabout/app/i;

    invoke-virtual {p2}, Lcom/google/android/maps/rideabout/app/i;->a()Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;

    .line 205
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->b()Z

    move-result v0

    if-nez v0, :cond_32

    .line 206
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v1}, Lcom/google/android/maps/rideabout/app/q;->b(Lcom/google/android/maps/rideabout/app/q;)Lad/w;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v2}, Lcom/google/android/maps/rideabout/app/q;->c(Lcom/google/android/maps/rideabout/app/q;)LaP/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lad/w;LaP/d;)V

    .line 208
    :cond_32
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->f()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Lcom/google/android/maps/rideabout/app/o;)Lcom/google/android/maps/rideabout/app/o;

    .line 209
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->d(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 210
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->e(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ag()Z

    move-result v0

    if-nez v0, :cond_69

    .line 211
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/q;->g()V

    .line 213
    :cond_69
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;

    .line 218
    return-void
.end method
