.class public LB/b;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:LB/a;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LB/b;->a:Ljava/util/Vector;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method


# virtual methods
.method public a(LB/a;)V
    .registers 3

    invoke-virtual {p1, p0}, LB/a;->a(LB/b;)V

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, LB/b;->h()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0, p1}, LB/a;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V
    .registers 5

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0, p1, p2}, LB/a;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 7

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0}, LB/a;->e()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, p1, p2, p3}, LB/a;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_f

    :cond_25
    invoke-direct {p0, p1, p2}, LB/b;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    :try_start_28
    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0}, LB/a;->e()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0, p1, p2, p3}, LB/a;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_44

    goto :goto_2e

    :catchall_44
    move-exception v0

    invoke-direct {p0, p1}, LB/b;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    throw v0

    :cond_49
    invoke-direct {p0, p1}, LB/b;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_8
.end method

.method public a(ZZ)V
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, LB/b;->c:Z

    if-eq p1, v2, :cond_9

    iput-boolean p1, p0, LB/b;->c:Z

    move v0, v1

    :cond_9
    iget-boolean v2, p0, LB/b;->d:Z

    if-eq p2, v2, :cond_15

    iput-boolean p2, p0, LB/b;->d:Z

    :goto_f
    if-eqz v1, :cond_14

    invoke-virtual {p0}, LB/b;->h()V

    :cond_14
    return-void

    :cond_15
    move v1, v0

    goto :goto_f
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0, p1, p2, p3}, LB/a;->a(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v0, p0, LB/b;->b:LB/a;

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0, p1, p2, p3, p4}, LB/a;->a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0, p1}, LB/a;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    goto :goto_6

    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/aE;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LB/b;->c:Z

    return v0
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, LB/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/a;

    invoke-virtual {v0}, LB/a;->i()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public r_()V
    .registers 2

    iget-object v0, p0, LB/b;->b:LB/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, LB/b;->b:LB/a;

    invoke-virtual {v0}, LB/a;->r_()V

    const/4 v0, 0x0

    iput-object v0, p0, LB/b;->b:LB/a;

    :cond_c
    return-void
.end method

.method public s_()I
    .registers 2

    const v0, 0xdbba0

    return v0
.end method
