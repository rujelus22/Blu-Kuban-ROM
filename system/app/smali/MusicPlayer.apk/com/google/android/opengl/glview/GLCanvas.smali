.class public Lcom/google/android/opengl/glview/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GLCanvas$1;,
        Lcom/google/android/opengl/glview/GLCanvas$FlatShader;,
        Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;,
        Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;,
        Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;,
        Lcom/google/android/opengl/glview/GLCanvas$Shader;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field private mConfiguration:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

.field private mDebugFlatColor:[F

.field private mDebugQuadScale:[F

.field private mDebugQuadVerticesData:[F

.field private mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

.field private mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEGLContextGeneration:I

.field private mExtensions:Ljava/lang/String;

.field mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

.field private mFlatColor:[F

.field mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

.field private mFrameTime:J

.field private mHeight:F

.field mHorizontalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;

.field mHorizontalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;

.field private mMVPMatrix:[F

.field private mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

.field mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

.field private mNPOTMustClampToEdge:Z

.field private mProjMatrix:[F

.field private mQuadScale:[F

.field private mTemp:[F

.field mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

.field private mVMatrix:[F

.field mVerticalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;

.field mVerticalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "GLCanvas"

    sput-object v0, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    .line 697
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    .line 698
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHorizontalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;

    .line 700
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVerticalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;

    .line 702
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    .line 703
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHorizontalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;

    .line 705
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVerticalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;

    .line 707
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    .line 714
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    .line 715
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mProjMatrix:[F

    .line 716
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVMatrix:[F

    .line 718
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 719
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 723
    new-instance v0, Lcom/google/android/opengl/glview/MatrixStack;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/MatrixStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    .line 724
    const/16 v0, 0x30

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTemp:[F

    .line 747
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    .line 748
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

    .line 750
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugFlatColor:[F

    .line 751
    new-array v0, v2, [F

    fill-array-data v0, :array_8c

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadScale:[F

    .line 754
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mContext:Landroid/content/Context;

    .line 755
    return-void

    .line 751
    nop

    :array_8c
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/opengl/glview/GLCanvas;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/glview/GLCanvas;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/opengl/glview/GLCanvas;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    return-object v0
.end method

.method private static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 980
    const v4, 0x8b31

    invoke-static {v4, p0}, Lcom/google/android/opengl/glview/GLCanvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 981
    .local v3, vertexShader:I
    if-nez v3, :cond_13

    .line 982
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not create vertex shader"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 985
    :cond_13
    const v4, 0x8b30

    invoke-static {v4, p1}, Lcom/google/android/opengl/glview/GLCanvas;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 986
    .local v0, fragmentShader:I
    if-nez v0, :cond_24

    .line 987
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not create fragment shader"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 990
    :cond_24
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 991
    .local v2, program:I
    if-eqz v2, :cond_53

    .line 992
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 996
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1000
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1001
    new-array v1, v6, [I

    .line 1002
    .local v1, linkStatus:[I
    const v4, 0x8b82

    invoke-static {v2, v4, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1003
    aget v4, v1, v5

    if-eq v4, v6, :cond_53

    .line 1004
    sget-object v4, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    sget-object v4, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1007
    const/4 v2, 0x0

    .line 1010
    .end local v1           #linkStatus:[I
    :cond_53
    return v2
.end method

.method public static loadBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bitmap"

    .prologue
    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 1023
    const-string v3, "loadBitmap start"

    invoke-static {v3}, Lcom/google/android/opengl/glview/GLCanvas;->logGlError(Ljava/lang/String;)Z

    .line 1025
    invoke-static {v5, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1026
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 1027
    .local v0, error:I
    const/16 v3, 0x500

    if-ne v0, v3, :cond_27

    .line 1028
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1029
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_26

    .line 1030
    invoke-static {v5, v4, v2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1034
    const-string v3, "loadBitmap after copy"

    invoke-static {v3}, Lcom/google/android/opengl/glview/GLCanvas;->logGlError(Ljava/lang/String;)Z

    .line 1036
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1045
    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    :cond_26
    :goto_26
    return-void

    .line 1038
    :cond_27
    if-eqz v0, :cond_26

    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap failed with glError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, msg:Ljava/lang/String;
    sget-object v3, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method private static loadShader(ILjava/lang/String;)I
    .registers 7
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 960
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 961
    .local v1, shader:I
    if-eqz v1, :cond_45

    .line 962
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 963
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 964
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 965
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 966
    aget v2, v0, v3

    if-nez v2, :cond_45

    .line 967
    sget-object v2, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    sget-object v2, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 970
    const/4 v1, 0x0

    .line 973
    .end local v0           #compiled:[I
    :cond_45
    return v1
.end method

.method public static logGlError(Ljava/lang/String;)Z
    .registers 5
    .parameter "op"

    .prologue
    .line 1073
    const/4 v1, 0x0

    .line 1074
    .local v1, msg:Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_24

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    sget-object v2, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1078
    :cond_24
    if-eqz v1, :cond_28

    const/4 v2, 0x1

    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public static setDefaultNPOTTextureState()V
    .registers 4

    .prologue
    const v3, 0x812f

    const v2, 0x46180400

    const/16 v1, 0xde1

    .line 1283
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1285
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1290
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1292
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1294
    return-void
.end method

.method private setMatrix([FI)V
    .registers 9
    .parameter "mmatrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 951
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVMatrix:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 952
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLCanvas;->mProjMatrix:[F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 953
    return-void
.end method

.method private setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V
    .registers 3
    .parameter "shader"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eq p1, v0, :cond_18

    .line 896
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eqz v0, :cond_d

    .line 897
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->unbind()V

    .line 899
    :cond_d
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .line 900
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eqz v0, :cond_18

    .line 901
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bind()V

    .line 904
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas;->bindInputs()V

    .line 905
    return-void
.end method


# virtual methods
.method public adjustUIOffset(FF)V
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1134
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    .line 1135
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    .line 1136
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/opengl/glview/MatrixStack;->glTranslatef(FFF)V

    .line 1137
    return-void
.end method

.method public bindInputs()V
    .registers 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eqz v0, :cond_9

    .line 909
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bindInputs()V

    .line 911
    :cond_9
    return-void
.end method

.method public bindPose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 946
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTemp:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/MatrixStack;->getMatrix([FI)V

    .line 947
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTemp:[F

    invoke-direct {p0, v0, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setMatrix([FI)V

    .line 948
    return-void
.end method

.method public drawFlatRect(FFFF[FIZ)V
    .registers 18
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"
    .parameter "colorOffset"
    .parameter "filled"

    .prologue
    .line 1209
    if-eqz p7, :cond_88

    const/4 v3, 0x5

    .line 1210
    .local v3, mode:I
    :goto_3
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    .line 1211
    .local v0, f:[F
    const/4 v1, 0x0

    .line 1212
    .local v1, i:I
    if-eqz p7, :cond_8b

    .line 1213
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput p1, v0, v1

    .line 1214
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 1216
    const/4 v1, 0x6

    .line 1217
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 1218
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 1220
    const/16 v1, 0xc

    .line 1221
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput p1, v0, v1

    .line 1222
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    .line 1224
    const/16 v1, 0x12

    .line 1225
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 1226
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    .line 1249
    :goto_35
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1250
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;

    .line 1252
    .local v7, oldVertices:Ljava/nio/FloatBuffer;
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v8}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 1254
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugFlatColor:[F

    .line 1255
    const/4 v8, 0x0

    aget v9, p5, p6

    aput v9, v0, v8

    .line 1256
    const/4 v8, 0x1

    add-int/lit8 v9, p6, 0x1

    aget v9, p5, v9

    aput v9, v0, v8

    .line 1257
    const/4 v8, 0x2

    add-int/lit8 v9, p6, 0x2

    aget v9, p5, v9

    aput v9, v0, v8

    .line 1258
    const/4 v8, 0x3

    add-int/lit8 v9, p6, 0x3

    aget v9, p5, v9

    aput v9, v0, v8

    .line 1260
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 1261
    .local v4, oldFlatColor:[F
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugFlatColor:[F

    iput-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 1263
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 1264
    .local v5, oldQuadScale:[F
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadScale:[F

    iput-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 1266
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 1268
    iget-object v6, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .line 1269
    .local v6, oldShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas;->setFlatProgram()V

    .line 1271
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v3, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1276
    iput-object v5, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 1277
    iput-object v4, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 1278
    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 1279
    invoke-direct {p0, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 1280
    return-void

    .line 1209
    .end local v0           #f:[F
    .end local v1           #i:I
    .end local v3           #mode:I
    .end local v4           #oldFlatColor:[F
    .end local v5           #oldQuadScale:[F
    .end local v6           #oldShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;
    .end local v7           #oldVertices:Ljava/nio/FloatBuffer;
    :cond_88
    const/4 v3, 0x2

    goto/16 :goto_3

    .line 1229
    .restart local v0       #f:[F
    .restart local v1       #i:I
    .restart local v3       #mode:I
    :cond_8b
    const/high16 v8, 0x3f00

    add-float/2addr p1, v8

    .line 1230
    const/high16 v8, 0x3f00

    add-float/2addr p2, v8

    .line 1231
    const/high16 v8, 0x3f00

    sub-float/2addr p3, v8

    .line 1232
    const/high16 v8, 0x3f00

    sub-float/2addr p4, v8

    .line 1233
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput p1, v0, v1

    .line 1234
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 1236
    const/4 v1, 0x6

    .line 1237
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 1238
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 1240
    const/16 v1, 0xc

    .line 1241
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 1242
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    .line 1244
    const/16 v1, 0x12

    .line 1245
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput p1, v0, v1

    .line 1246
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    goto/16 :goto_35
.end method

.method public final getAlpha()F
    .registers 2

    .prologue
    .line 1166
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mAlpha:F

    return v0
.end method

.method public getConfiguration()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mConfiguration:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFrameTime()J
    .registers 3

    .prologue
    .line 1301
    iget-wide v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFrameTime:J

    return-wide v0
.end method

.method public final height()F
    .registers 2

    .prologue
    .line 1153
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHeight:F

    return v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 758
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLContextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLContextGeneration:I

    .line 759
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f03

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mExtensions:Ljava/lang/String;

    .line 762
    const-string v0, "GL_IMG_texture_npot"

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->supports(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mNPOTMustClampToEdge:Z

    .line 763
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->create()V

    .line 764
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;->create()V

    .line 765
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHorizontalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;->create()V

    .line 766
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVerticalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;->create()V

    .line 767
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;->create()V

    .line 768
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHorizontalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;->create()V

    .line 769
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVerticalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;->create()V

    .line 770
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->create()V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .line 772
    return-void
.end method

.method public popMatrix()V
    .registers 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/MatrixStack;->glPopMatrix()V

    .line 1096
    return-void
.end method

.method public pushMatrix()V
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/MatrixStack;->glPushMatrix()V

    .line 1092
    return-void
.end method

.method public rotateAngleAxis(FFFF)V
    .registers 6
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/MatrixStack;->glRotatef(FFFF)V

    .line 1108
    return-void
.end method

.method public final setAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 1175
    iput p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mAlpha:F

    .line 1176
    return-void
.end method

.method public setConfiguration(Ljava/lang/Object;)V
    .registers 2
    .parameter "configuration"

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mConfiguration:Ljava/lang/Object;

    .line 1184
    return-void
.end method

.method public setExtent(FF)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1157
    iput p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mWidth:F

    .line 1158
    iput p2, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHeight:F

    .line 1159
    return-void
.end method

.method public setFade(FF)V
    .registers 5
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    instance-of v0, v0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    if-eqz v0, :cond_e

    .line 848
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    check-cast v0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->bindFade(FF)V

    .line 852
    return-void

    .line 850
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not TextureRezzingShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFadeTexturedProgram()V
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 868
    return-void
.end method

.method public setFlatColor(FFFF)V
    .registers 7
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 800
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 801
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 802
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 803
    return-void
.end method

.method public setFlatProgram()V
    .registers 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 892
    return-void
.end method

.method public final setFrameTime(J)V
    .registers 3
    .parameter "frameTime"

    .prologue
    .line 1305
    iput-wide p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFrameTime:J

    .line 1306
    return-void
.end method

.method public setHorizontalMultiTextureRezzingProgram()V
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHorizontalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalMultiTextureRezzingShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 884
    return-void
.end method

.method public setHorizontalTexturedRezzingProgram()V
    .registers 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHorizontalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$HorizontalTextureRezzingShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 872
    return-void
.end method

.method public setMix(F)V
    .registers 4
    .parameter "m"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    instance-of v0, v0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    if-eqz v0, :cond_e

    .line 840
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    check-cast v0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->bindMix(F)V

    .line 844
    return-void

    .line 842
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not TexturedShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMixAndFade(FFFF)V
    .registers 7
    .parameter "mix0"
    .parameter "mix1"
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    instance-of v0, v0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    if-eqz v0, :cond_e

    .line 856
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    check-cast v0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->bindMixAndFade(FFFF)V

    .line 860
    return-void

    .line 858
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not MultiTextureRezzingShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMultiTextureProgram()V
    .registers 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 880
    return-void
.end method

.method public setProjectionMatrix([FI)V
    .registers 6
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mProjMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    return-void
.end method

.method public setQuadScale(FFFF)V
    .registers 7
    .parameter "sx"
    .parameter "sy"
    .parameter "sdx"
    .parameter "sdy"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 827
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 828
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 829
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 830
    return-void
.end method

.method public setTexture(II)V
    .registers 5
    .parameter "textureChannel"
    .parameter "textureId"

    .prologue
    const v1, 0x84c0

    .line 917
    if-eqz p1, :cond_a

    .line 918
    add-int v0, v1, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 920
    :cond_a
    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 921
    if-eqz p1, :cond_14

    .line 922
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 924
    :cond_14
    return-void
.end method

.method public setTexture0(I)V
    .registers 3
    .parameter "textureId"

    .prologue
    .line 931
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 932
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 933
    return-void
.end method

.method public setTexture1(I)V
    .registers 3
    .parameter "textureId"

    .prologue
    .line 940
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 941
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 942
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 943
    return-void
.end method

.method public setTexturedProgram()V
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 864
    return-void
.end method

.method public setVerticalMultiTextureRezzingProgram()V
    .registers 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVerticalMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalMultiTextureRezzingShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 888
    return-void
.end method

.method public setVerticalTexturedRezzingProgram()V
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVerticalTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$VerticalTextureRezzingShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 876
    return-void
.end method

.method public setVertices(Ljava/nio/FloatBuffer;)V
    .registers 2
    .parameter "vertices"

    .prologue
    .line 956
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;

    .line 957
    return-void
.end method

.method public setViewMatrix([FI)V
    .registers 6
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    return-void
.end method

.method public startDrawing()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1127
    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    .line 1128
    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    .line 1129
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mAlpha:F

    .line 1130
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/MatrixStack;->reset()V

    .line 1131
    return-void
.end method

.method public supports(Ljava/lang/String;)Z
    .registers 5
    .parameter "extension"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mExtensions:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public translate(FFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/MatrixStack;->glTranslatef(FFF)V

    .line 1100
    return-void
.end method

.method public final width()F
    .registers 2

    .prologue
    .line 1150
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mWidth:F

    return v0
.end method

.method public final x()F
    .registers 2

    .prologue
    .line 1143
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    return v0
.end method

.method public final y()F
    .registers 2

    .prologue
    .line 1147
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    return v0
.end method
