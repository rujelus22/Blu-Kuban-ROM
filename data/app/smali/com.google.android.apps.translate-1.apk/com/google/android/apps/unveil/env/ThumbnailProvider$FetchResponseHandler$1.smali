.class Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;
.super Ljava/lang/Object;
.source "ThumbnailProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;

.field final synthetic val$listeners:Ljava/util/List;

.field final synthetic val$picture:Lcom/google/android/apps/unveil/env/Picture;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;Ljava/util/List;Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;->this$1:Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;

    iput-object p2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;->val$listeners:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;->val$picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 484
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;->val$listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;

    .line 485
    .local v1, listener:Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler$1;->val$picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;->onThumbnailReady(Lcom/google/android/apps/unveil/env/Picture;)V

    goto :goto_6

    .line 487
    .end local v1           #listener:Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;
    :cond_18
    return-void
.end method
