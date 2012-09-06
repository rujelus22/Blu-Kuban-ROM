.class public Lcom/google/android/apps/unveil/nonstop/SceneDetector;
.super Lcom/google/android/apps/unveil/protocol/nonstop/SimpleEventListener;
.source "SceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/nonstop/SceneDetector$DispatchingListener;,
        Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;
    }
.end annotation


# static fields
.field private static final SIMILAR_THRESHOLD:I = 0x32

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private lastSceneSignature:[I

.field private lastSceneStartMillis:J

.field private final listener:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/SimpleEventListener;-><init>()V

    .line 38
    if-nez p1, :cond_d

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->listener:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;

    .line 42
    return-void
.end method

.method private belongsToCurrentScene(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)Z
    .registers 6
    .parameter "metadata"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->lastSceneStartMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private onNewScene(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 4
    .parameter "frame"

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSignature()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->lastSceneSignature:[I

    .line 86
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->lastSceneStartMillis:J

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->listener:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;->onSceneChanged()V

    .line 89
    return-void
.end method


# virtual methods
.method public onNewFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 5
    .parameter "frame"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->lastSceneSignature:[I

    if-nez v2, :cond_8

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->onNewScene(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 71
    :cond_7
    :goto_7
    return-void

    .line 65
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSignature()[I

    move-result-object v0

    .line 66
    .local v0, currentSig:[I
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->lastSceneSignature:[I

    invoke-static {v2, v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->diffSignature([I[I)I

    move-result v1

    .line 67
    .local v1, diff:I
    const/16 v2, 0x32

    if-le v1, v2, :cond_7

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->onNewScene(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    goto :goto_7
.end method

.method public onNewResults(Ljava/util/List;)V
    .registers 6
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
    .line 53
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 54
    .local v1, result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 55
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->listener:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/apps/unveil/results/ResultItem;

    invoke-interface {v3, v2}, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;->onResult(Lcom/google/android/apps/unveil/results/ResultItem;)V

    goto :goto_4

    .line 58
    .end local v1           #result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;"
    :cond_1e
    return-void
.end method

.method public onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 3
    .parameter "metadata"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->belongsToCurrentScene(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector;->listener:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;->onScenePushed()V

    .line 49
    :cond_b
    return-void
.end method
