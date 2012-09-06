.class public abstract Lcom/dropbox/android/widget/aq;
.super Landroid/widget/BaseAdapter;
.source "panda.py"

# interfaces
.implements Landroid/widget/ListAdapter;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field protected final d:Landroid/content/Context;

.field protected e:Landroid/database/Cursor;

.field protected f:Ljava/util/Set;

.field protected g:Ljava/util/ArrayList;

.field protected h:Landroid/widget/AdapterView$OnItemClickListener;

.field protected i:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected j:I

.field k:Landroid/database/DataSetObservable;

.field l:Landroid/database/DataSetObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/dropbox/android/widget/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/aq;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/dropbox/android/widget/aq;->j:I

    .line 69
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/aq;->k:Landroid/database/DataSetObservable;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    .line 33
    iput-object p1, p0, Lcom/dropbox/android/widget/aq;->d:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private a(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    if-nez p1, :cond_2f

    move v0, v1

    .line 300
    :goto_5
    if-nez v0, :cond_2e

    .line 301
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 302
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    iget-object v4, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 304
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/aq;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v1

    .line 305
    :goto_29
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 307
    :cond_2e
    return v0

    :cond_2f
    move v0, v2

    .line 299
    goto :goto_5

    :cond_31
    move v0, v2

    .line 304
    goto :goto_29
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-nez v0, :cond_d

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    .line 144
    :goto_c
    return-void

    .line 121
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v1

    .line 125
    :goto_20
    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 126
    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/aq;->c(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 129
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 138
    :goto_40
    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_20

    .line 131
    :cond_46
    iget v2, p0, Lcom/dropbox/android/widget/aq;->j:I

    rem-int v2, v0, v2

    if-nez v2, :cond_5c

    .line 133
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 135
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 142
    :cond_5f
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_c
.end method

.method private e(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_37

    move v0, v1

    .line 312
    :goto_d
    if-nez v0, :cond_36

    .line 313
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 314
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 315
    iget-object v4, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 316
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/aq;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    .line 317
    :goto_31
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 319
    :cond_36
    return v0

    :cond_37
    move v0, v2

    .line 311
    goto :goto_d

    :cond_39
    move v0, v2

    .line 316
    goto :goto_31
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final a(ILandroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/aq;->c(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 290
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1, p2}, Lcom/dropbox/android/widget/aq;->b(Landroid/database/Cursor;Landroid/view/View;)V

    .line 294
    :goto_18
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 295
    return-void

    .line 292
    :cond_1e
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1, p2}, Lcom/dropbox/android/widget/aq;->a(Landroid/database/Cursor;Landroid/view/View;)V

    goto :goto_18
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 4
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-ne p1, v0, :cond_5

    .line 106
    :cond_4
    :goto_4
    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_14

    .line 90
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    .line 91
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 94
    :cond_14
    iput-object p1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    .line 95
    invoke-direct {p0}, Lcom/dropbox/android/widget/aq;->d()V

    .line 97
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_2e

    .line 99
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 100
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_4

    .line 102
    :cond_2e
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_4
.end method

.method public abstract a(Landroid/database/Cursor;Landroid/view/View;)V
.end method

.method public final a(Landroid/database/Cursor;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p2, p0, Lcom/dropbox/android/widget/aq;->f:Ljava/util/Set;

    .line 81
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/aq;->a(Landroid/database/Cursor;)V

    .line 82
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/view/View;Landroid/database/Cursor;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    .line 263
    invoke-virtual {p0, p3}, Lcom/dropbox/android/widget/aq;->b(Landroid/database/Cursor;)Z

    move-result v2

    .line 264
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 265
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 266
    new-instance v0, Lcom/dropbox/android/widget/ar;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/ar;-><init>(Lcom/dropbox/android/widget/aq;ZLandroid/view/View;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v0, Lcom/dropbox/android/widget/as;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/as;-><init>(Lcom/dropbox/android/widget/aq;ZLandroid/view/View;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 284
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dropbox/android/widget/aq;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 231
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dropbox/android/widget/aq;->i:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 235
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    return-object v0
.end method

.method public abstract b(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final b(I)V
    .registers 7
    .parameter

    .prologue
    .line 430
    const/4 v0, 0x1

    int-to-double v1, p1

    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->a()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 431
    iget v1, p0, Lcom/dropbox/android/widget/aq;->j:I

    if-eq v1, v0, :cond_1f

    .line 432
    iput v0, p0, Lcom/dropbox/android/widget/aq;->j:I

    .line 433
    invoke-direct {p0}, Lcom/dropbox/android/widget/aq;->d()V

    .line 434
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->k:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 436
    :cond_1f
    return-void
.end method

.method public abstract b(Landroid/database/Cursor;Landroid/view/View;)V
.end method

.method public b(Landroid/database/Cursor;)Z
    .registers 3
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .registers 4

    .prologue
    .line 426
    const/4 v0, 0x2

    const/high16 v1, 0x3fc0

    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .registers 3
    .parameter

    .prologue
    .line 442
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method

.method protected final c(Landroid/database/Cursor;)Z
    .registers 5
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    const-string v1, "_cursor_type_tag"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 114
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1b

    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->f:Ljava/util/Set;

    iget-object v2, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final d(I)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 448
    move v1, v0

    move v2, v0

    .line 449
    :goto_3
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 450
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_1a

    .line 456
    :cond_19
    return v2

    .line 449
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    .line 158
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 159
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    .line 161
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getItemId(I)J
    .registers 5
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_24

    .line 172
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 173
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 175
    :goto_23
    return-wide v0

    :cond_24
    const-wide/16 v0, 0x0

    goto :goto_23
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_21

    .line 245
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 248
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/aq;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 250
    :goto_1e
    return v0

    .line 248
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e

    .line 250
    :cond_21
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 328
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/aq;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 331
    if-eqz p2, :cond_41

    move-object v1, p2

    .line 339
    :goto_1d
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    move-object v0, v1

    .line 340
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, v4}, Lcom/dropbox/android/widget/aq;->a(Landroid/view/View;Landroid/view/View;Landroid/database/Cursor;)V

    .line 341
    iget-object v4, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/dropbox/android/widget/aq;->a(Landroid/database/Cursor;Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 404
    :goto_40
    return-object v1

    .line 334
    :cond_41
    new-instance v1, Lcom/dropbox/android/widget/ViewButton;

    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/widget/ViewButton;-><init>(Landroid/content/Context;Z)V

    .line 335
    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/aq;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1d

    .line 348
    :cond_4c
    if-eqz p2, :cond_bd

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/dropbox/android/widget/aq;->j:I

    if-ne v0, v1, :cond_bd

    move-object v0, p2

    .line 372
    :goto_5a
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/aq;->a(I)Z

    move-result v1

    .line 373
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/aq;->e(I)Z

    move-result v3

    .line 376
    check-cast v0, Landroid/view/ViewGroup;

    .line 378
    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v4

    if-eqz v1, :cond_103

    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v1

    :goto_6e
    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v5

    if-eqz v3, :cond_106

    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v3

    :goto_78
    invoke-virtual {v0, v4, v1, v5, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v3, v2

    .line 384
    :goto_7c
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_109

    iget v1, p0, Lcom/dropbox/android/widget/aq;->j:I

    if-ge v3, v1, :cond_109

    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/aq;->c(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 385
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 386
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    .line 387
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 388
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 389
    iget-object v6, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v5}, Lcom/dropbox/android/widget/aq;->b(Landroid/database/Cursor;Landroid/view/View;)V

    .line 390
    iget-object v6, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v5, v6}, Lcom/dropbox/android/widget/aq;->a(Landroid/view/View;Landroid/view/View;Landroid/database/Cursor;)V

    .line 391
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 392
    iget-object v1, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 393
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 394
    goto :goto_7c

    .line 354
    :cond_bd
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 355
    const/high16 v0, -0x4080

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 356
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v2

    .line 358
    :goto_cd
    iget v1, p0, Lcom/dropbox/android/widget/aq;->j:I

    if-ge v0, v1, :cond_100

    .line 359
    new-instance v1, Lcom/dropbox/android/widget/ViewButton;

    iget-object v3, p0, Lcom/dropbox/android/widget/aq;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lcom/dropbox/android/widget/ViewButton;-><init>(Landroid/content/Context;Z)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/aq;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 361
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x3f80

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 362
    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v5

    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v6

    invoke-virtual {p0}, Lcom/dropbox/android/widget/aq;->c()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 363
    invoke-virtual {v1, v3}, Lcom/dropbox/android/widget/ViewButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    :cond_100
    move-object v0, p2

    .line 366
    goto/16 :goto_5a

    :cond_103
    move v1, v2

    .line 378
    goto/16 :goto_6e

    :cond_106
    move v3, v2

    goto/16 :goto_78

    .line 398
    :cond_109
    :goto_109
    iget v1, p0, Lcom/dropbox/android/widget/aq;->j:I

    if-ge v3, v1, :cond_120

    .line 399
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    .line 400
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 401
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    add-int/lit8 v3, v3, 0x1

    .line 403
    goto :goto_109

    :cond_120
    move-object v1, v0

    .line 404
    goto/16 :goto_40
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    .line 192
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->k:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 194
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 196
    :cond_10
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_d

    .line 203
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 205
    :cond_d
    iget-object v0, p0, Lcom/dropbox/android/widget/aq;->k:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/aq;->l:Landroid/database/DataSetObserver;

    .line 207
    return-void
.end method
