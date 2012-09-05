.class final Lcom/sdgtl/mediahub/spr/customview/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static g:I

.field private static h:[I


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x4

    sput v3, Lcom/sdgtl/mediahub/spr/customview/b;->g:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sdgtl/mediahub/spr/customview/b;->g:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/sdgtl/mediahub/spr/customview/b;->h:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/b;->i:[I

    iput p1, p0, Lcom/sdgtl/mediahub/spr/customview/b;->a:I

    iput p2, p0, Lcom/sdgtl/mediahub/spr/customview/b;->b:I

    iput p3, p0, Lcom/sdgtl/mediahub/spr/customview/b;->c:I

    iput p4, p0, Lcom/sdgtl/mediahub/spr/customview/b;->d:I

    iput p5, p0, Lcom/sdgtl/mediahub/spr/customview/b;->e:I

    iput p6, p0, Lcom/sdgtl/mediahub/spr/customview/b;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/b;->i:[I

    invoke-interface {p1, p2, p3, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/b;->i:[I

    aget v0, v1, v0

    :cond_d
    return v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 12

    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_7

    const/4 v0, 0x0

    :cond_6
    return-object v0

    :cond_7
    aget-object v0, p3, v1

    const/16 v3, 0x3025

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/sdgtl/mediahub/spr/customview/b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3026

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/sdgtl/mediahub/spr/customview/b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    iget v5, p0, Lcom/sdgtl/mediahub/spr/customview/b;->e:I

    if-lt v3, v5, :cond_45

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/b;->f:I

    if-lt v4, v3, :cond_45

    const/16 v3, 0x3024

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/sdgtl/mediahub/spr/customview/b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3023

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/sdgtl/mediahub/spr/customview/b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3022

    invoke-direct {p0, p1, p2, v0, v5}, Lcom/sdgtl/mediahub/spr/customview/b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3021

    invoke-direct {p0, p1, p2, v0, v6}, Lcom/sdgtl/mediahub/spr/customview/b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    iget v7, p0, Lcom/sdgtl/mediahub/spr/customview/b;->a:I

    if-ne v3, v7, :cond_45

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/b;->b:I

    if-ne v4, v3, :cond_45

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/b;->c:I

    if-ne v5, v3, :cond_45

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/b;->d:I

    if-eq v6, v3, :cond_6

    :cond_45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method


# virtual methods
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 9

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    sget-object v2, Lcom/sdgtl/mediahub/spr/customview/b;->h:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v4, v5, v4

    if-gtz v4, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v2, Lcom/sdgtl/mediahub/spr/customview/b;->h:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v3}, Lcom/sdgtl/mediahub/spr/customview/b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
