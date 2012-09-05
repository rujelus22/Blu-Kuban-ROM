.class final Lcom/google/android/youtube/core/player/mp4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private final b:Ljava/util/Iterator;

.field private final c:Ljava/util/Iterator;

.field private final d:Ljava/util/Iterator;

.field private final e:Ljava/util/Iterator;

.field private final f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/h;->a:Ljava/util/Iterator;

    .line 95
    iput-object p2, p0, Lcom/google/android/youtube/core/player/mp4/h;->b:Ljava/util/Iterator;

    .line 96
    iput-object p3, p0, Lcom/google/android/youtube/core/player/mp4/h;->c:Ljava/util/Iterator;

    .line 97
    iput-object p4, p0, Lcom/google/android/youtube/core/player/mp4/h;->d:Ljava/util/Iterator;

    .line 98
    iput-object p5, p0, Lcom/google/android/youtube/core/player/mp4/h;->e:Ljava/util/Iterator;

    .line 99
    iput p6, p0, Lcom/google/android/youtube/core/player/mp4/h;->f:I

    .line 101
    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->g:I

    .line 102
    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->h:I

    .line 103
    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->i:I

    .line 104
    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->j:I

    .line 105
    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->l:I

    .line 106
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v2, -0x1

    .line 72
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->l:I

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->e:Ljava/util/Iterator;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->l:I

    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->h:I

    if-eq v6, v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->i:I

    iput v6, p0, Lcom/google/android/youtube/core/player/mp4/h;->h:I

    iput v10, p0, Lcom/google/android/youtube/core/player/mp4/h;->j:I

    :cond_4e
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->i:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->j:I

    add-int v4, v0, v1

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->j:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->j:I

    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->e:Ljava/util/Iterator;

    if-eqz v0, :cond_65

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->l:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->k:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_66

    :cond_65
    const/4 v10, 0x1

    :cond_66
    if-eqz v10, :cond_6a

    iput v2, p0, Lcom/google/android/youtube/core/player/mp4/h;->l:I

    :cond_6a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/h;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/f;

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->g:I

    iget v2, p0, Lcom/google/android/youtube/core/player/mp4/h;->g:I

    iget v7, p0, Lcom/google/android/youtube/core/player/mp4/h;->i:I

    iget v8, p0, Lcom/google/android/youtube/core/player/mp4/h;->k:I

    iget v9, p0, Lcom/google/android/youtube/core/player/mp4/h;->f:I

    iget v11, p0, Lcom/google/android/youtube/core/player/mp4/h;->k:I

    sub-int/2addr v9, v11

    add-int/lit8 v9, v9, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/mp4/f;-><init>(IIIIIIIIIZ)V

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->k:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/h;->g:I

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
