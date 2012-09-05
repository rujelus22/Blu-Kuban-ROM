.class Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheRequests(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 234
    .local v1, startTime:J
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_31

    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z
    invoke-static {v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z
    invoke-static {v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$100(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 236
    const-wide/16 v3, 0x3e8

    :try_start_22
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_4

    .line 237
    :catch_26
    move-exception v0

    .line 238
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 244
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_31
    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheAllLanguages:Z
    invoke-static {v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$200(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 245
    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->handleTimeout()V
    invoke-static {v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$300(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 248
    :cond_3e
    return-void
.end method
