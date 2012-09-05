.class Lcom/android/calendar/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field container:Landroid/view/View;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/calendar/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "b"
    .parameter "i"
    .parameter "c"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->this$0:Lcom/android/calendar/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 621
    iput-object p3, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    .line 624
    iput-object p4, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    .line 627
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 636
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 639
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 642
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 660
    :goto_18
    return-void

    .line 651
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/android/calendar/ImageLoader$BitmapDisplayer;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method
