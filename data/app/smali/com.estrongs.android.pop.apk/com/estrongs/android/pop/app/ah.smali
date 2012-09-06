.class Lcom/estrongs/android/pop/app/ah;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ag;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ag;II)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ah;->a:Lcom/estrongs/android/pop/app/ag;

    iput p2, p0, Lcom/estrongs/android/pop/app/ah;->b:I

    iput p3, p0, Lcom/estrongs/android/pop/app/ah;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ah;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/android/pop/app/ag;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/ah;->b:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e(I)Z

    iget v0, p0, Lcom/estrongs/android/pop/app/ah;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ah;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/android/pop/app/ag;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->q(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    :cond_1d
    return-void
.end method
