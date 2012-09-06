.class public Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;
.super Ljava/lang/Object;
.source "TrixGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-string v0, "android_trix"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a:J

    .line 32
    return-void
.end method

.method private static native create()J
.end method

.method private static native onDrawFrame(J)V
.end method

.method private static native onResized(JII)V
.end method

.method private static native onTouchEvent(JIIDDD)V
.end method


# virtual methods
.method public a(LEF;IDDD)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a:J

    invoke-virtual {p1}, LEF;->a()I

    move-result v2

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->onTouchEvent(JIIDDD)V

    .line 57
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->onDrawFrame(J)V

    .line 42
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a:J

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->onResized(JII)V

    .line 47
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a:J

    .line 52
    return-void
.end method
