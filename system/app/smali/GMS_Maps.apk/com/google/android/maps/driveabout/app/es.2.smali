.class Lcom/google/android/maps/driveabout/app/es;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dg;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/es;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/es;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ly/s;->b(FF)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/es;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ly/s;->b(FFF)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/es;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Ly/s;->b(Lt/L;)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)V
    .registers 3

    return-void
.end method
