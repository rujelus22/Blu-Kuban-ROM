.class Lcom/estrongs/android/pop/app/dy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/dx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dx;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dy;->a:Lcom/estrongs/android/pop/app/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dy;->a:Lcom/estrongs/android/pop/app/dx;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dx;->a(Lcom/estrongs/android/pop/app/dx;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dy;->a:Lcom/estrongs/android/pop/app/dx;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dx;->a(Lcom/estrongs/android/pop/app/dx;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dy;->a:Lcom/estrongs/android/pop/app/dx;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dx;->a(Lcom/estrongs/android/pop/app/dx;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_40

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dy;->a:Lcom/estrongs/android/pop/app/dx;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dx;->a(Lcom/estrongs/android/pop/app/dx;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dy;->a:Lcom/estrongs/android/pop/app/dx;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dx;->a(Lcom/estrongs/android/pop/app/dx;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V

    :cond_3f
    return-void

    :cond_40
    const-wide/16 v0, 0xc8

    :try_start_42
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_0

    :catch_46
    move-exception v0

    goto :goto_0
.end method
