.class Lcom/estrongs/android/pop/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/c/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/c/d;->a:Lcom/estrongs/android/pop/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/c/d;->a:Lcom/estrongs/android/pop/c/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/c/c;->a(Lcom/estrongs/android/pop/c/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/estrongs/android/pop/c/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/c/d;->a:Lcom/estrongs/android/pop/c/c;

    iget-object v2, p0, Lcom/estrongs/android/pop/c/d;->a:Lcom/estrongs/android/pop/c/c;

    invoke-static {v2}, Lcom/estrongs/android/pop/c/c;->b(Lcom/estrongs/android/pop/c/c;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/c/e;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/net/Socket;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_0

    :catch_1b
    move-exception v0

    goto :goto_8
.end method
