.class Lcom/google/android/maps/g;
.super LaT/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/f;


# direct methods
.method constructor <init>(Lcom/google/android/maps/f;LY/c;Lcom/google/googlenav/android/Y;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/google/android/maps/g;->a:Lcom/google/android/maps/f;

    invoke-direct {p0, p2, p3, p4}, LaT/i;-><init>(LY/c;Lcom/google/googlenav/android/Y;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 3

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/google/android/maps/g;->a:Lcom/google/android/maps/f;

    iget-object v0, v0, Lcom/google/android/maps/f;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$200(Lcom/google/android/maps/MapsActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1429
    iget-object v0, p0, Lcom/google/android/maps/g;->a:Lcom/google/android/maps/f;

    iget-object v0, v0, Lcom/google/android/maps/f;->a:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->stopPowerConsumers()V
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$100(Lcom/google/android/maps/MapsActivity;)V

    .line 1430
    iget-object v0, p0, Lcom/google/android/maps/g;->a:Lcom/google/android/maps/f;

    iget-object v0, v0, Lcom/google/android/maps/f;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z
    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->access$202(Lcom/google/android/maps/MapsActivity;Z)Z

    .line 1432
    :cond_19
    return-void
.end method
