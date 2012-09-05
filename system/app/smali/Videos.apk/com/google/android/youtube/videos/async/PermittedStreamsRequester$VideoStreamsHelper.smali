.class final Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;
.super Ljava/lang/Object;
.source "PermittedStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoStreamsHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/youtube/core/model/Stream;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final purchase:Lcom/google/android/youtube/core/model/Purchase;

.field final synthetic this$0:Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 4
    .parameter
    .parameter "purchase"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 77
    return-void
.end method

.method private rewriteStream(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;
    .registers 5
    .parameter "stream"

    .prologue
    .line 109
    iget v1, p1, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_c

    iget v1, p1, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_28

    .line 112
    :cond_c
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "widevine"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object p1

    .line 115
    .end local v0           #uri:Landroid/net/Uri;
    :cond_28
    return-object p1
.end method


# virtual methods
.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 70
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->convertResponse(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Ljava/util/Collection;)Ljava/util/Map;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, channelFormats:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v0, allowedFormats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;

    #getter for: Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->frameworkDrmSupported:Z
    invoke-static {v4}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->access$000(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 84
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;

    #getter for: Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->canDisplay360P:Z
    invoke-static {v4}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->access$100(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 85
    invoke-static {}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->access$200()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 93
    :goto_25
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_3d

    .line 95
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_3d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v3, streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4c
    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Stream;

    .line 101
    .local v2, stream:Lcom/google/android/youtube/core/model/Stream;
    iget v4, v2, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 102
    iget v4, v2, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;->rewriteStream(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 87
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #stream:Lcom/google/android/youtube/core/model/Stream;
    .end local v3           #streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    :cond_72
    invoke-static {}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->access$300()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 90
    :cond_7a
    invoke-static {}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->access$200()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 105
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    :cond_82
    return-object v3
.end method
