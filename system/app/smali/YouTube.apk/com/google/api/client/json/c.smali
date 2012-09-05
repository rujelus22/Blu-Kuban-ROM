.class public abstract Lcom/google/api/client/json/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;)Lcom/google/api/client/json/d;
.end method

.method public abstract a(Ljava/io/InputStream;)Lcom/google/api/client/json/e;
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    :try_start_5
    sget-object v1, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/c;->a(Ljava/io/OutputStream;)Lcom/google/api/client/json/d;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p1}, Lcom/google/api/client/json/d;->a(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v1}, Lcom/google/api/client/json/d;->a()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_16

    .line 100
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :catch_16
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
