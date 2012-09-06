.class public final Lcom/google/android/youtube/app/adapter/ba;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/youtube/app/adapter/bf;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 41
    iput p2, p0, Lcom/google/android/youtube/app/adapter/ba;->a:I

    .line 42
    const-string v0, "renderer can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bf;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->b:Lcom/google/android/youtube/app/adapter/bf;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->c:Landroid/view/LayoutInflater;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->e:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/adapter/bl;)I
    .registers 5
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget v2, p0, Lcom/google/android/youtube/app/adapter/ba;->f:I

    invoke-interface {p1}, Lcom/google/android/youtube/app/adapter/bl;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_14
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/youtube/app/adapter/ba;->f:I

    .line 58
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 59
    return v1

    .line 57
    :cond_1b
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public final a(I)Lcom/google/android/youtube/app/adapter/bl;
    .registers 5
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bl;

    .line 69
    iget v2, p0, Lcom/google/android/youtube/app/adapter/ba;->f:I

    invoke-interface {v0}, Lcom/google/android/youtube/app/adapter/bl;->a()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    :goto_19
    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/android/youtube/app/adapter/ba;->f:I

    .line 70
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 71
    return-object v0

    .line 69
    :cond_21
    const/4 v1, 0x1

    goto :goto_19

    .line 73
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected final a(Ljava/lang/Iterable;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Iterable;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->b:Lcom/google/android/youtube/app/adapter/bf;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/adapter/bf;->a(Ljava/lang/Iterable;)V

    .line 52
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/youtube/app/adapter/ba;->f:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final b(Lcom/google/android/youtube/app/adapter/bl;)I
    .registers 5
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/ba;->getCount()I

    move-result v1

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget v2, p0, Lcom/google/android/youtube/app/adapter/ba;->f:I

    invoke-interface {p1}, Lcom/google/android/youtube/app/adapter/bl;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_12
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/youtube/app/adapter/ba;->f:I

    .line 80
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 81
    return v1

    .line 79
    :cond_19
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 150
    return-void
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    .line 161
    :cond_9
    :goto_9
    return-object v0

    .line 157
    :cond_a
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 158
    if-gez v1, :cond_9

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/core/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public final getItemViewType(I)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 176
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    .line 183
    :cond_9
    :goto_9
    return v0

    .line 179
    :cond_a
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 180
    if-gez v1, :cond_9

    .line 183
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bl;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/adapter/bl;->a(I)Landroid/view/View;

    move-result-object p2

    .line 135
    :goto_14
    return-object p2

    .line 122
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 123
    if-ltz v0, :cond_31

    .line 124
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bl;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/adapter/bl;->a(I)Landroid/view/View;

    move-result-object p2

    goto :goto_14

    .line 127
    :cond_31
    if-nez p2, :cond_4d

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/youtube/app/adapter/ba;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->b:Lcom/google/android/youtube/app/adapter/bf;

    invoke-interface {v0, p2, p3}, Lcom/google/android/youtube/app/adapter/bf;->a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;

    move-result-object v0

    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_45
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/app/adapter/az;->a(ILjava/lang/Object;)Landroid/view/View;

    goto :goto_14

    .line 132
    :cond_4d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/az;

    goto :goto_45
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x2

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 4
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/adapter/bl;->a()Z

    move-result v0

    .line 114
    :goto_14
    return v0

    .line 110
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 111
    if-ltz v0, :cond_31

    .line 112
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ba;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/adapter/bl;->a()Z

    move-result v0

    goto :goto_14

    .line 114
    :cond_31
    const/4 v0, 0x1

    goto :goto_14
.end method
