.class public Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;
.super Ljava/lang/Object;
.source "TiledBlurEvaluatorFactoryImpl.java"

# interfaces
.implements Laah;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static synthetic a([III)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;->nativeEvaluateBlur([III)F

    move-result v0

    return v0
.end method

.method public static synthetic a()V
    .registers 0

    .prologue
    .line 15
    invoke-static {}, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;->b()V

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 29
    const-class v1, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;->a:Z

    if-nez v0, :cond_f

    .line 30
    const-string v0, "docsimageutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;->a:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 33
    :cond_f
    monitor-exit v1

    return-void

    .line 29
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeEvaluateBlur([III)F
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Laag;
    .registers 3
    .parameter

    .prologue
    .line 87
    new-instance v0, Laai;

    invoke-direct {v0, p0, p1}, Laai;-><init>(Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
