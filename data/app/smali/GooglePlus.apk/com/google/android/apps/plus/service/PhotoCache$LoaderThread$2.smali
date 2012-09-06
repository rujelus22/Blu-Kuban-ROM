.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cropType:I

.field final synthetic val$height:I

.field final synthetic val$imageKey:Ljava/lang/Object;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.2;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$imageKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$width:I

    iput p5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$height:I

    iput p6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$cropType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 297
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.2;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$imageKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$width:I

    iget v4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$height:I

    iget v5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;->val$cropType:I

    #calls: Lcom/google/android/apps/plus/service/PhotoCache;->imageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/PhotoCache;->access$300(Lcom/google/android/apps/plus/service/PhotoCache;Ljava/lang/Object;Landroid/graphics/Bitmap;III)V

    .line 298
    return-void
.end method
