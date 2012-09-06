.class final Lcom/twitter/android/ct;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/android/dc;)F
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1}, Lcom/twitter/android/PostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_19

    move-result-object v1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_27
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_29

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x4480

    div-float/2addr v0, v2

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_18
    return v0

    :catch_19
    move-exception v1

    :goto_1a
    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_18

    :catchall_1f
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_23
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_27
    move-exception v0

    goto :goto_23

    :catch_29
    move-exception v0

    move-object v0, v1

    goto :goto_1a
.end method

.method private varargs a([Lcom/twitter/android/dc;)Lcom/twitter/android/dc;
    .registers 11

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    aget-object v6, p1, v8

    :try_start_5
    invoke-direct {p0, v6}, Lcom/twitter/android/ct;->a(Lcom/twitter/android/dc;)F
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_8} :catch_4c

    move-result v7

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    const v1, 0x7f0b0134

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/twitter/android/dc;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v6, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "title"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/android/dc;->e:Ljava/lang/String;

    :cond_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_41
    const/high16 v0, 0x45a0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_51

    const/4 v0, 0x4

    iput v0, v6, Lcom/twitter/android/dc;->c:I

    :goto_4a
    move-object v0, v6

    :goto_4b
    return-object v0

    :catch_4c
    move-exception v0

    iput v5, v6, Lcom/twitter/android/dc;->c:I

    move-object v0, v6

    goto :goto_4b

    :cond_51
    const/high16 v0, 0x4290

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1}, Lcom/twitter/android/PostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v2, v6, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-static {v1, v2, v0, v0, v8}, Lcom/twitter/android/util/f;->a(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/twitter/android/dc;->d:Landroid/graphics/Bitmap;

    goto :goto_4a
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twitter/android/dc;

    invoke-direct {p0, p1}, Lcom/twitter/android/ct;->a([Lcom/twitter/android/dc;)Lcom/twitter/android/dc;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    check-cast p1, Lcom/twitter/android/dc;

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/twitter/android/dc;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    iput v6, p1, Lcom/twitter/android/dc;->c:I

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/twitter/android/dc;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->e()V

    :goto_28
    return-void

    :cond_29
    const/4 v0, 0x4

    iget v1, p1, Lcom/twitter/android/dc;->c:I

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

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

    :goto_49
    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->d()V

    goto :goto_28

    :cond_59
    iput v5, p1, Lcom/twitter/android/dc;->c:I

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    const v2, 0x7f0b0152

    invoke-virtual {v1, v2}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_49
.end method

.method protected final onPreExecute()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/widget/ShadowTextView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ShadowTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
