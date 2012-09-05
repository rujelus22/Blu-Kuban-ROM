.class public final Lcom/google/android/youtube/core/converter/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/youtube/googlemobile/masf/a/o;)Lcom/google/android/youtube/core/model/ArtistBundle;
    .registers 9
    .parameter

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/a/o;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/b;->a(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/b;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/b;->c()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/model/Artist;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/youtube/core/model/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/b;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/converter/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/b;->h()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/converter/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/b;->f()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/f;

    new-instance v6, Lcom/google/android/youtube/core/model/ArtistBundle$Related;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/google/android/youtube/core/model/ArtistBundle$Related;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_3e

    .line 33
    :catch_5b
    move-exception v0

    .line 34
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v2, "IO error converting artist one call response"

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 32
    :cond_64
    :try_start_64
    new-instance v0, Lcom/google/android/youtube/core/model/ArtistBundle;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/youtube/core/model/ArtistBundle;-><init>(Lcom/google/android/youtube/core/model/Artist;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_5b

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/a/o;

    invoke-static {p1}, Lcom/google/android/youtube/core/converter/a/b;->a(Lcom/google/android/youtube/googlemobile/masf/a/o;)Lcom/google/android/youtube/core/model/ArtistBundle;

    move-result-object v0

    return-object v0
.end method
