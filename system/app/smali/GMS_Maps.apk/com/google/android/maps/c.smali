.class Lcom/google/android/maps/c;
.super Lap/d;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Lap/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2}, Lap/d;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/maps/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v3}, Lcom/google/android/maps/MapsActivity;->i()Lcom/google/googlenav/android/ac;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/maps/d;-><init>(Lcom/google/android/maps/c;Lap/c;Lcom/google/googlenav/android/ac;Z)V

    invoke-virtual {v1}, Lcom/google/android/maps/d;->g()V

    return-void
.end method
