.class Lcom/google/googlenav/ui/android/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dV;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ag()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 254
    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-static {p2}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->b(Lat/B;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(ILZ/a;)Z

    move-result v0

    .line 267
    :goto_1f
    return v0

    .line 260
    :cond_20
    sget-object v1, Lak/h;->a:Lak/h;

    invoke-virtual {v1}, Lak/h;->e()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 261
    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->n()LaM/az;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_41

    invoke-virtual {v0}, LaM/az;->a()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 263
    invoke-static {p2}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/az;->d(Lat/B;)Z

    move-result v0

    goto :goto_1f

    .line 267
    :cond_41
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/android/g;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ag()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 275
    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-static {p2}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->b(Lat/B;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(ILZ/a;)Z

    move-result v0

    .line 279
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
