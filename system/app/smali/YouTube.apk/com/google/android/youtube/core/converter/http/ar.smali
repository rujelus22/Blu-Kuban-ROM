.class public abstract Lcom/google/android/youtube/core/converter/http/ar;
.super Lcom/google/android/youtube/core/converter/http/fn;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    const-string v1, "/errors"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ax;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/ax;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/errors/error"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/aw;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/aw;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/errors/error/domain"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/av;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/av;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/errors/error/code"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/au;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/au;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/errors/error/location"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/at;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/at;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/errors/error/internalReason"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/as;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/as;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/http/ar;->b:Lcom/google/android/youtube/core/converter/c;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/fn;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 79
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/converter/k;)Lcom/google/android/youtube/core/converter/http/ar;
    .registers 2
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/youtube/core/converter/http/ay;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/converter/http/ay;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    return-object v0
.end method


# virtual methods
.method protected final b(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x191

    .line 83
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 85
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 88
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    const/16 v1, 0x190

    if-eq v2, v1, :cond_22

    if-eq v2, v5, :cond_22

    const/16 v1, 0x193

    if-eq v2, v1, :cond_22

    const/16 v1, 0x1f7

    if-ne v2, v1, :cond_54

    :cond_22
    if-eqz v0, :cond_54

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    :goto_31
    if-eqz v0, :cond_57

    .line 90
    :try_start_33
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/ar;->a:Lcom/google/android/youtube/core/converter/k;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/ar;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/youtube/core/converter/k;->a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 93
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_57

    .line 94
    new-instance v1, Lcom/google/android/youtube/core/async/GDataResponseException;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/youtube/core/async/GDataResponseException;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_52} :catch_56

    move-object v0, v1

    .line 108
    :goto_53
    return-object v0

    .line 88
    :cond_54
    const/4 v0, 0x0

    goto :goto_31

    :catch_56
    move-exception v0

    .line 103
    :cond_57
    if-ne v2, v5, :cond_66

    const-string v0, "NoLinkedYouTubeAccount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 104
    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataResponseException;->createYouTubeSignupRequired(ILjava/lang/String;)Lcom/google/android/youtube/core/async/GDataResponseException;

    move-result-object v0

    goto :goto_53

    .line 108
    :cond_66
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/converter/http/fn;->b(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;

    move-result-object v0

    goto :goto_53
.end method
