.class public Lkk;
.super Ljava/lang/Object;
.source "AppCacheFetcherImpl.java"

# interfaces
.implements Lki;


# instance fields
.field private final a:LIL;

.field private final a:LXP;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Llu;


# direct methods
.method public constructor <init>(Llu;LIL;LXP;LanD;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llu;",
            "LIL;",
            "LXP;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lkk;->a:Llu;

    .line 56
    iput-object p2, p0, Lkk;->a:LIL;

    .line 57
    iput-object p3, p0, Lkk;->a:LXP;

    .line 58
    iput-object p4, p0, Lkk;->a:LanD;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LkI;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    const-string v0, "AppCacheFetcherImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating appCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lkk;->a:Llu;

    invoke-interface {v0, p1, p2, p3, p4}, Llu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LkI;

    move-result-object v0

    .line 228
    :try_start_32
    invoke-virtual {v0}, LkI;->c()V
    :try_end_35
    .catch Landroid/database/SQLException; {:try_start_32 .. :try_end_35} :catch_36

    .line 232
    return-object v0

    .line 229
    :catch_36
    move-exception v0

    .line 230
    new-instance v1, Lkj;

    const-string v2, "Unable to save App Cache in DB."

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Lkp;Ljava/lang/String;)Lkq;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-static {p3}, Lkk;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lkk;->a:LIL;

    invoke-interface {v1, v0}, LIL;->a(Lorg/apache/http/HttpRequest;)V

    .line 193
    :try_start_9
    invoke-direct {p0, p1, v0}, Lkk;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4c

    .line 196
    new-instance v0, Lkj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkj;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_40

    .line 201
    :catchall_40
    move-exception v0

    iget-object v1, p0, Lkk;->a:LIL;

    invoke-interface {v1}, LIL;->a()V

    .line 202
    iget-object v1, p0, Lkk;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0

    .line 199
    :cond_4c
    :try_start_4c
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lkk;->a(Lorg/apache/http/HttpEntity;Lkp;Ljava/lang/String;)Lkq;
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_40

    move-result-object v0

    .line 201
    iget-object v1, p0, Lkk;->a:LIL;

    invoke-interface {v1}, LIL;->a()V

    .line 202
    iget-object v1, p0, Lkk;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    return-object v0
.end method

.method private a(Lorg/apache/http/HttpEntity;Lkp;Ljava/lang/String;)Lkq;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lkk;->a:LXP;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, LXP;->a(Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkp;->a(Ljava/lang/String;)Lkq;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lkk;->a:LIL;

    invoke-interface {v1, p1}, LIL;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lkq;->a(Ljava/io/InputStream;)V

    .line 212
    const-string v1, "AppCacheFetcherImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lkq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4f} :catch_50

    .line 214
    return-object v0

    .line 215
    :catch_50
    move-exception v0

    .line 216
    new-instance v1, Lkj;

    const-string v2, "Unable to store an app cache item."

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 143
    :try_start_0
    const-string v0, "AppCacheFetcherImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lkk;->a:LIL;

    invoke-interface {v0, p1, p2}, LIL;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_21
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_21} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_45
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_21} :catch_67
    .catch LJi; {:try_start_0 .. :try_end_21} :catch_89

    move-result-object v0

    return-object v0

    .line 145
    :catch_23
    move-exception v0

    .line 146
    new-instance v1, Lkj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client protocol error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :catch_45
    move-exception v0

    .line 148
    new-instance v1, Lkj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception opening: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_67
    move-exception v0

    .line 150
    new-instance v1, Lkj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :catch_89
    move-exception v0

    .line 152
    new-instance v1, Lkj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 5
    .parameter

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 131
    :catch_b
    move-exception v0

    .line 132
    new-instance v1, Lkj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;LkE;Ljava/lang/String;Ljava/lang/String;)LkI;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v2, Lkr;

    iget-object v3, p0, Lkk;->a:LXP;

    iget-object v0, p0, Lkk;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lkr;-><init>(LXP;Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :try_start_42
    invoke-interface {p2}, LkE;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, v2, v0}, Lkk;->a(Ljava/lang/String;Lkp;Ljava/lang/String;)Lkq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5d} :catch_5e

    goto :goto_4a

    .line 116
    :catch_5e
    move-exception v0

    .line 119
    invoke-interface {v2}, Lkp;->a()V

    .line 120
    new-instance v1, Lkj;

    const-string v2, "Failed retrieving appCache"

    invoke-direct {v1, v2, v0}, Lkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :cond_6a
    :try_start_6a
    invoke-interface {p2}, LkE;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, v2, v0}, Lkk;->a(Ljava/lang/String;Lkp;Ljava/lang/String;)Lkq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 96
    :cond_86
    invoke-interface {p2}, LkE;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1, v2, v0}, Lkk;->a(Ljava/lang/String;Lkp;Ljava/lang/String;)Lkq;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 101
    :cond_a6
    iget-object v0, p0, Lkk;->a:Llu;

    invoke-interface {v0}, Llu;->a()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_ab} :catch_5e

    .line 103
    :try_start_ab
    invoke-interface {p2}, LkE;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p2}, LkE;->a()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p3, p4, v0, v3}, Lkk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LkI;

    move-result-object v3

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkq;

    .line 106
    iget-object v4, p0, Lkk;->a:Llu;

    invoke-interface {v0}, Lkq;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lkq;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v6}, Llu;->a(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)LkS;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, LkS;->c()V

    .line 109
    iget-object v4, p0, Lkk;->a:Llu;

    invoke-interface {v4, v3, v0}, Llu;->a(LkI;LkS;)LkJ;

    move-result-object v0

    invoke-virtual {v0}, LkJ;->c()V
    :try_end_ec
    .catchall {:try_start_ab .. :try_end_ec} :catchall_ed

    goto :goto_c5

    .line 114
    :catchall_ed
    move-exception v0

    :try_start_ee
    iget-object v1, p0, Lkk;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f4} :catch_5e

    .line 111
    :cond_f4
    :try_start_f4
    iget-object v0, p0, Lkk;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_ed

    .line 114
    :try_start_f9
    iget-object v0, p0, Lkk;->a:Llu;

    invoke-interface {v0}, Llu;->b()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fe} :catch_5e

    return-object v3
.end method
