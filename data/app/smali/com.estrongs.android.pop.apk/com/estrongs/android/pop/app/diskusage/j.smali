.class Lcom/estrongs/android/pop/app/diskusage/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/diskusage/j;->b:Ljava/util/List;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/k;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/j;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/diskusage/k;-><init>(Lcom/estrongs/android/pop/app/diskusage/j;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/t;->a([Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/t;->b()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/t;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->z(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->A(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    goto :goto_4a

    :cond_75
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    goto :goto_59
.end method
