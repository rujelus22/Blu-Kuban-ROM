.class Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityThreadFactory"
.end annotation


# instance fields
.field private final defaultFactory:Ljava/util/concurrent/ThreadFactory;

.field private final threadPriority:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "threadPriority"

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput p1, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;->threadPriority:I

    .line 412
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    .line 413
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 406
    iget v0, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;->threadPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .parameter "r"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory$1;-><init>(Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
