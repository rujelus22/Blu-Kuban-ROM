.class Lcom/estrongs/android/pop/app/ca;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Z

.field d:Ljava/util/concurrent/Semaphore;

.field e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field f:Z

.field g:Lcom/estrongs/android/pop/app/ce;

.field h:Landroid/widget/CheckBox;

.field private i:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;JLjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ca;->d:Ljava/util/concurrent/Semaphore;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ca;->f:Z

    new-instance v0, Lcom/estrongs/android/pop/app/cb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cb;-><init>(Lcom/estrongs/android/pop/app/ca;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ca;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-wide p2, p0, Lcom/estrongs/android/pop/app/ca;->a:J

    iput-object p4, p0, Lcom/estrongs/android/pop/app/ca;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ca;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ca;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ca;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_12

    :goto_f
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ca;->f:Z

    return v0

    :catch_12
    move-exception v0

    goto :goto_f
.end method
