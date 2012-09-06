.class Lcom/estrongs/android/pop/bt/i;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/bt/h;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/i;->a:Lcom/estrongs/android/pop/bt/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/i;->a:Lcom/estrongs/android/pop/bt/h;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/h;->a()V

    return-void
.end method
