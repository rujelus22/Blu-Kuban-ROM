.class public Lcom/google/android/maps/driveabout/vector/cN;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lt/L;

.field private static final b:Lt/L;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cN;->a:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cN;->b:Lt/L;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 6

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    neg-float v0, v0

    invoke-interface {p0, v0, v2, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    const/high16 v1, 0x42b4

    sub-float/2addr v0, v1

    invoke-interface {p0, v0, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V
    .registers 8

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cN;->a:Lt/L;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cN;->b:Lt/L;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;)V

    invoke-static {p2, v0, v1}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {v1, v1}, Lt/L;->i(Lt/L;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->p()F

    move-result v0

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1}, Lt/L;->h()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-interface {p0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    mul-float/2addr v0, p3

    invoke-interface {p0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    return-void
.end method
