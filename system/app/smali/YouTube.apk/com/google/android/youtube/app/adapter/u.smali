.class public final Lcom/google/android/youtube/app/adapter/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

.field private final b:Lcom/google/android/youtube/app/adapter/x;

.field private final c:Lcom/google/android/youtube/core/model/UserProfile;

.field private final d:Lcom/google/android/youtube/core/model/UserProfile;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/u;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/u;->c:Lcom/google/android/youtube/core/model/UserProfile;

    .line 374
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/u;->d:Lcom/google/android/youtube/core/model/UserProfile;

    .line 375
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/u;->b:Lcom/google/android/youtube/app/adapter/x;

    .line 376
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 365
    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_26

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/u;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->d(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0174

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/u;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/u;->b:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/u;->c:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/u;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->j(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/u;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/u;->b:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/u;->c:Lcom/google/android/youtube/core/model/UserProfile;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->a(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;Landroid/net/Uri;)V

    goto :goto_25
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/u;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/u;->b:Lcom/google/android/youtube/app/adapter/x;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/u;->c:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->b(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;Lcom/google/android/youtube/app/adapter/x;Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/u;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->k(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/ui/db;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/u;->d:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ui/db;->a(Ljava/lang/String;)V

    return-void
.end method
