.class public abstract LadN;
.super Ljava/lang/Object;
.source "JsonFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    :try_start_5
    sget-object v1, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, LadN;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)LadO;

    move-result-object v1

    .line 193
    if-eqz p2, :cond_10

    .line 194
    invoke-virtual {v1}, LadO;->g()V

    .line 196
    :cond_10
    invoke-virtual {v1, p1}, LadO;->a(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v1}, LadO;->a()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    .line 201
    return-object v0

    .line 198
    :catch_17
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0, p1, p2}, LadN;->a(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 175
    :catch_b
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)LadO;
.end method

.method public abstract a(Ljava/io/InputStream;)LadQ;
.end method

.method public abstract a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)LadQ;
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LadN;->a(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LadN;->a(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
