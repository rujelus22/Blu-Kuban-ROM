.class Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;
.super Ljava/lang/Object;
.source "MXContentItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIcon(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
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
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;Landroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;->val$scaleType:Landroid/widget/ImageView$ScaleType;

    iput-object p3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->access$000(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;->val$scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->access$000(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    return-void
.end method
