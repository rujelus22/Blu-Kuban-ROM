.class final Lcom/twitter/android/er;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_21
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_c} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_1b

    move-result-object v1

    :try_start_d
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_29
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_10} :catch_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_2b

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    move-object v1, v0

    :goto_17
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_14

    :catch_1b
    move-exception v1

    move-object v1, v0

    :goto_1d
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_14

    :catchall_21
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_25
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_29
    move-exception v0

    goto :goto_25

    :catch_2b
    move-exception v2

    goto :goto_1d

    :catch_2d
    move-exception v2

    goto :goto_17
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/twitter/android/er;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->e()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/SignUpActivity;

    iput-object p1, v0, Lcom/twitter/android/SignUpActivity;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->showDialog(I)V

    goto :goto_14
.end method
