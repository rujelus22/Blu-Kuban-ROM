.class final Lcom/google/android/youtube/app/remote/ba;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/at;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/at;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    .line 459
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 460
    iput-object p2, p0, Lcom/google/android/youtube/app/remote/ba;->b:Landroid/content/Context;

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/at;Landroid/content/Context;Landroid/os/Looper;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/remote/ba;-><init>(Lcom/google/android/youtube/app/remote/at;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 502
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Z)V

    .line 504
    :cond_21
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->d(Lcom/google/android/youtube/app/remote/at;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 505
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->e(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/app/remote/av;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/remote/at;->b(Lcom/google/android/youtube/app/remote/at;Z)Z

    .line 508
    :cond_38
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 465
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ee

    .line 494
    :cond_7
    :goto_7
    return-void

    .line 467
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/remote/ba;->a(Landroid/content/Context;Z)V

    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_7

    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->SLEEP:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    goto :goto_7

    .line 473
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 474
    :cond_37
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Z)V

    .line 477
    :cond_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/app/remote/aw;

    .line 478
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ba;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/aw;->a(Lcom/google/android/youtube/app/remote/aw;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/at;->f(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/model/CloudScreen;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->g(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_5f
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/aw;->a(Lcom/google/android/youtube/app/remote/aw;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/ytremote/model/CloudScreen;)Lcom/google/android/ytremote/model/CloudScreen;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->d(Lcom/google/android/youtube/app/remote/at;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->e(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/app/remote/av;

    move-result-object v2

    invoke-static {}, Lcom/google/android/youtube/app/remote/at;->v()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7d
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;

    move-result-object v1

    new-instance v2, Lcom/google/android/ytremote/backend/model/b;

    invoke-direct {v2}, Lcom/google/android/ytremote/backend/model/b;-><init>()V

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/aw;->a(Lcom/google/android/youtube/app/remote/aw;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/ytremote/model/CloudScreen;->getLoungeToken()Lcom/google/android/ytremote/model/LoungeToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/backend/model/b;->a(Lcom/google/android/ytremote/model/LoungeToken;)Lcom/google/android/ytremote/backend/model/b;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/aw;->b(Lcom/google/android/youtube/app/remote/aw;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/backend/model/b;->a(Lcom/google/android/ytremote/backend/model/Method;)Lcom/google/android/ytremote/backend/model/b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/aw;->b(Lcom/google/android/youtube/app/remote/aw;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/aw;->c(Lcom/google/android/youtube/app/remote/aw;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;J)Lcom/google/android/ytremote/backend/model/Params;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/ytremote/backend/model/b;->a(Lcom/google/android/ytremote/backend/model/Params;)Lcom/google/android/ytremote/backend/model/b;

    :cond_b5
    invoke-virtual {v2}, Lcom/google/android/ytremote/backend/model/b;->a()Lcom/google/android/ytremote/backend/model/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/a;)Ljava/util/concurrent/CountDownLatch;

    goto/16 :goto_7

    .line 481
    :pswitch_be
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/bb;)Lcom/google/android/youtube/app/remote/bb;

    .line 482
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/google/android/youtube/app/remote/ba;->a(Landroid/content/Context;Z)V

    goto/16 :goto_7

    .line 485
    :pswitch_cb
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_7

    .line 486
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->b(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v0, v1, :cond_7

    .line 489
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->c(Lcom/google/android/youtube/app/remote/at;)V

    goto/16 :goto_7

    .line 493
    :pswitch_e6
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ba;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;Z)Z

    goto/16 :goto_7

    .line 465
    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_8
        :pswitch_cb
        :pswitch_1f
        :pswitch_be
        :pswitch_e6
    .end packed-switch
.end method
