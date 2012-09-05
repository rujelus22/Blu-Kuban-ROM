.class Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;
.super Ljava/lang/Object;
.source "BooksImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTask"
.end annotation


# instance fields
.field private final mEnsurer:Lcom/google/android/apps/books/common/ImageManager$Ensurer;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksImageManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/BooksImageManager;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter "ensurer"
    .parameter "uri"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    if-nez p3, :cond_d

    .line 284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 286
    :cond_d
    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mEnsurer:Lcom/google/android/apps/books/common/ImageManager$Ensurer;

    .line 287
    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    .line 288
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 300
    .local v3, exception:Ljava/lang/Throwable;
    :try_start_2
    iget-object v10, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mEnsurer:Lcom/google/android/apps/books/common/ImageManager$Ensurer;

    if-eqz v10, :cond_b

    .line 301
    iget-object v10, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mEnsurer:Lcom/google/android/apps/books/common/ImageManager$Ensurer;

    invoke-interface {v10}, Lcom/google/android/apps/books/common/ImageManager$Ensurer;->ensure()V

    .line 304
    :cond_b
    iget-object v10, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    #calls: Lcom/google/android/apps/books/app/BooksImageManager;->isRemoteUri(Landroid/net/Uri;)Z
    invoke-static {v10}, Lcom/google/android/apps/books/app/BooksImageManager;->access$100(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 305
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 306
    .local v6, req:Lorg/apache/http/client/methods/HttpGet;
    iget-object v10, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    #getter for: Lcom/google/android/apps/books/app/BooksImageManager;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;
    invoke-static {v10}, Lcom/google/android/apps/books/app/BooksImageManager;->access$200(Lcom/google/android/apps/books/app/BooksImageManager;)Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [I

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 307
    .local v7, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2f} :catch_61
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_94

    move-result-object v2

    .line 310
    .local v2, entity:Lorg/apache/http/HttpEntity;
    :try_start_30
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_5a

    move-result-object v4

    .line 312
    .local v4, input:Ljava/io/InputStream;
    :try_start_34
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_53

    move-result-object v0

    .line 314
    if-eqz v4, :cond_3d

    :try_start_3a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_5a

    .line 317
    :cond_3d
    if-eqz v2, :cond_42

    :try_start_3f
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_42} :catch_61
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_94

    .line 335
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #input:Ljava/io/InputStream;
    .end local v6           #req:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #resp:Lorg/apache/http/HttpResponse;
    :cond_42
    :goto_42
    move-object v8, v0

    .line 336
    .local v8, resultBitmap:Landroid/graphics/Bitmap;
    move-object v9, v3

    .line 337
    .local v9, resultException:Ljava/lang/Throwable;
    iget-object v10, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    #getter for: Lcom/google/android/apps/books/app/BooksImageManager;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/google/android/apps/books/app/BooksImageManager;->access$900(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;

    invoke-direct {v11, p0, v8, v9}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask$1;-><init>(Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void

    .line 314
    .end local v8           #resultBitmap:Landroid/graphics/Bitmap;
    .end local v9           #resultException:Ljava/lang/Throwable;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #input:Ljava/io/InputStream;
    .restart local v6       #req:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #resp:Lorg/apache/http/HttpResponse;
    :catchall_53
    move-exception v10

    if-eqz v4, :cond_59

    :try_start_56
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_59
    throw v10
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    .line 317
    .end local v4           #input:Ljava/io/InputStream;
    :catchall_5a
    move-exception v10

    if-eqz v2, :cond_60

    :try_start_5d
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_60
    throw v10
    :try_end_61
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5d .. :try_end_61} :catch_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_94

    .line 327
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #req:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #resp:Lorg/apache/http/HttpResponse;
    :catch_61
    move-exception v1

    .line 328
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v10, "BooksImageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Insufficient memory to load image: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    move-object v3, v1

    .line 333
    goto :goto_42

    .line 321
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_7e
    :try_start_7e
    iget-object v10, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    #getter for: Lcom/google/android/apps/books/app/BooksImageManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/google/android/apps/books/app/BooksImageManager;->access$300(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 322
    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_42

    .line 323
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7e .. :try_end_93} :catch_61
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_93} :catch_94

    goto :goto_42

    .line 330
    .end local v5           #is:Ljava/io/InputStream;
    :catch_94
    move-exception v1

    .line 331
    .local v1, e:Ljava/io/IOException;
    const-string v10, "BooksImageManager"

    const-string v11, "IO error while loading image: "

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    move-object v3, v1

    goto :goto_42
.end method
