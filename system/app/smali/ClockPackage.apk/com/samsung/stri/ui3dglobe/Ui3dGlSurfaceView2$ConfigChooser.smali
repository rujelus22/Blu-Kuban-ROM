.class Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;
.super Ljava/lang/Object;
.source "Ui3dGlSurfaceView2.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    .line 106
    sput v3, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 108
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

    sget v2, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->s_configAttribs2:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mValue:[I

    .line 93
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mRedSize:I

    .line 94
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mGreenSize:I

    .line 95
    iput p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mBlueSize:I

    .line 96
    iput p4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mAlphaSize:I

    .line 97
    iput p5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mDepthSize:I

    .line 98
    iput p6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mStencilSize:I

    .line 99
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 162
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 164
    .end local p5
    :cond_d
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 9
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 118
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 119
    .local v5, num_config:[I
    sget-object v2, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->s_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 121
    aget v4, v5, v4

    .line 123
    .local v4, numConfigs:I
    if-gtz v4, :cond_18

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_18
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 131
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 134
    invoke-virtual {p0, p1, p2, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 19
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 138
    move-object/from16 v7, p3

    .local v7, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_4
    if-ge v11, v12, :cond_6c

    aget-object v3, v7, v11

    .line 139
    .local v3, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 140
    .local v9, d:I
    const/16 v4, 0x3026

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 143
    .local v14, s:I
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mDepthSize:I

    if-lt v9, v0, :cond_28

    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mStencilSize:I

    if-ge v14, v0, :cond_2b

    .line 138
    :cond_28
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 147
    :cond_2b
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 148
    .local v13, r:I
    const/16 v4, 0x3023

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 149
    .local v10, g:I
    const/16 v4, 0x3022

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 150
    .local v8, b:I
    const/16 v4, 0x3021

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 152
    .local v6, a:I
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mRedSize:I

    if-ne v13, v0, :cond_28

    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mGreenSize:I

    if-ne v10, v0, :cond_28

    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mBlueSize:I

    if-ne v8, v0, :cond_28

    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;->mAlphaSize:I

    if-ne v6, v0, :cond_28

    .line 155
    .end local v3           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v6           #a:I
    .end local v8           #b:I
    .end local v9           #d:I
    .end local v10           #g:I
    .end local v13           #r:I
    .end local v14           #s:I
    :goto_6b
    return-object v3

    :cond_6c
    const/4 v3, 0x0

    goto :goto_6b
.end method
