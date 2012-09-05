.class Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/WallpaperChooser;
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

.field final synthetic this$0:Lcom/sprint/w/installer/WallpaperChooser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/WallpaperChooser;)V
    .registers 4
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 212
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 213
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 214
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 215
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 261
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 262
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    .line 226
    :goto_8
    return-object v1

    .line 224
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->mImageUris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sprint/w/installer/WallpaperChooser;->access$200(Lcom/sprint/w/installer/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_23} :catch_25

    move-result-object v1

    goto :goto_8

    .line 225
    :catch_25
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v1, v2

    .line 226
    goto :goto_8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    .line 232
    if-nez p1, :cond_4

    .line 257
    :goto_3
    return-void

    .line 236
    :cond_4
    invoke-virtual {p0}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v2, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_43

    .line 238
    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sprint/w/installer/WallpaperChooser;->access$300(Lcom/sprint/w/installer/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 239
    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sprint/w/installer/WallpaperChooser;->access$300(Lcom/sprint/w/installer/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    :cond_21
    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sprint/w/installer/WallpaperChooser;->access$400(Lcom/sprint/w/installer/WallpaperChooser;)Landroid/widget/ImageView;

    move-result-object v1

    .line 243
    .local v1, view:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #setter for: Lcom/sprint/w/installer/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, p1}, Lcom/sprint/w/installer/WallpaperChooser;->access$302(Lcom/sprint/w/installer/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 247
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 249
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 251
    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 253
    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    const/4 v3, 0x0

    #setter for: Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;
    invoke-static {v2, v3}, Lcom/sprint/w/installer/WallpaperChooser;->access$502(Lcom/sprint/w/installer/WallpaperChooser;Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;)Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    goto :goto_3

    .line 255
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
    .line 207
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
