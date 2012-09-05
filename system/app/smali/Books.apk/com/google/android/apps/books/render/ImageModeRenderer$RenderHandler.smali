.class Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;
.super Landroid/os/Handler;
.source "ImageModeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/ImageModeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 233
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.RenderHandler;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    .line 234
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 235
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    .line 242
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.RenderHandler;"
    :try_start_0
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    invoke-virtual {v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getMetadata()Lcom/google/android/apps/books/model/VolumeMetadata;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_13

    move-result-object v3

    .line 248
    .local v3, metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;

    .line 251
    .local v6, request:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    monitor-enter v3

    .line 252
    :try_start_b
    invoke-virtual {v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_1c

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_9b

    .line 309
    .end local v3           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .end local v6           #request:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    :goto_12
    return-void

    .line 243
    :catch_13
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v10, "ImageModeRenderer"

    const-string v11, "bg thread missing metadata, skipping render request"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 253
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v3       #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .restart local v6       #request:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    :cond_1c
    :try_start_1c
    iget-object v10, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    invoke-virtual {v3, v10}, Lcom/google/android/apps/books/model/VolumeMetadata;->normalizePosition(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    iput-object v10, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    .line 254
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_9b

    .line 256
    const-string v10, "ImageModeRenderer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "position normalized to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v10, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget v10, v10, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    sparse-switch v10, :sswitch_data_de

    .line 274
    iget-object v9, v3, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 275
    .local v9, volumeId:Ljava/lang/String;
    iget-object v10, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v10, v10, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v10}, Lcom/google/android/apps/books/common/Position;->getPageId()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, pageId:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;
    invoke-static {v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/accounts/Account;

    move-result-object v10

    iget-object v11, v3, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v10, v11, v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 280
    .local v5, pageUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$100(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content_status"

    invoke-static {v10, v5, v11}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 281
    .local v8, status:I
    const/4 v10, 0x3

    if-ne v8, v10, :cond_c2

    iget-object v10, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v10, v10, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-nez v10, :cond_c2

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 288
    .local v2, error:Ljava/lang/Exception;
    :try_start_75
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;
    invoke-static {v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/accounts/Account;

    move-result-object v11

    #calls: Lcom/google/android/apps/books/render/ImageModeRenderer;->loadPageFromProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    invoke-static {v10, v5, v9, v4, v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$200(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_80} :catch_bf

    move-result-object v0

    .line 293
    :goto_81
    new-instance v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;

    iget-object v10, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    invoke-direct {v7, v10, v11, v0, v2}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;-><init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    .line 295
    .local v7, result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;,"Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult<TT;>;"
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$300(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-virtual {v10, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_12

    .line 254
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #error:Ljava/lang/Exception;
    .end local v4           #pageId:Ljava/lang/String;
    .end local v5           #pageUri:Landroid/net/Uri;
    .end local v7           #result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;,"Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult<TT;>;"
    .end local v8           #status:I
    .end local v9           #volumeId:Ljava/lang/String;
    :catchall_9b
    move-exception v10

    :try_start_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v10

    .line 261
    :sswitch_9e
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    iget-object v11, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    const/4 v12, 0x2

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchSpecialState(Ljava/lang/Object;II)V

    goto/16 :goto_12

    .line 265
    :sswitch_a9
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    iget-object v11, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchSpecialState(Ljava/lang/Object;II)V

    goto/16 :goto_12

    .line 269
    :sswitch_b4
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    iget-object v11, v6, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchSpecialState(Ljava/lang/Object;II)V

    goto/16 :goto_12

    .line 289
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #error:Ljava/lang/Exception;
    .restart local v4       #pageId:Ljava/lang/String;
    .restart local v5       #pageUri:Landroid/net/Uri;
    .restart local v8       #status:I
    .restart local v9       #volumeId:Ljava/lang/String;
    :catch_bf
    move-exception v1

    .line 290
    .local v1, e:Ljava/lang/Exception;
    move-object v2, v1

    goto :goto_81

    .line 298
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #error:Ljava/lang/Exception;
    :cond_c2
    const/4 v10, 0x1

    if-ne v8, v10, :cond_cd

    .line 301
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "forbidden page not handled by preview gap logic"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 308
    :cond_cd
    iget-object v10, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    #getter for: Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;
    invoke-static {v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$400(Lcom/google/android/apps/books/render/ImageModeRenderer;)Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    move-result-object v10

    const/16 v11, 0x64

    invoke-virtual {v10, v11, v6}, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_12

    .line 259
    :sswitch_data_de
    .sparse-switch
        -0x80000000 -> :sswitch_9e
        -0x2 -> :sswitch_b4
        0x7fffffff -> :sswitch_a9
    .end sparse-switch
.end method
