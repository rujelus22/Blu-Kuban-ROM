.class Lcom/google/android/maps/h;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/google/android/maps/h;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/google/android/maps/h;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->intentProcessor:Lcom/google/googlenav/android/M;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$1100(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/android/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/M;->a()I

    .line 1765
    return-void
.end method
