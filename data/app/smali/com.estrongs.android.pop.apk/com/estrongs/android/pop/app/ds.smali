.class Lcom/estrongs/android/pop/app/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method
