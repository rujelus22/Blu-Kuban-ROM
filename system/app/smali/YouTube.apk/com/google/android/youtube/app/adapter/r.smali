.class final Lcom/google/android/youtube/app/adapter/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

.field private final b:Lcom/google/android/youtube/app/adapter/x;

.field private final c:Lcom/google/android/youtube/core/model/UserProfile;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/r;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/r;->b:Lcom/google/android/youtube/app/adapter/x;

    .line 219
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/r;->c:Lcom/google/android/youtube/core/model/UserProfile;

    .line 220
    iput-boolean p4, p0, Lcom/google/android/youtube/app/adapter/r;->d:Z

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;ZB)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/adapter/r;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 10
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/r;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->g(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/r;->c:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v7, v0, Lcom/google/android/youtube/core/model/UserProfile;->uri:Landroid/net/Uri;

    new-instance v0, Lcom/google/android/youtube/app/adapter/w;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/r;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/r;->c:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/r;->b:Lcom/google/android/youtube/app/adapter/x;

    iget-boolean v5, p0, Lcom/google/android/youtube/app/adapter/r;->d:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/w;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/app/adapter/x;Z)V

    invoke-interface {v6, v7, v0}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 231
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 238
    const-string v0, "Ignoring click due to authentication error"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 234
    const-string v0, "Ignoring click due to not authenticated"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 235
    return-void
.end method
