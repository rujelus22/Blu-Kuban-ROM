.class Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;
.super Landroid/os/AsyncTask;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPhotoLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactLoader;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ContactLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1331
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;-><init>(Lcom/android/contacts/ContactLoader;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1331
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->doInBackground([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[B
    .registers 12
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 1337
    aget-object v7, p1, v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1338
    .local v6, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1340
    .local v1, data:[B
    :try_start_8
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v7}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1341
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_54

    .line 1342
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1d} :catch_32

    .line 1344
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x4000

    :try_start_1f
    new-array v4, v7, [B

    .line 1347
    .local v4, mBuffer:[B
    :goto_21
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, size:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_4c

    .line 1348
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2d

    goto :goto_21

    .line 1352
    .end local v4           #mBuffer:[B
    .end local v5           #size:I
    :catchall_2d
    move-exception v7

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_32

    .line 1357
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_32
    move-exception v2

    .line 1358
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ContactLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    .end local v2           #e:Ljava/io/IOException;
    :goto_4b
    return-object v1

    .line 1350
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #mBuffer:[B
    .restart local v5       #size:I
    :cond_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_2d

    move-result-object v1

    .line 1352
    :try_start_50
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_4b

    .line 1355
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #mBuffer:[B
    .end local v5           #size:I
    :cond_54
    const-string v7, "ContactLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_6c} :catch_32

    goto :goto_4b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1331
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .registers 6
    .parameter "data"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1367
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    new-instance v1, Lcom/android/contacts/ContactLoader$Result;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/ContactLoader$Result;-><init>(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/ContactLoader$1;)V

    #setter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$1702(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 1368
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, p1}, Lcom/android/contacts/ContactLoader$Result;->access$700(Lcom/android/contacts/ContactLoader$Result;[B)V

    .line 1369
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Lcom/android/contacts/ContactLoader$Result;->setLoadingPhoto(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$2000(Lcom/android/contacts/ContactLoader$Result;Z)V

    .line 1370
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactLoader;->deliverResult(Ljava/lang/Object;)V

    .line 1372
    :cond_37
    return-void
.end method
