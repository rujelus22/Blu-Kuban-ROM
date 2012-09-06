.class Lcom/estrongs/android/pop/ftp/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/ftp/ESFtpService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/ftp/ESFtpService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_4
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_78

    packed-switch v3, :pswitch_data_1b2

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :pswitch_b
    const/4 v3, 0x0

    :try_start_c
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_7b

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_7b

    move v1, v0

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;I)V

    const/4 v0, 0x0

    if-nez v1, :cond_69

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v2

    if-eqz v2, :cond_69

    const-string v0, "preference_ftpsvr_visit"

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    const v3, 0x7f09028e

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ftp:/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ftp/a;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_69
    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    if-nez v1, :cond_a2

    if-eqz v0, :cond_85

    :goto_6f
    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;I)V
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_78

    goto :goto_9

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7b
    :try_start_7b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gtz v0, :cond_15

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_1af

    move v1, v2

    goto :goto_15

    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    const v4, 0x7f09029d

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/ftp/ESFtpService;->b(Lcom/estrongs/android/pop/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    const v4, 0x7f09029e

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/ftp/ESFtpService;->b(Lcom/estrongs/android/pop/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :pswitch_bf
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v5}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;)I

    move-result v5

    if-ne v5, v1, :cond_128

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    const v5, 0x7f0902a0

    invoke-static {v4, v5}, Lcom/estrongs/android/pop/ftp/ESFtpService;->b(Lcom/estrongs/android/pop/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_128
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;)I

    move-result v1

    if-ne v1, v2, :cond_15d

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    const v5, 0x7f09029f

    invoke-static {v3, v5}, Lcom/estrongs/android/pop/ftp/ESFtpService;->b(Lcom/estrongs/android/pop/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_15d
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;)I

    move-result v1

    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Lcom/estrongs/android/pop/ftp/ESFtpService;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    const v6, 0x7f0902a2

    invoke-static {v5, v6}, Lcom/estrongs/android/pop/ftp/ESFtpService;->b(Lcom/estrongs/android/pop/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/e;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    const v5, 0x7f0902a1

    invoke-static {v3, v5}, Lcom/estrongs/android/pop/ftp/ESFtpService;->b(Lcom/estrongs/android/pop/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(ILjava/lang/String;)V
    :try_end_1ad
    .catchall {:try_start_7b .. :try_end_1ad} :catchall_78

    goto/16 :goto_9

    :cond_1af
    move v1, v3

    goto/16 :goto_15

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_bf
    .end packed-switch
.end method
