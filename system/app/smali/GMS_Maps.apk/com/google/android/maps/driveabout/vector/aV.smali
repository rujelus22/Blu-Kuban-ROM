.class public Lcom/google/android/maps/driveabout/vector/aV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aa;


# static fields
.field static final a:Lcom/google/android/maps/driveabout/vector/aV;

.field private static b:Lcom/google/android/maps/driveabout/vector/cU;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aV;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aV;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aV;->a:Lcom/google/android/maps/driveabout/vector/aV;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    const/high16 v5, 0x3f80

    const v4, 0x3e99999a

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a()Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->l()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v0, v2, :cond_2c

    invoke-interface {v1, v3, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    :goto_21
    const/high16 v0, 0x40a0

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->f:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    :goto_2b
    return-void

    :cond_2c
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->l:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v0, v2, :cond_36

    invoke-interface {v1, v5, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_21

    :cond_36
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cU;

    if-eq v0, v2, :cond_42

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->c:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v0, v2, :cond_46

    :cond_42
    invoke-interface {v1, v3, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_21

    :cond_46
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/cU;

    goto :goto_2b
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 6

    const/high16 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->y()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->n()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->p()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->z()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/cU;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_4
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method
