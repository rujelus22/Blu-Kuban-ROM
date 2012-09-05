.class final Lcom/google/android/youtube/core/client/aa;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

.field final synthetic c:Lorg/apache/http/client/HttpClient;

.field final synthetic d:Ljava/util/concurrent/Executor;

.field final synthetic e:Lcom/google/android/youtube/core/utils/c;

.field final synthetic f:Lcom/google/android/youtube/core/Analytics;

.field final synthetic g:I

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Lcom/google/android/youtube/core/Analytics;IZLjava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/google/android/youtube/core/client/aa;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/youtube/core/client/aa;->b:[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iput-object p3, p0, Lcom/google/android/youtube/core/client/aa;->c:Lorg/apache/http/client/HttpClient;

    iput-object p4, p0, Lcom/google/android/youtube/core/client/aa;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/youtube/core/client/aa;->e:Lcom/google/android/youtube/core/utils/c;

    iput-object p6, p0, Lcom/google/android/youtube/core/client/aa;->f:Lcom/google/android/youtube/core/Analytics;

    iput p7, p0, Lcom/google/android/youtube/core/client/aa;->g:I

    iput-boolean p8, p0, Lcom/google/android/youtube/core/client/aa;->h:Z

    iput-object p9, p0, Lcom/google/android/youtube/core/client/aa;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/youtube/core/client/aa;->j:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/client/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->e(Landroid/content/Context;)I

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

    move-result-object v6

    .line 688
    iget-object v10, p0, Lcom/google/android/youtube/core/client/aa;->b:[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    const/4 v11, 0x0

    new-instance v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/aa;->c:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/aa;->d:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/youtube/core/client/aa;->e:Lcom/google/android/youtube/core/utils/c;

    invoke-static {}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->l()Ljava/security/SecureRandom;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/core/client/aa;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/youtube/core/client/aa;->f:Lcom/google/android/youtube/core/Analytics;

    iget v7, p0, Lcom/google/android/youtube/core/client/aa;->g:I

    iget-boolean v8, p0, Lcom/google/android/youtube/core/client/aa;->h:Z

    iget-object v9, p0, Lcom/google/android/youtube/core/client/aa;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;-><init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Ljava/util/Random;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZLjava/lang/String;)V

    aput-object v0, v10, v11

    .line 691
    iget-object v0, p0, Lcom/google/android/youtube/core/client/aa;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 692
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 693
    return-void
.end method
