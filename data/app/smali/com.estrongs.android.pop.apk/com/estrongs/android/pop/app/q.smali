.class Lcom/estrongs/android/pop/app/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/q;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/q;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->q()Z

    return-void
.end method
