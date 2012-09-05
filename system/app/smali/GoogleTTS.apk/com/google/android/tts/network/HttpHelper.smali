.class Lcom/google/android/tts/network/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# instance fields
.field private final mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mUrlRewriter:Lcom/google/android/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/common/base/Function;Lcom/google/android/tts/network/NetworkLangCountryHelper;)V
    .registers 3
    .parameter
    .parameter "helper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/tts/network/NetworkLangCountryHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, urlRewriter:Lcom/google/android/common/base/Function;,"Lcom/google/android/common/base/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/tts/network/HttpHelper;->mUrlRewriter:Lcom/google/android/common/base/Function;

    .line 64
    iput-object p2, p0, Lcom/google/android/tts/network/HttpHelper;->mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;

    .line 65
    return-void
.end method

.method private buildRequestUrl(Lcom/google/android/tts/GoogleTtsRequest;Z)Ljava/net/URL;
    .registers 13
    .parameter "request"
    .parameter "includeTextParam"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 159
    new-instance v0, Ljava/util/Formatter;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 160
    .local v0, f:Ljava/util/Formatter;
    const-string v4, "https://www.google.com/speech-api/v1/synthesize?client=android-network-tts&lang=%s&rate=16000&enc=speex"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/tts/network/HttpHelper;->getLanguage(Lcom/google/android/tts/GoogleTtsRequest;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 162
    if-eqz p2, :cond_38

    .line 163
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/tts/network/HttpHelper;->isSsmlLike(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 164
    const-string v4, "&%s=%s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "ssml"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/tts/network/HttpHelper;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 170
    :cond_38
    :goto_38
    iget-object v4, p0, Lcom/google/android/tts/network/HttpHelper;->mUrlRewriter:Lcom/google/android/common/base/Function;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, transformedUrl:Ljava/lang/String;
    :try_start_44
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/net/MalformedURLException; {:try_start_44 .. :try_end_49} :catch_60

    .line 178
    :goto_49
    return-object v3

    .line 166
    .end local v2           #transformedUrl:Ljava/lang/String;
    :cond_4a
    const-string v4, "&%s=%s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "text"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/tts/network/HttpHelper;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_38

    .line 176
    .restart local v2       #transformedUrl:Ljava/lang/String;
    :catch_60
    move-exception v1

    .line 178
    .local v1, mue:Ljava/net/MalformedURLException;
    const/4 v3, 0x0

    goto :goto_49
.end method

.method static getEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "data"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 197
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 201
    :goto_6
    return-object v1

    .line 199
    :catch_7
    move-exception v0

    .line 200
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "GoogleTTS.HttpHelper"

    const-string v3, "UTF-8 not supported on this platform"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private getLanguage(Lcom/google/android/tts/GoogleTtsRequest;)Ljava/lang/String;
    .registers 5
    .parameter "request"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/tts/network/HttpHelper;->mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/tts/network/NetworkLangCountryHelper;->getBcp47Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSsmlLike(Ljava/lang/String;)Z
    .registers 3
    .parameter "text"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 186
    const-string v0, "</speak>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private openServerConnection(Lcom/google/android/tts/GoogleTtsRequest;I)Ljava/net/HttpURLConnection;
    .registers 13
    .parameter "request"
    .parameter "timeout"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x400

    if-le v8, v9, :cond_1a

    move v2, v5

    .line 106
    .local v2, doPost:Z
    :goto_10
    if-nez v2, :cond_1c

    :goto_12
    invoke-direct {p0, p1, v5}, Lcom/google/android/tts/network/HttpHelper;->buildRequestUrl(Lcom/google/android/tts/GoogleTtsRequest;Z)Ljava/net/URL;

    move-result-object v4

    .line 107
    .local v4, url:Ljava/net/URL;
    if-nez v4, :cond_1e

    move-object v1, v7

    .line 133
    :cond_19
    :goto_19
    return-object v1

    .end local v2           #doPost:Z
    .end local v4           #url:Ljava/net/URL;
    :cond_1a
    move v2, v6

    .line 104
    goto :goto_10

    .restart local v2       #doPost:Z
    :cond_1c
    move v5, v6

    .line 106
    goto :goto_12

    .line 111
    .restart local v4       #url:Ljava/net/URL;
    :cond_1e
    const/4 v1, 0x0

    .line 114
    .local v1, conn:Ljava/net/HttpURLConnection;
    :try_start_1f
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 115
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    if-eqz v2, :cond_49

    .line 117
    const-string v5, "POST"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 118
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 119
    invoke-direct {p0, v1, p1}, Lcom/google/android/tts/network/HttpHelper;->writePostHeaders(Ljava/net/HttpURLConnection;Lcom/google/android/tts/GoogleTtsRequest;)V

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 121
    if-eqz v2, :cond_19

    .line 122
    invoke-direct {p0, v1, p1}, Lcom/google/android/tts/network/HttpHelper;->sendPostBody(Ljava/net/HttpURLConnection;Lcom/google/android/tts/GoogleTtsRequest;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_41

    goto :goto_19

    .line 130
    :catch_41
    move-exception v3

    .line 131
    .local v3, ioe:Ljava/io/IOException;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_47
    move-object v1, v7

    .line 133
    goto :goto_19

    .line 125
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_49
    :try_start_49
    const-string v5, "GET"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_41

    goto :goto_19
.end method

.method private sendPostBody(Ljava/net/HttpURLConnection;Lcom/google/android/tts/GoogleTtsRequest;)V
    .registers 5
    .parameter "conn"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .local v0, osw:Ljava/io/OutputStreamWriter;
    invoke-virtual {p2}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 156
    return-void
.end method

.method private writePostHeaders(Ljava/net/HttpURLConnection;Lcom/google/android/tts/GoogleTtsRequest;)V
    .registers 7
    .parameter "conn"
    .parameter "request"

    .prologue
    .line 142
    invoke-virtual {p2}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, text:Ljava/lang/String;
    const-string v2, "Content-length"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v1}, Lcom/google/android/tts/network/HttpHelper;->isSsmlLike(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v0, "text/xml"

    .line 145
    .local v0, contentType:Ljava/lang/String;
    :goto_19
    const-string v2, "Content-type"

    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 144
    .end local v0           #contentType:Ljava/lang/String;
    :cond_1f
    const-string v0, "text/plain"

    goto :goto_19
.end method


# virtual methods
.method public getConnection(Lcom/google/android/tts/GoogleTtsRequest;I)Ljava/net/HttpURLConnection;
    .registers 8
    .parameter "request"
    .parameter "timeout"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/network/HttpHelper;->openServerConnection(Lcom/google/android/tts/GoogleTtsRequest;I)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 78
    .local v0, conn:Ljava/net/HttpURLConnection;
    if-nez v0, :cond_9

    move-object v0, v3

    .line 94
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    :cond_8
    :goto_8
    return-object v0

    .line 83
    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 84
    .local v2, responseCode:I
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_8

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_16

    move-object v0, v3

    .line 87
    goto :goto_8

    .line 91
    .end local v2           #responseCode:I
    :catch_16
    move-exception v1

    .line 93
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    .line 94
    goto :goto_8
.end method
