.class Lcom/google/android/youtube/videos/store/BitmapStore$1;
.super Ljava/lang/Object;
.source "BitmapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/BitmapStore;->getBitmap(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/BitmapStore;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore$1;,"Lcom/google/android/youtube/videos/store/BitmapStore.1;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore$1;,"Lcom/google/android/youtube/videos/store/BitmapStore.1;"
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/videos/store/BitmapStore;->toFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    .line 53
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/youtube/videos/store/BitmapStore;->fetchBitmapFromSource(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V

    .line 68
    :goto_17
    return-void

    .line 58
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    #calls: Lcom/google/android/youtube/videos/store/BitmapStore;->getStoredBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    invoke-static {v4, v1}, Lcom/google/android/youtube/videos/store/BitmapStore;->access$000(Lcom/google/android/youtube/videos/store/BitmapStore;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_25} :catch_26
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_18 .. :try_end_25} :catch_49

    goto :goto_17

    .line 59
    :catch_26
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read poster data for video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/youtube/videos/store/BitmapStore;->fetchBitmapFromSource(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V

    goto :goto_17

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 65
    .local v0, e:Lcom/google/android/youtube/core/converter/ConverterException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode poster data for video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$request:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/BitmapStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/youtube/videos/store/BitmapStore;->fetchBitmapFromSource(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V

    goto :goto_17
.end method
