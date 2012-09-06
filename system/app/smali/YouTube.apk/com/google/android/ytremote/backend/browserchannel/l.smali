.class final Lcom/google/android/ytremote/backend/browserchannel/l;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/i;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/l;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    .line 476
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 482
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/l;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->h(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/l;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->j(Lcom/google/android/ytremote/backend/browserchannel/i;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->a(Z)V

    .line 483
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/l;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->c(Lcom/google/android/ytremote/backend/browserchannel/i;)Z
    :try_end_14
    .catch Lcom/google/android/ytremote/logic/exception/NotFoundException; {:try_start_0 .. :try_end_14} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_33
    .catch Lcom/google/android/ytremote/logic/exception/HttpConnectionException; {:try_start_0 .. :try_end_14} :catch_3e
    .catch Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException; {:try_start_0 .. :try_end_14} :catch_49
    .catch Lcom/google/android/ytremote/backend/browserchannel/NetworkNotAvailableException; {:try_start_0 .. :try_end_14} :catch_73
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_7e

    move-result v0

    if-nez v0, :cond_0

    .line 513
    :goto_17
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/l;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->k(Lcom/google/android/ytremote/backend/browserchannel/i;)V

    .line 514
    :goto_1c
    return-void

    .line 488
    :catch_1d
    move-exception v0

    .line 489
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get: server not found."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 491
    :catch_28
    move-exception v0

    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hanging GET thread interrupted."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 493
    :catch_33
    move-exception v0

    .line 494
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 495
    :catch_3e
    move-exception v0

    .line 496
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 497
    :catch_49
    move-exception v0

    .line 498
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response on hanging get "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    :pswitch_6b
    goto :goto_17

    .line 505
    :pswitch_6c
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/l;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Z)V

    goto :goto_1c

    .line 508
    :catch_73
    move-exception v0

    .line 509
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on hanging get. No network connection: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 510
    :catch_7e
    move-exception v0

    .line 511
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected exception on hanging get"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 499
    nop

    :pswitch_data_8a
    .packed-switch 0x191
        :pswitch_6c
        :pswitch_6b
        :pswitch_6c
    .end packed-switch
.end method
