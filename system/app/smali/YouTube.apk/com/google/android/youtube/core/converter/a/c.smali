.class final Lcom/google/android/youtube/core/converter/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .parameter

    .prologue
    .line 23
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/youtube/core/model/proto/n;

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/model/MusicVideo;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/proto/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/proto/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/proto/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/proto/n;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/proto/n;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/youtube/core/model/proto/n;->t()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/MusicVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 27
    :cond_3b
    return-object v7
.end method
