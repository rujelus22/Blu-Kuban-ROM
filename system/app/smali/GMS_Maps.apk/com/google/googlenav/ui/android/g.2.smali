.class Lcom/google/googlenav/ui/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dg;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->b(Lcom/google/googlenav/ui/android/AndroidVectorView;)LaK/e;

    move-result-object v0

    invoke-virtual {v0}, LaK/e;->g()V

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/at;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->b(Lcom/google/googlenav/ui/android/AndroidVectorView;)LaK/e;

    move-result-object v0

    invoke-virtual {v0}, LaK/e;->h()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)V
    .registers 3

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-static {p2}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(LaJ/B;)V

    return-void
.end method
