.class Lcom/google/googlenav/ui/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aF;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/k;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 8

    const/4 v3, 0x0

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/k;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->d(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/k;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->d(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    const/16 v0, 0x62

    const-string v1, "i"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    return-void
.end method
