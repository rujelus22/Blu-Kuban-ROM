.class public final Lcom/google/android/youtube/core/converter/http/a;
.super Lcom/google/android/youtube/core/converter/http/bc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/d;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final c:Lcom/google/android/youtube/core/utils/a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/utils/d;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/youtube/core/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/bc;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/a;->a:Lcom/google/android/youtube/core/utils/d;

    .line 92
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    const-string v0, "adSenseHelper cannot be empty or null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/a;->c:Lcom/google/android/youtube/core/utils/a;

    .line 95
    const-string v0, "adPlatform cannot be empty or null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/a;->d:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/google/android/youtube/core/converter/http/a;->e:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/google/android/youtube/core/converter/http/a;->f:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/converter/http/b;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 9
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-wide v3, p1, Lcom/google/android/youtube/core/converter/http/b;->b:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_82

    .line 105
    :goto_10
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "http://www.youtube.com/get_ad_tags?action_pre=1&version=2&v="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&platform="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/youtube/core/converter/http/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&afv_instream=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/youtube/core/converter/http/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_8f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "&clientid="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/youtube/core/converter/http/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&iso_country="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/youtube/core/converter/http/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&last_ad="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 113
    if-eqz v0, :cond_81

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "username"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :try_start_79
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_81
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_79 .. :try_end_81} :catch_92

    .line 122
    :cond_81
    :goto_81
    return-object v4

    .line 103
    :cond_82
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/a;->a:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/youtube/core/converter/http/b;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    goto :goto_10

    .line 105
    :cond_8f
    const-string v3, ""

    goto :goto_46

    .line 119
    :catch_92
    move-exception v0

    const-string v0, "UnsupportedEncodingException encountered when generating adTagRequest"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_81
.end method

.method private b(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/a;
    .registers 8
    .parameter

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :goto_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1c} :catch_41

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 135
    :try_start_1f
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    iget-object v4, p0, Lcom/google/android/youtube/core/converter/http/a;->c:Lcom/google/android/youtube/core/utils/a;

    invoke-virtual {v4, v0}, Lcom/google/android/youtube/core/utils/a;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2c} :catch_41

    goto :goto_19

    .line 138
    :catch_2d
    move-exception v0

    .line 139
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid ad-tag URL : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_40} :catch_41

    goto :goto_19

    .line 152
    :catch_41
    move-exception v0

    .line 153
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v2, "error converting ad tag response, invalid delay"

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :cond_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 145
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 146
    new-instance v0, Lcom/google/android/youtube/core/model/a;

    invoke-direct {v0, v2, v3}, Lcom/google/android/youtube/core/model/a;-><init>(ILjava/util/List;)V
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_58} :catch_41

    .line 150
    :goto_58
    return-object v0

    :cond_59
    const/4 v0, 0x0

    goto :goto_58
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/a;->b(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 39
    check-cast p1, Lcom/google/android/youtube/core/converter/http/b;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/a;->a(Lcom/google/android/youtube/core/converter/http/b;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method
