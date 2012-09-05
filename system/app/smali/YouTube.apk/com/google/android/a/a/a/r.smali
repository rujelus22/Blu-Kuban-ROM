.class final Lcom/google/android/a/a/a/r;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/a/a/a/n;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/a/n;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/a/a/a/r;->a:Lcom/google/android/a/a/a/n;

    .line 300
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 306
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/a/r;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->e(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/a/r;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v1}, Lcom/google/android/a/a/a/n;->k(Lcom/google/android/a/a/a/n;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/a;->b(Z)V

    .line 307
    iget-object v0, p0, Lcom/google/android/a/a/a/r;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->c(Lcom/google/android/a/a/a/n;)Z
    :try_end_14
    .catch Lcom/google/android/a/d/a/b; {:try_start_0 .. :try_end_14} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_33
    .catch Lcom/google/android/a/d/a/a; {:try_start_0 .. :try_end_14} :catch_3e
    .catch Lcom/google/android/a/a/a/w; {:try_start_0 .. :try_end_14} :catch_49
    .catch Lcom/google/android/a/a/a/u; {:try_start_0 .. :try_end_14} :catch_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_7d

    move-result v0

    if-nez v0, :cond_0

    .line 337
    :goto_17
    iget-object v0, p0, Lcom/google/android/a/a/a/r;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->l(Lcom/google/android/a/a/a/n;)V

    .line 338
    :goto_1c
    return-void

    .line 312
    :catch_1d
    move-exception v0

    .line 313
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get: server not found."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 315
    :catch_28
    move-exception v0

    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hanging GET thread interrupted."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 317
    :catch_33
    move-exception v0

    .line 318
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 319
    :catch_3e
    move-exception v0

    .line 320
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 321
    :catch_49
    move-exception v0

    .line 322
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response on hanging get "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/a/a/a/w;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v0}, Lcom/google/android/a/a/a/w;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_88

    :pswitch_6b
    goto :goto_17

    .line 329
    :pswitch_6c
    iget-object v0, p0, Lcom/google/android/a/a/a/r;->a:Lcom/google/android/a/a/a/n;

    invoke-virtual {v0}, Lcom/google/android/a/a/a/n;->a()V

    goto :goto_1c

    .line 332
    :catch_72
    move-exception v0

    .line 333
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get. No network connection: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 334
    :catch_7d
    move-exception v0

    .line 335
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected exception on hanging get"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 323
    :pswitch_data_88
    .packed-switch 0x191
        :pswitch_6c
        :pswitch_6b
        :pswitch_6c
    .end packed-switch
.end method
