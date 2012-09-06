.class public Lcom/google/android/maps/driveabout/vector/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bl;


# instance fields
.field private a:[I

.field private final b:[Lcom/google/android/maps/driveabout/vector/bf;


# direct methods
.method public constructor <init>([Lcom/google/android/maps/driveabout/vector/bf;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->a:[I

    .line 47
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/be;->b:[Lcom/google/android/maps/driveabout/vector/bf;

    .line 48
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
    .line 104
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->a:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->a:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 107
    :cond_d
    return p5
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lcom/google/android/maps/driveabout/vector/bf;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 119
    array-length v7, p3

    move v6, v5

    :goto_3
    if-ge v6, v7, :cond_66

    aget-object v3, p3, v6

    .line 120
    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/be;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 121
    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/be;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 122
    invoke-static {p4}, Lcom/google/android/maps/driveabout/vector/bf;->a(Lcom/google/android/maps/driveabout/vector/bf;)I

    move-result v1

    if-lt v8, v1, :cond_62

    invoke-static {p4}, Lcom/google/android/maps/driveabout/vector/bf;->b(Lcom/google/android/maps/driveabout/vector/bf;)I

    move-result v1

    if-lt v0, v1, :cond_62

    .line 123
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/be;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 124
    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/be;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 125
    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/be;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 126
    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/be;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 127
    invoke-static {p4}, Lcom/google/android/maps/driveabout/vector/bf;->c(Lcom/google/android/maps/driveabout/vector/bf;)I

    move-result v1

    if-ne v8, v1, :cond_62

    invoke-static {p4}, Lcom/google/android/maps/driveabout/vector/bf;->d(Lcom/google/android/maps/driveabout/vector/bf;)I

    move-result v1

    if-ne v9, v1, :cond_62

    invoke-static {p4}, Lcom/google/android/maps/driveabout/vector/bf;->e(Lcom/google/android/maps/driveabout/vector/bf;)I

    move-result v1

    if-ne v10, v1, :cond_62

    invoke-static {p4}, Lcom/google/android/maps/driveabout/vector/bf;->f(Lcom/google/android/maps/driveabout/vector/bf;)I

    move-result v1

    if-ne v0, v1, :cond_62

    .line 134
    :goto_61
    return-object v3

    .line 119
    :cond_62
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    .line 134
    :cond_66
    const/4 v3, 0x0

    goto :goto_61
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 60
    new-array v5, v6, [I

    .line 65
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bf;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/be;->b:[Lcom/google/android/maps/driveabout/vector/bf;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bf;-><init>(Lcom/google/android/maps/driveabout/vector/bf;)V

    .line 66
    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/bf;->a(Z)V

    .line 67
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bf;->a()[I

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    .line 68
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_25
    aget v0, v5, v4

    if-lez v0, :cond_47

    move v0, v6

    :goto_2a
    invoke-static {v0}, Lcom/google/googlenav/android/E;->a(Z)V

    move v12, v4

    move-object v6, v3

    .line 75
    :goto_2f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->b:[Lcom/google/android/maps/driveabout/vector/bf;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bf;->a()[I

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    .line 77
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    move v0, v4

    .line 71
    goto :goto_2a

    .line 81
    :cond_49
    aget v10, v5, v4

    .line 83
    if-lez v10, :cond_7d

    .line 85
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v6, p1

    move-object v7, p2

    move-object v8, v2

    move-object v11, v5

    .line 86
    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_61

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/be;->b:[Lcom/google/android/maps/driveabout/vector/bf;

    aget-object v0, v0, v12

    invoke-direct {p0, p1, p2, v9, v0}, Lcom/google/android/maps/driveabout/vector/be;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lcom/google/android/maps/driveabout/vector/bf;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 92
    :goto_69
    if-nez v1, :cond_72

    add-int/lit8 v0, v12, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/be;->b:[Lcom/google/android/maps/driveabout/vector/bf;

    array-length v2, v2

    if-lt v12, v2, :cond_7f

    .line 94
    :cond_72
    if-nez v1, :cond_7c

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_7c
    return-object v1

    :cond_7d
    move-object v1, v6

    goto :goto_69

    :cond_7f
    move v12, v0

    move-object v6, v1

    goto :goto_2f
.end method
