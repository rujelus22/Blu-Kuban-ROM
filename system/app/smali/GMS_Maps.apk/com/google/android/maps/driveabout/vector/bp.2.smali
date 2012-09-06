.class Lcom/google/android/maps/driveabout/vector/bP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cx;


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Ljava/util/Set;

    .line 250
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cx;)I
    .registers 3
    .parameter

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-interface {p2}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->b()Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->e:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v0, v1, :cond_f

    .line 275
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->w()V

    .line 277
    :cond_f
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;Ln/Q;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x1e01

    .line 259
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 260
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cv;->b()Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    .line 261
    sget-object v2, Lcom/google/android/maps/driveabout/vector/cw;->e:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v1, v2, :cond_31

    .line 262
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->v()V

    .line 263
    invoke-interface {v0, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 264
    const/16 v1, 0x207

    const/16 v2, 0xff

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 265
    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 266
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 267
    const v1, -0x9f9fa0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 269
    :cond_31
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 244
    check-cast p1, Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bP;->a(Lcom/google/android/maps/driveabout/vector/cx;)I

    move-result v0

    return v0
.end method
