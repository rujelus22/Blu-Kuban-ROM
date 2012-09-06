.class final Lcom/mobfox/video/sdk/cj;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Landroid/content/Context;

.field final synthetic d:Lcom/mobfox/video/sdk/ci;


# direct methods
.method public constructor <init>(Lcom/mobfox/video/sdk/ci;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/mobfox/video/sdk/cj;->d:Lcom/mobfox/video/sdk/ci;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/mobfox/video/sdk/cj;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobfox/video/sdk/cj;->a:Ljava/lang/String;

    iput p4, p0, Lcom/mobfox/video/sdk/cj;->b:I

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 9

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v1, p0, Lcom/mobfox/video/sdk/cj;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    int-to-float v5, v2

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    int-to-float v6, v3

    invoke-static {v5, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-ne v4, v2, :cond_35

    if-eq v1, v3, :cond_5e

    :cond_35
    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_3b
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mobfox/video/sdk/cj;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    :goto_46
    return-object v0

    :catch_47
    move-exception v0

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot fetch image:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    const/4 v0, 0x0

    goto :goto_46

    :cond_5e
    move-object v1, v0

    goto :goto_3b
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mobfox/video/sdk/cj;->a:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/mobfox/video/sdk/cj;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    iget-object v0, p0, Lcom/mobfox/video/sdk/cj;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mobfox/video/sdk/cj;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/mobfox/video/sdk/cj;->d:Lcom/mobfox/video/sdk/ci;

    invoke-static {v1}, Lcom/mobfox/video/sdk/ci;->b(Lcom/mobfox/video/sdk/ci;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/mobfox/video/sdk/cj;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_29
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/cj;->d:Lcom/mobfox/video/sdk/ci;

    invoke-static {v0}, Lcom/mobfox/video/sdk/ci;->a(Lcom/mobfox/video/sdk/ci;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    iget v2, p0, Lcom/mobfox/video/sdk/cj;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/cj;->d:Lcom/mobfox/video/sdk/ci;

    invoke-static {v1}, Lcom/mobfox/video/sdk/ci;->a(Lcom/mobfox/video/sdk/ci;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
