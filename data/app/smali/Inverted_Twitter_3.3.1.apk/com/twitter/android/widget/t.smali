.class public final Lcom/twitter/android/widget/t;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Z

.field private final b:[Landroid/widget/BaseAdapter;

.field private final c:[I

.field private final d:[Z

.field private final e:I


# direct methods
.method public constructor <init>([Landroid/widget/BaseAdapter;)V
    .registers 4

    const/4 v1, 0x0

    const v0, 0x7f030040

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/twitter/android/widget/t;-><init>([Z[I[Landroid/widget/BaseAdapter;I)V

    return-void
.end method

.method private constructor <init>([Z[I[Landroid/widget/BaseAdapter;I)V
    .registers 9

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/t;->a:Z

    iput-object p1, p0, Lcom/twitter/android/widget/t;->d:[Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/widget/t;->c:[I

    iput-object p3, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    const v0, 0x7f030040

    iput v0, p0, Lcom/twitter/android/widget/t;->e:I

    new-instance v1, Lcom/twitter/android/widget/u;

    invoke-direct {v1, p0}, Lcom/twitter/android/widget/u;-><init>(Lcom/twitter/android/widget/t;)V

    array-length v2, p3

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_23

    aget-object v3, p3, v0

    invoke-virtual {v3, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_23
    return-void
.end method

.method public constructor <init>([Z[Landroid/widget/BaseAdapter;)V
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f030040

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/twitter/android/widget/t;-><init>([Z[I[Landroid/widget/BaseAdapter;I)V

    return-void
.end method

.method private a(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v2, 0x1

    invoke-virtual {p1, p4, p5, p6}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    iget-object v1, p0, Lcom/twitter/android/widget/t;->d:[Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/twitter/android/widget/t;->d:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_1a

    move v1, v2

    :goto_12
    if-nez p2, :cond_1c

    if-lez p3, :cond_1c

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    :goto_19
    return-object v0

    :cond_1a
    const/4 v1, 0x0

    goto :goto_12

    :cond_1c
    iget-object v2, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v2, v2

    invoke-virtual {v0, p3, v2, v1}, Lcom/twitter/android/widget/CardRowView;->a(IIZ)V

    goto :goto_19
.end method

.method private c(I)Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/t;->c:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/widget/t;->c:[I

    aget v0, v0, p1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a(I)I
    .registers 8

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_6
    if-ge v2, v5, :cond_19

    aget-object v3, v4, v2

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v1, v1, 0x1

    :cond_17
    if-ge p1, v1, :cond_1a

    :cond_19
    return v0

    :cond_1a
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_6
.end method

.method public final a(II)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/t;->b(I)I

    move-result v0

    sub-int v0, p2, v0

    return v0
.end method

.method public final a(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/widget/t;->a:Z

    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v3, v2

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_1d

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v4

    if-eqz v4, :cond_18

    move v2, v0

    :goto_f
    if-nez v2, :cond_1b

    invoke-super {p0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    move v0, v1

    goto :goto_17

    :cond_1d
    move v2, v1

    goto :goto_f
.end method

.method public final b(I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_10

    iget-object v2, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    return v1
.end method

.method public final getCount()I
    .registers 7

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_6
    if-ge v1, v4, :cond_1e

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_19

    add-int/2addr v0, v5

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v5

    if-eqz v5, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v6, v5

    move v3, v0

    move v4, v0

    move v1, p1

    :goto_8
    if-ge v3, v6, :cond_37

    aget-object v7, v5, v3

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_39

    invoke-direct {p0, v4}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v8

    if-eqz v8, :cond_27

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_1e

    move-object v0, v2

    :goto_1d
    return-object v0

    :cond_1e
    if-ge v1, v0, :cond_2e

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_27
    if-ge v1, v0, :cond_2e

    invoke-virtual {v7, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_2e
    sub-int v0, v1, v0

    :goto_30
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_8

    :cond_37
    move-object v0, v2

    goto :goto_1d

    :cond_39
    move v0, v1

    goto :goto_30
.end method

.method public final getItemId(I)J
    .registers 12

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v7, v6

    move v4, v0

    move v5, v0

    move v1, p1

    :goto_9
    if-ge v4, v7, :cond_38

    aget-object v8, v6, v4

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3a

    invoke-direct {p0, v5}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v9

    if-eqz v9, :cond_28

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_1f

    move-wide v0, v2

    :goto_1e
    return-wide v0

    :cond_1f
    if-ge v1, v0, :cond_2f

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1e

    :cond_28
    if-ge v1, v0, :cond_2f

    invoke-virtual {v8, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1e

    :cond_2f
    sub-int v0, v1, v0

    :goto_31
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_9

    :cond_38
    move-wide v0, v2

    goto :goto_1e

    :cond_3a
    move v0, v1

    goto :goto_31
.end method

.method public final getItemViewType(I)I
    .registers 12

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v7, v6

    move v3, v2

    move v4, v2

    move v5, v0

    move v1, p1

    :goto_9
    if-ge v3, v7, :cond_3f

    aget-object v8, v6, v3

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_44

    invoke-direct {p0, v4}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v9

    if-eqz v9, :cond_29

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_1f

    move v0, v2

    :goto_1e
    return v0

    :cond_1f
    if-ge v1, v0, :cond_31

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_1e

    :cond_29
    if-ge v1, v0, :cond_31

    invoke-virtual {v8, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_1e

    :cond_31
    sub-int v0, v1, v0

    :goto_33
    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_9

    :cond_3f
    invoke-super {p0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_1e

    :cond_44
    move v0, v1

    goto :goto_33
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v9, v8

    move v5, v6

    move v2, v6

    move v3, v6

    move v4, p1

    :goto_10
    if-ge v5, v9, :cond_49

    aget-object v1, v8, v5

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_6d

    invoke-direct {p0, v3}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v10

    if-eqz v10, :cond_60

    add-int/lit8 v0, v0, 0x1

    if-nez v4, :cond_54

    if-nez p2, :cond_36

    iget v0, p0, Lcom/twitter/android/widget/t;->e:I

    invoke-virtual {v7, v0, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_36
    iget-object v0, p0, Lcom/twitter/android/widget/t;->c:[I

    array-length v1, v0

    rem-int v1, v3, v1

    aget v1, v0, v1

    if-nez v1, :cond_4a

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_49
    :goto_49
    return-object p2

    :cond_4a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_49

    :cond_54
    if-ge v4, v0, :cond_6a

    add-int/lit8 v4, v4, -0x1

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/widget/t;->a(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_49

    :cond_60
    if-ge v4, v0, :cond_6a

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/widget/t;->a(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_49

    :cond_6a
    sub-int/2addr v4, v0

    add-int/lit8 v2, v2, 0x1

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_10
.end method

.method public final getViewTypeCount()I
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v0, v3, :cond_11

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 11

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/twitter/android/widget/t;->b:[Landroid/widget/BaseAdapter;

    array-length v6, v5

    move v3, v2

    move v4, v2

    move v1, p1

    :goto_7
    if-ge v3, v6, :cond_36

    aget-object v7, v5, v3

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-direct {p0, v4}, Lcom/twitter/android/widget/t;->c(I)Z

    move-result v8

    if-eqz v8, :cond_26

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_1d

    move v0, v2

    :goto_1c
    return v0

    :cond_1d
    if-ge v1, v0, :cond_2d

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1c

    :cond_26
    if-ge v1, v0, :cond_2d

    invoke-virtual {v7, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1c

    :cond_2d
    sub-int v0, v1, v0

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    :cond_36
    invoke-super {p0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1c

    :cond_3b
    move v0, v1

    goto :goto_2f
.end method

.method public final notifyDataSetChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/t;->a:Z

    return-void
.end method
