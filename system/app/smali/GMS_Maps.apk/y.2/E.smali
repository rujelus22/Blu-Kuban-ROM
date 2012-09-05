.class public abstract Ly/E;
.super Ly/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/s;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected G()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected W()V
    .registers 1

    return-void
.end method

.method protected a(FF)V
    .registers 3

    return-void
.end method

.method protected a(FFF)V
    .registers 4

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bS;)V
    .registers 3

    const v0, 0x7f0f00f1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f00f0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 2

    return-void
.end method

.method protected a(Lt/L;)V
    .registers 2

    return-void
.end method

.method protected a(Z)V
    .registers 6

    iget-object v0, p0, Ly/E;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/E;->e:Lcom/google/android/maps/driveabout/app/aL;

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/aL;FZ)V

    return-void
.end method

.method protected ae()V
    .registers 1

    return-void
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 2

    return-void
.end method

.method protected v()V
    .registers 4

    iget-object v0, p0, Ly/E;->d:Lcom/google/android/maps/driveabout/app/cU;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected y()V
    .registers 3

    iget-object v0, p0, Ly/E;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(Ljava/lang/CharSequence;)V

    return-void
.end method
