.class public final Lcom/google/android/youtube/core/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/l;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/aa;->a:Lcom/google/android/youtube/core/async/l;

    .line 117
    return-void
.end method

.method public static final a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/b/aa;
    .registers 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/youtube/core/b/aa;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/b/aa;-><init>(Lcom/google/android/youtube/core/async/l;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/core/b/aa;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 111
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_23

    new-instance v4, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v4, v0, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/core/b/aa;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
