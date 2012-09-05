.class Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "CradleWallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)V
    .registers 4
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 284
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 287
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 333
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 334
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    .line 299
    :goto_8
    return-object v1

    .line 295
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getBitmapCustomerWallpaper(Landroid/content/res/Resources;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_38} :catch_3a

    move-result-object v1

    goto :goto_8

    .line 298
    :catch_3a
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v1, v2

    .line 299
    goto :goto_8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 280
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    .line 305
    if-nez p1, :cond_4

    .line 329
    :goto_3
    return-void

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v2, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_43

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 311
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/widget/ImageView;

    move-result-object v1

    .line 315
    .local v1, view:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$402(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 319
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 321
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 323
    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$602(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    goto :goto_3

    .line 327
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #view:Landroid/widget/ImageView;
    :cond_43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 280
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
