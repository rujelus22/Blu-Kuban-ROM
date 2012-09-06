.class final Lcom/google/android/youtube/core/transfer/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 3
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    .line 300
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_122

    .line 373
    :cond_5
    :goto_5
    return-void

    .line 308
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 309
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Lcom/google/android/youtube/core/transfer/TransferService;Ljava/util/Map;)Ljava/util/Map;

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/i;

    .line 312
    invoke-interface {v0}, Lcom/google/android/youtube/core/transfer/i;->f_()V

    goto :goto_1f

    .line 318
    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 319
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->c(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/i;

    .line 321
    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/i;->e(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_48

    .line 327
    :pswitch_58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 328
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->c(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/i;

    .line 330
    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/i;->d(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_71

    .line 336
    :pswitch_81
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 337
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->c(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/i;

    .line 339
    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/i;->c(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_9a

    .line 345
    :pswitch_aa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 346
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->c(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/i;

    .line 348
    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/i;->b(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_c3

    .line 354
    :pswitch_d3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 355
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->c(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/i;

    .line 357
    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/i;->a(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_ec

    .line 363
    :pswitch_fc
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 364
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransferService;->d(Lcom/google/android/youtube/core/transfer/TransferService;)I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_110
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_110

    .line 371
    :cond_11a
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->a:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->stopSelf()V

    goto/16 :goto_5

    .line 305
    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_6
        :pswitch_fc
        :pswitch_2f
        :pswitch_58
        :pswitch_81
        :pswitch_aa
        :pswitch_d3
    .end packed-switch
.end method
