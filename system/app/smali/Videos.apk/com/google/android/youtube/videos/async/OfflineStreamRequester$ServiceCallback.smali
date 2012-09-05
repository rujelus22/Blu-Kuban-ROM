.class final Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;
.super Ljava/lang/Object;
.source "OfflineStreamRequester.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/youtube/core/transfer/TransferService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/OfflineStreamRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
            ">;>;"
        }
    .end annotation
.end field

.field private download:Lcom/google/android/youtube/core/transfer/Transfer;

.field private downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private final request:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/videos/async/OfflineStreamRequester;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/async/OfflineStreamRequester;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 6
    .parameter
    .parameter "videoId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/UserAuth;>;"
    .local p4, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/util/Pair<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/UserAuth;>;Landroid/util/Pair<Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmManager$Identifiers;>;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->this$0:Lcom/google/android/youtube/videos/async/OfflineStreamRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->videoId:Ljava/lang/String;

    .line 82
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->request:Landroid/util/Pair;

    .line 83
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    .line 84
    return-void
.end method


# virtual methods
.method public onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 138
    return-void
.end method

.method public onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 146
    return-void
.end method

.method public onRestored()V
    .registers 14

    .prologue
    .line 92
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v9}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v7

    .line 93
    .local v7, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v9, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 94
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->this$0:Lcom/google/android/youtube/videos/async/OfflineStreamRequester;

    #getter for: Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->access$000(Lcom/google/android/youtube/videos/async/OfflineStreamRequester;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->request:Landroid/util/Pair;

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/youtube/core/model/UserAuth;

    .line 97
    .local v8, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->this$0:Lcom/google/android/youtube/videos/async/OfflineStreamRequester;

    #getter for: Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->access$000(Lcom/google/android/youtube/videos/async/OfflineStreamRequester;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->this$0:Lcom/google/android/youtube/videos/async/OfflineStreamRequester;

    #getter for: Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;
    invoke-static {v10}, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->access$100(Lcom/google/android/youtube/videos/async/OfflineStreamRequester;)Lcom/google/android/youtube/videos/VideosPlatformUtil;

    move-result-object v10

    iget-object v11, v8, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->videoId:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getPathsForVideoId(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosPlatformUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 99
    .local v6, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 100
    .local v5, path:Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/transfer/Transfer;

    iput-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 101
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    if-eqz v9, :cond_32

    .line 105
    .end local v5           #path:Ljava/lang/String;
    :cond_4a
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    if-eqz v9, :cond_c3

    .line 106
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-wide v9, v9, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_65

    .line 107
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->request:Landroid/util/Pair;

    new-instance v11, Lcom/google/android/youtube/videos/async/DownloadNotStartedException;

    invoke-direct {v11}, Lcom/google/android/youtube/videos/async/DownloadNotStartedException;-><init>()V

    invoke-interface {v9, v10, v11}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 126
    :goto_64
    return-void

    .line 109
    :cond_65
    new-instance v0, Ljava/io/File;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v9, v9, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_81

    .line 111
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->request:Landroid/util/Pair;

    new-instance v11, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v11}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {v9, v10, v11}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_64

    .line 113
    :cond_81
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v10, v10, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    .local v1, fileUri:Landroid/net/Uri;
    new-instance v9, Lcom/google/android/youtube/core/model/Stream$Builder;

    invoke-direct {v9}, Lcom/google/android/youtube/core/model/Stream$Builder;-><init>()V

    invoke-virtual {v9, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-wide v10, v10, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v9

    sget-object v10, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v9, v10}, Lcom/google/android/youtube/core/model/Stream$Builder;->quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v9

    const-string v10, "video/wvm"

    invoke-virtual {v9, v10}, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v4

    .line 119
    .local v4, offlineStream:Lcom/google/android/youtube/core/model/Stream;
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v9, v9, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    invoke-static {v9}, Lcom/google/android/youtube/videos/PinManager;->readIdsFromExtras(Landroid/os/Bundle;)Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    move-result-object v3

    .line 120
    .local v3, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->request:Landroid/util/Pair;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_64

    .line 124
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileUri:Landroid/net/Uri;
    .end local v3           #ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    .end local v4           #offlineStream:Lcom/google/android/youtube/core/model/Stream;
    :cond_c3
    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->request:Landroid/util/Pair;

    new-instance v11, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v11}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {v9, v10, v11}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_64
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "serviceBinder"

    .prologue
    .line 87
    check-cast p2, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .end local p2
    iput-object p2, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 89
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "componentName"

    .prologue
    .line 130
    return-void
.end method

.method public onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 150
    return-void
.end method

.method public onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 134
    return-void
.end method
