.class Lcom/google/android/maps/y;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/google/android/maps/y;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/maps/y;->a:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$800(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->i()V

    .line 878
    return-void
.end method
