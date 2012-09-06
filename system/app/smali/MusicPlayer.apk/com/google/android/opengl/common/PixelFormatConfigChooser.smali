.class public Lcom/google/android/opengl/common/PixelFormatConfigChooser;
.super Ljava/lang/Object;
.source "PixelFormatConfigChooser.java"

# interfaces
.implements Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private final EGL_OPENGL_ES2_BIT:I

.field private final EGL_OPENGL_ES_BIT:I

.field private mDepthSize:I

.field private mPixelFormat:I

.field private mRenderableType:I

.field private mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;-><init>(IIIZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 8
    .parameter "format"
    .parameter "depthSize"
    .parameter "stencilSize"
    .parameter "useOpenGLES2"

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mValue:[I

    .line 21
    iput v1, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->EGL_OPENGL_ES_BIT:I

    .line 22
    iput v0, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 41
    iput p1, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mPixelFormat:I

    .line 42
    iput p2, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mDepthSize:I

    .line 43
    iput p3, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mStencilSize:I

    .line 44
    if-eqz p4, :cond_18

    :goto_15
    iput v0, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mRenderableType:I

    .line 45
    return-void

    :cond_18
    move v0, v1

    .line 44
    goto :goto_15
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 169
    iget-object v0, p0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 171
    .end local p5
    :cond_d
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 31
    .parameter "egl"
    .parameter "display"

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mPixelFormat:I

    packed-switch v2, :pswitch_data_180

    .line 60
    :pswitch_7
    const/16 v25, 0x8

    .line 61
    .local v25, redSize:I
    const/16 v21, 0x8

    .line 62
    .local v21, greenSize:I
    const/16 v18, 0x8

    .line 63
    .local v18, blueSize:I
    const/16 v15, 0x8

    .line 105
    .local v15, alphaSize:I
    :goto_f
    const/16 v2, 0xd

    new-array v4, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3024

    aput v3, v4, v2

    const/4 v2, 0x1

    aput v25, v4, v2

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v4, v2

    const/4 v2, 0x3

    aput v21, v4, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v4, v2

    const/4 v2, 0x5

    aput v18, v4, v2

    const/4 v2, 0x6

    const/16 v3, 0x3025

    aput v3, v4, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mDepthSize:I

    aput v3, v4, v2

    const/16 v2, 0x8

    const/16 v3, 0x3026

    aput v3, v4, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mStencilSize:I

    aput v3, v4, v2

    const/16 v2, 0xa

    const/16 v3, 0x3040

    aput v3, v4, v2

    const/16 v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mRenderableType:I

    aput v3, v4, v2

    const/16 v2, 0xc

    const/16 v3, 0x3038

    aput v3, v4, v2

    .line 114
    .local v4, configSpec:[I
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 115
    .local v7, num_config:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "eglChooseConfig failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v4           #configSpec:[I
    .end local v7           #num_config:[I
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_70
    const/16 v25, 0x8

    .line 67
    .restart local v25       #redSize:I
    const/16 v21, 0x8

    .line 68
    .restart local v21       #greenSize:I
    const/16 v18, 0x8

    .line 69
    .restart local v18       #blueSize:I
    const/16 v15, 0x8

    .line 70
    .restart local v15       #alphaSize:I
    goto :goto_f

    .line 73
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_79
    const/16 v25, 0x8

    .line 74
    .restart local v25       #redSize:I
    const/16 v21, 0x8

    .line 75
    .restart local v21       #greenSize:I
    const/16 v18, 0x8

    .line 76
    .restart local v18       #blueSize:I
    const/4 v15, 0x0

    .line 77
    .restart local v15       #alphaSize:I
    goto :goto_f

    .line 80
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_81
    const/16 v25, 0x5

    .line 81
    .restart local v25       #redSize:I
    const/16 v21, 0x6

    .line 82
    .restart local v21       #greenSize:I
    const/16 v18, 0x5

    .line 83
    .restart local v18       #blueSize:I
    const/4 v15, 0x0

    .line 84
    .restart local v15       #alphaSize:I
    goto :goto_f

    .line 86
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_89
    const/16 v25, 0x5

    .line 87
    .restart local v25       #redSize:I
    const/16 v21, 0x5

    .line 88
    .restart local v21       #greenSize:I
    const/16 v18, 0x5

    .line 89
    .restart local v18       #blueSize:I
    const/4 v15, 0x1

    .line 90
    .restart local v15       #alphaSize:I
    goto/16 :goto_f

    .line 92
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_92
    const/16 v25, 0x4

    .line 93
    .restart local v25       #redSize:I
    const/16 v21, 0x4

    .line 94
    .restart local v21       #greenSize:I
    const/16 v18, 0x4

    .line 95
    .restart local v18       #blueSize:I
    const/4 v15, 0x4

    .line 96
    .restart local v15       #alphaSize:I
    goto/16 :goto_f

    .line 98
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_9b
    const/16 v25, 0x3

    .line 99
    .restart local v25       #redSize:I
    const/16 v21, 0x3

    .line 100
    .restart local v21       #greenSize:I
    const/16 v18, 0x2

    .line 101
    .restart local v18       #blueSize:I
    const/4 v15, 0x0

    .restart local v15       #alphaSize:I
    goto/16 :goto_f

    .line 119
    .restart local v4       #configSpec:[I
    .restart local v7       #num_config:[I
    :cond_a4
    const/4 v2, 0x0

    aget v6, v7, v2

    .line 121
    .local v6, numConfigs:I
    if-gtz v6, :cond_b1

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No configs match configSpec"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_b1
    new-array v5, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v5, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 127
    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "eglChooseConfig#2 failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_c5
    move-object/from16 v16, v5

    .local v16, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_ce
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_177

    aget-object v11, v16, v22

    .line 132
    .local v11, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v12, 0x3025

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v19

    .line 134
    .local v19, d:I
    const/16 v12, 0x3026

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v26

    .line 136
    .local v26, s:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mDepthSize:I

    move/from16 v0, v19

    if-lt v0, v2, :cond_137

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mStencilSize:I

    move/from16 v0, v26

    if-lt v0, v2, :cond_137

    .line 137
    const/16 v12, 0x3021

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 139
    .local v14, a:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mPixelFormat:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_116

    if-eqz v14, :cond_133

    :cond_116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mPixelFormat:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_120

    const/4 v2, 0x1

    if-ge v14, v2, :cond_133

    :cond_120
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mPixelFormat:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_12a

    const/4 v2, 0x4

    if-ge v14, v2, :cond_133

    :cond_12a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->mPixelFormat:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_133

    if-ne v14, v15, :cond_13a

    :cond_133
    const/16 v27, 0x1

    .line 145
    .local v27, validAlpha:Z
    :goto_135
    if-nez v27, :cond_13d

    .line 131
    .end local v14           #a:I
    .end local v27           #validAlpha:Z
    :cond_137
    add-int/lit8 v22, v22, 0x1

    goto :goto_ce

    .line 139
    .restart local v14       #a:I
    :cond_13a
    const/16 v27, 0x0

    goto :goto_135

    .line 148
    .restart local v27       #validAlpha:Z
    :cond_13d
    const/16 v12, 0x3024

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v24

    .line 150
    .local v24, r:I
    const/16 v12, 0x3023

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v20

    .line 152
    .local v20, g:I
    const/16 v12, 0x3022

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 154
    .local v17, b:I
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_137

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_137

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_137

    .line 156
    return-object v11

    .line 161
    .end local v11           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14           #a:I
    .end local v17           #b:I
    .end local v19           #d:I
    .end local v20           #g:I
    .end local v24           #r:I
    .end local v26           #s:I
    .end local v27           #validAlpha:Z
    :cond_177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No config chosen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    nop

    :pswitch_data_180
    .packed-switch -0x1
        :pswitch_81
        :pswitch_7
        :pswitch_70
        :pswitch_79
        :pswitch_79
        :pswitch_81
        :pswitch_7
        :pswitch_89
        :pswitch_92
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9b
    .end packed-switch
.end method
