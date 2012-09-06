.class Lcom/google/android/apps/reader/app/PageInfoTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "PageInfoTask.java"

# interfaces
.implements Landroid/text/Html$TagHandler;
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/PageInfoTask$1;,
        Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/text/Html$TagHandler;",
        "Lorg/xml/sax/ContentHandler;"
    }
.end annotation


# static fields
.field private static final KB:I = 0x400

.field private static final MAX_LENGTH:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "PageInfoTask"


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mDescription:Ljava/lang/String;

.field private mFinished:Z

.field private mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

.field private mRedirectLocation:Ljava/net/URL;

.field private mTitle:Ljava/lang/String;

.field private mTitleStart:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 345
    return-void
.end method

.method private declared-synchronized setDescription(Ljava/lang/String;)V
    .registers 3
    .parameter "description"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mDescription:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 218
    monitor-exit p0

    return-void

    .line 217
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setRedirectURL(Ljava/net/URL;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mRedirectLocation:Ljava/net/URL;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mTitle:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static toString(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x2

    const/4 v6, -0x1

    .line 59
    invoke-static {p0}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 61
    :try_start_7
    invoke-static {p0}, Lcom/google/android/feeds/ContentHandlerUtils;->getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 67
    if-eq v1, v6, :cond_4c

    const/high16 v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 70
    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    const/16 v1, 0x1000

    new-array v1, v1, [C

    .line 79
    :goto_25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->capacity()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 81
    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 82
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .line 83
    if-ne v4, v6, :cond_4e

    .line 91
    :cond_44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_53

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :cond_4c
    move v1, v3

    .line 67
    goto :goto_1c

    .line 86
    :cond_4e
    const/4 v5, 0x0

    :try_start_4f
    invoke-virtual {v3, v1, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_25

    .line 93
    :catchall_53
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 308
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, [Ljava/net/URL;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/PageInfoTask;->doInBackground([Ljava/net/URL;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Void;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    array-length v0, p1

    if-eq v0, v2, :cond_c

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :cond_c
    aget-object v1, p1, v1

    .line 124
    :try_start_e
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException; {:try_start_e .. :try_end_14} :catch_49
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_14} :catch_6d
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_14} :catch_76

    .line 127
    const/4 v2, 0x1

    :try_start_15
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 129
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 133
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 136
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4b

    .line 137
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_44

    .line 148
    :catchall_44
    move-exception v1

    :try_start_45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_49
    .catch Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException; {:try_start_45 .. :try_end_49} :catch_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_49} :catch_6d
    .catch Ljava/lang/Error; {:try_start_45 .. :try_end_49} :catch_76

    .line 158
    :catch_49
    move-exception v0

    .line 159
    :goto_4a
    return-object v5

    .line 139
    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 141
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/PageInfoTask;->setRedirectURL(Ljava/net/URL;)V

    .line 143
    :cond_58
    invoke-static {v0}, Lcom/google/android/apps/reader/app/PageInfoTask;->toString(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const/4 v2, 0x0

    .line 146
    invoke-static {v1, v2, p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_44

    .line 148
    :try_start_60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_63
    .catch Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException; {:try_start_60 .. :try_end_63} :catch_49
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_63} :catch_6d
    .catch Ljava/lang/Error; {:try_start_60 .. :try_end_63} :catch_76

    goto :goto_4a

    .line 152
    :catch_64
    move-exception v0

    .line 153
    const-string v1, "PageInfoTask"

    const-string v2, "i/o error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 154
    :catch_6d
    move-exception v0

    .line 155
    const-string v1, "PageInfoTask"

    const-string v2, "runtime error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 156
    :catch_76
    move-exception v0

    .line 157
    const-string v1, "PageInfoTask"

    const-string v2, "severe error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 343
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public declared-synchronized getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mDescription:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRedirectURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mRedirectLocation:Ljava/net/URL;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mTitle:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .registers 9
    .parameter "opening"
    .parameter "tag"
    .parameter "output"
    .parameter "xmlReader"

    .prologue
    .line 232
    invoke-interface {p4}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 233
    .local v0, handler:Lorg/xml/sax/ContentHandler;
    if-eq v0, p0, :cond_b

    .line 236
    iput-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    .line 237
    invoke-interface {p4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 240
    :cond_b
    const-string v2, "title"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 241
    if-eqz p1, :cond_1c

    .line 242
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mTitleStart:I

    .line 260
    :cond_1b
    :goto_1b
    return-void

    .line 244
    :cond_1c
    iget v2, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mTitleStart:I

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p3, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, title:Ljava/lang/String;
    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/PageInfoTask;->setTitle(Ljava/lang/String;)V

    goto :goto_1b

    .line 254
    .end local v1           #title:Ljava/lang/String;
    :cond_3a
    const-string v2, "head"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz p1, :cond_4e

    :cond_44
    const-string v2, "body"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz p1, :cond_1b

    .line 258
    :cond_4e
    new-instance v2, Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException;-><init>(Lcom/google/android/apps/reader/app/PageInfoTask$1;)V

    throw v2
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 329
    return-void
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mFinished:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/PageInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mFinished:Z

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 168
    :cond_c
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public setCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mCallback:Ljava/lang/Runnable;

    .line 176
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .parameter "locator"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 274
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 288
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 296
    const-string v0, "meta"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 297
    const-string v0, "description"

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 298
    const-string v0, "content"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/PageInfoTask;->setDescription(Ljava/lang/String;)V

    .line 301
    :cond_24
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/apps/reader/app/PageInfoTask;->mHtmlContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method
