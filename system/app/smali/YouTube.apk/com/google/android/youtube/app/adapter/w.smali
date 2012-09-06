.class final Lcom/google/android/youtube/app/adapter/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

.field private final b:Lcom/google/android/youtube/core/model/UserAuth;

.field private final c:Lcom/google/android/youtube/core/model/UserProfile;

.field private final d:Lcom/google/android/youtube/app/adapter/x;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/app/adapter/x;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/w;->b:Lcom/google/android/youtube/core/model/UserAuth;

    .line 253
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/w;->d:Lcom/google/android/youtube/app/adapter/x;

    .line 254
    iput-boolean p5, p0, Lcom/google/android/youtube/app/adapter/w;->e:Z

    .line 255
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/w;->c:Lcom/google/android/youtube/core/model/UserProfile;

    .line 256
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring click due to an error within processing the user profile request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/w;->e:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/w;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/w;->c:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/w;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/w;->c:Lcom/google/android/youtube/core/model/UserProfile;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;)V

    goto :goto_23
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    move-object v3, p2

    .line 243
    check-cast v3, Lcom/google/android/youtube/core/model/UserProfile;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/w;->e:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->g(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/w;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v3}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->h(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/app/adapter/t;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v6, p0, Lcom/google/android/youtube/app/adapter/w;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v7, p0, Lcom/google/android/youtube/app/adapter/w;->c:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/youtube/app/adapter/t;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/ae;->g(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->i(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/w;->c:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_48

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/w;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/w;->c:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/w;->b:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_29

    :cond_48
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->g(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/w;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v3, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->h(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/os/Handler;

    move-result-object v10

    new-instance v4, Lcom/google/android/youtube/app/adapter/v;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/w;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v6, p0, Lcom/google/android/youtube/app/adapter/w;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v7, p0, Lcom/google/android/youtube/app/adapter/w;->c:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v9, p0, Lcom/google/android/youtube/app/adapter/w;->b:Lcom/google/android/youtube/core/model/UserAuth;

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/youtube/app/adapter/v;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserAuth;)V

    invoke-static {v10, v4}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_29
.end method
