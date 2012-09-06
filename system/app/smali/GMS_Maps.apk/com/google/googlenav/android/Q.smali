.class Lcom/google/googlenav/android/q;
.super LaT/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;LY/c;Lcom/google/googlenav/android/Y;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/googlenav/android/q;->a:Lcom/google/googlenav/android/i;

    invoke-direct {p0, p2, p3, p4}, LaT/i;-><init>(LY/c;Lcom/google/googlenav/android/Y;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/googlenav/android/q;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->c(Lcom/google/googlenav/android/i;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 497
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 498
    iget-object v0, p0, Lcom/google/googlenav/android/q;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->c(Lcom/google/googlenav/android/i;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMapViewMenuController()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    .line 500
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/android/q;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->c(Lcom/google/googlenav/android/i;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBaseAndroidView()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 501
    iget-object v0, p0, Lcom/google/googlenav/android/q;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->c(Lcom/google/googlenav/android/i;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBaseAndroidView()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->i()V

    .line 504
    :cond_38
    return-void
.end method
