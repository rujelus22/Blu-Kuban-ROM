.class final Lcom/twitter/android/bb;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ImageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/az;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/bb;-><init>(Lcom/twitter/android/ImageActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    invoke-virtual {v1}, Lcom/twitter/android/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    iget-object v2, v2, Lcom/twitter/android/ImageActivity;->e:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    iget-object v3, v3, Lcom/twitter/android/ImageActivity;->g:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x0

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ImageActivity;->dismissDialog(I)V

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    iput-object p1, v0, Lcom/twitter/android/ImageActivity;->d:Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    const v1, 0x7f0b016b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    const v1, 0x7f0b016a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method

.method protected final onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/bb;->a:Lcom/twitter/android/ImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ImageActivity;->showDialog(I)V

    return-void
.end method
