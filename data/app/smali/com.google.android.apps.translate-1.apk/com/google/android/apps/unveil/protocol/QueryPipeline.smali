.class public Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.super Ljava/lang/Object;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;,
        Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;,
        Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;,
        Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;,
        Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;,
        Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;,
        Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;
    }
.end annotation


# static fields
.field private static final QUEUED_IMAGE_REQUEST_DELAY_MS:I = 0x3e8

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final application:Lcom/google/android/apps/unveil/UnveilContext;

.field private currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

.field private currentQueryListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;

.field private currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

.field private final imageSaver:Lcom/google/android/apps/unveil/env/ImageSaver;

.field private pendingQuery:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

.field private photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

.field private final posterityRequestsHandler:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;

.field private final queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

.field private queryPicture:Lcom/google/android/apps/unveil/env/Picture;

.field private volatile queuedImageRequest:Z

.field private volatile readyToSendImageRequest:Z

.field private volatile sentBarcodeRequest:Z

.field private final traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/env/ImageSaver;)V
    .registers 5
    .parameter "application"
    .parameter "imageSaver"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z

    .line 199
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 200
    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getTraceTracker()Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    .line 201
    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getQueryManager()Lcom/google/android/apps/unveil/protocol/QueryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

    .line 202
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->imageSaver:Lcom/google/android/apps/unveil/env/ImageSaver;

    .line 203
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;-><init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->posterityRequestsHandler:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;

    .line 204
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/UnveilContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/TraceTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/env/ImageSaver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->imageSaver:Lcom/google/android/apps/unveil/env/ImageSaver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->posterityRequestsHandler:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sentBarcodeRequest:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->handleBarcodeResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queuedImageRequest:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queuedImageRequest:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sendImageRequest(Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V

    return-void
.end method

.method private handleBarcodeResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 7
    .parameter "queryResponse"

    .prologue
    const/4 v4, 0x0

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    if-eqz v0, :cond_15

    .line 334
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "currentMakeRequestTask was not null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    iget-object v0, v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 340
    :cond_15
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Will check for a queued image request in %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;-><init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    return-void
.end method

.method private sendImageRequest(Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V
    .registers 8
    .parameter "listener"
    .parameter "isPosterity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 261
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queuedImageRequest:Z

    .line 262
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Sending image request."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentQueryListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->getPendingQuery()Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentQueryListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQuery(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;Z)I

    .line 266
    return-void
.end method


# virtual methods
.method public final asyncProcessPicture()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    if-nez v0, :cond_f

    .line 601
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "asyncProcessPicture was called, but photoTask is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    :cond_e
    :goto_e
    return-void

    .line 604
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 605
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e
.end method

.method public cancel()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Canceling."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2a

    .line 231
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Canceling the make request task."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->cancel(Z)Z

    .line 233
    iput-object v5, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    .line 235
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_48

    .line 237
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Canceling the save query image task."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->cancel(Z)Z

    .line 239
    iput-object v5, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    .line 241
    :cond_48
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentQueryListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;

    if-eqz v0, :cond_5a

    .line 242
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Canceling the query listener."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentQueryListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->cancel()V

    .line 245
    :cond_5a
    return-void
.end method

.method public getPendingQuery()Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->pendingQuery:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    if-nez v0, :cond_a

    .line 380
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;-><init>()V

    throw v0

    .line 382
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->pendingQuery:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    return-object v0
.end method

.method public final getPicture()Lcom/google/android/apps/unveil/env/Picture;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 629
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-nez v1, :cond_15

    .line 630
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "PhotoTask and picture are null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 643
    :goto_14
    return-object v1

    .line 633
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-eqz v1, :cond_1c

    .line 634
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    goto :goto_14

    .line 637
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/Picture;
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_24} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1c .. :try_end_24} :catch_31

    goto :goto_14

    .line 638
    :catch_25
    move-exception v0

    .line 639
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "PhotoTask interrupted"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 640
    goto :goto_14

    .line 641
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_31
    move-exception v0

    .line 642
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "PhotoTask failed"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 643
    goto :goto_14
.end method

.method public hasPendingQuery()Z
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->pendingQuery:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSentBarcodeRequest()Z
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sentBarcodeRequest:Z

    return v0
.end method

.method public final isPictureReady()Z
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    if-eqz v0, :cond_11

    .line 614
    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 616
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public resend(Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V
    .registers 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 255
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Resending with pending query: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->getPendingQuery()Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-direct {p0, p1, v4}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sendImageRequest(Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V

    .line 257
    return-void
.end method

.method public sendLocalBarcodeQuery(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V
    .registers 7
    .parameter "query"
    .parameter "eventListener"

    .prologue
    const/4 v3, 0x0

    .line 283
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Sending local barcode query."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getLocalBarcode()Lcom/google/android/apps/unveil/barcode/Barcode;

    move-result-object v0

    if-nez v0, :cond_23

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot perform local barcode query with a barcodeless QueryBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_23
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->LOCAL_BARCODE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->setQueryType(Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sentBarcodeRequest:Z

    .line 294
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Sending local barcode request"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->resetTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    new-instance v2, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;-><init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQuery(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;Z)I

    .line 330
    return-void
.end method

.method public setPendingQuery(Lcom/google/android/apps/unveil/protocol/QueryBuilder;)V
    .registers 6
    .parameter "pendingQuery"

    .prologue
    .line 366
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Pending query set: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->pendingQuery:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 368
    return-void
.end method

.method public setPosterityListener(Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->posterityRequestsHandler:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->setListener(Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;)V

    .line 557
    return-void
.end method

.method public setProcessedPicture(Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 3
    .parameter "processedPicture"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    .line 591
    return-void
.end method

.method public start(Landroid/content/Intent;Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V
    .registers 6
    .parameter "intent"
    .parameter "picture"
    .parameter "listener"

    .prologue
    .line 213
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    .line 214
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/env/Picture;->getCroppedPicture()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onImageCropped(Lcom/google/android/apps/unveil/env/Picture;)V

    .line 216
    :cond_b
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;-><init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Landroid/content/Intent;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method public startNewQuery()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->pendingQuery:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 387
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z

    .line 388
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sentBarcodeRequest:Z

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->posterityRequestsHandler:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->reset()V

    .line 390
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Starting new query."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->resetTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->startNewTraceAction()V

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->clearTrackingId()V

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->setSessionId(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    if-eqz v0, :cond_3b

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->cancel(Z)Z

    .line 397
    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    .line 400
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->sendLogs(Lcom/google/android/apps/unveil/UnveilContext;)V

    .line 401
    return-void
.end method

.method public final startRotatePhotoTask(Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 5
    .parameter "rawPicture"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-ne p1, v0, :cond_1c

    .line 570
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Setting same picture twice!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    .line 577
    new-instance v0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    const v1, 0x63d80

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;-><init>(Lcom/google/android/apps/unveil/env/Picture;I)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    .line 579
    return-void

    .line 571
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    if-eqz v0, :cond_e

    .line 572
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queryPicture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->recycle()V

    goto :goto_e
.end method
