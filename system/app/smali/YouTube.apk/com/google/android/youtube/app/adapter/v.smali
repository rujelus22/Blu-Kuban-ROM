.class public final Lcom/google/android/youtube/app/adapter/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

.field private final b:Lcom/google/android/youtube/core/model/UserProfile;

.field private final c:Lcom/google/android/youtube/core/model/UserProfile;

.field private final d:Lcom/google/android/youtube/app/adapter/x;

.field private final e:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/v;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/v;->d:Lcom/google/android/youtube/app/adapter/x;

    .line 314
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/v;->b:Lcom/google/android/youtube/core/model/UserProfile;

    .line 315
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/v;->c:Lcom/google/android/youtube/core/model/UserProfile;

    .line 316
    iput-object p5, p0, Lcom/google/android/youtube/app/adapter/v;->e:Lcom/google/android/youtube/core/model/UserAuth;

    .line 317
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/v;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->j(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/v;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/v;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/v;->c:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 303
    check-cast p2, Lcom/google/android/youtube/core/async/Optional;

    invoke-interface {p2}, Lcom/google/android/youtube/core/async/Optional;->get()Ljava/io/Serializable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/youtube/core/model/Subscription;

    if-eqz v4, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/v;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->i(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/v;->b:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    iget-object v2, v4, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/v;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/v;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/v;->c:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/v;->b:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/v;->e:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/v;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->d(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0174

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/v;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/v;->d:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/v;->c:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    goto :goto_29
.end method
