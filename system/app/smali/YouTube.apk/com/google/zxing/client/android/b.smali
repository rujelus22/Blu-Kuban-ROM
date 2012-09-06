.class final Lcom/google/zxing/client/android/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/client/android/CaptureActivity;

.field private final b:Ljava/util/Hashtable;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/lang/String;Lcom/google/zxing/k;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/client/android/b;->a:Lcom/google/zxing/client/android/CaptureActivity;

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/client/android/b;->d:Ljava/util/concurrent/CountDownLatch;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/b;->b:Ljava/util/Hashtable;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 53
    sget-object v1, Lcom/google/zxing/a;->k:Lcom/google/zxing/a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lcom/google/zxing/client/android/b;->b:Ljava/util/Hashtable;

    sget-object v2, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    if-eqz p2, :cond_2e

    .line 57
    iget-object v0, p0, Lcom/google/zxing/client/android/b;->b:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/d;->e:Lcom/google/zxing/d;

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2e
    iget-object v0, p0, Lcom/google/zxing/client/android/b;->b:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/d;->h:Lcom/google/zxing/d;

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method final a()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_8

    .line 68
    :goto_5
    iget-object v0, p0, Lcom/google/zxing/client/android/b;->c:Landroid/os/Handler;

    return-object v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public final run()V
    .registers 4

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 74
    new-instance v0, Lcom/google/zxing/client/android/a;

    iget-object v1, p0, Lcom/google/zxing/client/android/b;->a:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v2, p0, Lcom/google/zxing/client/android/b;->b:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/a;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/b;->c:Landroid/os/Handler;

    .line 75
    iget-object v0, p0, Lcom/google/zxing/client/android/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 77
    return-void
.end method
