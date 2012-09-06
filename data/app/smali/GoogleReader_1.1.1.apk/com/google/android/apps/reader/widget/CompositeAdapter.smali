.class public Lcom/google/android/apps/reader/widget/CompositeAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;
    }
.end annotation


# instance fields
.field protected final mAdapters:[Landroid/widget/Adapter;

.field private mAlwaysValid:Z

.field private final mDataValid:[Z


# direct methods
.method public varargs constructor <init>([Landroid/widget/Adapter;)V
    .registers 7
    .parameter "adapters"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    if-nez p1, :cond_d

    .line 53
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Adapter array is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .line 56
    array-length v2, p1

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mDataValid:[Z

    .line 57
    const/4 v1, 0x0

    .local v1, index:I
    :goto_15
    array-length v2, p1

    if-ge v1, v2, :cond_53

    .line 58
    aget-object v0, p1, v1

    .line 59
    .local v0, adapter:Landroid/widget/Adapter;
    if-nez v0, :cond_3b

    .line 60
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3b
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mDataValid:[Z

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    const/4 v3, 0x1

    :goto_44
    aput-boolean v3, v2, v1

    .line 63
    new-instance v2, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;

    invoke-direct {v2, p0, v1}, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;-><init>(Lcom/google/android/apps/reader/widget/CompositeAdapter;I)V

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 62
    :cond_51
    const/4 v3, 0x0

    goto :goto_44

    .line 65
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/widget/CompositeAdapter;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mDataValid:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/widget/CompositeAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->isDataValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/widget/CompositeAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAlwaysValid:Z

    return v0
.end method

.method private isDataValid()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 68
    iget-boolean v4, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAlwaysValid:Z

    if-eqz v4, :cond_7

    move v4, v5

    .line 76
    :goto_6
    return v4

    .line 71
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mDataValid:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_16

    aget-boolean v1, v0, v2

    .line 72
    .local v1, dataValid:Z
    if-nez v1, :cond_13

    .line 73
    const/4 v4, 0x0

    goto :goto_6

    .line 71
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v1           #dataValid:Z
    :cond_16
    move v4, v5

    .line 76
    goto :goto_6
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 8

    .prologue
    .line 124
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v2, arr$:[Landroid/widget/Adapter;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_17

    aget-object v1, v2, v3

    .line 125
    .local v1, adapter:Landroid/widget/Adapter;
    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 126
    .local v5, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v5}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v6

    if-nez v6, :cond_14

    .line 127
    const/4 v6, 0x0

    .line 130
    .end local v1           #adapter:Landroid/widget/Adapter;
    .end local v5           #listAdapter:Landroid/widget/ListAdapter;
    :goto_13
    return v6

    .line 124
    .restart local v1       #adapter:Landroid/widget/Adapter;
    .restart local v5       #listAdapter:Landroid/widget/ListAdapter;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 130
    .end local v1           #adapter:Landroid/widget/Adapter;
    .end local v5           #listAdapter:Landroid/widget/ListAdapter;
    :cond_17
    const/4 v6, 0x1

    goto :goto_13
.end method

.method public getCount()I
    .registers 7

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->isDataValid()Z

    move-result v5

    if-nez v5, :cond_8

    .line 97
    const/4 v5, 0x0

    .line 103
    :goto_7
    return v5

    .line 99
    :cond_8
    const/4 v2, 0x0

    .line 100
    .local v2, count:I
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v1, arr$:[Landroid/widget/Adapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_d
    if-ge v3, v4, :cond_19

    aget-object v0, v1, v3

    .line 101
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_19
    move v5, v2

    .line 103
    goto :goto_7
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 148
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v2, arr$:[Landroid/widget/Adapter;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4
    if-ge v4, v5, :cond_1b

    aget-object v1, v2, v4

    .line 149
    .local v1, adapter:Landroid/widget/Adapter;
    move-object v0, v1

    check-cast v0, Landroid/widget/SpinnerAdapter;

    move-object v6, v0

    .line 150
    .local v6, spinnerAdapter:Landroid/widget/SpinnerAdapter;
    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 151
    .local v3, count:I
    if-ge p1, v3, :cond_17

    .line 152
    invoke-interface {v6, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    return-object v7

    .line 154
    :cond_17
    sub-int/2addr p1, v3

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 156
    .end local v1           #adapter:Landroid/widget/Adapter;
    .end local v3           #count:I
    .end local v6           #spinnerAdapter:Landroid/widget/SpinnerAdapter;
    :cond_1b
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 8
    .parameter "position"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v1, arr$:[Landroid/widget/Adapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_17

    aget-object v0, v1, v3

    .line 162
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 163
    .local v2, count:I
    if-ge p1, v2, :cond_13

    .line 164
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 168
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #count:I
    :goto_12
    return-object v5

    .line 166
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #count:I
    :cond_13
    sub-int/2addr p1, v2

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 168
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #count:I
    :cond_17
    const/4 v5, 0x0

    goto :goto_12
.end method

.method public getItemId(I)J
    .registers 9
    .parameter "position"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v1, arr$:[Landroid/widget/Adapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_17

    aget-object v0, v1, v3

    .line 174
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 175
    .local v2, count:I
    if-ge p1, v2, :cond_13

    .line 176
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    .line 180
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #count:I
    :goto_12
    return-wide v5

    .line 178
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #count:I
    :cond_13
    sub-int/2addr p1, v2

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 180
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #count:I
    :cond_17
    const-wide/16 v5, 0x0

    goto :goto_12
.end method

.method public getItemViewType(I)I
    .registers 10
    .parameter "position"

    .prologue
    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, viewTypeTotal:I
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v1, arr$:[Landroid/widget/Adapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_5
    if-ge v3, v5, :cond_23

    aget-object v0, v1, v3

    .line 199
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 200
    .local v2, count:I
    if-ge p1, v2, :cond_1a

    .line 201
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v4

    .line 202
    .local v4, itemViewType:I
    if-gez v4, :cond_17

    move v7, v4

    .line 209
    :goto_16
    return v7

    :cond_17
    add-int v7, v6, v4

    goto :goto_16

    .line 212
    .end local v4           #itemViewType:I
    :cond_1a
    sub-int/2addr p1, v2

    .line 213
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 215
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #count:I
    :cond_23
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v1, arr$:[Landroid/widget/Adapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_17

    aget-object v0, v1, v3

    .line 186
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 187
    .local v2, count:I
    if-ge p1, v2, :cond_13

    .line 188
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 190
    :cond_13
    sub-int/2addr p1, v2

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 192
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #count:I
    :cond_17
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5
.end method

.method public getViewTypeCount()I
    .registers 7

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, count:I
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v1, arr$:[Landroid/widget/Adapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_5
    if-ge v3, v4, :cond_11

    aget-object v0, v1, v3

    .line 222
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 226
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_11
    const/4 v5, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    return v5
.end method

.method public hasStableIds()Z
    .registers 6

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v1, arr$:[Landroid/widget/Adapter;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_13

    aget-object v0, v1, v2

    .line 115
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_10

    .line 116
    const/4 v4, 0x0

    .line 119
    .end local v0           #adapter:Landroid/widget/Adapter;
    :goto_f
    return v4

    .line 114
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 119
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_13
    const/4 v4, 0x1

    goto :goto_f
.end method

.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->getCount()I

    move-result v0

    .line 109
    .local v0, count:I
    if-nez v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public isEnabled(I)Z
    .registers 10
    .parameter "position"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAdapters:[Landroid/widget/Adapter;

    .local v2, arr$:[Landroid/widget/Adapter;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4
    if-ge v4, v5, :cond_1b

    aget-object v1, v2, v4

    .line 136
    .local v1, adapter:Landroid/widget/Adapter;
    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    move-object v6, v0

    .line 137
    .local v6, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 138
    .local v3, count:I
    if-ge p1, v3, :cond_17

    .line 139
    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    return v7

    .line 141
    :cond_17
    sub-int/2addr p1, v3

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 143
    .end local v1           #adapter:Landroid/widget/Adapter;
    .end local v3           #count:I
    .end local v6           #listAdapter:Landroid/widget/ListAdapter;
    :cond_1b
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7
.end method

.method public setAlwaysValid(Z)V
    .registers 2
    .parameter "alwaysValid"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAlwaysValid:Z

    .line 92
    return-void
.end method
