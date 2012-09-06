.class public Lcom/google/android/apps/unveil/sensors/CameraManager;
.super Landroid/view/SurfaceView;
.source "CameraManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;,
        Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;,
        Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;,
        Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;,
        Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;
    }
.end annotation


# static fields
.field public static final FLASH_MODE_UNSUPPORTED:Ljava/lang/String; = "unsupported"

.field public static final RATIO_SLOP:F = 0.1f

.field private static final STATE_FOCUSED:I = 0x2

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAPPED:I = 0x4

.field private static final STATE_SNAPPING:I = 0x3

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private static specialCases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile acquireCameraOnVisibilityChange:Z

.field private acquisitionPending:Z

.field private camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

.field private cameraAcquirer:Lcom/google/android/apps/unveil/sensors/CameraProvider;

.field private cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

.field private cameraParamsProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private cameraRotation:I

.field private cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentDisplayRotation:I

.field private volatile currentOrientation:I

.field private currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

.field private currentZoomLevel:I

.field private deviceFullScreenDisplaySize:Lcom/google/android/apps/unveil/env/Size;

.field private final executor:Ljava/util/concurrent/Executor;

.field private flashMode:Ljava/lang/String;

.field private volatile flashSettingAfterFocus:Ljava/lang/String;

.field private final focusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

.field private isContinuousFocusSupported:Ljava/lang/Boolean;

.field private isContinuousProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isFlashSupported:Ljava/lang/Boolean;

.field private isFocusSupported:Ljava/lang/Boolean;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maxZoomLevel:I

.field private volatile naturalOrientation:I

.field private volatile pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

.field private volatile pendingStartPreview:Z

.field private final pictureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

.field private final previewFetcherLock:Ljava/lang/Object;

.field private volatile previewing:Z

.field private volatile releaseRequiredAfterFocus:Z

.field private sensorProviderProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private shouldBatchSettingOfParameters:Z

.field private final shutterListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile snapRequiredAfterFocus:Z

.field private volatile state:I

.field private textureView:Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;

.field private zoomSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->NORMAL_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    .line 96
    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 100
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    .line 101
    const-string v0, "off"

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashMode:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    .line 106
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    .line 107
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 108
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCameraOnVisibilityChange:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->executor:Ljava/util/concurrent/Executor;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcherLock:Ljava/lang/Object;

    .line 146
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 240
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Landroid/content/Context;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->NORMAL_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    .line 96
    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 100
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    .line 101
    const-string v0, "off"

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashMode:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    .line 106
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    .line 107
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 108
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCameraOnVisibilityChange:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->executor:Ljava/util/concurrent/Executor;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcherLock:Ljava/lang/Object;

    .line 146
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 245
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->NORMAL_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    .line 96
    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 100
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    .line 101
    const-string v0, "off"

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashMode:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    .line 106
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    .line 107
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 108
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCameraOnVisibilityChange:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->executor:Ljava/util/concurrent/Executor;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcherLock:Ljava/lang/Object;

    .line 146
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 250
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 6
    .parameter "context"
    .parameter "unveilContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->NORMAL_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    .line 96
    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 100
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    .line 101
    const-string v0, "off"

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashMode:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    .line 106
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    .line 107
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 108
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCameraOnVisibilityChange:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->executor:Ljava/util/concurrent/Executor;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcherLock:Ljava/lang/Object;

    .line 146
    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 255
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Landroid/content/Context;Lcom/google/android/apps/unveil/UnveilContext;)V

    .line 256
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/unveil/sensors/CameraManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/unveil/sensors/CameraManager;)Lcom/google/android/apps/unveil/sensors/CameraProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraAcquirer:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->maybeSetPendingCameraParameters()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/sensors/CameraManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseRequiredAfterFocus:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/unveil/sensors/CameraManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseRequiredAfterFocus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/sensors/CameraManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->snapRequiredAfterFocus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/unveil/sensors/CameraManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->snapRequiredAfterFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/unveil/sensors/CameraManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/unveil/sensors/CameraManager;)Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/unveil/sensors/CameraManager;)Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParamsProvider:Lcom/google/android/apps/unveil/env/Provider;

    return-object v0
.end method

