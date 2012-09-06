.class public final Lcom/google/android/youtube/app/adapter/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

.field private final b:Lcom/google/android/youtube/app/adapter/x;

.field private final c:Lcom/google/android/youtube/core/model/UserProfile;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/t;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/t;->c:Lcom/google/android/youtube/core/model/UserProfile;

    .line 344
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/t;->b:Lcom/google/android/youtube/app/adapter/x;

    .line 345
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 337
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_27

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/t;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->d(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0173

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/t;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/t;->b:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/t;->c:Lcom/google/android/youtube/core/model/UserProfile;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;)V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/t;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->j(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/t;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/t;->b:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/t;->c:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    goto :goto_26
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 337
    check-cast p2, Lcom/google/android/youtube/core/model/Subscription;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/t;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/t;->b:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/t;->c:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/t;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->k(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/ui/db;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/app/ui/db;->a(Lcom/google/android/youtube/core/model/Subscription;)V

    return-void
.end method
