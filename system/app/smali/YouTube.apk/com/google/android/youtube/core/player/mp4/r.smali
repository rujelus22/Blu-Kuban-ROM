.class final Lcom/google/android/youtube/core/player/mp4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/r;->a:Ljava/util/Iterator;

    .line 61
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->b:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/r;->c:I

    if-ge v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->b:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/r;->c:I

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/q;

    iget v1, v0, Lcom/google/android/youtube/core/player/mp4/q;->b:I

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/r;->d:I

    iget v0, v0, Lcom/google/android/youtube/core/player/mp4/q;->a:I

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->b:I

    :cond_19
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->b:I

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/r;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
