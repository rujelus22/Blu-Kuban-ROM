.class public abstract Lcom/google/api/client/json/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/json/c;->b(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 140
    :catch_b
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    :try_start_5
    sget-object v1, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/c;->a(Ljava/io/OutputStream;)Lcom/google/api/client/json/d;

    move-result-object v1

    .line 158
    if-eqz p2, :cond_10

    .line 159
    invoke-virtual {v1}, Lcom/google/api/client/json/d;->g()V

    .line 161
    :cond_10
    invoke-virtual {v1, p1}, Lcom/google/api/client/json/d;->a(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v1}, Lcom/google/api/client/json/d;->a()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    .line 166
    return-object v0

    .line 163
    :catch_17
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;)Lcom/google/api/client/json/d;
.end method

.method public abstract a(Ljava/io/InputStream;)Lcom/google/api/client/json/e;
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/c;->a(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/c;->a(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
