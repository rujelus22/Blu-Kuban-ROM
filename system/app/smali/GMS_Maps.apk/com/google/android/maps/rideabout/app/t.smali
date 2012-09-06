.class Lcom/google/android/maps/rideabout/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/q;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/app/q;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Ljava/lang/String;)V

    .line 291
    if-eqz p1, :cond_10

    .line 292
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Ljava/lang/String;)V

    .line 295
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->d(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v1, "ShowTransitNavDisclaimer"

    invoke-static {v0, v1, p1}, LF/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 296
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->g(Lcom/google/android/maps/rideabout/app/q;)V

    .line 297
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    const-string v1, "d"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/q;->n()V

    .line 305
    return-void
.end method

.method public c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Lcom/google/android/maps/rideabout/app/q;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/t;->a:Lcom/google/android/maps/rideabout/app/q;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/q;->n()V

    .line 313
    return-void
.end method
