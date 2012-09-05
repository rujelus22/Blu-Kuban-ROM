.class public Lcom/google/android/youtube/videos/DrmRequest;
.super Ljava/lang/Object;
.source "DrmRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DrmRequest$RequestType;
    }
.end annotation


# instance fields
.field public final ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

.field public final playbackId:Ljava/lang/String;

.field public final stream:Lcom/google/android/youtube/core/model/Stream;

.field public final type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

.field public final userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field public final videoId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    .registers 8
    .parameter "stream"
    .parameter "type"
    .parameter "videoId"
    .parameter "playbackId"
    .parameter "userAuth"
    .parameter "ids"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "stream cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    .line 58
    const-string v0, "videoId cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    .line 59
    const-string v0, "userAuth cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 60
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v0, :cond_34

    .line 61
    const-string v0, "ids cannot be null for offline stream"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 65
    :goto_2f
    iput-object p2, p0, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    .line 66
    iput-object p4, p0, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    .line 67
    return-void

    .line 63
    :cond_34
    iput-object p6, p0, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    goto :goto_2f
.end method

.method public static createOfflineRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 11
    .parameter "stream"
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "ids"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    const-string v1, "stream must be offline"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 77
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    sget-object v2, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public static createOfflineRequest(Ljava/io/File;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 11
    .parameter "file"
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "ids"

    .prologue
    .line 82
    new-instance v1, Lcom/google/android/youtube/core/model/Stream;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;)V

    .line 83
    .local v1, stream:Lcom/google/android/youtube/core/model/Stream;
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    sget-object v2, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public static createOfflineSyncRequest(Ljava/io/File;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 11
    .parameter "file"
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "ids"

    .prologue
    .line 88
    new-instance v1, Lcom/google/android/youtube/core/model/Stream;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;)V

    .line 89
    .local v1, stream:Lcom/google/android/youtube/core/model/Stream;
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    sget-object v2, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_REFRESH:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public static createPinRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 10
    .parameter "stream"
    .parameter "videoId"
    .parameter "userAuth"

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    sget-object v2, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_REFRESH:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public static createStreamingRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 11
    .parameter "stream"
    .parameter "videoId"
    .parameter "playbackId"
    .parameter "userAuth"

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    sget-object v2, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->STREAMING:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public static createUnpinRequest(Ljava/io/File;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 11
    .parameter "file"
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "ids"

    .prologue
    .line 98
    new-instance v1, Lcom/google/android/youtube/core/model/Stream;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;)V

    .line 99
    .local v1, stream:Lcom/google/android/youtube/core/model/Stream;
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    sget-object v2, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method


# virtual methods
.method public copyWithAuth(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;
    .registers 9
    .parameter "userAuth"

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    iget-object v3, p0, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmRequest$RequestType;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
