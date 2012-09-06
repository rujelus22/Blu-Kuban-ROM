.class public abstract Lcom/google/android/maps/driveabout/vector/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/Y;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/aE;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    return-void
.end method

.method protected static a(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const v4, 0xff00

    .line 403
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v4

    .line 404
    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    .line 405
    and-int v2, p1, v4

    .line 406
    shl-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v4

    .line 408
    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 409
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/maps/driveabout/vector/cw;)Lcom/google/android/maps/driveabout/vector/cv;
    .registers 4
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/cx;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)V

    return-object v0
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cw;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/vector/cv;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/cw;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method protected varargs a(Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/cv;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 384
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/aE;

    .line 375
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 153
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 181
    return-void
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    return-void
.end method

.method public a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 218
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    return-void
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public b(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Z
    .registers 3
    .parameter

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 122
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aD;->v_()Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/cw;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public c(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/aE;

    if-eqz v0, :cond_9

    .line 391
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 393
    :cond_9
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public q_()Z
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public t_()V
    .registers 1

    .prologue
    .line 341
    return-void
.end method

.method public abstract u_()I
.end method

.method protected v_()Lcom/google/android/maps/driveabout/vector/cw;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cw;->i:Lcom/google/android/maps/driveabout/vector/cw;

    return-object v0
.end method

.method public z()Lcom/google/android/maps/driveabout/vector/b;
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method
