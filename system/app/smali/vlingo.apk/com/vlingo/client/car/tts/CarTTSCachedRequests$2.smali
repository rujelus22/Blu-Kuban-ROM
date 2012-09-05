.class Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$useExternalStorage:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    iput-object p2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->val$useExternalStorage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 258
    const-wide/16 v9, 0x96

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_71

    .line 262
    :goto_5
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    iget-object v10, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->val$context:Landroid/content/Context;

    iget-boolean v11, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->val$useExternalStorage:Z

    invoke-static {v10, v11}, Lcom/vlingo/client/core/tts/TTSFileCache;->persistentCacheManager(Landroid/content/Context;Z)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v10

    #setter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->persistentCache:Lcom/vlingo/client/core/tts/TTSFileCache;
    invoke-static {v9, v10}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$402(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/core/tts/TTSFileCache;)Lcom/vlingo/client/core/tts/TTSFileCache;

    .line 263
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->persistentCache:Lcom/vlingo/client/core/tts/TTSFileCache;
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$400(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vlingo/client/core/tts/TTSFileCache;->delete()V

    .line 265
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$500(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 267
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;
    invoke-static {v9, v10}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$602(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/util/Vector;)Ljava/util/Vector;

    .line 268
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 270
    .local v2, demandsToCache:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSDemand;>;"
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheAllLanguages:Z
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$200(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 271
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, isos:[Ljava/lang/String;
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->langs:Ljava/util/Vector;
    invoke-static {v9, v10}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$702(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/util/Vector;)Ljava/util/Vector;

    .line 273
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_57
    if-ge v4, v7, :cond_7c

    aget-object v6, v0, v4

    .line 276
    .local v6, lang:Ljava/lang/String;
    invoke-static {v6}, Lcom/vlingo/client/settings/Settings;->convertToISOLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 277
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->langs:Ljava/util/Vector;
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$700(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #demandsToCache:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSDemand;>;"
    .end local v4           #i$:I
    .end local v5           #isos:[Ljava/lang/String;
    .end local v6           #lang:Ljava/lang/String;
    .end local v7           #len$:I
    :catch_71
    move-exception v3

    .line 259
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 280
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #demandsToCache:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSDemand;>;"
    .restart local v4       #i$:I
    .restart local v5       #isos:[Ljava/lang/String;
    .restart local v7       #len$:I
    :cond_7c
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->processNextLang()V
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$800(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 293
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #isos:[Ljava/lang/String;
    .end local v7           #len$:I
    :goto_81
    return-void

    .line 283
    :cond_82
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->addDemandsFromCurrentLanguage(Ljava/util/Vector;)V
    invoke-static {v9, v2}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$900(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Ljava/util/Vector;)V

    .line 284
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_8b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 285
    .local v1, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v8

    .line 286
    .local v8, r:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestsToCache:Ljava/util/Vector;
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$600(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 289
    .end local v1           #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v8           #r:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_a5
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 290
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 291
    iget-object v9, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$2;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V
    invoke-static {v9}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    goto :goto_81
.end method
