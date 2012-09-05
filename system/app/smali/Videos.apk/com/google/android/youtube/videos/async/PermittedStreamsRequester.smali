.class public Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;
.super Ljava/lang/Object;
.source "PermittedStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/youtube/core/model/Stream;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PRE_FRAMEWORK_DRM_FORMATS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRE_FRAMEWORK_DRM_LOW_END_FORMATS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final canDisplay360P:Z

.field private final channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameworkDrmSupported:Z

.field private final videoOwnerConverter:Lcom/google/android/youtube/core/converter/RequestConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x14

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, preHoneycombFormats:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->PRE_FRAMEWORK_DRM_FORMATS:Ljava/util/Collection;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->PRE_FRAMEWORK_DRM_LOW_END_FORMATS:Ljava/util/Collection;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;ZZ)V
    .registers 5
    .parameter
    .parameter "canDisplay360P"
    .parameter "frameworkDrmSupported"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 52
    iput-boolean p2, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->canDisplay360P:Z

    .line 53
    iput-boolean p3, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->frameworkDrmSupported:Z

    .line 55
    new-instance v0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$1;-><init>(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->videoOwnerConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->frameworkDrmSupported:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->canDisplay360P:Z

    return v0
.end method

.method static synthetic access$200()Ljava/util/Collection;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->PRE_FRAMEWORK_DRM_FORMATS:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Collection;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->PRE_FRAMEWORK_DRM_LOW_END_FORMATS:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 7
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v2, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->videoOwnerConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    new-instance v3, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;

    invoke-direct {v3, p0, p1}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$VideoStreamsHelper;-><init>(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;Lcom/google/android/youtube/core/model/Purchase;)V

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/core/async/ConvertingRequester;->create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    .line 67
    .local v0, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;>;"
    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 68
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;->request(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
