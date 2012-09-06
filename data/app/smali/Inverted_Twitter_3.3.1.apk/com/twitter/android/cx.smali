.class final Lcom/twitter/android/cx;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;

.field private final b:Ljava/io/File;

.field private final c:Lcom/twitter/android/dc;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;Ljava/io/File;Lcom/twitter/android/dc;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/cx;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Landroid/net/Uri;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/cx;->b:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :try_start_7
    iget-object v2, p0, Lcom/twitter/android/cx;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    iget-object v2, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    const/4 v3, 0x4

    iput v3, v2, Lcom/twitter/android/dc;->c:I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_19} :catch_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_19} :catch_43

    iget-object v2, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    iput-object v1, v2, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    :goto_1d
    return-object v0

    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v2}, Lcom/twitter/android/PostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/cx;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    const v5, 0x7f0b0135

    invoke-virtual {v4, v5}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_37} :catch_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_37} :catch_43

    iget-object v0, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    iput-object v1, v0, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    move-object v0, v1

    goto :goto_1d

    :catch_3d
    move-exception v2

    iget-object v2, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    iput-object v1, v2, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    goto :goto_1d

    :catch_43
    move-exception v0

    iget-object v0, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    iput-object v1, v0, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    move-object v0, v1

    goto :goto_1d

    :catchall_4a
    move-exception v0

    iget-object v2, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    iput-object v1, v2, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/twitter/android/cx;->a([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/dc;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/twitter/android/cx;->c:Lcom/twitter/android/dc;

    iget v1, v1, Lcom/twitter/android/dc;->c:I

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    const v2, 0x7f0b00cb

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d

    :cond_4b
    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    const v2, 0x7f0b00c6

    invoke-virtual {v1, v2}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method protected final onPreExecute()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/widget/ShadowTextView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ShadowTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/cx;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
