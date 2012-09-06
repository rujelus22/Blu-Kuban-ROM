.class Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;
.super Ljava/lang/Object;
.source "ThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchResponseHandler"
.end annotation


# instance fields
.field private final keyUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "keyUrl"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->keyUrl:Ljava/lang/String;

    .line 465
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider;Ljava/lang/String;Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 462
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;-><init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V
    .registers 9
    .parameter "response"

    .prologue
    .line 470
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->isValid(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 471
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->keyUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->getData()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->put(Ljava/lang/String;[B)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    .line 472
    .local v1, picture:Lcom/google/android/apps/unveil/env/Picture;
    if-nez v1, :cond_15

    .line 493
    .end local v1           #picture:Lcom/google/android/apps/unveil/env/Picture;
    .end local p1
    :goto_14
    return-void

    .line 477
    .restart local v1       #picture:Lcom/google/android/apps/unveil/env/Picture;
    .restart local p1
    :cond_15
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    #getter for: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$700(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 478
    :try_start_1c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    #getter for: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$700(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->keyUrl:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    .local v0, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;>;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    #getter for: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$700(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->keyUrl:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_4a

    .line 481
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    #getter for: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->uiThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$800(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;-><init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;Ljava/util/List;Lcom/google/android/apps/unveil/env/Picture;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 480
    .end local v0           #listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;>;"
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2

    .line 490
    .end local v1           #picture:Lcom/google/android/apps/unveil/env/Picture;
    :cond_4d
    invoke-static {}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Invalid thumbnail fetch response for (%s): %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->keyUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    if-nez p1, :cond_64

    .end local p1
    :goto_5e
    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .restart local p1
    :cond_64
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5e
.end method
