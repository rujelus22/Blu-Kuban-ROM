.class public abstract Lcom/twitter/android/widget/c;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected final a:Landroid/widget/ListAdapter;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method protected constructor <init>(Landroid/widget/ListAdapter;I)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/c;->b:I

    iput p2, p0, Lcom/twitter/android/widget/c;->c:I

    invoke-direct {p0}, Lcom/twitter/android/widget/c;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/widget/c;->d:Z

    new-instance v0, Lcom/twitter/android/widget/d;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/d;-><init>(Lcom/twitter/android/widget/c;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    if-nez p0, :cond_22

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1e
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1e
.end method

.method private b(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/twitter/android/widget/c;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private d()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/widget/c;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private d(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/twitter/android/widget/c;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/twitter/android/widget/c;->d:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private e(I)I
    .registers 3

    invoke-direct {p0}, Lcom/twitter/android/widget/c;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 p1, p1, -0x1

    :cond_8
    return p1
.end method

.method private e()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/widget/c;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract a()Ljava/lang/Object;
.end method

.method protected a(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/widget/c;->d:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/widget/c;->d:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method protected abstract b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected b()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/widget/c;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final c()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    invoke-direct {p0}, Lcom/twitter/android/widget/c;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/twitter/android/widget/c;->d:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/twitter/android/widget/c;->d()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x2

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/twitter/android/widget/c;->d()Z

    move-result v1

    if-eqz v1, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->d(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_19
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->e(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->b(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->d(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    const-wide/16 v0, 0x0

    :goto_14
    return-wide v0

    :cond_15
    iget-object v0, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_14
.end method

.method public getItemViewType(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/twitter/android/widget/c;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/twitter/android/widget/c;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x3

    goto :goto_c

    :cond_1a
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/twitter/android/widget/c;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_27
    iget-object v0, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p2, p3}, Lcom/twitter/android/widget/c;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_a
    iget v0, p0, Lcom/twitter/android/widget/c;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1a

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    :cond_1a
    return-object v1

    :cond_1b
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_34

    if-nez p2, :cond_4a

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_a

    :cond_34
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0, p2, p3}, Lcom/twitter/android/widget/c;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_a

    :cond_3f
    iget-object v0, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->e(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_a

    :cond_4a
    move-object v1, p2

    goto :goto_a
.end method

.method public getViewTypeCount()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/widget/c;->b:I

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->d(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/twitter/android/widget/c;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/widget/c;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/c;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_7
.end method
