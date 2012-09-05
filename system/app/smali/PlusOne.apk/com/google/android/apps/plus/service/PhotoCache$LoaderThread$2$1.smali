.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

.field final synthetic val$imageBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 323
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 326
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2.1;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$imageKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$data:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    iget v4, v4, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$width:I

    iget-object v5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    iget v5, v5, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$height:I

    iget-object v6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    iget v6, v6, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$cropType:I

    #calls: Lcom/google/android/apps/plus/service/PhotoCache;->imageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;III)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache;->access$400(Lcom/google/android/apps/plus/service/PhotoCache;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;III)V

    .line 327
    return-void
.end method
