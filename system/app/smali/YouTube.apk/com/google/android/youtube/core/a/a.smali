.class public abstract Lcom/google/android/youtube/core/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 66
    return-void
.end method

.method protected a(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/Iterable;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Object;)V

    goto :goto_4

    .line 54
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/a/a;->a(ILjava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1c

    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 97
    const/4 v0, 0x1

    .line 100
    :goto_1b
    return v0

    .line 93
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 100
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 90
    :cond_b
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 42
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "should be < than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/a;->getCount()I

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
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method
