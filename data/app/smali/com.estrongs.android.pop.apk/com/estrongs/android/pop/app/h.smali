.class Lcom/estrongs/android/pop/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/bm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/h;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/h;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/io/a/a/a;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/h;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/io/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/h;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v1

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/estrongs/android/pop/app/h;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v0
.end method
