.class final Lcom/google/android/youtube/core/player/mp4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private final b:I

.field private final c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/o;->a:Ljava/util/Iterator;

    .line 49
    iput p2, p0, Lcom/google/android/youtube/core/player/mp4/o;->b:I

    .line 50
    iput-boolean p3, p0, Lcom/google/android/youtube/core/player/mp4/o;->c:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/o;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/mp4/o;->c:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/o;->d:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/o;->b:I

    if-ge v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/o;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/o;->d:I

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/o;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_17
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/o;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/o;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
