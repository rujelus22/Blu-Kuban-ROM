.class Lcom/google/android/finsky/utils/BitmapLoader$3;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$3;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 543
    iget-object v4, p0, Lcom/google/android/finsky/utils/BitmapLoader$3;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/utils/BitmapLoader;->access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 544
    .local v3, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$600(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 545
    .local v0, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->responseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$300(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->access$702(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 546
    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    invoke-static {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->access$800(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    goto :goto_22

    .line 549
    .end local v0           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    :cond_3d
    iget-object v4, p0, Lcom/google/android/finsky/utils/BitmapLoader$3;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/utils/BitmapLoader;->access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 550
    iget-object v4, p0, Lcom/google/android/finsky/utils/BitmapLoader$3;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/BitmapLoader;->access$902(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 551
    return-void
.end method
