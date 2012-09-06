.class public Lcom/google/api/client/http/w;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/google/api/client/http/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/w;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/api/client/http/a;-><init>()V

    .line 67
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/w;->b:Ljava/lang/String;

    .line 82
    if-nez p1, :cond_15

    sget-object v0, Lcom/google/api/client/http/w;->a:Ljava/util/logging/Logger;

    const-string v1, "UrlEncodedContent.setData(null) no longer supported"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_15
    iput-object p1, p0, Lcom/google/api/client/http/w;->c:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public static a(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/w;
    .registers 3
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/api/client/http/l;->d()Lcom/google/api/client/http/h;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_9

    .line 186
    check-cast v0, Lcom/google/api/client/http/w;

    .line 190
    :goto_8
    return-object v0

    .line 188
    :cond_9
    new-instance v0, Lcom/google/api/client/http/w;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/api/client/http/w;-><init>(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/h;)Lcom/google/api/client/http/l;

    goto :goto_8
.end method

.method private static a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    if-eqz p3, :cond_8

    invoke-static {p3}, Lcom/google/api/client/util/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 212
    :cond_8
    :goto_8
    return p0

    .line 200
    :cond_9
    if-eqz p0, :cond_30

    .line 201
    const/4 p0, 0x0

    .line 205
    :goto_c
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 206
    instance-of v0, p3, Ljava/lang/Enum;

    if-eqz v0, :cond_36

    check-cast p3, Ljava/lang/Enum;

    invoke-static {p3}, Lcom/google/api/client/util/n;->a(Ljava/lang/Enum;)Lcom/google/api/client/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/n;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 209
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 203
    :cond_30
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_c

    .line 206
    :cond_36
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .registers 9
    .parameter

    .prologue
    .line 96
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lcom/google/common/base/s;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 97
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/google/api/client/http/w;->c:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/api/client/util/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 100
    if-eqz v4, :cond_6a

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 103
    instance-of v6, v4, Ljava/lang/Iterable;

    if-nez v6, :cond_46

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 104
    :cond_46
    invoke-static {v4}, Lcom/google/api/client/util/u;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 105
    invoke-static {v0, v2, v5, v1}, Lcom/google/api/client/http/w;->a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4f

    :cond_5e
    move v1, v0

    goto :goto_1c

    .line 108
    :cond_60
    invoke-static {v1, v2, v5, v4}, Lcom/google/api/client/http/w;->a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :goto_64
    move v1, v0

    .line 111
    goto :goto_1c

    .line 112
    :cond_66
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 113
    return-void

    :cond_6a
    move v0, v1

    goto :goto_64
.end method

.method public final d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/api/client/http/w;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/api/client/http/w;->b:Ljava/lang/String;

    return-object v0
.end method
