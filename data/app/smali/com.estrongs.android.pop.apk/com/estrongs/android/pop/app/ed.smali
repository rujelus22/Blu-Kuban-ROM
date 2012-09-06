.class Lcom/estrongs/android/pop/app/ed;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ed;->a:Lcom/estrongs/android/pop/app/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ed;->a:Lcom/estrongs/android/pop/app/eb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/eb;->a(Lcom/estrongs/android/pop/app/eb;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ed;->a:Lcom/estrongs/android/pop/app/eb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/eb;->a(Lcom/estrongs/android/pop/app/eb;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V

    :cond_16
    return-void
.end method
