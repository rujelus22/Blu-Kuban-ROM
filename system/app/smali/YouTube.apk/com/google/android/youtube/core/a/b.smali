.class public final Lcom/google/android/youtube/core/a/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private final a:Lcom/google/android/youtube/core/a/a;

.field private final b:Landroid/view/View;

.field private final c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/a/a;ZLandroid/view/View;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const-string v0, "target cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/a/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    .line 35
    const-string v0, "paddingView cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/core/a/b;->b:Landroid/view/View;

    .line 36
    iput-boolean v1, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/a/c;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/a/c;-><init>(Lcom/google/android/youtube/core/a/b;B)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 38
    if-eqz p4, :cond_28

    .line 39
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/b;->b()V

    .line 43
    :goto_27
    return-void

    .line 41
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/b;->c()V

    goto :goto_27
.end method

.method private a(I)I
    .registers 3
    .parameter

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-eqz v0, :cond_a

    add-int/lit8 p1, p1, -0x1

    :cond_a
    return p1
.end method

.method public static a(Lcom/google/android/youtube/core/a/a;Landroid/view/View;Z)Lcom/google/android/youtube/core/a/b;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Lcom/google/android/youtube/core/a/b;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/google/android/youtube/core/a/b;-><init>(Lcom/google/android/youtube/core/a/a;ZLandroid/view/View;Z)V

    return-object v0
.end method

.method private b(I)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-boolean v1, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-eqz v1, :cond_e

    move v1, v0

    :goto_a
    if-ne p1, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v1

    goto :goto_a
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 106
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/core/a/a;->b(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->b(Ljava/lang/Iterable;)V

    .line 98
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    .line 124
    if-nez v0, :cond_a

    .line 125
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetChanged()V

    .line 127
    :cond_a
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    .line 132
    if-eqz v0, :cond_a

    .line 133
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetChanged()V

    .line 135
    :cond_a
    return-void
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v1

    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->d:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    const-wide/16 v0, -0x1

    .line 86
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/a/a;->getItemId(I)J

    move-result-wide v0

    goto :goto_8
.end method

.method public final getItemViewType(I)I
    .registers 4
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getViewTypeCount()I

    move-result v0

    .line 65
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/a/a;->getItemViewType(I)I

    move-result v0

    goto :goto_c
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->b:Landroid/view/View;

    .line 93
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/youtube/core/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    return-object v0
.end method

.method public final isEnabled(I)Z
    .registers 4
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/a/b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/a/a;->isEnabled(I)Z

    move-result v0

    goto :goto_7
.end method
