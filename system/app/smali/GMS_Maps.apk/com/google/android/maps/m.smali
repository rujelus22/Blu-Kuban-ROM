.class Lcom/google/android/maps/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/C;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/m;->b:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/m;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/m;->b:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/u;->b:Lcom/google/android/maps/u;

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/u;)Lcom/google/android/maps/u;

    iget-object v0, p0, Lcom/google/android/maps/m;->b:Lcom/google/android/maps/MapsActivity;

    iget-object v1, p0, Lcom/google/android/maps/m;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/m;->b:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->c(Lcom/google/android/maps/MapsActivity;)V

    return-void
.end method
