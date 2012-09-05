.class public final Lcom/google/api/client/http/u;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/api/client/http/a;-><init>()V

    .line 61
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/u;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/api/client/http/a;-><init>()V

    .line 61
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/u;->a:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/google/api/client/http/u;->b:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private static a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    if-eqz p3, :cond_8

    invoke-static {p3}, Lcom/google/api/client/util/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    :cond_8
    :goto_8
    return p0

    .line 151
    :cond_9
    if-eqz p0, :cond_30

    .line 152
    const/4 p0, 0x0

    .line 156
    :goto_c
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    instance-of v0, p3, Ljava/lang/Enum;

    if-eqz v0, :cond_36

    check-cast p3, Ljava/lang/Enum;

    invoke-static {p3}, Lcom/google/api/client/util/o;->a(Ljava/lang/Enum;)Lcom/google/api/client/util/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/o;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 154
    :cond_30
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_c

    .line 157
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
    .line 92
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lcom/google/common/base/b;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 93
    const/4 v0, 0x1

    .line 94
    iget-object v1, p0, Lcom/google/api/client/http/u;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/api/client/util/j;->b(Ljava/lang/Object;)Ljava/util/Map;

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

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 96
    if-eqz v4, :cond_6a

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 99
    instance-of v6, v4, Ljava/lang/Iterable;

    if-nez v6, :cond_46

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 100
    :cond_46
    invoke-static {v4}, Lcom/google/api/client/util/v;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

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

    .line 101
    invoke-static {v0, v2, v5, v1}, Lcom/google/api/client/http/u;->a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4f

    :cond_5e
    move v1, v0

    goto :goto_1c

    .line 104
    :cond_60
    invoke-static {v1, v2, v5, v4}, Lcom/google/api/client/http/u;->a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :goto_64
    move v1, v0

    .line 107
    goto :goto_1c

    .line 108
    :cond_66
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 109
    return-void

    :cond_6a
    move v0, v1

    goto :goto_64
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/client/http/u;->a:Ljava/lang/String;

    return-object v0
.end method
