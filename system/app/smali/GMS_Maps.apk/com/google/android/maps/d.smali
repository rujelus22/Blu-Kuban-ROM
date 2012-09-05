.class Lcom/google/android/maps/d;
.super Lbf/g;


# instance fields
.field final synthetic a:Lcom/google/android/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/maps/c;Lap/c;Lcom/google/googlenav/android/ac;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/d;->a:Lcom/google/android/maps/c;

    invoke-direct {p0, p2, p3, p4}, Lbf/g;-><init>(Lap/c;Lcom/google/googlenav/android/ac;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/d;->a:Lcom/google/android/maps/c;

    iget-object v0, v0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->f(Lcom/google/android/maps/MapsActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/d;->a:Lcom/google/android/maps/c;

    iget-object v0, v0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/d;->a:Lcom/google/android/maps/c;

    iget-object v0, v0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Z)Z

    :cond_19
    return-void
.end method
