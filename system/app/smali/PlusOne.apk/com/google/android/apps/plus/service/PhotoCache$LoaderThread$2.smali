.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->put(Ljava/lang/Object;[BLjava/lang/Object;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

.field final synthetic val$cropType:I

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$height:I

.field final synthetic val$imageBytes:[B

.field final synthetic val$imageKey:Ljava/lang/Object;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;[BIIILjava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.2;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$imageBytes:[B

    iput p3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$width:I

    iput p4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$height:I

    iput p5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$cropType:I

    iput-object p6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$imageKey:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 322
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.2;"
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$imageBytes:[B

    iget v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$width:I

    iget v4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$height:I

    iget v5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$cropType:I

    #calls: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->createBitmap([BIII)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$300(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;[BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, imageBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$500(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method
