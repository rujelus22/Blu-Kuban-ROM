.class Lcom/estrongs/android/pop/app/ee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ee;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ee;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ee;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V

    :cond_a
    return-void
.end method
