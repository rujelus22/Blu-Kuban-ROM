.class Lcom/google/android/youtube/videos/DownloadJanitorService$1;
.super Ljava/lang/Thread;
.source "DownloadJanitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DownloadJanitorService;->onRestored()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

.field final synthetic val$snapshot:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    iput-object p2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->val$snapshot:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v0, activeVideoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->val$snapshot:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 102
    .local v1, download:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v5, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_56
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_24} :catch_39

    .line 104
    :try_start_24
    iget-object v5, v1, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    invoke-static {v5}, Lcom/google/android/youtube/videos/PinManager;->readIdsFromExtras(Landroid/os/Bundle;)Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    move-result-object v4

    .line 105
    .local v4, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    iget-object v6, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    #calls: Lcom/google/android/youtube/videos/DownloadJanitorService;->scanFile(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    invoke-static {v5, v6, v4}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$000(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_56
    .catch Landroid/accounts/OperationCanceledException; {:try_start_24 .. :try_end_31} :catch_32
    .catch Landroid/accounts/AuthenticatorException; {:try_start_24 .. :try_end_31} :catch_4f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_31} :catch_67
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_31} :catch_39

    goto :goto_f

    .line 106
    .end local v4           #ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    :catch_32
    move-exception v2

    .line 107
    .local v2, e:Landroid/accounts/OperationCanceledException;
    :try_start_33
    const-string v5, "scanFile error"

    invoke-static {v5, v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_56
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_f

    .line 116
    .end local v0           #activeVideoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_39
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_3a
    const-string v5, "Janitor aborted"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_56

    .line 119
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    #calls: Lcom/google/android/youtube/videos/DownloadJanitorService;->doUnbindService()V
    invoke-static {v5}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$200(Lcom/google/android/youtube/videos/DownloadJanitorService;)V

    .line 120
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/DownloadJanitorService;->stopSelf()V

    .line 121
    const-string v5, "Janitor done"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 123
    .end local v2           #e:Ljava/lang/InterruptedException;
    :goto_4e
    return-void

    .line 108
    .restart local v0       #activeVideoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1       #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .restart local v3       #i$:Ljava/util/Iterator;
    :catch_4f
    move-exception v2

    .line 109
    .local v2, e:Landroid/accounts/AuthenticatorException;
    :try_start_50
    const-string v5, "scanFile error"

    invoke-static {v5, v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_56
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_39

    goto :goto_f

    .line 119
    .end local v0           #activeVideoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_56
    move-exception v5

    iget-object v6, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    #calls: Lcom/google/android/youtube/videos/DownloadJanitorService;->doUnbindService()V
    invoke-static {v6}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$200(Lcom/google/android/youtube/videos/DownloadJanitorService;)V

    .line 120
    iget-object v6, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-virtual {v6}, Lcom/google/android/youtube/videos/DownloadJanitorService;->stopSelf()V

    .line 121
    const-string v6, "Janitor done"

    invoke-static {v6}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    throw v5

    .line 110
    .restart local v0       #activeVideoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1       #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .restart local v3       #i$:Ljava/util/Iterator;
    :catch_67
    move-exception v2

    .line 111
    .local v2, e:Ljava/io/IOException;
    :try_start_68
    const-string v5, "scanFile error"

    invoke-static {v5, v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 115
    .end local v1           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v2           #e:Ljava/io/IOException;
    :cond_6e
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    #calls: Lcom/google/android/youtube/videos/DownloadJanitorService;->deleteUnusedFiles(Ljava/util/Set;)V
    invoke-static {v5, v0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$100(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/util/Set;)V
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_56
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_73} :catch_39

    .line 119
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    #calls: Lcom/google/android/youtube/videos/DownloadJanitorService;->doUnbindService()V
    invoke-static {v5}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$200(Lcom/google/android/youtube/videos/DownloadJanitorService;)V

    .line 120
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/DownloadJanitorService;->stopSelf()V

    .line 121
    const-string v5, "Janitor done"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    goto :goto_4e
.end method
