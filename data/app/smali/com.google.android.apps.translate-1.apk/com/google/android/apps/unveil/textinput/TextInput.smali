.class public Lcom/google/android/apps/unveil/textinput/TextInput;
.super Landroid/widget/FrameLayout;
.source "TextInput.java"

# interfaces
.implements Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;
.implements Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
.implements Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;,
        Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;,
        Lcom/google/android/apps/unveil/textinput/TextInput$Listener;,
        Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private autoFocus:Z

.field private blockingCaptureLatch:Ljava/util/concurrent/CountDownLatch;

.field private boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

.field private cameraLayoutComplete:Z

.field private cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

.field private capturedToCroppedMatrix:Landroid/graphics/Matrix;

.field private clientType:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

.field private final connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field private currentTraceActionId:I

.field private debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

.field private gridView:Landroid/view/View;

.field private imageLogging:Z

.field private listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

.field private previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

.field private queryId:J

.field private queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

.field private queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

.field private recentFrame:Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;

.field private smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

.field private sourceLanguage:Ljava/lang/String;

.field private final supportedLanguages:[Ljava/lang/String;

.field private textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

.field private final traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

.field private uiHandler:Landroid/os/Handler;

.field private userAgent:Ljava/lang/String;

.field private zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    sget-object v1, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->FELIX_TEXT:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->clientType:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->autoFocus:Z

    .line 150
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->imageLogging:Z

    .line 156
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraLayoutComplete:Z

    .line 164
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureLatch:Ljava/util/concurrent/CountDownLatch;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/textinput/R$array;->text_input_languages:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->supportedLanguages:[Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_default_user_agent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->userAgent:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_frontend_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, frontendUrl:Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frontend is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v1, Lcom/google/android/apps/unveil/textinput/TextInput$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$1;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->getInstallationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/apps/unveil/network/HttpClientConnector;->newHttpClientConnector(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;Ljava/lang/String;)Lcom/google/android/apps/unveil/network/HttpClientConnector;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 185
    new-instance v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;

    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextInput$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput$2;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    invoke-direct {v3, v4}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/TraceTracker;-><init>(Lcom/google/android/apps/unveil/network/NetworkInfoProvider;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    .line 191
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->newQueryManager()Lcom/google/android/apps/unveil/protocol/QueryManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/textinput/TextInput;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/sensors/CameraManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/unveil/textinput/TextInput;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->autoFocus:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/textinput/TextInput;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->startCameraPreviewAndLooper()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/textinput/SmudgeView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureAndSendFrame(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/textinput/TextInput;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/protocol/TraceTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/textinput/TextInput$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/unveil/textinput/TextInput;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/textinput/ZoomableContainer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    return-object v0
.end method

.method private asyncCaptureAndSendFrame(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
    .registers 5
    .parameter "queryListener"

    .prologue
    .line 420
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureLatch:Ljava/util/concurrent/CountDownLatch;

    .line 421
    new-instance v0, Lcom/google/android/apps/unveil/textinput/TextInput$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput$7;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/textinput/TextInput$7;->execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 431
    return-void
.end method

.method private blockingCaptureAndSendFrame(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
    .registers 13
    .parameter "queryListener"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 435
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 436
    .local v1, capturedPicture:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/android/apps/unveil/env/Picture;>;"
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8, v8}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 437
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    new-instance v8, Lcom/google/android/apps/unveil/textinput/TextInput$8;

    invoke-direct {v8, p0, v1}, Lcom/google/android/apps/unveil/textinput/TextInput$8;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v7, v10, v8}, Lcom/google/android/apps/unveil/sensors/CameraManager;->takePicture(Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;)V

    .line 449
    :try_start_16
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_28

    .line 454
    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->allocateBitmapAndMatriciesForCapture()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 455
    .local v2, croppedBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_27

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2d

    .line 488
    :cond_27
    :goto_27
    return-void

    .line 450
    .end local v2           #croppedBitmap:Landroid/graphics/Bitmap;
    :catch_28
    move-exception v3

    .line 451
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b

    .line 463
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v2       #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_2d
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 464
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->capturedToCroppedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 466
    new-instance v4, Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    const/16 v7, 0x5a

    invoke-direct {v4, v2, v7}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>(Landroid/graphics/Bitmap;I)V

    .line 467
    .local v4, imageToSend:Lcom/google/android/apps/unveil/env/Picture;
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v8, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v9, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 468
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v8, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->ACQUIRE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v9, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 470
    move-object v5, p1

    .line 471
    .local v5, listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;
    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->setPictureSize(Lcom/google/android/apps/unveil/env/Size;)V

    .line 473
    new-instance v7, Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    invoke-direct {v7}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addMsSinceEpoch(Ljava/lang/Long;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Picture;->getJpegData()[B

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addImageData([BLcom/google/android/apps/unveil/env/Size;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->sourceLanguage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addSourceLanguage(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->imageLogging:Z

    invoke-virtual {v7, v8}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->setCanLogImage(Z)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v6

    .line 479
    .local v6, textQuery:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    sget-object v7, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->FELIX_TEXT_IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->setQueryType(Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;)V

    .line 480
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->clientType:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    iget-object v7, v7, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->setSource(Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)V

    .line 481
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildGogglesRequestBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v5, v9}, Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQuery(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;Z)I

    .line 482
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setImageToDisplay(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 486
    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/sensors/CameraManager;->forceReleaseCamera()V

    goto/16 :goto_27
.end method

.method private calculatePreviewTranslation()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 411
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 412
    .local v0, location:[I
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getLocationInWindow([I)V

    .line 413
    aget v1, v0, v4

    .line 414
    .local v1, topOfCamera:I
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getLocationInWindow([I)V

    .line 415
    aget v2, v0, v4

    .line 416
    .local v2, topOfVisibleArea:I
    sub-int v3, v2, v1

    return v3
.end method

.method public static findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 6
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByTypeInner(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, ret:Landroid/view/View;
    if-nez v0, :cond_29

    .line 250
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find expected view of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Did you forget to define it in the xml layout?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_29
    return-object v0
.end method

.method private static findViewByTypeInner(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 8
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 257
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_12

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 276
    .end local p0
    :goto_f
    return-object p0

    .restart local p0
    :cond_10
    move-object p0, v5

    .line 261
    goto :goto_f

    :cond_12
    move-object v4, p0

    .line 263
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 264
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v2, :cond_3e

    move-object v4, p0

    .line 265
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object p0, v0

    .line 267
    goto :goto_f

    .line 269
    :cond_2f
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3b

    .line 270
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByTypeInner(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v3

    .line 271
    .local v3, ret:Landroid/view/View;
    if-eqz v3, :cond_3b

    move-object p0, v3

    .line 272
    goto :goto_f

    .line 264
    .end local v3           #ret:Landroid/view/View;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .end local v0           #child:Landroid/view/View;
    :cond_3e
    move-object p0, v5

    .line 276
    goto :goto_f
.end method

.method private maybeSendTraces()V
    .registers 7

    .prologue
    .line 846
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->hasPendingActions()Z

    move-result v1

    if-nez v1, :cond_9

    .line 868
    :goto_8
    return-void

    .line 849
    :cond_9
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    .line 850
    .local v0, traceRequestBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->populateRequest(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V

    .line 852
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->build()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v2

    const-class v3, Lcom/google/goggles/TracingProtos$TraceResponse;

    new-instance v4, Lcom/google/android/apps/unveil/textinput/TextInput$11;

    invoke-direct {v4, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$11;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private newQueryManager()Lcom/google/android/apps/unveil/protocol/QueryManager;
    .registers 8

    .prologue
    .line 832
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    new-instance v2, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    new-instance v3, Lcom/google/android/apps/unveil/textinput/TextInput$10;

    invoke-direct {v3, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$10;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    invoke-direct {v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;-><init>(Lcom/google/android/apps/unveil/env/Provider;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    new-instance v5, Lcom/google/android/apps/unveil/env/Viewport;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/unveil/env/Viewport;->computeNaturalOrientation(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/unveil/env/Viewport;-><init>(I)V

    invoke-static {v5}, Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/protocol/QueryManager;-><init>(Lcom/google/android/apps/unveil/protocol/TraceTracker;Lcom/google/android/apps/unveil/protocol/QueryManagerParams;Ljava/util/List;Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;)V

    return-object v0
.end method

.method private declared-synchronized restart()Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 290
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_72

    move v7, v8

    .line 292
    .local v7, previewAlreadyRunning:Z
    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z

    move-result v0

    if-nez v0, :cond_26

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/unveil/textinput/TextInput$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$5;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->setQueryListener(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setAcceptSmudges(Z)V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getAlphaValue()F

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/apps/unveil/textinput/TextInput$6;

    invoke-direct {v6, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$6;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->alpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->gridView:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->alpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->clearWords()V

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->NONE:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/TextMasker;->setSmudge(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->reset()V

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onRestart()V
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_76

    .line 324
    if-nez v7, :cond_74

    move v0, v8

    :goto_70
    monitor-exit p0

    return v0

    .end local v7           #previewAlreadyRunning:Z
    :cond_72
    move v7, v9

    .line 290
    goto :goto_10

    .restart local v7       #previewAlreadyRunning:Z
    :cond_74
    move v0, v9

    .line 324
    goto :goto_70

    .line 290
    .end local v7           #previewAlreadyRunning:Z
    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setQueryListener(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
    .registers 4
    .parameter "newListener"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    if-eqz v0, :cond_a

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->cancel(Z)V

    .line 283
    :cond_a
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    .line 284
    return-void
.end method

.method private declared-synchronized startCameraPreviewAndLooper()V
    .registers 10

    .prologue
    .line 799
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraLayoutComplete:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isCameraConnected()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_a3

    move-result v3

    if-nez v3, :cond_f

    .line 829
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 804
    :cond_f
    :try_start_f
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->startPreview()V

    .line 806
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-nez v3, :cond_a6

    .line 807
    new-instance v3, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraToDisplayRotation(Landroid/content/Context;)I

    move-result v5

    const/high16 v6, 0x41f0

    const/4 v7, 0x3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;IFI)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    .line 810
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->recentFrame:Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    .line 811
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    new-instance v4, Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    .line 813
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    new-instance v4, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    new-instance v6, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;Lcom/google/android/apps/unveil/nonstop/DebugView;Lcom/google/android/apps/unveil/ui/GlOverlay;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    .line 816
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/nonstop/DebugView;->setCallback(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V

    .line 821
    :goto_61
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    .line 822
    .local v0, previewSize:Lcom/google/android/apps/unveil/env/Size;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraToDisplayRotation(Landroid/content/Context;)I

    move-result v2

    .line 823
    .local v2, rotation:I
    const/16 v3, 0x5a

    if-eq v2, v3, :cond_77

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_81

    .line 825
    :cond_77
    new-instance v1, Lcom/google/android/apps/unveil/env/Size;

    iget v3, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget v4, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-direct {v1, v3, v4}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .end local v0           #previewSize:Lcom/google/android/apps/unveil/env/Size;
    .local v1, previewSize:Lcom/google/android/apps/unveil/env/Size;
    move-object v0, v1

    .line 827
    .end local v1           #previewSize:Lcom/google/android/apps/unveil/env/Size;
    .restart local v0       #previewSize:Lcom/google/android/apps/unveil/env/Size;
    :cond_81
    sget-object v3, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preview size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->startLoop(Lcom/google/android/apps/unveil/env/Size;)V
    :try_end_a1
    .catchall {:try_start_f .. :try_end_a1} :catchall_a3

    goto/16 :goto_d

    .line 799
    .end local v0           #previewSize:Lcom/google/android/apps/unveil/env/Size;
    .end local v2           #rotation:I
    :catchall_a3
    move-exception v3

    monitor-exit p0

    throw v3

    .line 818
    :cond_a6
    :try_start_a6
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseLoop()V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_a3

    goto :goto_61
.end method


# virtual methods
.method protected allocateBitmapAndMatriciesForCapture()Landroid/graphics/Bitmap;
    .registers 24

    .prologue
    .line 335
    new-instance v9, Lcom/google/android/apps/unveil/env/Size;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .line 336
    .local v9, displayedSize:Lcom/google/android/apps/unveil/env/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPictureSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v5

    .line 337
    .local v5, capturedImageSize:Lcom/google/android/apps/unveil/env/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    .line 338
    .local v3, cameraPreviewSize:Lcom/google/android/apps/unveil/env/Size;
    sget-object v18, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v19, "allocateBitmapsForCapture:displayedSize(%s), capturedImageSize(%s), cameraPreviewSize(%s), cameraManager(%d x %d)"

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    const/16 v21, 0x2

    aput-object v3, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getWidth()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHeight()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    if-eqz v5, :cond_74

    if-nez v3, :cond_85

    .line 346
    :cond_74
    sget-object v18, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v19, "Failed to get imageSize or previewSize"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    const/4 v7, 0x0

    .line 405
    :goto_84
    return-object v7

    .line 350
    :cond_85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraToDisplayRotation(Landroid/content/Context;)I

    move-result v8

    .line 351
    .local v8, displayRotation:I
    const/16 v18, 0x5a

    move/from16 v0, v18

    if-eq v8, v0, :cond_99

    const/16 v18, 0x10e

    move/from16 v0, v18

    if-ne v8, v0, :cond_bd

    .line 353
    :cond_99
    new-instance v6, Lcom/google/android/apps/unveil/env/Size;

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v18, v0

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .line 354
    .end local v5           #capturedImageSize:Lcom/google/android/apps/unveil/env/Size;
    .local v6, capturedImageSize:Lcom/google/android/apps/unveil/env/Size;
    new-instance v4, Lcom/google/android/apps/unveil/env/Size;

    iget v0, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v18, v0

    iget v0, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .end local v3           #cameraPreviewSize:Lcom/google/android/apps/unveil/env/Size;
    .local v4, cameraPreviewSize:Lcom/google/android/apps/unveil/env/Size;
    move-object v3, v4

    .end local v4           #cameraPreviewSize:Lcom/google/android/apps/unveil/env/Size;
    .restart local v3       #cameraPreviewSize:Lcom/google/android/apps/unveil/env/Size;
    move-object v5, v6

    .line 360
    .end local v6           #capturedImageSize:Lcom/google/android/apps/unveil/env/Size;
    .restart local v5       #capturedImageSize:Lcom/google/android/apps/unveil/env/Size;
    :cond_bd
    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 363
    .local v12, previewToPictureScale:F
    new-instance v14, Lcom/google/android/apps/unveil/env/Size;

    iget v0, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .line 369
    .local v14, upscaledPreview:Lcom/google/android/apps/unveil/env/Size;
    invoke-static {v14, v9}, Lcom/google/android/apps/unveil/env/ImageUtils;->generateUndistortTransformer(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Matrix;

    move-result-object v15

    .line 371
    .local v15, upscaledToDisplayedTransformer:Landroid/graphics/Matrix;
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v11, v0, [F

    .line 372
    .local v11, matrixValues:[F
    invoke-virtual {v15, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 373
    const/16 v18, 0x0

    aget v16, v11, v18

    .line 374
    .local v16, xScale:F
    const/16 v18, 0x4

    aget v17, v11, v18

    .line 377
    .local v17, yScale:F
    iget v0, v14, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v14, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v17

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 381
    .local v7, croppedBitmap:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/textinput/TextInput;->capturedToCroppedMatrix:Landroid/graphics/Matrix;

    .line 382
    const/16 v18, 0x5a

    move/from16 v0, v18

    if-eq v8, v0, :cond_164

    const/16 v18, 0x10e

    move/from16 v0, v18

    if-ne v8, v0, :cond_226

    .line 383
    :cond_164
    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v2, v0

    .line 384
    .local v2, axisPoint:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->capturedToCroppedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 385
    const/16 v18, 0x10e

    move/from16 v0, v18

    if-ne v8, v0, :cond_1a7

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->capturedToCroppedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v20, v0

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 397
    .end local v2           #axisPoint:F
    :cond_1a7
    :goto_1a7
    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 400
    .local v10, displayedToPictureScale:F
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->calculatePreviewTranslation()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    move/from16 v0, v18

    float-to-int v13, v0

    .line 401
    .local v13, shift:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->capturedToCroppedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v19, v0

    iget v0, v14, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v20, v0

    iget v0, v14, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v20, v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_84

    .line 391
    .end local v10           #displayedToPictureScale:F
    .end local v13           #shift:I
    :cond_226
    const/16 v18, 0xb4

    move/from16 v0, v18

    if-ne v8, v0, :cond_1a7

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextInput;->capturedToCroppedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    const/high16 v19, 0x4334

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_1a7
.end method

.method public cycleDebugMode(Z)V
    .registers 3
    .parameter "cycleUp"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/nonstop/DebugView;->cycleDebugMode(Z)V

    .line 661
    return-void
.end method

.method public finishInput()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 534
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "finish input explicitly."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_15

    .line 536
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseLoop()V

    .line 539
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 540
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->stopPreview()V

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->forceReleaseCamera()V

    .line 543
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    iget v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->tryToEndTraceAction(I)V

    .line 544
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->maybeSendTraces()V

    .line 548
    invoke-virtual {p0, v4}, Lcom/google/android/apps/unveil/textinput/TextInput;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setVisibility(I)V

    .line 555
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraLayoutComplete:Z

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    .line 557
    return-void
.end method

.method public getSupportedLanguages()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->supportedLanguages:[Ljava/lang/String;

    return-object v0
.end method

.method public gotResult(Ljava/lang/String;)V
    .registers 6
    .parameter "language"

    .prologue
    .line 724
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "got result: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    return-void
.end method

.method public isFrozen()Z
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public noResults()V
    .registers 4

    .prologue
    .line 717
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "no results."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 719
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->noResults()V

    .line 720
    return-void
.end method

.method public onCameraAcquisitionError()V
    .registers 4

    .prologue
    .line 749
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to acquire camera."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onCameraError()V

    .line 751
    return-void
.end method

.method public onCameraConnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 742
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Camera connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    invoke-virtual {p0, v3}, Lcom/google/android/apps/unveil/textinput/TextInput;->setVisibility(I)V

    .line 744
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->startCameraPreviewAndLooper()V

    .line 745
    return-void
.end method

.method public onCameraFlashControlError()V
    .registers 4

    .prologue
    .line 755
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to apply camera flash setting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    return-void
.end method

.method public onCameraLayoutComplete()V
    .registers 5

    .prologue
    .line 771
    sget-object v1, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Camera layout completed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraLayoutComplete:Z

    .line 775
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->startCameraPreviewAndLooper()V

    .line 780
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 781
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 782
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextInput$9;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$9;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->post(Ljava/lang/Runnable;)Z

    .line 792
    return-void
.end method

.method public declared-synchronized onCameraPreviewSizeChanged()V
    .registers 4

    .prologue
    .line 765
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Camera preview size changed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->autoFocus:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->setAutoFocus(Z)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 767
    monitor-exit p0

    return-void

    .line 765
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCameraQualityError()V
    .registers 4

    .prologue
    .line 760
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to apply camera quality settings."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    .local v1, context:Landroid/content/Context;
    const-class v2, Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-static {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/sensors/CameraManager;

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    .line 200
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setAcquireCameraOnVisibilityChange(Z)V

    .line 201
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->registerListener(Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;)V

    .line 202
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    sget-object v3, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->HIGH_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->requestPictureQuality(Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;)V

    .line 203
    const-class v2, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-static {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->zoomableContainer:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    .line 204
    const-class v2, Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-static {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/textinput/SmudgeView;

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    .line 205
    const-class v2, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    invoke-static {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    .line 206
    const-class v2, Lcom/google/android/apps/unveil/textinput/GridOverlayView;

    invoke-static {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->gridView:Landroid/view/View;

    .line 207
    const-class v2, Lcom/google/android/apps/unveil/nonstop/DebugView;

    invoke-static {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/nonstop/DebugView;

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    .line 208
    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-direct {v2, v1}, Lcom/google/android/apps/unveil/textinput/TextMasker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    .line 209
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->setTextMasker(Lcom/google/android/apps/unveil/textinput/TextMasker;)V

    .line 210
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setListener(Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;)V

    .line 211
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setAcceptSmudges(Z)V

    .line 217
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->uiHandler:Landroid/os/Handler;

    .line 218
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->audioManager:Landroid/media/AudioManager;

    .line 219
    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/textinput/TextInput$1;)V

    iput-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->recentFrame:Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;

    .line 221
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 222
    .local v0, application:Landroid/content/Context;
    instance-of v2, v0, Lcom/google/android/apps/unveil/UnveilContext;

    if-nez v2, :cond_b1

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    new-instance v3, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-direct {v3, v1}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v4

    const-class v5, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/unveil/env/Providers;->staticProvider(Ljava/lang/Object;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/unveil/textinput/TextInput$3;

    invoke-direct {v6, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$3;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/apps/unveil/sensors/CameraManager;->init(Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;)V

    .line 234
    :cond_b1
    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextInput$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/textinput/TextInput$4;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/textinput/TextInput;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public onNetworkError(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 736
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on network error: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onNetworkError(I)V

    .line 738
    return-void
.end method

.method public onResult()V
    .registers 4

    .prologue
    .line 729
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on result."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 731
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/textinput/TextMasker;->getSelectedWordsAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onResult(Ljava/lang/String;[Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public onSmudgeComplete(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;)V
    .registers 7
    .parameter "smudge"

    .prologue
    const/4 v4, 0x0

    .line 693
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on smudge complete."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    iget-wide v0, v0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->queryId:J

    iget-wide v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 708
    :cond_1c
    :goto_1c
    return-void

    .line 699
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextMasker;->setSmudge(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;)V

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textResponseRecieved()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 702
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->invalidate()V

    .line 704
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/textinput/TextMasker;->getSelectedWordsAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onResult(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1c

    .line 706
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    iget-wide v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onSearching(J)V

    goto :goto_1c
.end method

.method public onSmudgeProgress(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "smudge"
    .parameter "dirtyRect"

    .prologue
    const/4 v4, 0x0

    .line 679
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on smudge progress."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    iget-wide v0, v0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->queryId:J

    iget-wide v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textResponseRecieved()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 689
    :cond_1c
    :goto_1c
    return-void

    .line 686
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextMasker;->setSmudge(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;)V

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1c
.end method

.method public onSmudgeStarted()V
    .registers 4

    .prologue
    .line 673
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on smudge started."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->clearSmudges()V

    .line 675
    return-void
.end method

.method public onZoom()V
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onZoom()V

    .line 713
    return-void
.end method

.method public setAutoFocus(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 566
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->autoFocus:Z

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setFocusable(Z)V

    .line 569
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 570
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "camera does not support focus."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    :goto_1a
    return-void

    .line 574
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->enableContinuousFocus(Z)V

    .line 576
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "camera supports continuous focus."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    .line 580
    :cond_32
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "use image blurriness based auto focus."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a
.end method

.method public setClientType(Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;)V
    .registers 2
    .parameter "clientType"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->clientType:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    .line 499
    return-void
.end method

.method public setImageLogging(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->imageLogging:Z

    .line 589
    return-void
.end method

.method public setListener(Lcom/google/android/apps/unveil/textinput/TextInput$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    .line 492
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2
    .parameter "userAgent"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->userAgent:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public declared-synchronized snap()V
    .registers 13

    .prologue
    .line 604
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 605
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Preview is frozen, did you snap already?"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f6

    .line 652
    :goto_11
    monitor-exit p0

    return-void

    .line 608
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    iget v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    sget-object v2, Lcom/google/goggles/TracingProtos$PointVariable$Type;->USER:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addPoint(ILcom/google/goggles/TracingProtos$PointVariable$Type;)V

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->ACQUIRE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 611
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->gridView:Landroid/view/View;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const-wide/16 v3, 0x258

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->alpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 614
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->clearSmudges()V

    .line 616
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 617
    .local v10, rotationMatrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->recentFrame:Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->get()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v9

    .line 618
    .local v9, p:Lcom/google/android/apps/unveil/env/Picture;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraToDisplayRotation(Landroid/content/Context;)I

    move-result v8

    .line 619
    .local v8, displayRotation:I
    if-eqz v9, :cond_124

    .line 620
    const/16 v0, 0x5a

    if-eq v8, v0, :cond_5c

    const/16 v0, 0x10e

    if-ne v8, v0, :cond_f9

    .line 621
    :cond_5c
    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->height:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v7, v0

    .line 622
    .local v7, axisPoint:F
    int-to-float v0, v8

    invoke-virtual {v10, v0, v7, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 623
    const/16 v0, 0x10e

    if-ne v8, v0, :cond_8b

    .line 626
    const/4 v0, 0x0

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 628
    :cond_8b
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 629
    .local v11, scaleFactor:F
    invoke-virtual {v10, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 635
    .end local v7           #axisPoint:F
    :goto_9e
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->calculatePreviewTranslation()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setImageToDisplay(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 637
    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->recycle()V

    .line 642
    .end local v11           #scaleFactor:F
    :goto_b4
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x258

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->alpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryId:J

    .line 646
    new-instance v0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    iget-wide v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryId:J

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;-><init>(Lcom/google/android/apps/unveil/textinput/BoundingBoxView;Lcom/google/android/apps/unveil/textinput/TextMasker;J[Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->setQueryListener(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseLoop()V

    .line 649
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->listener:Lcom/google/android/apps/unveil/textinput/TextInput$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInput$Listener;->onPreviewFrozen()V

    .line 650
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->asyncCaptureAndSendFrame(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V

    .line 651
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setAcceptSmudges(Z)V
    :try_end_f4
    .catchall {:try_start_13 .. :try_end_f4} :catchall_f6

    goto/16 :goto_11

    .line 604
    .end local v8           #displayRotation:I
    .end local v9           #p:Lcom/google/android/apps/unveil/env/Picture;
    .end local v10           #rotationMatrix:Landroid/graphics/Matrix;
    :catchall_f6
    move-exception v0

    monitor-exit p0

    throw v0

    .line 631
    .restart local v8       #displayRotation:I
    .restart local v9       #p:Lcom/google/android/apps/unveil/env/Picture;
    .restart local v10       #rotationMatrix:Landroid/graphics/Matrix;
    :cond_f9
    int-to-float v0, v8

    :try_start_fa
    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 632
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 633
    .restart local v11       #scaleFactor:F
    invoke-virtual {v10, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_9e

    .line 639
    .end local v11           #scaleFactor:F
    :cond_124
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->smudgeView:Lcom/google/android/apps/unveil/textinput/SmudgeView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/textinput/SmudgeView;->setImageToDisplay(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    :try_end_12b
    .catchall {:try_start_fa .. :try_end_12b} :catchall_f6

    goto :goto_b4
.end method

.method public startInput(Ljava/lang/String;)Z
    .registers 7
    .parameter "language"

    .prologue
    const/4 v4, 0x0

    .line 516
    sget-object v1, Lcom/google/android/apps/unveil/textinput/TextInput;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "start input explicitly, language %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "auto-detect"

    :goto_10
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCamera()V

    .line 522
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->sourceLanguage:Ljava/lang/String;

    .line 523
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    iget v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginTraceAction(I)V

    .line 525
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    iget v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput;->currentTraceActionId:I

    sget-object v2, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CAMERA_PREVIEW_START:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addPoint(ILcom/google/goggles/TracingProtos$PointVariable$Type;)V

    .line 526
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->restart()Z

    move-result v0

    return v0

    :cond_40
    move-object v0, p1

    .line 516
    goto :goto_10
.end method
