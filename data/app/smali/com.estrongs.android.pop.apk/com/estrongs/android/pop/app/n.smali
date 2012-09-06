.class Lcom/estrongs/android/pop/app/n;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/m;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/n;->a:Lcom/estrongs/android/pop/app/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/n;->a:Lcom/estrongs/android/pop/app/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/m;->a(Lcom/estrongs/android/pop/app/m;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->q()Z

    return-void
.end method
