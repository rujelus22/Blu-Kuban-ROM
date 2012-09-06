.class final Lcom/google/android/youtube/app/adapter/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/s;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/adapter/s;-><init>(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile;

    .line 401
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/s;->a:Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;->l(Lcom/google/android/youtube/app/adapter/ChannelStoreItemRendererFactory;)Lcom/google/android/youtube/app/a;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile;->uri:Landroid/net/Uri;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;)V

    .line 402
    return-void
.end method
