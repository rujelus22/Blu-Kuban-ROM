.class public abstract Lcom/google/android/youtube/videos/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;,
        Lcom/google/android/youtube/videos/DrmManager$Identifiers;,
        Lcom/google/android/youtube/videos/DrmManager$Listener;,
        Lcom/google/android/youtube/videos/DrmManager$StopReason;
    }
.end annotation


# static fields
.field private static final DRM_ERROR_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final eventDispatchHandler:Landroid/os/Handler;

.field private listener:Lcom/google/android/youtube/videos/DrmManager$Listener;

.field private final retryingRequester:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const-string v0, "(^CA CGI Response code = |lmResult=)(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/videos/DrmManager;->DRM_ERROR_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 4
    .parameter "userAuthorizer"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    invoke-direct {p0}, Lcom/google/android/youtube/videos/DrmManager;->createInternalDrmRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->retryingRequester:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->eventDispatchHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/DrmManager;)Lcom/google/android/youtube/videos/DrmManager$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->listener:Lcom/google/android/youtube/videos/DrmManager$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager;->requestLicense(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method

.method private final createInternalDrmRequester()Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/youtube/videos/DrmManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/DrmManager$3;-><init>(Lcom/google/android/youtube/videos/DrmManager;)V

    return-object v0
.end method

.method private requestLicense(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p1, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    iget-boolean v0, v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->isOffline:Z

    if-eqz v0, :cond_d

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager;->requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 142
    :goto_c
    return-void

    .line 140
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/youtube/videos/DrmManager;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_c
.end method


# virtual methods
.method protected getDrmError(I)Lcom/google/android/youtube/videos/DrmException$DrmError;
    .registers 3
    .parameter "cgiError"

    .prologue
    .line 163
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 164
    .local v0, drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;
    sparse-switch p1, :sswitch_data_18

    .line 184
    :goto_5
    return-object v0

    .line 166
    :sswitch_6
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_PINNED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 167
    goto :goto_5

    .line 169
    :sswitch_9
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->AUTHENTICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 170
    goto :goto_5

    .line 172
    :sswitch_c
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->USER_GEO_RESTRICTED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 173
    goto :goto_5

    .line 175
    :sswitch_f
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->KEY_VERIFICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 176
    goto :goto_5

    .line 178
    :sswitch_12
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 179
    goto :goto_5

    .line 181
    :sswitch_15
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

    goto :goto_5

    .line 164
    :sswitch_data_18
    .sparse-switch
        0x31 -> :sswitch_f
        0x258 -> :sswitch_12
        0x259 -> :sswitch_15
        0x321 -> :sswitch_c
        0x331 -> :sswitch_6
        0x334 -> :sswitch_9
    .end sparse-switch
.end method

.method public abstract getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract isDeviceRooted()Z
.end method

.method protected notifyHeartbeatError(Ljava/lang/String;I)V
    .registers 5
    .parameter "assetPathKey"
    .parameter "cgiError"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->eventDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/videos/DrmManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$1;-><init>(Lcom/google/android/youtube/videos/DrmManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method protected notifyPlaybackStopped(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V
    .registers 5
    .parameter "assetPathKey"
    .parameter "reason"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->eventDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/videos/DrmManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$2;-><init>(Lcom/google/android/youtube/videos/DrmManager;Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method protected parseCgiError(Ljava/lang/String;)I
    .registers 4
    .parameter "error"

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    const/4 v1, -0x1

    .line 157
    :goto_7
    return v1

    .line 150
    :cond_8
    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 151
    const/4 v1, 0x0

    goto :goto_7

    .line 153
    :cond_12
    sget-object v1, Lcom/google/android/youtube/videos/DrmManager;->DRM_ERROR_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 154
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 155
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7

    .line 157
    :cond_2c
    const/4 v1, -0x2

    goto :goto_7
.end method

.method public request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->retryingRequester:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 100
    return-void
.end method

.method protected abstract requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public setListener(Lcom/google/android/youtube/videos/DrmManager$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager;->listener:Lcom/google/android/youtube/videos/DrmManager$Listener;

    .line 88
    return-void
.end method

.method protected final stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "input"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .end local p1
    :cond_13
    return-object p1
.end method
