.class public Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;
.super Landroid/opengl/GLSurfaceView;
.source "TrixGLGridView.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private a:I

.field private a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "TrixGLGridView"

    sput-object v0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a()V

    .line 55
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 59
    new-instance v0, LEx;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, LEx;-><init>(LEw;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 62
    new-instance v0, LED;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, LED;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 65
    new-instance v0, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    invoke-direct {v0}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 67
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 135
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_21

    .line 136
    sget-object v1, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_21
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double v7, v0, v2

    move v9, v10

    .line 72
    :goto_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v9, v0, :cond_91

    .line 73
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 74
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 75
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 78
    packed-switch v0, :pswitch_data_94

    .line 72
    :cond_27
    :goto_27
    :pswitch_27
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_e

    .line 80
    :pswitch_2b
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    .line 81
    iget v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    if-ne v2, v0, :cond_27

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    sget-object v1, LEF;->a:LEF;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a(LEF;IDDD)V

    goto :goto_27

    .line 89
    :pswitch_3f
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    .line 90
    iget v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    if-ne v2, v0, :cond_27

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    sget-object v1, LEF;->c:LEF;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a(LEF;IDDD)V

    goto :goto_27

    .line 98
    :pswitch_53
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    .line 99
    iget v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:I

    if-ne v2, v0, :cond_27

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    sget-object v1, LEF;->b:LEF;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a(LEF;IDDD)V

    goto :goto_27

    .line 107
    :pswitch_67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne v9, v0, :cond_27

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    sget-object v1, LEF;->a:LEF;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a(LEF;IDDD)V

    goto :goto_27

    .line 115
    :pswitch_77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne v9, v0, :cond_27

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    sget-object v1, LEF;->c:LEF;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a(LEF;IDDD)V

    goto :goto_27

    .line 123
    :pswitch_87
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/TrixGLGridView;->a:Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;

    sget-object v1, LEF;->c:LEF;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/docs/editors/trix/gl/TrixGLRenderer;->a(LEF;IDDD)V

    goto :goto_27

    .line 130
    :cond_91
    const/4 v0, 0x1

    return v0

    .line 78
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_3f
        :pswitch_53
        :pswitch_87
        :pswitch_27
        :pswitch_67
        :pswitch_77
    .end packed-switch
.end method
