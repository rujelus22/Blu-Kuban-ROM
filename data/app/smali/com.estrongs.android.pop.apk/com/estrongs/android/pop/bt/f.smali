.class Lcom/estrongs/android/pop/bt/f;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/estrongs/android/pop/bt/g;


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/f;->a:Lcom/estrongs/android/pop/bt/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/g;->b()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/f;->a:Lcom/estrongs/android/pop/bt/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/g;->c()V

    return-void
.end method

.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/f;->a:Lcom/estrongs/android/pop/bt/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/g;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
