.class Lcom/estrongs/android/pop/app/imageviewer/at;
.super Lcom/estrongs/android/pop/app/imageviewer/ap;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ap;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/au;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/au;-><init>(Lcom/estrongs/android/pop/app/imageviewer/at;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->b:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->c:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;->a(Lcom/estrongs/android/pop/app/imageviewer/aq;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/at;)Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/at;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public d(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/at;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
