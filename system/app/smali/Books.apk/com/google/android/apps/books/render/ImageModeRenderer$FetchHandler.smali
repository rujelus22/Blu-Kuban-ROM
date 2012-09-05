.class Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;
.super Landroid/os/Handler;
.source "ImageModeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/ImageModeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 313
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.FetchHandler;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    .line 314
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    .line 323
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.FetchHandler;"
    :try_start_0
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    invoke-virtual {v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v4

    .line 324
    .local v4, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    invoke-virtual {v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getMetadata()Lcom/google/android/apps/books/model/VolumeMetadata;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_55

    move-result-object v5

    .line 330
    .local v5, metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;

    .line 332
    .local v6, normalized:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    iget-object v10, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 333
    .local v10, volumeId:Ljava/lang/String;
    iget-object v11, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v11, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v11}, Lcom/google/android/apps/books/common/Position;->getPageId()Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, pageId:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;
    invoke-static {v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/accounts/Account;

    move-result-object v11

    invoke-static {v11, v10, v7}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 336
    .local v8, pageUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 337
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 340
    .local v3, error:Ljava/lang/Exception;
    :try_start_26
    iget-object v11, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v11, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-eqz v11, :cond_5e

    .line 341
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    iget-object v12, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;
    invoke-static {v12}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/accounts/Account;

    move-result-object v12

    iget-object v13, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v13, v13, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    #calls: Lcom/google/android/apps/books/render/ImageModeRenderer;->loadPageFromOnline(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v11, v10, v7, v12, v13}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$500(Lcom/google/android/apps/books/render/ImageModeRenderer;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_82

    move-result-object v0

    .line 363
    :goto_3c
    new-instance v9, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;

    iget-object v11, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v12, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    invoke-direct {v9, v11, v12, v0, v3}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;-><init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    .line 365
    .local v9, result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$300(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xc8

    invoke-virtual {v11, v12, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 367
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #error:Ljava/lang/Exception;
    .end local v4           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v5           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .end local v6           #normalized:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    .end local v7           #pageId:Ljava/lang/String;
    .end local v8           #pageUri:Landroid/net/Uri;
    .end local v9           #result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;
    .end local v10           #volumeId:Ljava/lang/String;
    :goto_54
    return-void

    .line 325
    :catch_55
    move-exception v2

    .line 326
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v11, "ImageModeRenderer"

    const-string v12, "bg thread missing metadata, skipping render request"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 345
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #error:Ljava/lang/Exception;
    .restart local v4       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .restart local v5       #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .restart local v6       #normalized:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    .restart local v7       #pageId:Ljava/lang/String;
    .restart local v8       #pageUri:Landroid/net/Uri;
    .restart local v10       #volumeId:Ljava/lang/String;
    :cond_5e
    :try_start_5e
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;
    invoke-static {v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/accounts/Account;

    move-result-object v11

    invoke-virtual {v4, v10, v7, v11}, Lcom/google/android/apps/books/service/ContentFetchService;->ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 349
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$100(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "content_status"

    invoke-static {v11, v8, v12}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 351
    .local v1, contentStatus:I
    const/4 v11, 0x3

    if-eq v1, v11, :cond_85

    .line 353
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "even after fetch, content still wasn\'t local"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 359
    .end local v1           #contentStatus:I
    :catch_82
    move-exception v2

    .line 360
    .local v2, e:Ljava/lang/Exception;
    move-object v3, v2

    goto :goto_3c

    .line 357
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #contentStatus:I
    :cond_85
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    iget-object v12, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;
    invoke-static {v12}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/accounts/Account;

    move-result-object v12

    #calls: Lcom/google/android/apps/books/render/ImageModeRenderer;->loadPageFromProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    invoke-static {v11, v8, v10, v7, v12}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$200(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_90} :catch_82

    move-result-object v0

    goto :goto_3c
.end method
