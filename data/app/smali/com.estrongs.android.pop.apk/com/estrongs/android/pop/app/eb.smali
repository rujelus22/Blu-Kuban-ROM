.class Lcom/estrongs/android/pop/app/eb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eb;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/eb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/eb;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eb;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/eb;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ec;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ec;-><init>(Lcom/estrongs/android/pop/app/eb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eb;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eb;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ed;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ed;-><init>(Lcom/estrongs/android/pop/app/eb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15
.end method
