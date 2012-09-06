.class Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;
.super Landroid/os/AsyncTask;
.source "ItemContextMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetWallpaperTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUrl:Ljava/lang/String;

.field private final mWallpaperProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 323
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mContext:Landroid/content/Context;

    .line 325
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mUrl:Ljava/lang/String;

    .line 327
    const v1, 0x7f0d0128

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 328
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 330
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 333
    return-void
.end method

.method private restoreWallpaper(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 360
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 361
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 362
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 363
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_21

    .line 367
    const/4 v0, 0x1

    .line 370
    :goto_20
    return v0

    .line 368
    :catch_21
    move-exception v0

    .line 369
    const-string v1, "WebViewContextMenu"

    const-string v2, "Failed to restore wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 370
    goto :goto_20
.end method

.method private setWallpaper(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 345
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_18

    move-result-object v0

    .line 347
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 349
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 351
    const/4 v0, 0x1

    .line 354
    :goto_12
    return v0

    .line 349
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_18

    .line 352
    :catch_18
    move-exception v0

    .line 353
    const-string v1, "WebViewContextMenu"

    const-string v2, "Failed to set wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 314
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->setWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 391
    :cond_14
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->restoreWallpaper(Landroid/graphics/drawable/Drawable;)Z

    .line 393
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->cancel(Z)Z

    .line 380
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 339
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 401
    :cond_d
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$SetWallpaperTask;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 385
    return-void
.end method
