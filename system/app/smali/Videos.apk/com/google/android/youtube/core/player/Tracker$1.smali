.class final Lcom/google/android/youtube/core/player/Tracker$1;
.super Ljava/lang/Thread;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/Tracker;->newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;IZ)Lcom/google/android/youtube/core/player/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$analytics:Lcom/google/android/youtube/core/Analytics;

.field final synthetic val$clock:Lcom/google/android/youtube/core/utils/Clock;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$samplingWeight:I

.field final synthetic val$shouldCountPlaybacks:Z

.field final synthetic val$statsClient:Lcom/google/android/youtube/core/client/StatsClient;

.field final synthetic val$tracker:[Lcom/google/android/youtube/core/player/Tracker;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/google/android/youtube/core/player/Tracker;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;IZLandroid/os/ConditionVariable;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$tracker:[Lcom/google/android/youtube/core/player/Tracker;

    iput-object p3, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$analytics:Lcom/google/android/youtube/core/Analytics;

    iput-object p4, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$statsClient:Lcom/google/android/youtube/core/client/StatsClient;

    iput-object p5, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$clock:Lcom/google/android/youtube/core/utils/Clock;

    iput p6, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$samplingWeight:I

    iput-boolean p7, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$shouldCountPlaybacks:Z

    iput-object p8, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 484
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, version:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$tracker:[Lcom/google/android/youtube/core/player/Tracker;

    const/4 v9, 0x0

    new-instance v0, Lcom/google/android/youtube/core/player/Tracker;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$analytics:Lcom/google/android/youtube/core/Analytics;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$statsClient:Lcom/google/android/youtube/core/client/StatsClient;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$clock:Lcom/google/android/youtube/core/utils/Clock;

    iget v6, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$samplingWeight:I

    iget-boolean v7, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$shouldCountPlaybacks:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/player/Tracker;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/client/StatsClient;Lcom/google/android/youtube/core/utils/Clock;Ljava/lang/String;IZ)V

    aput-object v0, v8, v9

    .line 488
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 489
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 490
    return-void
.end method
