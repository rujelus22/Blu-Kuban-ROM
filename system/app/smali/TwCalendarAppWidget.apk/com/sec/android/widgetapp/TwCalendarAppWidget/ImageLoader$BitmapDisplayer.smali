.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field container:Landroid/view/View;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "b"
    .parameter "i"
    .parameter "c"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 217
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_18
    return-void

    .line 221
    :cond_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method
