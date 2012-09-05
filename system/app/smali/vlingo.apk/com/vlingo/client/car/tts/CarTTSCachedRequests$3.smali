.class Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->processNextLang()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

.field final synthetic val$lang:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    iput-object p2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->val$lang:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 312
    new-instance v6, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3$1;

    invoke-direct {v6, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3$1;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;)V

    invoke-static {v6}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 319
    const-wide/16 v6, 0x1388

    :try_start_a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_50

    .line 324
    :goto_d
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 325
    .local v1, demandsToCache:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSDemand;>;"
    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->reinit()V

    .line 326
    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->resetCustomizablePrompts()V

    .line 327
    iget-object v6, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->addDemandsFromCurrentLanguage(Ljava/util/Vector;)V
    invoke-static {v6, v1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$900(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/util/Vector;)V

    .line 329
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    .line 330
    .local v5, size:I
    new-instance v6, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3$2;

    invoke-direct {v6, p0, v5}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3$2;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;I)V

    invoke-static {v6}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 338
    iget-object v6, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;
    invoke-static {v6}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$600(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->removeAllElements()V

    .line 339
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 340
    .local v0, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v4

    .line 341
    .local v4, r:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v6, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;
    invoke-static {v6}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$600(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 320
    .end local v0           #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v1           #demandsToCache:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSDemand;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #r:Lcom/vlingo/client/core/tts/TTSRequest2;
    .end local v5           #size:I
    :catch_50
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 344
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v1       #demandsToCache:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSDemand;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #size:I
    :cond_5b
    iget-object v6, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V
    invoke-static {v6}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 345
    iget-object v6, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V
    invoke-static {v6}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 346
    iget-object v6, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$3;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V
    invoke-static {v6}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 347
    return-void
.end method
