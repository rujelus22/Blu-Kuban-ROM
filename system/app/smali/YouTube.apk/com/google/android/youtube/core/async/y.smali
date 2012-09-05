.class final Lcom/google/android/youtube/core/async/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/a/n;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/g;

.field private final b:Lcom/google/android/youtube/core/converter/b;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;Lcom/google/android/youtube/core/converter/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/android/youtube/core/async/y;->c:Ljava/lang/Object;

    .line 82
    iput-object p3, p0, Lcom/google/android/youtube/core/async/y;->b:Lcom/google/android/youtube/core/converter/b;

    .line 83
    iput-object p2, p0, Lcom/google/android/youtube/core/async/y;->a:Lcom/google/android/youtube/core/async/g;

    .line 84
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->g()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1b

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/async/y;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/y;->c:Ljava/lang/Object;

    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->g()I

    move-result v3

    const-string v4, "MASF error"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 100
    :goto_1a
    return-void

    .line 93
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/youtube/core/async/y;->b:Lcom/google/android/youtube/core/converter/b;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/converter/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/core/async/y;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/y;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_28} :catch_29
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_1b .. :try_end_28} :catch_32

    goto :goto_1a

    .line 95
    :catch_29
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/core/async/y;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/y;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1a

    .line 97
    :catch_32
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/async/y;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/y;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 103
    const-string v0, "MASF request failed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/async/y;->a:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/y;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 105
    return-void
.end method
