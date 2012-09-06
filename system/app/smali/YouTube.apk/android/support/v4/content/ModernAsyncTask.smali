.class abstract Landroid/support/v4/content/ModernAsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/BlockingQueue;

.field private static final d:Landroid/support/v4/content/e;

.field private static volatile e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Ljava/util/concurrent/FutureTask;

.field private volatile g:Landroid/support/v4/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 54
    new-instance v0, Landroid/support/v4/content/c;

    invoke-direct {v0}, Landroid/support/v4/content/c;-><init>()V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/ThreadFactory;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->c:Ljava/util/concurrent/BlockingQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Landroid/support/v4/content/ModernAsyncTask;->c:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/Executor;

    .line 75
    new-instance v0, Landroid/support/v4/content/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/e;-><init>(B)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->d:Landroid/support/v4/content/e;

    .line 77
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method protected static varargs a()V
    .registers 0

    .prologue
    .line 226
    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->g:Landroid/support/v4/content/ModernAsyncTask$Status;

    return-void
.end method
