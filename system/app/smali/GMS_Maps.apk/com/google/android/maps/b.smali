.class Lcom/google/android/maps/b;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/y;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/x;-><init>(ZZLcom/google/googlenav/y;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->e(Lcom/google/android/maps/MapsActivity;)LaP/h;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->e(Lcom/google/android/maps/MapsActivity;)LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->h()V

    invoke-virtual {p0}, Lcom/google/android/maps/b;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->e(Lcom/google/android/maps/MapsActivity;)LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->g()V

    :cond_20
    return-void
.end method
