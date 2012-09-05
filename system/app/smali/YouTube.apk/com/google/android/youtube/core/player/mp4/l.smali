.class final Lcom/google/android/youtube/core/player/mp4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private b:Lcom/google/android/youtube/core/player/mp4/k;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/l;->a:Ljava/util/Iterator;

    .line 69
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->c:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/l;->d:I

    if-lt v0, v1, :cond_38

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->b:Lcom/google/android/youtube/core/player/mp4/k;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->b:Lcom/google/android/youtube/core/player/mp4/k;

    :cond_14
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/l;->b:Lcom/google/android/youtube/core/player/mp4/k;

    iget v1, v1, Lcom/google/android/youtube/core/player/mp4/k;->a:I

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->b:Lcom/google/android/youtube/core/player/mp4/k;

    iget v0, v0, Lcom/google/android/youtube/core/player/mp4/k;->b:I

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->d:I

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->b:Lcom/google/android/youtube/core/player/mp4/k;

    :cond_2f
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->c:I

    :cond_38
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->c:I

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/l;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
