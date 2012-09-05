.class Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetainedObjects"
.end annotation


# instance fields
.field private mBlankSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mDefaultProgram:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field private mHighGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

.field private mLowGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x2

    .line 1332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$Grid;

    invoke-direct {v1, v2, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$Grid;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mLowGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    .line 1326
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$Grid;

    invoke-direct {v1, v3, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$Grid;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mHighGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    .line 1330
    new-instance v1, Lcom/sec/android/app/twlauncher/ShaderProgram;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/ShaderProgram;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mDefaultProgram:Lcom/sec/android/app/twlauncher/ShaderProgram;

    .line 1333
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1334
    .local v0, blank:Landroid/graphics/Bitmap;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1335
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mBlankSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    .line 1336
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mLowGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/ShaderProgram;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mDefaultProgram:Lcom/sec/android/app/twlauncher/ShaderProgram;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mBlankSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mHighGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    return-object v0
.end method
