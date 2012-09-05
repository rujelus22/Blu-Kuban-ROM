.class Lcom/sec/android/app/myfiles/ImageLoader$1$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ImageLoader$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$w1:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ImageLoader$1;Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ImageLoader$1$1;->this$1:Lcom/sec/android/app/myfiles/ImageLoader$1;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/ImageLoader$1$1;->val$w1:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;

    iput-object p3, p0, Lcom/sec/android/app/myfiles/ImageLoader$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader$1$1;->val$w1:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;->run(Landroid/graphics/Bitmap;)V

    .line 268
    return-void
.end method
