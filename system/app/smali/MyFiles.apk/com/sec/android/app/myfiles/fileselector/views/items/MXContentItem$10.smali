.class Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;
.super Ljava/lang/Object;
.source "MXContentItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setThumbnail(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->val$scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->access$100(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->access$100(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->val$scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->access$100(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    :cond_22
    :goto_22
    return-void

    .line 395
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mBrokenImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->access$200(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setThumbnail(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    goto :goto_22
.end method
