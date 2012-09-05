.class public abstract Lcom/google/android/maps/driveabout/vector/aE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aa;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/aF;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 7

    const v4, 0xff00

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v4

    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    and-int v2, p1, v4

    shl-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v4

    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/maps/driveabout/vector/cc;)Lcom/google/android/maps/driveabout/vector/cb;
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/cb;-><init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;)V

    return-object v0
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cc;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/vector/cb;
    .registers 5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cb;-><init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method protected varargs a(Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)Lcom/google/android/maps/driveabout/vector/cb;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cb;-><init>(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aE;->a:Lcom/google/android/maps/driveabout/vector/aF;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V
    .registers 3

    return-void
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aE;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public b(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Z
    .registers 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aE;->t_()Lcom/google/android/maps/driveabout/vector/cc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/cc;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public c(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public d(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method protected g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aE;->a:Lcom/google/android/maps/driveabout/vector/aF;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aE;->a:Lcom/google/android/maps/driveabout/vector/aF;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/vector/aF;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_9
    return-void
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public n_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r_()V
    .registers 1

    return-void
.end method

.method public abstract s_()I
.end method

.method protected t_()Lcom/google/android/maps/driveabout/vector/cc;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cc;->i:Lcom/google/android/maps/driveabout/vector/cc;

    return-object v0
.end method

.method public x()Lcom/google/android/maps/driveabout/vector/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
