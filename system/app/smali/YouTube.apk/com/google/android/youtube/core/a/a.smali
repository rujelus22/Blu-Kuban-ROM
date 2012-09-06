.class public abstract Lcom/google/android/youtube/core/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 70
    :cond_10
    return-void
.end method

.method protected a(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/o;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 109
    :goto_2
    iget-object v2, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 110
    iget-object v2, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/youtube/core/utils/o;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    const/4 v1, 0x1

    .line 109
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    :cond_1f
    if-eqz v1, :cond_24

    .line 116
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 118
    :cond_24
    return-void
.end method

.method protected a(Ljava/lang/Iterable;)V
    .registers 4
    .parameter

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Object;)V

    goto :goto_4

    .line 63
    :cond_12
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/a/a;->a(ILjava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Iterable;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 92
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 94
    :cond_b
    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1c

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_1b
    return v0

    .line 97
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 104
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final d(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 44
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "should be < than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method
