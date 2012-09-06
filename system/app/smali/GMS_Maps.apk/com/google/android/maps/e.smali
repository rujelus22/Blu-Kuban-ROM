.class Lcom/google/android/maps/e;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/y;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/google/android/maps/e;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/x;-><init>(ZZLcom/google/googlenav/y;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/maps/e;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->orientationProvider:LaB/h;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$1000(Lcom/google/android/maps/MapsActivity;)LaB/h;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1238
    iget-object v0, p0, Lcom/google/android/maps/e;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->orientationProvider:LaB/h;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$1000(Lcom/google/android/maps/MapsActivity;)LaB/h;

    move-result-object v0

    invoke-virtual {v0}, LaB/h;->h()V

    .line 1244
    invoke-virtual {p0}, Lcom/google/android/maps/e;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1245
    iget-object v0, p0, Lcom/google/android/maps/e;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->orientationProvider:LaB/h;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$1000(Lcom/google/android/maps/MapsActivity;)LaB/h;

    move-result-object v0

    invoke-virtual {v0}, LaB/h;->g()V

    .line 1248
    :cond_20
    return-void
.end method
