.class public Lcom/google/android/maps/driveabout/vector/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/Y;


# static fields
.field static final a:Lcom/google/android/maps/driveabout/vector/aW;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aW;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aW;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aW;->a:Lcom/google/android/maps/driveabout/vector/aW;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 24
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 25
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->a()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dg;->i()Z

    move-result v2

    sput-boolean v2, Lcom/google/android/maps/driveabout/vector/aW;->b:Z

    .line 27
    sget-boolean v2, Lcom/google/android/maps/driveabout/vector/aW;->b:Z

    if-eqz v2, :cond_27

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dg;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 29
    const/high16 v0, 0x40a0

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->j:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 32
    :cond_27
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->n()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->p()V

    .line 60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/aW;->b:Z

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 43
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 45
    :cond_c
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    return-void
.end method
