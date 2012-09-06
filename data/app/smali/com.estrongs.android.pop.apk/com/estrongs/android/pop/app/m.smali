.class Lcom/estrongs/android/pop/app/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/m;)Lcom/estrongs/android/pop/app/AudioPlayerService;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Lcom/estrongs/android/pop/app/AudioPlayerService;)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(Lcom/estrongs/android/pop/app/AudioPlayerService;)[Z

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_1b

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(Lcom/estrongs/android/pop/app/AudioPlayerService;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    :cond_1b
    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/aq;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/aq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/aq;->g(I)V

    :cond_31
    :goto_31
    return v3

    :cond_32
    iget-object v1, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v1

    if-eq v1, v0, :cond_31

    iget-object v0, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/m;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Lcom/estrongs/android/pop/app/AudioPlayerService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    new-instance v0, Lcom/estrongs/android/pop/app/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/n;-><init>(Lcom/estrongs/android/pop/app/m;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/n;->start()V

    goto :goto_31
.end method
