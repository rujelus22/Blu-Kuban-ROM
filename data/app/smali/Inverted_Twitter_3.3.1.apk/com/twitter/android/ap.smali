.class final Lcom/twitter/android/ap;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/twitter/android/network/l;


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;

.field private final b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .registers 5

    iput-object p1, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0b0038

    invoke-virtual {p1, v1}, Lcom/twitter/android/EditProfileActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v1, -0x2

    const v2, 0x7f0b00d5

    invoke-virtual {p1, v2}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/ap;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs a([Landroid/net/Uri;)Lcom/twitter/android/api/ac;
    .registers 16

    const/4 v1, 0x0

    const/4 v9, 0x0

    iget-object v12, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v6

    aget-object v1, p1, v1

    invoke-static {v12}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    :try_start_12
    new-instance v4, Lcom/twitter/android/network/g;

    invoke-direct {v4, p0}, Lcom/twitter/android/network/g;-><init>(Lcom/twitter/android/network/l;)V

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_d5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1e} :catch_cd

    move-result-object v11

    :try_start_1f
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v13, v1, [B

    const/4 v1, 0x0

    array-length v2, v13

    invoke-virtual {v11, v13, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_db
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_dd

    move-result v1

    if-gtz v1, :cond_32

    invoke-static {v11}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    move-object v0, v9

    :goto_31
    return-object v0

    :cond_32
    :try_start_32
    const-string v1, "image"

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2, v13}, Lcom/twitter/android/network/g;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    invoke-virtual {v4}, Lcom/twitter/android/network/g;->a()V

    invoke-static {v12}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "account"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "update_profile_image"

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lcom/twitter/android/network/a;

    iget-object v7, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v7, v7, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v7}, Lcom/twitter/android/client/b;->e()Lcom/twitter/android/network/j;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    invoke-virtual {v0}, Lcom/twitter/android/network/c;->b()Z

    move-result v0

    if-eqz v0, :cond_c7

    sget-object v0, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/a;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {v12, v6, v10, v0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V

    iget-wide v0, v10, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v12, v0, v1}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v10, Lcom/twitter/android/api/ac;->a:J

    iget-object v3, v10, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(JLjava/lang/String;[BI)[B
    :try_end_c1
    .catchall {:try_start_32 .. :try_end_c1} :catchall_db
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_c1} :catch_dd

    invoke-static {v11}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    move-object v0, v10

    goto/16 :goto_31

    :cond_c7
    invoke-static {v11}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    move-object v0, v9

    goto/16 :goto_31

    :catch_cd
    move-exception v0

    move-object v0, v9

    :goto_cf
    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    move-object v0, v9

    goto/16 :goto_31

    :catchall_d5
    move-exception v0

    move-object v11, v9

    :goto_d7
    invoke-static {v11}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_db
    move-exception v0

    goto :goto_d7

    :catch_dd
    move-exception v0

    move-object v0, v11

    goto :goto_cf
.end method


# virtual methods
.method public final a(JJ)V
    .registers 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ap;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/twitter/android/ap;->a([Landroid/net/Uri;)Lcom/twitter/android/api/ac;

    move-result-object v0

    return-object v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ap;->cancel(Z)Z

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 8

    const/4 v5, 0x0

    check-cast p1, Lcom/twitter/android/api/ac;

    iget-object v0, p0, Lcom/twitter/android/ap;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/api/ac;)V

    iget-object v1, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v1, v5}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/twitter/android/aq;

    invoke-direct {v2, p0, v0, p1}, Lcom/twitter/android/aq;-><init>(Lcom/twitter/android/ap;Lcom/twitter/android/client/b;Lcom/twitter/android/api/ac;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    iput-object v5, v0, Lcom/twitter/android/EditProfileActivity;->d:Landroid/net/Uri;

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/EditProfileActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->showDialog(I)V

    goto :goto_29
.end method

.method protected final onPreExecute()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/ap;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 4

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/ap;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
