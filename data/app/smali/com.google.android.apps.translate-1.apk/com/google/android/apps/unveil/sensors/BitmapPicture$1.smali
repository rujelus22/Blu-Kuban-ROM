.class Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;
.super Ljava/lang/Object;
.source "BitmapPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>([BIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/BitmapPicture;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    iput p2, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$width:I

    iput p3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 58
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    monitor-enter v4

    .line 60
    :try_start_3
    iget v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$width:I

    iget v5, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$height:I

    mul-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 61
    .local v1, rgbArray:[B
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    #getter for: Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B
    invoke-static {v3}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$000(Lcom/google/android/apps/unveil/sensors/BitmapPicture;)[B

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 62
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    #getter for: Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B
    invoke-static {v3}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$000(Lcom/google/android/apps/unveil/sensors/BitmapPicture;)[B

    move-result-object v3

    iget v5, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$width:I

    iget v6, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$height:I

    invoke-static {v3, v1, v5, v6}, Lcom/google/android/apps/unveil/env/ImageUtils;->convertYUV420SPToRGB565([B[BII)V

    .line 63
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 64
    .local v2, rgbBuffer:Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    iget v5, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$width:I

    iget v6, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->val$height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v5}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$102(Lcom/google/android/apps/unveil/sensors/BitmapPicture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 65
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    #getter for: Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$100(Lcom/google/android/apps/unveil/sensors/BitmapPicture;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3d} :catch_4a

    .line 71
    .end local v2           #rgbBuffer:Ljava/nio/ByteBuffer;
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    const/4 v5, 0x1

    #setter for: Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmapReady:Z
    invoke-static {v3, v5}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$302(Lcom/google/android/apps/unveil/sensors/BitmapPicture;Z)Z

    .line 72
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 74
    .end local v1           #rgbArray:[B
    :goto_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_63

    .line 75
    return-void

    .line 68
    :catch_4a
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4b
    invoke-static {}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$200()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v3

    const-string v5, "Out of memory when creating bitmap picture."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_66

    .line 71
    :try_start_57
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    const/4 v5, 0x1

    #setter for: Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmapReady:Z
    invoke-static {v3, v5}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$302(Lcom/google/android/apps/unveil/sensors/BitmapPicture;Z)Z

    .line 72
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    goto :goto_48

    .line 74
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_63
    move-exception v3

    monitor-exit v4
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_63

    throw v3

    .line 71
    :catchall_66
    move-exception v3

    :try_start_67
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    const/4 v6, 0x1

    #setter for: Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmapReady:Z
    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->access$302(Lcom/google/android/apps/unveil/sensors/BitmapPicture;Z)Z

    .line 72
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;->this$0:Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    throw v3
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_63
.end method
