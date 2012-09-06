.class public LED;
.super Ljava/lang/Object;
.source "TrixGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static a:Ljava/lang/String;

.field private static a:[I

.field private static g:I


# instance fields
.field protected a:I

.field protected b:I

.field private final b:[I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    .line 18
    const-string v0, "GLConfigChooser"

    sput-object v0, LED;->a:Ljava/lang/String;

    .line 23
    sput v3, LED;->g:I

    .line 24
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

    sget v2, LED;->g:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, LED;->a:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, LED;->b:[I

    .line 33
    iput p1, p0, LED;->a:I

    .line 34
    iput p2, p0, LED;->b:I

    .line 35
    iput p3, p0, LED;->c:I

    .line 36
    iput p4, p0, LED;->d:I

    .line 37
    iput p5, p0, LED;->e:I

    .line 38
    iput p6, p0, LED;->f:I

    .line 39
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, LED;->b:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, LED;->b:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 89
    :cond_d
    return p5
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 146
    new-array v2, v9, [I

    .line 147
    invoke-static {}, LEE;->values()[LEE;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_a
    if-ge v0, v4, :cond_4f

    aget-object v5, v3, v0

    .line 148
    invoke-virtual {v5}, LEE;->name()Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-virtual {v5}, LEE;->a()I

    move-result v5

    invoke-interface {p1, p2, p3, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 150
    sget-object v5, LED;->a:Ljava/lang/String;

    const-string v7, "  %s: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 152
    :cond_37
    sget-object v5, LED;->a:Ljava/lang/String;

    const-string v7, "  %s: [FAILED]\n"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_46
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    const/16 v6, 0x3000

    if-eq v5, v6, :cond_34

    goto :goto_46

    .line 156
    :cond_4f
    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 60
    array-length v7, p3

    move v6, v5

    :goto_3
    if-ge v6, v7, :cond_5a

    aget-object v3, p3, v6

    .line 61
    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 62
    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 65
    iget v1, p0, LED;->e:I

    if-lt v8, v1, :cond_21

    iget v1, p0, LED;->f:I

    if-ge v0, v1, :cond_25

    .line 60
    :cond_21
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    .line 69
    :cond_25
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 70
    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 71
    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 72
    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 73
    iget v1, p0, LED;->a:I

    if-ne v8, v1, :cond_21

    iget v1, p0, LED;->b:I

    if-ne v9, v1, :cond_21

    iget v1, p0, LED;->c:I

    if-ne v10, v1, :cond_21

    iget v1, p0, LED;->d:I

    if-ne v0, v1, :cond_21

    .line 81
    :goto_59
    return-object v3

    :cond_5a
    const/4 v3, 0x0

    goto :goto_59
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 43
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 44
    sget-object v2, LED;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 46
    aget v4, v5, v4

    .line 47
    if-gtz v4, :cond_18

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_18
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 52
    sget-object v2, LED;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 54
    invoke-virtual {p0, p1, p2, v3}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 55
    invoke-direct {p0, p1, p2, v0}, LED;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 56
    return-object v0
.end method
