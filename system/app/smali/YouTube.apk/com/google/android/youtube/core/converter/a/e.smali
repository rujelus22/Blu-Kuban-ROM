.class public final Lcom/google/android/youtube/core/converter/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/youtube/googlemobile/masf/a/o;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/o;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/l;->a(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/l;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/a/c;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    return-object v0

    .line 30
    :catch_11
    move-exception v0

    .line 31
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v2, "IO error converting music video data response"

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/a/o;

    invoke-static {p1}, Lcom/google/android/youtube/core/converter/a/e;->a(Lcom/google/android/youtube/googlemobile/masf/a/o;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