.method private configureCameraAndStartPreview(II)V
    .registers 11
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 924
    invoke-direct {p0, v7}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setBatchCameraParameters(Z)V

    .line 927
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setOptimalPreviewSize(II)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_3f

    .line 936
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setPictureQuality(Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;)V

    .line 937
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->queryFlashSupport()V

    .line 940
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->textureView:Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;

    if-eqz v3, :cond_4d

    .line 941
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->textureView:Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;

    invoke-interface {v3, v4}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setPreviewTexture(Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V

    .line 946
    :goto_1b
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->correctDisplayOrientation()V

    .line 949
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashMode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setFlashMode(Ljava/lang/String;)V

    .line 950
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->queryFocusSupport()V

    .line 951
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->enableAutoFocus()V

    .line 952
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;

    .line 953
    .local v2, l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    invoke-interface {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;->onCameraPreviewSizeChanged()V

    goto :goto_2f

    .line 928
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    :catch_3f
    move-exception v0

    .line 931
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Failed to set optimal preview size."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    invoke-direct {p0, v6}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setBatchCameraParameters(Z)V

    .line 964
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_4c
    return-void

    .line 943
    :cond_4d
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_1b

    .line 956
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_57
    invoke-direct {p0, v6}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setBatchCameraParameters(Z)V

    .line 958
    sget-object v3, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Starting preview!"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    iput-boolean v7, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 960
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->startPreview()V

    .line 962
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->queryZoomSupport()V

    .line 963
    iput v6, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentZoomLevel:I

    goto :goto_4c
.end method

.method private configureSurfaceHolder()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 355
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 357
    :cond_34
    return-void
.end method

.method private correctDisplayOrientation()V
    .registers 3

    .prologue
    .line 982
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_a

    .line 983
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->correctDisplayOrientationForFroyo()V

    .line 987
    :goto_9
    return-void

    .line 985
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraToDisplayRotation(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setDisplayOrientation(I)V

    goto :goto_9
.end method

.method private correctDisplayOrientationForFroyo()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 995
    iput v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    .line 997
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentDisplayRotation:I

    packed-switch v0, :pswitch_data_46

    .line 1011
    :goto_9
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->naturalOrientation:I

    if-ne v0, v2, :cond_1b

    .line 1012
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    .line 1013
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    const/16 v1, 0x168

    if-ne v0, v1, :cond_1b

    .line 1014
    iput v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    .line 1017
    :cond_1b
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Rotating camera %d degrees"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setDisplayOrientation(I)V

    .line 1019
    return-void

    .line 999
    :pswitch_34
    iput v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    goto :goto_9

    .line 1002
    :pswitch_37
    const/16 v0, 0x10e

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    goto :goto_9

    .line 1005
    :pswitch_3c
    const/16 v0, 0xb4

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    goto :goto_9

    .line 1008
    :pswitch_41
    const/16 v0, 0x5a

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    goto :goto_9

    .line 997
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_34
        :pswitch_37
        :pswitch_3c
        :pswitch_41
    .end packed-switch
.end method

.method private enableAutoFocus()V
    .registers 8

    .prologue
    .line 754
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v2, :cond_5

    .line 767
    :cond_4
    :goto_4
    return-void

    .line 758
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 759
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v1

    .line 760
    .local v1, params:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    const-string v2, "focus-mode"

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :try_start_1c
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setCameraParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_4

    .line 763
    :catch_20
    move-exception v0

    .line 764
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Unable to set focus mode to: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "auto"

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method static findOptimalSize(Ljava/util/List;IIZI)Lcom/google/android/apps/unveil/env/Size;
    .registers 24
    .parameter
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "requireAspectRatio"
    .parameter "maxPixels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;IIZI)",
            "Lcom/google/android/apps/unveil/env/Size;"
        }
    .end annotation

    .prologue
    .line 1543
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    sget-object v14, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-virtual {v14}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowVerbose()Z

    move-result v14

    if-eqz v14, :cond_3f

    .line 1545
    sget-object v14, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v15, "findOptimalSize([%s], %d, %d, %b, %d)"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/unveil/env/Size;->sizeListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    :cond_3f
    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v12, v14, v15

    .line 1550
    .local v12, targetAspectRatio:F
    const v14, 0x3dcccccd

    mul-float v4, v12, v14

    .line 1551
    .local v4, allowedRatioDiff:F
    if-eqz p3, :cond_6d

    .line 1552
    sget-object v14, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v15, "Target ratio is %f, allowed slop of %f"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1556
    :cond_6d
    mul-int v13, p1, p2

    .line 1558
    .local v13, targetPixelCount:I
    const v5, 0x7fffffff

    .line 1559
    .local v5, bestPixelCountDiff:I
    const/4 v6, 0x0

    .line 1560
    .local v6, bestSize:Lcom/google/android/apps/unveil/env/Size;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_77
    :goto_77
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/unveil/env/Size;

    .line 1561
    .local v11, size:Lcom/google/android/apps/unveil/env/Size;
    if-lez p4, :cond_8e

    iget v14, v11, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v15, v11, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v14, v15

    move/from16 v0, p4

    if-gt v14, v0, :cond_77

    .line 1564
    :cond_8e
    iget v14, v11, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v14, v14

    iget v15, v11, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v15, v15

    div-float v9, v14, v15

    .line 1565
    .local v9, potentialAspectRatio:F
    sub-float v14, v12, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1568
    .local v10, ratioDiff:F
    if-eqz p3, :cond_a2

    cmpg-float v14, v10, v4

    if-gtz v14, :cond_77

    .line 1569
    :cond_a2
    iget v14, v11, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v15, v11, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v14, v15

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 1570
    .local v8, pixelCountDiff:I
    if-ge v8, v5, :cond_77

    .line 1571
    move v5, v8

    .line 1572
    move-object v6, v11

    goto :goto_77

    .line 1577
    .end local v8           #pixelCountDiff:I
    .end local v9           #potentialAspectRatio:F
    .end local v10           #ratioDiff:F
    .end local v11           #size:Lcom/google/android/apps/unveil/env/Size;
    :cond_b1
    if-nez v6, :cond_d2

    if-eqz p3, :cond_d2

    .line 1578
    sget-object v14, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v15, "Couldn\'t find size that meets aspect ratio requirement, trying without."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1579
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v14, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->findOptimalSize(Ljava/util/List;IIZI)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v6

    .line 1585
    .end local v6           #bestSize:Lcom/google/android/apps/unveil/env/Size;
    :goto_d1
    return-object v6

    .line 1580
    .restart local v6       #bestSize:Lcom/google/android/apps/unveil/env/Size;
    :cond_d2
    if-nez v6, :cond_e3

    .line 1581
    sget-object v14, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v15, "No optimal size!"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1584
    :cond_e3
    sget-object v14, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v15, "Optimal size is %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/env/Size;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d1
.end method

.method private declared-synchronized getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    .registers 4

    .prologue
    .line 1290
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v0, :cond_1b

    .line 1291
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    if-eqz v0, :cond_1f

    .line 1294
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "getParameters returning deferred value set while taking a picture!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1295
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 1301
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    monitor-exit p0

    return-object v0

    .line 1297
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->getParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_1b

    .line 1290
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getCameraToDisplayRotation(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 1702
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1703
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1704
    .local v1, displayRotation:I
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1705
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v8, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1707
    const/4 v0, 0x0

    .line 1708
    .local v0, adjustedRotation:I
    packed-switch v1, :pswitch_data_52

    .line 1725
    :goto_1d
    sget-object v4, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "getDisplayRotation() %d, %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1726
    return v0

    .line 1710
    :pswitch_35
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit8 v4, v4, 0x0

    rem-int/lit16 v0, v4, 0x168

    .line 1711
    goto :goto_1d

    .line 1715
    :pswitch_3c
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v4, v4, 0x10e

    rem-int/lit16 v0, v4, 0x168

    .line 1716
    goto :goto_1d

    .line 1718
    :pswitch_43
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v4, v4, 0xb4

    rem-int/lit16 v0, v4, 0x168

    .line 1719
    goto :goto_1d

    .line 1721
    :pswitch_4a
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit8 v4, v4, 0x5a

    rem-int/lit16 v0, v4, 0x168

    goto :goto_1d

    .line 1708
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_35
        :pswitch_3c
        :pswitch_43
        :pswitch_4a
    .end packed-switch
.end method

.method private getSpecialCasePreviewSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x280

    const/16 v7, 0x1e0

    .line 1390
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v2}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "Galaxy Nexus"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1393
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    const/16 v2, 0x3c0

    const/16 v3, 0x2d0

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .line 1394
    .local v0, nexusSingleShot:Lcom/google/android/apps/unveil/env/Size;
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Special case: using %s for preview size on Galaxy Nexus"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    .end local v0           #nexusSingleShot:Lcom/google/android/apps/unveil/env/Size;
    :goto_32
    return-object v0

    .line 1400
    :cond_33
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    if-nez v2, :cond_8c

    .line 1401
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    .line 1406
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    const-string v3, "SPH-M900"

    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v4, v8, v7}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    const-string v3, "DROIDX"

    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    const/16 v5, 0x320

    const/16 v6, 0x1c0

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    const-string v3, "XT720"

    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    const/16 v5, 0x350

    invoke-direct {v4, v5, v7}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    const-string v3, "Nexus S"

    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v4, v8, v7}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    const-string v3, "Droid"

    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v4, v8, v7}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    const-string v3, "SGH-T999"

    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v4, v8, v7}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    :cond_8c
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1432
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->specialCases:Ljava/util/HashMap;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/Size;

    .line 1433
    .local v1, specialCaseSize:Lcom/google/android/apps/unveil/env/Size;
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Special case: using %s for preview size on %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v9

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1435
    goto :goto_32

    .line 1438
    .end local v1           #specialCaseSize:Lcom/google/android/apps/unveil/env/Size;
    :cond_b2
    const/4 v0, 0x0

    goto/16 :goto_32
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/apps/unveil/UnveilContext;

    if-eqz v0, :cond_12

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/UnveilContext;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Landroid/content/Context;Lcom/google/android/apps/unveil/UnveilContext;)V

    .line 264
    :goto_11
    return-void

    .line 262
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Landroid/content/Context;Lcom/google/android/apps/unveil/UnveilContext;)V

    goto :goto_11
