.class Lcom/estrongs/android/pop/app/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/k;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/k;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/k;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/k;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/k;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v0
.end method
