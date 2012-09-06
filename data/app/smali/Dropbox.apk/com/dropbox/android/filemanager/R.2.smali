.class final Lcom/dropbox/android/filemanager/R;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/F;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/F;)V
    .registers 3
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/dropbox/android/filemanager/R;->a:Lcom/dropbox/android/filemanager/F;

    .line 596
    const-string v0, "LocalThumbManager$Thumbnailer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 597
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 602
    .line 604
    :goto_0
    iget-object v0, p0, Lcom/dropbox/android/filemanager/R;->a:Lcom/dropbox/android/filemanager/F;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/F;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 605
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/dropbox/android/filemanager/R;->a:Lcom/dropbox/android/filemanager/F;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/F;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_36

    move-result v0

    if-eqz v0, :cond_1f

    .line 607
    :try_start_13
    iget-object v0, p0, Lcom/dropbox/android/filemanager/R;->a:Lcom/dropbox/android/filemanager/F;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/F;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_36
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_7

    .line 608
    :catch_1d
    move-exception v0

    goto :goto_7

    .line 610
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/dropbox/android/filemanager/R;->a:Lcom/dropbox/android/filemanager/F;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/F;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/P;

    .line 611
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_36

    .line 613
    iget-object v1, p0, Lcom/dropbox/android/filemanager/R;->a:Lcom/dropbox/android/filemanager/F;

    invoke-static {v1}, Lcom/dropbox/android/filemanager/F;->b(Lcom/dropbox/android/filemanager/F;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/android/filemanager/P;->a(Lcom/dropbox/android/filemanager/P;Landroid/content/Context;)V

    goto :goto_0

    .line 611
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method
