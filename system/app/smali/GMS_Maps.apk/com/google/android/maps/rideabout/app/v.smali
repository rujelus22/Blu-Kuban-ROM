.class Lcom/google/android/maps/rideabout/app/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/s;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->d(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v1, "ShowTransitNavDisclaimer"

    invoke-static {v0, v1, p1}, LI/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->g(Lcom/google/android/maps/rideabout/app/s;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    const-string v1, "d"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/s;->n()V

    return-void
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/s;->a(Lcom/google/android/maps/rideabout/app/s;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/v;->a:Lcom/google/android/maps/rideabout/app/s;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/s;->n()V

    return-void
.end method
