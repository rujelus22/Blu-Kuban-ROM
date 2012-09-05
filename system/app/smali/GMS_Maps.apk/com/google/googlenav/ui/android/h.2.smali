.class Lcom/google/googlenav/ui/android/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/df;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/h;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/android/h;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    sget-object v1, LaB/e;->a:LaB/e;

    invoke-virtual {v1}, LaB/e;->e()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v1}, LaY/Y;->l()LaY/ae;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, LaY/ae;->a()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p2}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v2

    invoke-virtual {v1, v2}, LaY/ae;->d(LaJ/B;)Z

    :cond_27
    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->am()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-static {p2}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->b(LaJ/B;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/D;->a(ILaq/b;)Z

    move-result v0

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/android/h;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->am()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-static {p2}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->b(LaJ/B;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/D;->a(ILaq/b;)Z

    move-result v0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
