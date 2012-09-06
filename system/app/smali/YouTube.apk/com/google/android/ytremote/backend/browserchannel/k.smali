.class final Lcom/google/android/ytremote/backend/browserchannel/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/i;

.field private final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iput-object p3, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->b:Ljava/util/concurrent/CountDownLatch;

    .line 381
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/ytremote/backend/model/b;

    invoke-direct {v1}, Lcom/google/android/ytremote/backend/model/b;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/b;->a()Lcom/google/android/ytremote/backend/model/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/c;->a(Lcom/google/android/ytremote/backend/model/a;)Lcom/google/android/ytremote/backend/browserchannel/a;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/a;->b()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V

    .line 389
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_23
    .catch Lcom/google/net/async/IpV6BugException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_8a

    .line 415
    :goto_23
    return-void

    .line 392
    :catch_24
    move-exception v0

    :try_start_25
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP Address of the phone is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->g(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This device suffers from issue 9431 on code.google.com - setting java.net.preferIPv6Addresses to false, java.net.preferIPv4Stack to true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/ytremote/backend/model/b;

    invoke-direct {v1}, Lcom/google/android/ytremote/backend/model/b;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/b;->a()Lcom/google/android/ytremote/backend/model/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/c;->a(Lcom/google/android/ytremote/backend/model/a;)Lcom/google/android/ytremote/backend/browserchannel/a;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6a} :catch_8a

    .line 401
    :try_start_6a
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->h(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V

    .line 402
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_80
    .catch Lcom/google/net/async/IpV6BugException; {:try_start_6a .. :try_end_80} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_80} :catch_8a

    .line 408
    :goto_80
    :try_start_80
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "You\'re lucky - that seems to have worked!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_89} :catch_8a

    goto :goto_23

    .line 410
    :catch_8a
    move-exception v0

    .line 411
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error testing for buffered proxy. Will assume the worst (buffered proxy)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V

    goto :goto_23

    .line 404
    :catch_9b
    move-exception v0

    :try_start_9c
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tough luck, still can\'t connect. The remote control will not work"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_IPV6_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/k;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->i(Lcom/google/android/ytremote/backend/browserchannel/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b4} :catch_8a

    goto :goto_80
.end method
