.class public Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;
.super Lcom/google/android/apps/unveil/protocol/nonstop/SimpleEventListener;
.source "NetworkStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$DispatchingListener;,
        Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final listener:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;

.field private networkErrorNotified:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/SimpleEventListener;-><init>()V

    .line 32
    if-nez p1, :cond_d

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->listener:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;

    .line 36
    return-void
.end method

.method private onSuccessfulNetworkActivity()V
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->networkErrorNotified:Z

    if-eqz v0, :cond_c

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->networkErrorNotified:Z

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->listener:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;->onNetworkRecovered()V

    .line 68
    :cond_c
    return-void
.end method


# virtual methods
.method public onNetworkError(I)V
    .registers 3
    .parameter "statusCode"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->networkErrorNotified:Z

    if-eqz v0, :cond_5

    .line 61
    :goto_4
    return-void

    .line 58
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->networkErrorNotified:Z

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->listener:Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor$NetworkStatusListener;->onNetworkError(I)V

    goto :goto_4
.end method

.method public onNewResults(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            "Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->onSuccessfulNetworkActivity()V

    .line 51
    return-void
.end method

.method public onPullReceived()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->onSuccessfulNetworkActivity()V

    .line 46
    return-void
.end method

.method public onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 2
    .parameter "metadata"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/NetworkStatusMonitor;->onSuccessfulNetworkActivity()V

    .line 41
    return-void
.end method
