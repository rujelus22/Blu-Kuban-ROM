.class Lcom/estrongs/android/pop/view/ba;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Downloader;

.field private b:Lcom/estrongs/android/pop/view/Downloader;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/Downloader;Lcom/estrongs/android/pop/view/Downloader;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/Downloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/estrongs/android/pop/view/ba;->c:I

    const v0, 0xea60

    iput v0, p0, Lcom/estrongs/android/pop/view/ba;->d:I

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ba;)Lcom/estrongs/android/pop/view/Downloader;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 13

    const/4 v10, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/Downloader;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v6, v6, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iget-object v6, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    invoke-virtual {v6, v0}, Lcom/estrongs/android/pop/view/Downloader;->a(I)V

    const/16 v0, 0x400

    new-array v6, v0, [B

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ba;->publishProgress([Ljava/lang/Object;)V

    move v0, v2

    :goto_88
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_ae

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/Downloader;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v5, v5, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_e

    :cond_ae
    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v0, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/ba;->publishProgress([Ljava/lang/Object;)V
    :try_end_c0
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_c0} :catch_c1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_c0} :catch_f3

    goto :goto_88

    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_c5
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/Downloader;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v5, v5, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :catch_f3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c5
.end method

.method protected a(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Downloader;->c(I)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Downloader;->b(I)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ba;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ba;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->b:Lcom/estrongs/android/pop/view/Downloader;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/Downloader;->a()V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ba;->a([Ljava/lang/Integer;)V

    return-void
.end method
