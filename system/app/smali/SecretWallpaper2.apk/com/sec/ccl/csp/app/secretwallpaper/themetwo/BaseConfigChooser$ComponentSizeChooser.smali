.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;
.super Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 11
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    const/4 v3, 0x1

    .line 946
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p4, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p5, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p6, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser;-><init>([I)V

    .line 961
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mValue:[I

    .line 962
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mRedSize:I

    .line 963
    iput p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mGreenSize:I

    .line 964
    iput p3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mBlueSize:I

    .line 965
    iput p4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mAlphaSize:I

    .line 966
    iput p5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mDepthSize:I

    .line 967
    iput p6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mStencilSize:I

    .line 968
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
    .line 994
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 995
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 997
    .end local p5
    :cond_d
    return p5
.end method


# virtual methods
.method public bridge synthetic chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 944
    invoke-super {p0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 23
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 972
    const/4 v10, 0x0

    .line 973
    .local v10, closestConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v11, 0x3e8

    .line 974
    .local v11, closestDistance:I
    move-object/from16 v8, p3

    .local v8, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_9
    move/from16 v0, v16

    if-ge v15, v0, :cond_9f

    aget-object v4, v8, v15

    .line 975
    .local v4, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 976
    .local v12, d:I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v18

    .line 977
    .local v18, s:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mDepthSize:I

    if-lt v12, v1, :cond_9b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mStencilSize:I

    move/from16 v0, v18

    if-lt v0, v1, :cond_9b

    .line 978
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 979
    .local v17, r:I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 980
    .local v14, g:I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 981
    .local v9, b:I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 982
    .local v7, a:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mRedSize:I

    sub-int v1, v17, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mGreenSize:I

    sub-int v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mBlueSize:I

    sub-int v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$ComponentSizeChooser;->mAlphaSize:I

    sub-int v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v13, v1, v2

    .line 983
    .local v13, distance:I
    if-ge v13, v11, :cond_9b

    .line 984
    move v11, v13

    .line 985
    move-object v10, v4

    .line 974
    .end local v7           #a:I
    .end local v9           #b:I
    .end local v13           #distance:I
    .end local v14           #g:I
    .end local v17           #r:I
    :cond_9b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    .line 989
    .end local v4           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v12           #d:I
    .end local v18           #s:I
    :cond_9f
    return-object v10
.end method
