.class Lcom/google/android/maps/driveabout/vector/bA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cd;


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lt/s;->a:Lcom/google/common/base/o;

    invoke-static {p1, v0}, LK/bF;->a(Ljava/lang/Iterable;Lcom/google/common/base/o;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, LK/bu;->a(Ljava/lang/Iterable;)LK/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bA;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cd;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bA;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    invoke-interface {p2}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->b()Lcom/google/android/maps/driveabout/vector/cc;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->e:Lcom/google/android/maps/driveabout/vector/cc;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->w()V

    :cond_f
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;)V
    .registers 10

    const/16 v4, 0x80

    const/16 v3, 0x1e01

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cb;->b()Lcom/google/android/maps/driveabout/vector/cc;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cc;->e:Lcom/google/android/maps/driveabout/vector/cc;

    if-ne v1, v2, :cond_31

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->v()V

    invoke-interface {v0, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    const/16 v1, 0x207

    const/16 v2, 0xff

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const v1, -0x9f9fa0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    :cond_31
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/maps/driveabout/vector/cd;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bA;->a(Lcom/google/android/maps/driveabout/vector/cd;)I

    move-result v0

    return v0
.end method
