.class public Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainedSurface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;
    }
.end annotation


# static fields
.field private static final DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

.field protected mUploadNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 741
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sput-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 744
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 745
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "b"

    .prologue
    .line 752
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 753
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .registers 5
    .parameter "b"
    .parameter "policy"

    .prologue
    const/4 v1, 0x0

    .line 755
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;-><init>()V

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 786
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 756
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 757
    if-eqz p1, :cond_10

    .line 758
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 759
    :cond_10
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    .line 760
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 749
    return-void
.end method


# virtual methods
.method public declared-synchronized onContextLost()V
    .registers 2

    .prologue
    .line 805
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->onContextLost()V

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 807
    monitor-exit p0

    return-void

    .line 805
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized postUpload(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "toUpload"

    .prologue
    .line 776
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 782
    monitor-exit p0

    return-void

    .line 776
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 792
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    if-ne v0, v1, :cond_1f

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 801
    :cond_1f
    monitor-exit p0

    return-void

    .line 792
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
