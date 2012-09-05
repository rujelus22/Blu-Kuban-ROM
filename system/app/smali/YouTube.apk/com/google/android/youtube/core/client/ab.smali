.class final Lcom/google/android/youtube/core/client/ab;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V
    .registers 3
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/client/ab;-><init>(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_388

    .line 453
    :cond_a
    :goto_a
    return-void

    .line 288
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v6

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 289
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Lcom/google/android/youtube/core/model/o;

    .line 290
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 291
    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/o;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    goto :goto_a

    .line 295
    :sswitch_29
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 296
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/client/ab;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_a

    .line 300
    :sswitch_34
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    goto :goto_a

    .line 306
    :sswitch_4a
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    goto :goto_a

    .line 312
    :sswitch_60
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    if-nez v0, :cond_87

    .line 313
    :cond_7a
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    .line 317
    :cond_87
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->d(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g()V

    .line 322
    :cond_a6
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v6}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    goto/16 :goto_a

    .line 326
    :sswitch_ad
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    goto/16 :goto_a

    .line 332
    :cond_c4
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->e(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayStopped"

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->f(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v3}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->h(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v4}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 338
    :goto_ee
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto/16 :goto_a

    .line 336
    :cond_f5
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v6}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    goto :goto_ee

    .line 343
    :sswitch_fb
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->l(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-nez v0, :cond_11d

    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    .line 346
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    .line 348
    :cond_11d
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v6}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->d(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    .line 357
    :goto_12f
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v6}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    goto/16 :goto_a

    .line 351
    :cond_13b
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayEnded"

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->f(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v3}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v4}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->h(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V

    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->n(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    .line 355
    :cond_165
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto :goto_12f

    .line 362
    :sswitch_16b
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    if-eq v0, v2, :cond_18d

    .line 366
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I

    .line 369
    :cond_18d
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v6}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->d(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "AdPlayError"

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 372
    :cond_1a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1d2

    .line 373
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayErrorException"

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->f(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v3}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->h(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v4}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 384
    :goto_1cb
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto/16 :goto_a

    .line 376
    :cond_1d2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_210

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_210

    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayErrorMediaUnknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->f(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v3}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->h(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v4}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    goto :goto_1cb

    .line 380
    :cond_210
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->f(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v3}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->h(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v4}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    goto :goto_1cb

    .line 389
    :sswitch_246
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    div-int/lit16 v2, v1, 0x3e8

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 392
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 393
    invoke-static {v1, v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(II)I

    move-result v1

    .line 394
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    if-lt v1, v0, :cond_28c

    move v0, v1

    .line 396
    :goto_26c
    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v2

    if-lt v0, v2, :cond_285

    .line 397
    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)Ljava/util/List;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_285

    .line 399
    add-int/lit8 v0, v0, -0x1

    goto :goto_26c

    .line 402
    :cond_285
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I

    .line 404
    :cond_28c
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->l(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z

    goto/16 :goto_a

    .line 408
    :cond_2b2
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    if-ne v0, v5, :cond_2c4

    if-gez v1, :cond_2dd

    :cond_2c4
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    if-ne v0, v3, :cond_2d0

    const/16 v0, 0x4e20

    if-ge v1, v0, :cond_2dd

    :cond_2d0
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    const/16 v0, 0x7530

    if-lt v1, v0, :cond_a

    .line 412
    :cond_2dd
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->f(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v2, v2, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v3}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Landroid/net/Uri;)Z

    .line 415
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->q(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    goto/16 :goto_a

    .line 420
    :sswitch_2ff
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 421
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->r(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    .line 422
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto/16 :goto_a

    .line 426
    :sswitch_313
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 427
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->s(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto/16 :goto_a

    .line 431
    :sswitch_322
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    .line 432
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I

    goto/16 :goto_a

    .line 435
    :sswitch_332
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 436
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    .line 438
    :cond_347
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto/16 :goto_a

    .line 441
    :sswitch_34e
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z

    move-result v0

    if-eqz v0, :cond_370

    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    if-nez v0, :cond_370

    .line 442
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/o;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z

    .line 443
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I

    .line 445
    :cond_370
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->s(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto/16 :goto_a

    .line 448
    :sswitch_377
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->t(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_a

    .line 449
    iget-object v0, p0, Lcom/google/android/youtube/core/client/ab;->a:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->d(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    goto/16 :goto_a

    .line 286
    :sswitch_data_388
    .sparse-switch
        0x1 -> :sswitch_60
        0x2 -> :sswitch_34e
        0x3 -> :sswitch_332
        0x4 -> :sswitch_ad
        0x5 -> :sswitch_246
        0x6 -> :sswitch_2ff
        0x7 -> :sswitch_313
        0x8 -> :sswitch_fb
        0x9 -> :sswitch_16b
        0xa -> :sswitch_322
        0x65 -> :sswitch_b
        0x66 -> :sswitch_29
        0x67 -> :sswitch_34
        0x68 -> :sswitch_377
        0x69 -> :sswitch_4a
    .end sparse-switch
.end method
