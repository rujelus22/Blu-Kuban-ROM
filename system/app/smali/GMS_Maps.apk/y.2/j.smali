.class public Ly/j;
.super Ly/s;


# static fields
.field public static final a:Ly/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/j;

    invoke-direct {v0}, Ly/j;-><init>()V

    sput-object v0, Ly/j;->a:Ly/j;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "LIST_VIEW"

    return-object v0
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bS;)V
    .registers 3

    invoke-super {p0, p1}, Ly/s;->a(Lcom/google/android/maps/driveabout/app/bS;)V

    const v0, 0x7f0f00f1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f0415

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    return-void
.end method

.method protected a(Lu/I;Lu/I;)V
    .registers 4

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/app/cU;->a(Lu/I;)V

    return-void
.end method

.method protected a(Lu/x;[Lu/x;)V
    .registers 5

    invoke-super {p0, p1, p2}, Ly/s;->a(Lu/x;[Lu/x;)V

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/j;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lu/x;)Z

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->z()V

    return-void
.end method

.method protected a(Z)V
    .registers 2

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->A()V

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/j;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lu/x;)Z

    iget-object v0, p0, Ly/j;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/j;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lu/I;)V

    :goto_28
    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(I)V

    return-void

    :cond_2f
    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->z()V

    goto :goto_28
.end method

.method protected s()V
    .registers 4

    iget-object v0, p0, Ly/j;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected v()V
    .registers 3

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/j;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/app/aL;)V

    return-void
.end method

.method protected y()V
    .registers 3

    iget-object v0, p0, Ly/j;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(Ljava/lang/CharSequence;)V

    return-void
.end method
