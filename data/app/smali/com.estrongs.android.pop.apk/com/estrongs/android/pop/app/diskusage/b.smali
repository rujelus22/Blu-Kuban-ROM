.class Lcom/estrongs/android/pop/app/diskusage/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/diskusage/b;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x5

    const/4 v3, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/b;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_1f

    const-string v0, "EEE"

    const-string v1, "send delete end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v0, "EEE"

    const-string v1, "send delete end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1e

    :catchall_36
    move-exception v0

    const-string v1, "EEE"

    const-string v2, "send delete end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/b;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v0
.end method
