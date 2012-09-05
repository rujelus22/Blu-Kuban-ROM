.class Lcom/google/googlenav/android/t;
.super Lbf/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;Lap/c;Lcom/google/googlenav/android/ac;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/l;

    invoke-direct {p0, p2, p3, p4}, Lbf/g;-><init>(Lap/c;Lcom/google/googlenav/android/ac;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->c(Lcom/google/googlenav/android/l;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->c(Lcom/google/googlenav/android/l;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->e()V

    iget-object v0, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->c(Lcom/google/googlenav/android/l;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->h()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->c(Lcom/google/googlenav/android/l;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->h()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->h()V

    :cond_2a
    return-void
.end method
