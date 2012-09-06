.class Lcom/google/googlenav/ui/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dW;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/googlenav/ui/android/f;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lau/e;

    move-result-object v0

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Lau/e;->e(II)V

    .line 230
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    .line 231
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lau/e;

    move-result-object v0

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lau/e;->f(II)V

    .line 238
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 234
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-static {p2}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lat/B;)V

    .line 242
    return-void
.end method
