.class public abstract Lcom/google/android/youtube/app/ui/br;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/core/a/a;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private e:I

.field private f:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    .line 34
    iput v1, p0, Lcom/google/android/youtube/app/ui/br;->f:I

    .line 41
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    .line 42
    const-string v0, "target cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/a/a;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    .line 43
    new-instance v0, Lcom/google/android/youtube/app/ui/bs;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/bs;-><init>(Lcom/google/android/youtube/app/ui/br;B)V

    invoke-virtual {p2, v0}, Lcom/google/android/youtube/core/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 136
    return-void
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 62
    if-lez p1, :cond_e

    const/4 v0, 0x1

    :goto_3
    const-string v1, "numColumns must be > 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 63
    iput p1, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/br;->notifyDataSetChanged()V

    .line 65
    return-void

    .line 62
    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final a(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/youtube/app/ui/br;->h:I

    .line 73
    iput p3, p0, Lcom/google/android/youtube/app/ui/br;->j:I

    .line 74
    iput p2, p0, Lcom/google/android/youtube/app/ui/br;->i:I

    .line 75
    iput p4, p0, Lcom/google/android/youtube/app/ui/br;->k:I

    .line 76
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/br;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 48
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/google/android/youtube/core/a/a;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    return-object v0
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/google/android/youtube/app/ui/br;->f:I

    .line 69
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/a/a;->b(ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public final b(Ljava/lang/Iterable;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->b(Ljava/lang/Iterable;)V

    .line 57
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->b(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 100
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 145
    if-nez p2, :cond_99

    .line 146
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v4

    .line 154
    :goto_1a
    if-nez p1, :cond_a4

    iget v0, p0, Lcom/google/android/youtube/app/ui/br;->f:I

    .line 155
    :goto_1e
    iget v3, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    if-le v3, v9, :cond_a7

    .line 156
    iget v3, p0, Lcom/google/android/youtube/app/ui/br;->h:I

    iget v5, p0, Lcom/google/android/youtube/app/ui/br;->i:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/youtube/app/ui/br;->j:I

    iget v6, p0, Lcom/google/android/youtube/app/ui/br;->k:I

    invoke-virtual {p2, v3, v0, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 167
    :goto_2e
    if-eqz v2, :cond_35

    array-length v0, v2

    iget v3, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    if-eq v0, v3, :cond_46

    .line 168
    :cond_35
    iget v0, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    new-array v0, v0, [Landroid/widget/FrameLayout;

    .line 169
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 170
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 171
    iget v2, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    move-object v2, v0

    :cond_46
    move v0, v1

    .line 174
    :goto_47
    iget v3, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    if-ge v0, v3, :cond_ae

    .line 176
    aget-object v3, v2, v0

    if-nez v3, :cond_ab

    .line 177
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 178
    aget-object v3, v2, v0

    .line 179
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/br;->d:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v5, :cond_64

    .line 182
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    :cond_64
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 185
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/ui/br;->a(Landroid/view/View;)V

    .line 187
    iget v5, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    if-ne v5, v9, :cond_7c

    .line 188
    iget v5, p0, Lcom/google/android/youtube/app/ui/br;->h:I

    iget v6, p0, Lcom/google/android/youtube/app/ui/br;->i:I

    iget v7, p0, Lcom/google/android/youtube/app/ui/br;->j:I

    iget v8, p0, Lcom/google/android/youtube/app/ui/br;->k:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 190
    :cond_7c
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 193
    invoke-virtual {p2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :goto_88
    iget v5, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v0

    .line 198
    const v6, 0x7f080016

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 151
    :cond_99
    check-cast p2, Landroid/widget/LinearLayout;

    .line 152
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/FrameLayout;

    move-object v2, v0

    goto/16 :goto_1a

    :cond_a4
    move v0, v1

    .line 154
    goto/16 :goto_1e

    .line 164
    :cond_a7
    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2e

    .line 195
    :cond_ab
    aget-object v3, v2, v0

    goto :goto_88

    .line 201
    :cond_ae
    :goto_ae
    iget v0, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    if-ge v1, v0, :cond_f8

    .line 202
    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 203
    iget v3, p0, Lcom/google/android/youtube/app/ui/br;->e:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v1

    .line 205
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_ed

    .line 206
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v5, v3, v0, p2}, Lcom/google/android/youtube/core/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 207
    if-eq v0, v3, :cond_ea

    .line 210
    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_db

    .line 211
    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 213
    :cond_db
    aget-object v0, v2, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 214
    aget-object v0, v2, v1

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :cond_ea
    :goto_ea
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    .line 219
    :cond_ed
    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 220
    aget-object v0, v2, v1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_ea

    .line 224
    :cond_f8
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->c:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1c

    .line 229
    const v0, 0x7f080016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->c:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/ui/br;->getItemId(I)J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 232
    :cond_1c
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->c:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1e

    .line 236
    const v0, 0x7f080016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->d:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/ui/br;->getItemId(I)J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 239
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