.end method

.method private init(Landroid/content/Context;Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 6
    .parameter "context"
    .parameter "unveilContext"

    .prologue
    .line 267
    if-eqz p2, :cond_1e

    .line 268
    new-instance v1, Lcom/google/android/apps/unveil/sensors/CameraManager$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager$1;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/UnveilContext;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->sensorProviderProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 274
    new-instance v1, Lcom/google/android/apps/unveil/sensors/CameraManager$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager$2;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/UnveilContext;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 280
    new-instance v1, Lcom/google/android/apps/unveil/sensors/CameraManager$3;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager$3;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/UnveilContext;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 286
    new-instance v1, Lcom/google/android/apps/unveil/sensors/CameraManager$4;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager$4;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/UnveilContext;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParamsProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 294
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 295
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 296
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 298
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->configureSurfaceHolder()V

    .line 300
    if-eqz p1, :cond_3a

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->updateCurrentRotationAndOrientation(I)Z

    .line 304
    :cond_3a
    new-instance v1, Lcom/google/android/apps/unveil/sensors/CameraProvider;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/unveil/sensors/CameraProvider;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraAcquirer:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    .line 305
    return-void
.end method

.method private isTakingPicture()Z
    .registers 3

    .prologue
    .line 1375
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private declared-synchronized maybeSetPendingCameraParameters()V
    .registers 4

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v0, :cond_11

    .line 1334
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "No camera yet to set parameters on."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_37

    .line 1372
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 1338
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    if-eqz v0, :cond_f

    .line 1342
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    if-eqz v0, :cond_23

    .line 1344
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "maybeSetPendingCameraParameters() directly called while cache is active."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 1352
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1353
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Taking picture, aborting setParameters."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_37

    goto :goto_f

    .line 1333
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1357
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1358
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Focusing, aborting setParameters."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 1362
    :cond_4b
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Setting camera parameters."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1363
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V

    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 1371
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    :try_end_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_37

    goto :goto_f
.end method

.method private queryFlashSupport()V
    .registers 11

    .prologue
    .line 1068
    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    if-eqz v8, :cond_9

    .line 1090
    :cond_8
    :goto_8
    return-void

    .line 1072
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v8

    const-string v9, "flash-mode-values"

    invoke-interface {v8, v9}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, flashModesAsString:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 1078
    const/4 v7, 0x0

    .line 1079
    .local v7, torch:Z
    const/4 v6, 0x0

    .line 1080
    .local v6, off:Z
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, flashModes:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_20
    if-ge v3, v4, :cond_3a

    aget-object v5, v0, v3

    .line 1082
    .local v5, mode:Ljava/lang/String;
    const-string v8, "torch"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 1083
    const/4 v7, 0x1

    .line 1081
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1084
    :cond_30
    const-string v8, "off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 1085
    const/4 v6, 0x1

    goto :goto_2d

    .line 1089
    .end local v5           #mode:Ljava/lang/String;
    :cond_3a
    if-eqz v6, :cond_46

    if-eqz v7, :cond_46

    const/4 v8, 0x1

    :goto_3f
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    goto :goto_8

    :cond_46
    const/4 v8, 0x0

    goto :goto_3f
.end method

.method private queryFocusSupport()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 1098
    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported:Ljava/lang/Boolean;

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported:Ljava/lang/Boolean;

    if-eqz v6, :cond_e

    .line 1116
    :cond_d
    return-void

    .line 1102
    :cond_e
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v6

    const-string v7, "focus-mode-values"

    invoke-interface {v6, v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, focusModesAsString:Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 1108
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1109
    .local v1, focusModes:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_23
    if-ge v3, v4, :cond_d

    aget-object v5, v0, v3

    .line 1110
    .local v5, mode:Ljava/lang/String;
    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1111
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported:Ljava/lang/Boolean;

    .line 1109
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1112
    :cond_38
    const-string v6, "continuous-picture"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1113
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported:Ljava/lang/Boolean;

    goto :goto_35
.end method

.method private queryZoomSupport()V
    .registers 3

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v0

    .line 969
    .local v0, parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->isSmoothZoomSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->zoomSupported:Z

    .line 971
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->zoomSupported:Z

    if-eqz v1, :cond_14

    .line 972
    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->maxZoomLevel:I

    .line 974
    :cond_14
    return-void
.end method

.method private declared-synchronized releaseCamera()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1059
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    if-ne v0, v1, :cond_15

    .line 1060
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Deferring camera release until after focus"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseRequiredAfterFocus:Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_19

    .line 1065
    :goto_13
    monitor-exit p0

    return-void

    .line 1064
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->forceReleaseCamera()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_13

    .line 1059
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundOffOrientation(I)I
    .registers 4
    .parameter "cameraOrientation"

    .prologue
    .line 1610
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 1613
    add-int/lit8 v0, p1, 0x5a

    .line 1617
    .local v0, orientation:I
    :goto_5
    return v0

    .line 1615
    .end local v0           #orientation:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #orientation:I
    goto :goto_5
.end method

.method private declared-synchronized setBatchCameraParameters(Z)V
    .registers 3
    .parameter "shouldBatch"

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    .line 1326
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    if-nez v0, :cond_a

    .line 1328
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->maybeSetPendingCameraParameters()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1330
    :cond_a
    monitor-exit p0

    return-void

    .line 1324
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCameraParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V
    .registers 3
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1314
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingSetParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 1317
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shouldBatchSettingOfParameters:Z

    if-nez v0, :cond_d

    .line 1318
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->maybeSetPendingCameraParameters()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1320
    :cond_d
    monitor-exit p0

    return-void

    .line 1314
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setOptimalPictureSize(II)V
    .registers 16
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1504
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v1

    .line 1506
    .local v1, parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v5, :cond_d

    if-nez v1, :cond_e

    .line 1531
    :cond_d
    :goto_d
    return-void

    .line 1511
    :cond_e
    :try_start_e
    invoke-interface {v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    .line 1512
    .local v4, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    if-nez v4, :cond_56

    .line 1513
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to find picture sizes in camera parameters."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1c} :catch_1c

    .line 1523
    .end local v4           #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    :catch_1c
    move-exception v0

    .line 1524
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "No suitable picture size available, forcing %dx%d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1525
    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->setPictureSize(II)V

    .line 1527
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_35
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setCameraParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V

    .line 1529
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPictureSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    .line 1530
    .local v2, pictureSize:Lcom/google/android/apps/unveil/env/Size;
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Set picture size to %dx%d"

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 1516
    .end local v2           #pictureSize:Lcom/google/android/apps/unveil/env/Size;
    .restart local v4       #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    :cond_56
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_58
    invoke-static {v4, p1, p2, v5, v6}, Lcom/google/android/apps/unveil/sensors/CameraManager;->findOptimalSize(Ljava/util/List;IIZI)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    .line 1517
    .local v3, size:Lcom/google/android/apps/unveil/env/Size;
    if-nez v3, :cond_66

    .line 1518
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not find a suitable picture size."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1521
    :cond_66
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Attempting to set optimal picture size %dx%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1522
    iget v5, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v6, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-interface {v1, v5, v6}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->setPictureSize(II)V
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_89} :catch_1c

    goto :goto_35
.end method

.method private setOptimalPreviewSize(II)V
    .registers 13
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1479
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v0

    .line 1481
    .local v0, parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v3, :cond_d

    if-nez v0, :cond_e

    .line 1501
    :cond_d
    :goto_d
    return-void

    .line 1485
    :cond_e
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v3, :cond_1e

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 1489
    .local v2, size:Lcom/google/android/apps/unveil/env/Size;
    :goto_14
    if-nez v2, :cond_23

    .line 1490
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not find a suitable preview size."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1485
    .end local v2           #size:Lcom/google/android/apps/unveil/env/Size;
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getOptimalPreviewSize(II)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    goto :goto_14

    .line 1493
    .restart local v2       #size:Lcom/google/android/apps/unveil/env/Size;
    :cond_23
    sget-object v4, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Attempting to set optimal preview size %dx%d %s"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    iget v3, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget v3, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v3, :cond_6d

    const-string v3, ""

    :goto_40
    aput-object v3, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1495
    iget v3, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v4, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-interface {v0, v3, v4}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->setPreviewSize(II)V

    .line 1497
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setCameraParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    .line 1500
    .local v1, previewSize:Lcom/google/android/apps/unveil/env/Size;
    sget-object v3, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Set preview size to %dx%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, v1, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 1493
    .end local v1           #previewSize:Lcom/google/android/apps/unveil/env/Size;
    :cond_6d
    const-string v3, "based on forced preview size"

    goto :goto_40
.end method

.method private setPictureQuality(Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;)V
    .registers 10
    .parameter "quality"

    .prologue
    .line 700
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v4, :cond_5

    .line 720
    :cond_4
    :goto_4
    return-void

    .line 704
    :cond_5
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v3

    .line 709
    .local v3, params:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    const-string v4, "jpeg-quality"

    iget v5, p1, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->jpegQuality:I

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->set(Ljava/lang/String;I)V

    .line 712
    :try_start_10
    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setCameraParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V

    .line 713
    iget v4, p1, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->desiredWidth:I

    iget v5, p1, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->desiredHeight:I

    invoke-direct {p0, v4, v5}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setOptimalPictureSize(II)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 714
    :catch_1b
    move-exception v0

    .line 715
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Unable to set quality to: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;

    .line 717
    .local v2, l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    invoke-interface {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;->onCameraQualityError()V

    goto :goto_2f
.end method

.method private updateCurrentRotationAndOrientation(I)Z
    .registers 5
    .parameter "newOrientation"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/env/Viewport;->computeNaturalOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->naturalOrientation:I

    .line 392
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 394
    .local v0, display:Landroid/view/Display;
    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentDisplayRotation:I

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-ne v1, v2, :cond_26

    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentOrientation:I

    if-eq v1, p1, :cond_30

    .line 395
    :cond_26
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentDisplayRotation:I

    .line 396
    iput p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentOrientation:I

    .line 397
    const/4 v1, 0x1

    .line 399
    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public declared-synchronized acquireCamera()V
    .registers 5

    .prologue
    .line 808
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "acquireCamera"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquisitionPending:Z

    if-nez v0, :cond_51

    .line 811
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "CameraManager is requesting a camera to manage."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquisitionPending:Z

    .line 815
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_45

    .line 816
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraAcquirer:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParamsProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->acquireCamera(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4e

    .line 832
    :goto_43
    monitor-exit p0

    return-void

    .line 819
    :cond_45
    :try_start_45
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraManager$11;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$11;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->post(Ljava/lang/Runnable;)Z
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4e

    goto :goto_43

    .line 808
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 827
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v0, :cond_60

    .line 828
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "CameraManager is already waiting for a pending camera request."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_43

    .line 830
    :cond_60
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "CameraManager already has a camera, ignoring call to acquireCamera."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_51 .. :try_end_6a} :catchall_4e

    goto :goto_43
.end method

.method public addPreviewBuffer([B)V
    .registers 6
    .parameter "previewBuffer"

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1268
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    if-eqz v0, :cond_e

    .line 1269
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->addPreviewBuffer([B)V

    .line 1273
    :goto_c
    monitor-exit v1

    .line 1274
    return-void

    .line 1271
    :cond_e
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Tried to give buffer to null PreviewFetcher"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 1273
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public clearCachedCameraParams()V
    .registers 2

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 431
    return-void
.end method

.method public enableContinuousFocus(Z)V
    .registers 9
    .parameter "enabled"

    .prologue
    .line 770
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v2, :cond_5

    .line 790
    :cond_4
    :goto_4
    return-void

    .line 774
    :cond_5
    if-nez p1, :cond_b

    .line 775
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->enableAutoFocus()V

    goto :goto_4

    .line 779
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 780
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v1

    .line 781
    .local v1, params:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    const-string v2, "focus-mode"

    const-string v3, "continuous-picture"

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :try_start_22
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setCameraParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_4

    .line 785
    :catch_26
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Unable to set focus mode to: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "continuous-picture"

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public declared-synchronized focus(Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;)V
    .registers 9
    .parameter "focusCb"

    .prologue
    const/4 v6, 0x1

    .line 626
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_18

    if-nez v4, :cond_8

    .line 686
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 630
    :cond_8
    :try_start_8
    iget v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    .line 631
    sget-object v4, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Focus just finished and callbacks are being invoked, ignoring focus request!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    goto :goto_6

    .line 626
    :catchall_18
    move-exception v4

    monitor-exit p0

    throw v4

    .line 635
    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isTakingPicture()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 636
    sget-object v4, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "A picture is being taken now, ignoring focus request!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 642
    :cond_2c
    if-eqz p1, :cond_33

    .line 643
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_33
    iget v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    if-eq v4, v6, :cond_6

    .line 648
    const/4 v4, 0x1

    iput v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 650
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$10;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_18

    .line 678
    .local v0, autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :try_start_3f
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v4, v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_18
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_6

    .line 679
    :catch_45
    move-exception v2

    .line 680
    .local v2, e:Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    :try_start_47
    iput v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 681
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;

    .line 682
    .local v1, cb:Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;->onFocus(Z)V

    goto :goto_4f

    .line 684
    .end local v1           #cb:Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;
    :cond_60
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_18

    goto :goto_6
.end method

.method public declared-synchronized forceReleaseCamera()V
    .registers 4

    .prologue
    .line 1034
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v0, :cond_33

    .line 1035
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1036
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Attempting cancelAutoFocus call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->cancelAutoFocus()V

    .line 1039
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->requestOneFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1040
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    if-eqz v0, :cond_26

    .line 1041
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->stopPreview()V

    .line 1044
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraAcquirer:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->releaseCamera(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    .line 1045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 1050
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseRequiredAfterFocus:Z

    .line 1053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->snapRequiredAfterFocus:Z

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    .line 1055
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 1056
    monitor-exit p0

    return-void

    .line 1034
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraRotation()I
    .registers 2

    .prologue
    .line 1026
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraRotation:I

    return v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getExpectedFlashMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 798
    :cond_c
    const-string v0, "unsupported"

    .line 800
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    goto :goto_e

    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashMode:Ljava/lang/String;

    goto :goto_e
.end method

.method public getOptimalPreviewSize(II)Lcom/google/android/apps/unveil/env/Size;
    .registers 8
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCamera()V

    .line 1444
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v0

    .line 1446
    .local v0, parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v3, :cond_d

    if-nez v0, :cond_f

    .line 1447
    :cond_d
    const/4 v1, 0x0

    .line 1467
    :cond_e
    :goto_e
    return-object v1

    .line 1453
    :cond_f
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;

    if-ne v3, v4, :cond_1f

    .line 1454
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getSpecialCasePreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    .line 1455
    .local v1, size:Lcom/google/android/apps/unveil/env/Size;
    if-nez v1, :cond_e

    .line 1462
    .end local v1           #size:Lcom/google/android/apps/unveil/env/Size;
    :cond_1f
    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 1463
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    if-nez v2, :cond_2d

    .line 1464
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to find preview sizes in camera parameters."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1467
    :cond_2d
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_44

    const v3, 0x63d80

    :goto_3f
    invoke-static {v2, p1, p2, v4, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->findOptimalSize(Ljava/util/List;IIZI)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    goto :goto_e

    :cond_44
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method public getPictureQuality()Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    return-object v0
.end method

.method public getPictureSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 3

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v0

    .line 1140
    .local v0, params:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    if-nez v0, :cond_8

    .line 1141
    const/4 v1, 0x0

    .line 1143
    :goto_7
    return-object v1

    :cond_8
    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->getPictureSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    goto :goto_7
.end method

.method public getPreviewSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 3

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v1, :cond_7

    .line 1128
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 1135
    :goto_6
    return-object v1

    .line 1131
    :cond_7
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v0

    .line 1132
    .local v0, params:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    if-nez v0, :cond_f

    .line 1133
    const/4 v1, 0x0

    goto :goto_6

    .line 1135
    :cond_f
    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    goto :goto_6
.end method

.method public getStateName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1621
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    packed-switch v0, :pswitch_data_18

    .line 1638
    const-string v0, "unknown"

    :goto_7
    return-object v0

    .line 1623
    :pswitch_8
    const-string v0, "FOCUSED"

    goto :goto_7

    .line 1626
    :pswitch_b
    const-string v0, "FOCUSING"

    goto :goto_7

    .line 1629
    :pswitch_e
    const-string v0, "IDLE"

    goto :goto_7

    .line 1632
    :pswitch_11
    const-string v0, "SNAPPED"

    goto :goto_7

    .line 1635
    :pswitch_14
    const-string v0, "SNAPPING"

    goto :goto_7

    .line 1621
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public init(Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;",
            ">;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, sensorProviderProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;>;"
    .local p2, isContinuousProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/lang/Boolean;>;"
    .local p3, cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/lang/String;>;"
    .local p4, cameraParamsProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->sensorProviderProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 315
    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 316
    iput-object p3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 317
    iput-object p4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParamsProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 319
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->configureSurfaceHolder()V

    .line 320
    return-void
.end method

.method public initDefaults()V
    .registers 5

    .prologue
    .line 327
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraManager$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$5;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    new-instance v1, Lcom/google/android/apps/unveil/sensors/CameraManager$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$6;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    new-instance v2, Lcom/google/android/apps/unveil/sensors/CameraManager$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$7;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    new-instance v3, Lcom/google/android/apps/unveil/sensors/CameraManager$8;

    invoke-direct {v3, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$8;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;)V

    .line 349
    return-void
.end method

.method public declared-synchronized isCameraConnected()Z
    .registers 2

    .prologue
    .line 1688
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isContinuousFocusSupported()Z
    .registers 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public isFlashSupported()Z
    .registers 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public isFocusSupported()Z
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public isFocusing()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1379
    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPreviewing()Z
    .registers 2

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    return v0
.end method

.method public declared-synchronized onCameraAcquired(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    .registers 7
    .parameter "camera"

    .prologue
    .line 1656
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "onCameraAcquired"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1657
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquisitionPending:Z

    .line 1658
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    .line 1660
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;

    .line 1661
    .local v1, l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;->onCameraConnected()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_16

    .line 1656
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1664
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_29
    :try_start_29
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->maybeSetPendingCameraParameters()V

    .line 1666
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    if-eqz v2, :cond_3d

    .line 1667
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Starting preview!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->startPreview()V
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_26

    .line 1670
    :cond_3d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onCameraAcquisitionError()V
    .registers 4

    .prologue
    .line 1644
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquisitionPending:Z

    .line 1649
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;

    .line 1650
    .local v1, l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;->onCameraAcquisitionError()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 1644
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1652
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->updateCurrentRotationAndOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 373
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    if-eqz v0, :cond_18

    .line 374
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->stopPreview()V

    .line 375
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->correctDisplayOrientation()V

    .line 376
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->startPreview()V

    .line 379
    :cond_18
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 476
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 478
    sget-object v2, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "onLayout: %b, %d, %d, %d, %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;

    .line 480
    .local v1, listener:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;->onCameraLayoutComplete()V

    goto :goto_36

    .line 482
    .end local v1           #listener:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    :cond_46
    return-void
.end method

.method public declared-synchronized onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 8
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 568
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->maybeSetPendingCameraParameters()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3a

    .line 570
    if-nez p2, :cond_8

    .line 590
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 574
    :cond_8
    :try_start_8
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 576
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->sensorProviderProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v4}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getRoundedDeviceOrientation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->roundOffOrientation(I)I

    move-result v3

    .line 578
    .local v3, orientation:I
    invoke-static {p1, v3}, Lcom/google/android/apps/unveil/env/PictureFactory;->createJpeg([BI)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v2

    .line 579
    .local v2, jpeg:Lcom/google/android/apps/unveil/env/Picture;
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;

    .line 580
    .local v0, cb:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;
    invoke-interface {v0, v2}, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;->onPictureTaken(Lcom/google/android/apps/unveil/env/Picture;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3a

    goto :goto_2a

    .line 568
    .end local v0           #cb:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jpeg:Lcom/google/android/apps/unveil/env/Picture;
    .end local v3           #orientation:I
    :catchall_3a
    move-exception v4

    monitor-exit p0

    throw v4

    .line 582
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #jpeg:Lcom/google/android/apps/unveil/env/Picture;
    .restart local v3       #orientation:I
    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 585
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jpeg:Lcom/google/android/apps/unveil/env/Picture;
    .end local v3           #orientation:I
    :cond_42
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 587
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    if-eqz v4, :cond_6

    .line 588
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->startPreview()V
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_3a

    goto :goto_6
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 7
    .parameter "visibility"

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 487
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onWindowVisibilityChanged: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCameraOnVisibilityChange:Z

    if-eqz v0, :cond_1d

    .line 489
    if-nez p1, :cond_1e

    .line 490
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCamera()V

    .line 495
    :cond_1d
    :goto_1d
    return-void

    .line 492
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseCamera()V

    goto :goto_1d
.end method

.method public registerListener(Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    return-void
.end method

.method public requestOneFrame(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 6
    .parameter "previewCb"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v0, :cond_f

    .line 1242
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "No camera, can\'t comply with frame request."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    :goto_e
    return-void

    .line 1246
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1247
    :try_start_12
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    iget-object v0, v0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    if-eq v0, p1, :cond_43

    .line 1249
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    if-eqz v0, :cond_2a

    .line 1250
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->stop()V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    .line 1254
    :cond_2a
    if-nez p1, :cond_31

    .line 1255
    monitor-exit v1

    goto :goto_e

    .line 1261
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    throw v0

    .line 1258
    :cond_31
    :try_start_31
    new-instance v0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;Landroid/hardware/Camera$PreviewCallback;Lcom/google/android/apps/unveil/env/Size;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    .line 1259
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->start()V

    .line 1261
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_2e

    .line 1262
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewFetcher:Lcom/google/android/apps/unveil/sensors/PreviewFetcher;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->requestFrame()V

    goto :goto_e
.end method

.method public requestPictureQuality(Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;)V
    .registers 2
    .parameter "quality"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentQualitySetting:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    .line 696
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setPictureQuality(Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;)V

    .line 697
    return-void
.end method

.method public setAcquireCameraOnVisibilityChange(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCameraOnVisibilityChange:Z

    .line 507
    return-void
.end method

.method public setCameraProxy(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    .registers 4
    .parameter "cam"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    .line 421
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    :try_start_9
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->configureCameraAndStartPreview(II)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    .line 424
    :goto_c
    return-void

    .line 422
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .registers 10
    .parameter "flashMode"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 727
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v4, :cond_18

    if-eqz p1, :cond_18

    const-string v4, "off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "torch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 751
    :cond_18
    :goto_18
    return-void

    .line 732
    :cond_19
    iget v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    if-ne v4, v6, :cond_29

    .line 733
    sget-object v4, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Deferring flash setting until focus complete."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    goto :goto_18

    .line 738
    :cond_29
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 739
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashMode:Ljava/lang/String;

    .line 740
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v3

    .line 741
    .local v3, params:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    const-string v4, "flash-mode"

    invoke-interface {v3, v4, p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :try_start_40
    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setCameraParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_18

    .line 744
    :catch_44
    move-exception v0

    .line 745
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Unable to set flash mode to: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;

    .line 747
    .local v2, l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    invoke-interface {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;->onCameraFlashControlError()V

    goto :goto_56
.end method

.method public setForcedPreviewSize(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 2
    .parameter "size"

    .prologue
    .line 1684
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->forcedPreviewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 1685
    return-void
.end method

.method public declared-synchronized setFullScreenDisplaySize(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 3
    .parameter "deviceFullScreenDisplaySize"

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->deviceFullScreenDisplaySize:Lcom/google/android/apps/unveil/env/Size;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 410
    monitor-exit p0

    return-void

    .line 409
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setZoomLevel(I)V
    .registers 7
    .parameter "zoomLevel"

    .prologue
    .line 593
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 594
    :cond_b
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Too early to zoom!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_26

    .line 613
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 598
    :cond_17
    :try_start_17
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->zoomSupported:Z

    if-nez v0, :cond_29

    .line 599
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Zooming not supported!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_26

    goto :goto_15

    .line 593
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 603
    :cond_29
    :try_start_29
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->maxZoomLevel:I

    if-le p1, v0, :cond_48

    .line 604
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Zoom is too great! %d requested, max is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->maxZoomLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 608
    :cond_48
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentZoomLevel:I

    if-eq p1, v0, :cond_15

    .line 609
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Setting zoom level to %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->startSmoothZoom(I)V

    .line 611
    iput p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentZoomLevel:I
    :try_end_64
    .catchall {:try_start_29 .. :try_end_64} :catchall_26

    goto :goto_15
.end method

.method public declared-synchronized startPreview()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 839
    monitor-enter p0

    :try_start_2
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Starting preview!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCamera()V

    .line 842
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v5, :cond_34

    .line 843
    iget-boolean v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquisitionPending:Z

    if-eqz v5, :cond_26

    .line 844
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Deferring startPreview due to acquisitionPending."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_31

    .line 900
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 847
    :cond_26
    :try_start_26
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Failed to acquire camera, can\'t start preview"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_31

    goto :goto_24

    .line 839
    :catchall_31
    move-exception v5

    monitor-exit p0

    throw v5

    .line 852
    :cond_34
    :try_start_34
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isTakingPicture()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 853
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Deferring startPreview due to picture taking."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    goto :goto_24

    .line 856
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusing()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 857
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Deferring startPreview due to focusing."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    goto :goto_24

    .line 862
    :cond_5c
    iget-boolean v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    if-eqz v5, :cond_6e

    .line 863
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Already previewing."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    goto :goto_24

    .line 868
    :cond_6e
    const/4 v4, 0x0

    .line 869
    .local v4, viewWidth:I
    const/4 v3, 0x0

    .line 870
    .local v3, viewHeight:I
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->deviceFullScreenDisplaySize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v5, :cond_a7

    .line 871
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getWidth()I

    move-result v4

    .line 872
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHeight()I

    move-result v3

    .line 873
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Full display size is null, falling back to CameraManager view size of %dx%d."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    :goto_94
    if-eqz v4, :cond_98

    if-nez v3, :cond_c8

    .line 882
    :cond_98
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Too early to preview, no device size or CameraManager View size known yet."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    goto/16 :goto_24

    .line 876
    :cond_a7
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->deviceFullScreenDisplaySize:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 877
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->deviceFullScreenDisplaySize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 878
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Using full display size of %dx%d to pick preview size."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c7
    .catchall {:try_start_34 .. :try_end_c7} :catchall_31

    goto :goto_94

    .line 888
    :cond_c8
    :try_start_c8
    iget v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->currentOrientation:I

    if-ne v5, v10, :cond_f5

    .line 889
    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->configureCameraAndStartPreview(II)V
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_31
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cf} :catch_d1

    goto/16 :goto_24

    .line 893
    :catch_d1
    move-exception v0

    .line 894
    .local v0, e:Ljava/io/IOException;
    :try_start_d2
    sget-object v5, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Unable to acquire/configure camera hardware."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseCamera()V

    .line 896
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;

    .line 897
    .local v2, l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    invoke-interface {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;->onCameraAcquisitionError()V
    :try_end_f4
    .catchall {:try_start_d2 .. :try_end_f4} :catchall_31

    goto :goto_e5

    .line 891
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
    :cond_f5
    :try_start_f5
    invoke-direct {p0, v4, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->configureCameraAndStartPreview(II)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_31
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_d1

    goto/16 :goto_24
.end method

.method public declared-synchronized stopPreview()V
    .registers 4

    .prologue
    .line 903
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v0, :cond_11

    .line 904
    sget-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Can\'t stop preview on a null camera."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_29

    .line 914
    :goto_f
    monitor-exit p0

    return-void

    .line 907
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->stopPreview()V

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pendingStartPreview:Z

    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseRequiredAfterFocus:Z

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->snapRequiredAfterFocus:Z

    .line 912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;

    .line 913
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_29

    goto :goto_f

    .line 903
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 11
    .parameter "surfaceHolder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 446
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "surfaceChanged: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/google/android/apps/unveil/env/Size;->dimensionsAsString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_49

    .line 448
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCamera()V

    .line 450
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    if-nez v1, :cond_28

    .line 451
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to acquire camera before setting preview display"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :goto_27
    return-void

    .line 456
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->textureView:Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;

    if-eqz v1, :cond_3f

    .line 457
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->textureView:Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;

    invoke-interface {v1, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setPreviewTexture(Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_34

    goto :goto_27

    .line 461
    :catch_34
    move-exception v0

    .line 462
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to set preview display"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    .line 459
    .end local v0           #e:Ljava/io/IOException;
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_34

    goto :goto_27

    .line 469
    :cond_49
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseCamera()V

    goto :goto_27
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "surfaceHolder"

    .prologue
    .line 436
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "surfaceHolder"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseCamera()V

    .line 441
    return-void
.end method

.method public declared-synchronized takePicture(Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;)V
    .registers 7
    .parameter "shutterCb"
    .parameter "pictureCb"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 519
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-nez v1, :cond_9

    .line 561
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 523
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isTakingPicture()Z

    move-result v1

    if-nez v1, :cond_7

    .line 528
    if-eqz p1, :cond_16

    .line 529
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_16
    if-eqz p2, :cond_1d

    .line 532
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->pictureListeners:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_1d
    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    if-eq v1, v3, :cond_7

    .line 537
    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    if-eq v1, v2, :cond_2a

    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 538
    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->snapRequiredAfterFocus:Z
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_7

    .line 519
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 541
    :cond_31
    const/4 v1, 0x3

    :try_start_32
    iput v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I

    .line 543
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Before taking picture via hardware camera."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->previewing:Z

    .line 546
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraManager$9;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager$9;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    .line 559
    .local v0, scb:Landroid/hardware/Camera$ShutterCallback;
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 560
    sget-object v1, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "After taking picture via hardware camera."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_2e

    goto :goto_7
.end method

.method public takePictureFromFrame(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;)V
    .registers 5
    .parameter "picture"
    .parameter "cb"

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->sensorProviderProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getRoundedDeviceOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->roundOffOrientation(I)I

    move-result v0

    .line 1594
    .local v0, orientation:I
    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/env/Picture;->setOrientation(I)V

    .line 1595
    invoke-interface {p2, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;->onPictureTaken(Lcom/google/android/apps/unveil/env/Picture;)V

    .line 1596
    return-void
.end method

.method public takePictureFromFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;)V
    .registers 7
    .parameter "frame"
    .parameter "cb"

    .prologue
    .line 1602
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->sensorProviderProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getRoundedDeviceOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->roundOffOrientation(I)I

    move-result v0

    .line 1604
    .local v0, orientation:I
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap([BIII)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->takePictureFromFrame(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;)V

    .line 1606
    return-void
.end method

.method public transformToPictureCoordinates(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .parameter "rect"

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->transformToPictureCoordinatesInner(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method transformToPictureCoordinatesInner(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 31
    .parameter "rect"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/sensors/CameraManager;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    .line 1163
    const/16 v22, 0x0

    .line 1237
    :goto_a
    return-object v22

    .line 1166
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v16

    .line 1167
    .local v16, previewSize:Lcom/google/android/apps/unveil/env/Size;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPictureSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v4

    .line 1169
    .local v4, cameraSize:Lcom/google/android/apps/unveil/env/Size;
    const/16 v20, 0x0

    .line 1170
    .local v20, unwarpedRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_a4

    .line 1174
    new-instance v20, Landroid/graphics/Rect;

    .end local v20           #unwarpedRect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1175
    .restart local v20       #unwarpedRect:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v6, v22, v23

    .line 1176
    .local v6, horizontalScale:F
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    .line 1177
    .local v21, verticalScale:F
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v6

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1178
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v6

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1179
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1180
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1185
    .end local v6           #horizontalScale:F
    .end local v21           #verticalScale:F
    :cond_a4
    iget v11, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 1186
    .local v11, pictureMajorAxis:I
    iget v12, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 1187
    .local v12, pictureMinorAxis:I
    move-object/from16 v0, v16

    iget v14, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 1188
    .local v14, previewMajorAxis:I
    move-object/from16 v0, v16

    iget v15, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 1190
    .local v15, previewMinorAxis:I
    sget-object v22, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v23, "pictureMajorAxis: %d pictureMinorAxis %d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    sget-object v22, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v23, "previewMajorAxis: %d previewMinorAxis: %d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v0, v14

    move/from16 v23, v0

    div-float v22, v22, v23

    int-to-float v0, v12

    move/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 1196
    .local v18, scaleFactor:F
    const/high16 v22, 0x3f80

    cmpl-float v22, v18, v22

    if-lez v22, :cond_1ba

    .line 1199
    sget-object v22, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v23, "scale up factor: %f"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    if-nez p1, :cond_19a

    .line 1202
    int-to-float v0, v14

    move/from16 v22, v0

    mul-float v22, v22, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1203
    .local v8, newMajorAxis:I
    int-to-float v0, v15

    move/from16 v22, v0

    mul-float v22, v22, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1229
    .local v9, newMinorAxis:I
    :goto_133
    sget-object v22, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v23, "newMajorAxis: %d newMinorAxis: %d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    sub-int v22, v11, v8

    div-int/lit8 v7, v22, 0x2

    .line 1232
    .local v7, left:I
    sub-int v22, v12, v9

    div-int/lit8 v19, v22, 0x2

    .line 1233
    .local v19, top:I
    add-int v17, v7, v8

    .line 1234
    .local v17, right:I
    add-int v3, v19, v9

    .line 1235
    .local v3, bottom:I
    sget-object v22, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v23, "left: %d top: %d right: %d bottom: %d"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_a

    .line 1206
    .end local v3           #bottom:I
    .end local v7           #left:I
    .end local v8           #newMajorAxis:I
    .end local v9           #newMinorAxis:I
    .end local v17           #right:I
    .end local v19           #top:I
    :cond_19a
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1207
    .restart local v8       #newMajorAxis:I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9       #newMinorAxis:I
    goto/16 :goto_133

    .line 1212
    .end local v8           #newMajorAxis:I
    .end local v9           #newMinorAxis:I
    :cond_1ba
    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    div-float v10, v22, v23

    .line 1215
    .local v10, pictureAspectRatio:F
    if-nez p1, :cond_1f1

    .line 1216
    int-to-float v0, v14

    move/from16 v22, v0

    int-to-float v0, v15

    move/from16 v23, v0

    div-float v13, v22, v23

    .line 1217
    .local v13, previewAspectRatio:F
    div-float v18, v13, v10

    .line 1223
    .end local v13           #previewAspectRatio:F
    :goto_1ce
    sget-object v22, Lcom/google/android/apps/unveil/sensors/CameraManager;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v23, "fix aspect ratio factor: %f"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    move v8, v11

    .line 1226
    .restart local v8       #newMajorAxis:I
    int-to-float v0, v12

    move/from16 v22, v0

    div-float v22, v22, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9       #newMinorAxis:I
    goto/16 :goto_133

    .line 1219
    .end local v8           #newMajorAxis:I
    .end local v9           #newMinorAxis:I
    :cond_1f1
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v5, v22, v23

    .line 1220
    .local v5, cropRectAspectRatio:F
    div-float v18, v5, v10

    goto :goto_1ce
.end method

.method public unregisterListener(Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1283
    return-void
.end method

.method public useTextureView(Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager;->textureView:Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;

    .line 1678
    return-void
.end method
