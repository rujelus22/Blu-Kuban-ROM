.class Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;
.super Landroid/os/AsyncTask;
.source "SwypeIntro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/intro/SwypeIntro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetrieveYouTubeIDTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field introActivity:Lcom/swype/android/intro/SwypeIntro;

.field videoURL:Ljava/lang/String;

.field youtubeHead:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/swype/android/intro/SwypeIntro;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 224
    invoke-virtual {p0, p1}, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->attach(Lcom/swype/android/intro/SwypeIntro;)V

    .line 225
    return-void
.end method


# virtual methods
.method attach(Lcom/swype/android/intro/SwypeIntro;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    .line 282
    return-void
.end method

.method detach()V
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    .line 286
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->videoURL:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->youtubeHead:Ljava/lang/String;

    if-nez v0, :cond_b

    :cond_9
    move-object v0, v4

    .line 270
    :goto_a
    return-object v0

    .line 245
    :cond_b
    :try_start_b
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 246
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->videoURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 253
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->youtubeHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->youtubeHead:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 256
    if-ltz v1, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_71

    .line 257
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 259
    if-ltz v2, :cond_71

    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_52
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_52} :catch_54
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_52} :catch_73

    move-result-object v0

    goto :goto_a

    .line 264
    :catch_54
    move-exception v0

    .line 265
    const-string v1, "SwypeIntro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    move-object v0, v4

    .line 270
    goto :goto_a

    .line 266
    :catch_73
    move-exception v0

    .line 267
    const-string v1, "SwypeIntro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .parameter "youTubeId"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    invoke-virtual {v0, p1}, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTaskFinished(Ljava/lang/String;)V

    .line 278
    :cond_9
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    if-eqz v0, :cond_29

    .line 230
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Lcom/swype/android/intro/SwypeIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Lcom/swype/android/intro/SwypeIntro;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->videoURL:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->introActivity:Lcom/swype/android/intro/SwypeIntro;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Lcom/swype/android/intro/SwypeIntro;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->youtubeHead:Ljava/lang/String;

    .line 234
    :cond_29
    return-void
.end method
