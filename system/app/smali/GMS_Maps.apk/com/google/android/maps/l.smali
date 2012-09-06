.class Lcom/google/android/maps/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/k;


# direct methods
.method constructor <init>(Lcom/google/android/maps/k;)V
    .registers 2
    .parameter

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/k;

    iget-object v0, v0, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$800(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    .line 1963
    if-eqz v0, :cond_33

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1964
    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v1

    .line 1966
    iget-object v2, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/k;

    iget-object v2, v2, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;
    invoke-static {v2}, Lcom/google/android/maps/MapsActivity;->access$500(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/av;->b()V

    .line 1971
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->e()Z

    move-result v2

    if-nez v2, :cond_34

    .line 1974
    invoke-virtual {v0}, LaM/am;->ab()LaM/a;

    move-result-object v2

    invoke-virtual {v2}, LaM/a;->a()V

    .line 1975
    invoke-virtual {v0, v1}, LaM/am;->g(LaM/i;)V

    .line 1982
    :cond_33
    :goto_33
    return-void

    .line 1979
    :cond_34
    invoke-virtual {v1}, LaM/X;->bG()V

    goto :goto_33
.end method
