.class Lcom/google/android/apps/plus/ads/PlusOneActivity$1;
.super Landroid/os/AsyncTask;
.source "PlusOneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/ads/PlusOneActivity;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 335
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, in:Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Lcom/google/android/apps/plus/ads/BlockingFilterInputStream;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/ads/BlockingFilterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_20

    .line 345
    .end local v1           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_13
    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->mDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_4e

    .line 349
    if-eqz v2, :cond_1e

    .line 351
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_42

    :cond_1e
    :goto_1e
    move-object v1, v2

    .line 357
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :cond_1f
    :goto_1f
    return-object v5

    .line 346
    :catch_20
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    :goto_21
    :try_start_21
    iput-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->mException:Ljava/lang/Exception;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_32

    .line 349
    if-eqz v1, :cond_1f

    .line 351
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1f

    .line 352
    :catch_29
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PlusOneActivity"

    const-string v4, "Failed to close ad image input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 349
    .end local v0           #e:Ljava/io/IOException;
    :catchall_32
    move-exception v3

    :goto_33
    if-eqz v1, :cond_38

    .line 351
    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 349
    :cond_38
    :goto_38
    throw v3

    .line 352
    :catch_39
    move-exception v0

    .line 353
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "PlusOneActivity"

    const-string v5, "Failed to close ad image input stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 352
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_42
    move-exception v0

    .line 353
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "PlusOneActivity"

    const-string v4, "Failed to close ad image input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 349
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4b
    move-exception v3

    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_33

    .line 346
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_4e
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_21
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 335
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    .line 363
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    const-string v1, "Failed to display ad image"

    iget-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->mException:Ljava/lang/Exception;

    #calls: Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$300(Lcom/google/android/apps/plus/ads/PlusOneActivity;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 367
    :goto_11
    return-void

    .line 365
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method
