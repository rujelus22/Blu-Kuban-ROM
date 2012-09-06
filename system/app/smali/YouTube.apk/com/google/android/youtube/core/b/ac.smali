.class final Lcom/google/android/youtube/core/b/ac;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/ab;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/b/ab;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    .line 236
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 237
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3b0

    .line 433
    :cond_a
    :goto_a
    return-void

    .line 243
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    .line 244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 246
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v4, v0, v6

    check-cast v4, Lcom/google/android/youtube/core/model/n;

    .line 247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    check-cast v5, Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/core/b/ab;->a(Ljava/lang/String;ZILcom/google/android/youtube/core/model/n;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    goto :goto_a

    .line 252
    :sswitch_42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/ac;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_a

    .line 257
    :sswitch_4e
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->u:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    goto :goto_a

    .line 263
    :sswitch_64
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->v:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    goto :goto_a

    .line 269
    :sswitch_7a
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    goto/16 :goto_a

    .line 275
    :sswitch_91
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    goto/16 :goto_a

    .line 281
    :sswitch_a8
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    if-nez v0, :cond_cf

    .line 282
    :cond_c2
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    .line 286
    :cond_cf
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-nez v0, :cond_ee

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->c(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Z)Z

    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->d(Lcom/google/android/youtube/core/b/ab;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/b/ab;->i()V

    .line 291
    :cond_ee
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;Z)Z

    goto/16 :goto_a

    .line 295
    :sswitch_f5
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    goto/16 :goto_a

    .line 301
    :cond_10c
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->e(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-nez v0, :cond_136

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->h(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayStopped"

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/ab;->f(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/b/ab;->g:Z

    iget-object v4, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v4}, Lcom/google/android/youtube/core/b/ab;->g(Lcom/google/android/youtube/core/b/ab;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 306
    :goto_12f
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->i(Lcom/google/android/youtube/core/b/ab;)V

    goto/16 :goto_a

    .line 304
    :cond_136
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;Z)Z

    goto :goto_12f

    .line 311
    :sswitch_13c
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->j(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-nez v0, :cond_15e

    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/b/ab;->c(Lcom/google/android/youtube/core/b/ab;Z)Z

    .line 316
    :cond_15e
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->o:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    .line 317
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/b/ab;->d(Lcom/google/android/youtube/core/b/ab;Z)Z

    .line 325
    :goto_170
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;I)I

    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;Z)Z

    goto/16 :goto_a

    .line 319
    :cond_17c
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->h(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayEnded"

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/ab;->f(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/b/ab;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->k(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->l(Lcom/google/android/youtube/core/b/ab;)V

    .line 323
    :cond_19e
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->i(Lcom/google/android/youtube/core/b/ab;)V

    goto :goto_170

    .line 330
    :sswitch_1a4
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 331
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->m(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    if-eq v0, v2, :cond_1c6

    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;I)I

    .line 337
    :cond_1c6
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/b/ab;->d(Lcom/google/android/youtube/core/b/ab;Z)Z

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->h(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "AdPlayError"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v3}, Lcom/google/android/youtube/core/b/ab;->g(Lcom/google/android/youtube/core/b/ab;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 340
    :cond_1df
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_205

    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->h(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayErrorException"

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/ab;->f(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/b/ab;->g:Z

    iget-object v4, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v4}, Lcom/google/android/youtube/core/b/ab;->g(Lcom/google/android/youtube/core/b/ab;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 352
    :goto_1fe
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->i(Lcom/google/android/youtube/core/b/ab;)V

    goto/16 :goto_a

    .line 344
    :cond_205
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_238

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_238

    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->h(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlayErrorMediaUnknown"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/ab;->f(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/b/ab;->g:Z

    iget-object v4, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v4}, Lcom/google/android/youtube/core/b/ab;->g(Lcom/google/android/youtube/core/b/ab;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    goto :goto_1fe

    .line 348
    :cond_238
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->h(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlayError"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/ab;->f(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/b/ab;->g:Z

    iget-object v4, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v4}, Lcom/google/android/youtube/core/b/ab;->g(Lcom/google/android/youtube/core/b/ab;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    goto :goto_1fe

    .line 357
    :sswitch_263
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    div-int/lit16 v2, v1, 0x3e8

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;I)I

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    .line 360
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 361
    invoke-static {v1, v0}, Lcom/google/android/youtube/core/b/ab;->a(II)I

    move-result v1

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->m(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    if-lt v1, v0, :cond_2a9

    move v0, v1

    .line 364
    :goto_289
    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/ab;->m(Lcom/google/android/youtube/core/b/ab;)I

    move-result v2

    if-lt v0, v2, :cond_2a2

    .line 365
    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/b/ab;->c(Lcom/google/android/youtube/core/b/ab;I)Ljava/util/List;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2a2

    .line 367
    add-int/lit8 v0, v0, -0x1

    goto :goto_289

    .line 370
    :cond_2a2
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;I)I

    .line 372
    :cond_2a9
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->j(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->g(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 373
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/b/ab;->c(Lcom/google/android/youtube/core/b/ab;Z)Z

    goto/16 :goto_a

    .line 376
    :cond_2cf
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->k(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->n(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    if-ne v0, v4, :cond_2e1

    if-gez v1, :cond_2f9

    :cond_2e1
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->n(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    if-ne v0, v3, :cond_2ed

    const/16 v0, 0x4e20

    if-ge v1, v0, :cond_2f9

    :cond_2ed
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->n(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    if-ne v0, v6, :cond_a

    const/16 v0, 0x7530

    if-lt v1, v0, :cond_a

    .line 380
    :cond_2f9
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->o(Lcom/google/android/youtube/core/b/ab;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v2, v2, Lcom/google/android/youtube/core/b/ab;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v3}, Lcom/google/android/youtube/core/b/ab;->n(Lcom/google/android/youtube/core/b/ab;)I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/youtube/core/b/ab;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Landroid/net/Uri;)Z

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->p(Lcom/google/android/youtube/core/b/ab;)I

    goto/16 :goto_a

    .line 389
    :sswitch_319
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->c(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->q(Lcom/google/android/youtube/core/b/ab;)I

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->i(Lcom/google/android/youtube/core/b/ab;)V

    goto/16 :goto_a

    .line 397
    :sswitch_32d
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->c(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 398
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->r(Lcom/google/android/youtube/core/b/ab;)V

    goto/16 :goto_a

    .line 403
    :sswitch_33c
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->i(Lcom/google/android/youtube/core/b/ab;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget v1, p1, Landroid/os/Message;->arg1:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;I)I

    goto/16 :goto_a

    .line 408
    :sswitch_34c
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_361

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    .line 411
    :cond_361
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->i(Lcom/google/android/youtube/core/b/ab;)V

    goto/16 :goto_a

    .line 415
    :sswitch_368
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;)Z

    move-result v0

    if-eqz v0, :cond_38a

    .line 416
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->m(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    if-nez v0, :cond_391

    .line 417
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;I)I

    .line 423
    :cond_38a
    :goto_38a
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->r(Lcom/google/android/youtube/core/b/ab;)V

    goto/16 :goto_a

    .line 420
    :cond_391
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/ab;->b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/n;->r:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z

    goto :goto_38a

    .line 427
    :sswitch_39f
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->s(Lcom/google/android/youtube/core/b/ab;)I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_a

    .line 428
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ac;->a:Lcom/google/android/youtube/core/b/ab;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/ab;->d(Lcom/google/android/youtube/core/b/ab;)V

    goto/16 :goto_a

    .line 241
    :sswitch_data_3b0
    .sparse-switch
        0x1 -> :sswitch_a8
        0x2 -> :sswitch_368
        0x3 -> :sswitch_34c
        0x4 -> :sswitch_f5
        0x5 -> :sswitch_263
        0x6 -> :sswitch_319
        0x7 -> :sswitch_32d
        0x8 -> :sswitch_13c
        0x9 -> :sswitch_1a4
        0xa -> :sswitch_33c
        0x65 -> :sswitch_b
        0x66 -> :sswitch_42
        0x67 -> :sswitch_4e
        0x68 -> :sswitch_39f
        0x69 -> :sswitch_7a
        0x6a -> :sswitch_91
        0x6b -> :sswitch_64
    .end sparse-switch
.end method
