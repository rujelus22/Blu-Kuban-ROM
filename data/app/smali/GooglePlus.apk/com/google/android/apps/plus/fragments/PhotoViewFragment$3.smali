.class Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;
.super Landroid/os/AsyncTask;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$toastError:Ljava/lang/String;

.field final synthetic val$toastSuccess:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$toastSuccess:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$toastError:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .registers 6
    .parameter "bitmaps"

    .prologue
    .line 1344
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 1346
    .local v1, manager:Landroid/app/WallpaperManager;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1348
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    .line 1352
    .end local v1           #manager:Landroid/app/WallpaperManager;
    :goto_12
    return-object v2

    .line 1349
    :catch_13
    move-exception v0

    .line 1350
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PhotoViewFragment"

    const-string v3, "Exception setting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1333
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1336
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$toastSuccess:Ljava/lang/String;

    .line 1337
    .local v0, toastText:Ljava/lang/String;
    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1338
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideProgressDialog()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    .line 1339
    return-void

    .line 1336
    .end local v0           #toastText:Ljava/lang/String;
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$toastError:Ljava/lang/String;

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1333
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
