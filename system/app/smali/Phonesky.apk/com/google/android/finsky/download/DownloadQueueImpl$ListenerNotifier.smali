.class abstract Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListenerNotifier"
.end annotation


# instance fields
.field mType:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;)V
    .registers 3
    .parameter
    .parameter "type"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->mType:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    .line 245
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 249
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$000(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/download/DownloadQueueListener;

    .line 251
    .local v2, listener:Lcom/google/android/finsky/download/DownloadQueueListener;
    :try_start_16
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->updateListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    .line 252
    :catch_1a
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download listener threw an exception during "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;->mType:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 256
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listener:Lcom/google/android/finsky/download/DownloadQueueListener;
    :cond_37
    return-void
.end method

.method abstract updateListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
.end method
