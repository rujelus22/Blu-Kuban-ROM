.class Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;
.super Ljava/lang/Object;
.source "DrawingHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/paint/DrawingHolder;->bitmapCreated(Lcom/samsung/app/video/editor/external/Element;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/paint/DrawingHolder;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;->this$0:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    iput-object p2, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 383
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;->this$0:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 384
    .local v1, ld:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v0, 0x0

    .line 385
    .local v0, lPrev:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_f

    .line 386
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-ne v0, v3, :cond_1f

    .line 391
    const-string v3, "Inside bitmapCreated and bitmap is already set"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 399
    :goto_18
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;->this$0:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingvisible(Z)V

    .line 400
    return-void

    .line 396
    :cond_1f
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 397
    .local v2, mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/DrawingHolder$2;->this$0:Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18
.end method
