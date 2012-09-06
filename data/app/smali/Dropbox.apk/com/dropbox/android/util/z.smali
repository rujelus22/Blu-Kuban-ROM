.class final Lcom/dropbox/android/util/z;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/y;


# direct methods
.method constructor <init>(Lcom/dropbox/android/util/y;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dropbox/android/util/z;->a:Lcom/dropbox/android/util/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p2}, Lcom/dropbox/android/util/y;->a(Landroid/content/Intent;)Lcom/dropbox/android/util/C;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/dropbox/android/util/z;->a:Lcom/dropbox/android/util/y;

    monitor-enter v1

    .line 84
    :try_start_7
    iget-object v2, p0, Lcom/dropbox/android/util/z;->a:Lcom/dropbox/android/util/y;

    invoke-static {v2}, Lcom/dropbox/android/util/y;->a(Lcom/dropbox/android/util/y;)Lcom/dropbox/android/util/C;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dropbox/android/util/C;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 85
    iget-object v2, p0, Lcom/dropbox/android/util/z;->a:Lcom/dropbox/android/util/y;

    invoke-static {v2, v0}, Lcom/dropbox/android/util/y;->a(Lcom/dropbox/android/util/y;Lcom/dropbox/android/util/C;)V

    .line 86
    iget-object v0, p0, Lcom/dropbox/android/util/z;->a:Lcom/dropbox/android/util/y;

    invoke-static {v0}, Lcom/dropbox/android/util/y;->b(Lcom/dropbox/android/util/y;)Lcom/dropbox/android/util/B;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/android/util/z;->a:Lcom/dropbox/android/util/y;

    invoke-static {v2}, Lcom/dropbox/android/util/y;->a(Lcom/dropbox/android/util/y;)Lcom/dropbox/android/util/C;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/dropbox/android/util/B;->a(Lcom/dropbox/android/util/C;)V

    .line 88
    :cond_27
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0
.end method
