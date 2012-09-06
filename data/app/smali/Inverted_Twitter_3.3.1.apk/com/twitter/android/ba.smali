.class final Lcom/twitter/android/ba;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcom/twitter/android/network/l;


# instance fields
.field final synthetic a:Lcom/twitter/android/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ImageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/az;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/ba;-><init>(Lcom/twitter/android/ImageActivity;)V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    long-to-int v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ba;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v6, 0x0

    check-cast p1, [Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    aget-object v2, p1, v6

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/util/x;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_4d

    new-instance v3, Lcom/twitter/android/network/c;

    invoke-static {v0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v4

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {v3, v4, v5, v1, p0}, Lcom/twitter/android/network/c;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/l;)V

    invoke-virtual {v3, v6}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/twitter/android/util/f;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4c
    return-object v0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iput-object p1, v0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    const v1, 0x7f0b0152

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f
.end method

.method protected final onPreExecute()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 4

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/twitter/android/ba;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
