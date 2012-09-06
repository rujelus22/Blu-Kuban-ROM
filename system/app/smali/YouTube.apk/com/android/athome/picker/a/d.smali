.class final Lcom/android/athome/picker/a/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/a/a;

.field private b:I

.field private final c:Ljava/util/ArrayList;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private h:Z


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a/a;)V
    .registers 3
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/athome/picker/a/d;->b:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/a/d;->f:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/a/d;->g:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {p0}, Lcom/android/athome/picker/a/d;->a()V

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/a/d;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/android/athome/picker/a/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/android/athome/picker/a/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method final a()V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-boolean v0, p0, Lcom/android/athome/picker/a/d;->h:Z

    if-eqz v0, :cond_6

    .line 271
    :cond_5
    :goto_5
    return-void

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v2}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/athome/picker/a/d;->b:I

    .line 251
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;)I

    move-result v5

    move v3, v1

    .line 252
    :goto_25
    if-ge v3, v5, :cond_aa

    .line 253
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/athome/picker/media/k;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 254
    iget-object v2, p0, Lcom/android/athome/picker/a/d;->f:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/athome/picker/media/o;->a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 256
    iget-object v2, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v2, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    if-ne v0, v2, :cond_8d

    .line 259
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v1

    :goto_43
    if-ge v2, v7, :cond_6b

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_62

    invoke-static {v8}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v9

    move v0, v1

    :goto_54
    if-ge v0, v9, :cond_67

    invoke-static {v8, v0}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, p0, Lcom/android/athome/picker/a/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_62
    iget-object v8, p0, Lcom/android/athome/picker/a/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_43

    :cond_6b
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v2, v2, Lcom/android/athome/picker/a/a;->X:Lcom/android/athome/picker/a/h;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/athome/picker/a/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/athome/picker/a/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_86
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 252
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_25

    .line 261
    :cond_8d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    move v0, v1

    :goto_92
    if-ge v0, v2, :cond_86

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_a2

    iget-object v8, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, p0, Lcom/android/athome/picker/a/d;->b:I

    :cond_a2
    iget-object v8, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 267
    :cond_aa
    invoke-virtual {p0}, Lcom/android/athome/picker/a/d;->notifyDataSetChanged()V

    .line 268
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->b(Lcom/android/athome/picker/a/a;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/athome/picker/a/d;->b:I

    if-ltz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->b(Lcom/android/athome/picker/a/a;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/a/d;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto/16 :goto_5
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->b(Lcom/android/athome/picker/a/a;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_e

    .line 291
    :cond_d
    :goto_d
    return-void

    .line 278
    :cond_e
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 279
    :goto_16
    if-ge v1, v3, :cond_34

    .line 280
    iget-object v4, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 281
    if-eqz v4, :cond_25

    iget-object v5, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    if-ne v4, v5, :cond_25

    move v0, v1

    .line 284
    :cond_25
    if-nez v4, :cond_31

    .line 290
    :goto_27
    iget-object v2, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v2}, Lcom/android/athome/picker/a/a;->b(Lcom/android/athome/picker/a/a;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(II)V

    goto :goto_d

    .line 279
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_34
    move v1, v2

    goto :goto_27
.end method

.method final c()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->b(Lcom/android/athome/picker/a/a;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/athome/picker/a/d;->b:I

    if-gez v0, :cond_d

    .line 297
    :cond_c
    :goto_c
    return-void

    .line 296
    :cond_d
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->b(Lcom/android/athome/picker/a/a;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/a/d;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_c
.end method

.method final d()Z
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final e()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    .line 549
    iput-object v0, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    .line 550
    invoke-virtual {p0}, Lcom/android/athome/picker/a/d;->a()V

    .line 551
    invoke-virtual {p0}, Lcom/android/athome/picker/a/d;->c()V

    .line 552
    return-void
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 386
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 4
    .parameter

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/android/athome/picker/media/k;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 352
    if-nez p1, :cond_e

    const/4 v0, 0x0

    .line 358
    :goto_d
    return v0

    .line 352
    :cond_e
    const/4 v0, 0x1

    goto :goto_d

    .line 353
    :cond_10
    if-nez v0, :cond_14

    .line 354
    const/4 v0, 0x4

    goto :goto_d

    .line 355
    :cond_14
    invoke-static {v0}, Lcom/android/athome/picker/media/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_1e

    .line 356
    const/4 v0, 0x3

    goto :goto_d

    .line 358
    :cond_1e
    const/4 v0, 0x2

    goto :goto_d
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/a/d;->getItemViewType(I)I

    move-result v6

    .line 394
    if-nez p2, :cond_96

    .line 395
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->c(Lcom/android/athome/picker/a/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/android/athome/picker/a/a;->F()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 396
    new-instance v1, Lcom/android/athome/picker/a/i;

    invoke-direct {v1, v2}, Lcom/android/athome/picker/a/i;-><init>(B)V

    .line 397
    iput p1, v1, Lcom/android/athome/picker/a/i;->f:I

    .line 398
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/athome/picker/a/i;->a:Landroid/widget/TextView;

    .line 399
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/athome/picker/a/i;->b:Landroid/widget/TextView;

    .line 400
    sget v0, Lcom/android/athome/picker/ai;->h:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/athome/picker/a/i;->c:Landroid/widget/ImageView;

    .line 401
    sget v0, Lcom/android/athome/picker/ai;->e:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/athome/picker/a/i;->g:Landroid/widget/CheckBox;

    .line 402
    sget v0, Lcom/android/athome/picker/ai;->f:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/android/athome/picker/a/i;->d:Landroid/widget/ImageButton;

    .line 404
    iget-object v0, v1, Lcom/android/athome/picker/a/i;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_68

    .line 405
    new-instance v0, Lcom/android/athome/picker/a/f;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/a/f;-><init>(Lcom/android/athome/picker/a/d;)V

    iput-object v0, v1, Lcom/android/athome/picker/a/i;->e:Lcom/android/athome/picker/a/f;

    .line 406
    iget-object v0, v1, Lcom/android/athome/picker/a/i;->d:Landroid/widget/ImageButton;

    iget-object v5, v1, Lcom/android/athome/picker/a/i;->e:Lcom/android/athome/picker/a/f;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_68
    check-cast p3, Landroid/widget/ListView;

    .line 412
    new-instance v0, Lcom/android/athome/picker/a/e;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/android/athome/picker/a/e;-><init>(Lcom/android/athome/picker/a/d;Landroid/widget/ListView;Landroid/view/View;Lcom/android/athome/picker/a/i;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, p2

    .line 423
    :goto_77
    packed-switch v6, :pswitch_data_170

    .line 434
    :cond_7a
    :goto_7a
    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_95

    move-object v0, v1

    .line 435
    check-cast v0, Landroid/widget/Checkable;

    .line 436
    const/4 v3, 0x3

    if-ne v6, v3, :cond_162

    .line 437
    iget-object v3, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 438
    invoke-static {v3}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 439
    iget-object v5, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    if-ne v3, v5, :cond_15f

    :goto_92
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 445
    :cond_95
    :goto_95
    return-object v1

    .line 419
    :cond_96
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/a/i;

    .line 420
    iput p1, v0, Lcom/android/athome/picker/a/i;->f:I

    move-object v5, v0

    move-object v1, p2

    goto :goto_77

    .line 426
    :pswitch_a1
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v0, v5, Lcom/android/athome/picker/a/i;->a:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/athome/picker/media/q;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lcom/android/athome/picker/media/q;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_115

    iget-object v0, v5, Lcom/android/athome/picker/a/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_bf
    invoke-static {v7}, Lcom/android/athome/picker/media/q;->g(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v8, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-virtual {v8}, Lcom/android/athome/picker/a/a;->k()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_d3
    iget-object v8, v5, Lcom/android/athome/picker/a/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v5, Lcom/android/athome/picker/a/i;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_120

    move v0, v2

    :goto_dd
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v7}, Lcom/android/athome/picker/media/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v8, p0, Lcom/android/athome/picker/a/d;->d:Ljava/lang/Object;

    if-ne v0, v8, :cond_126

    invoke-static {v7}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v5, Lcom/android/athome/picker/a/i;->g:Landroid/widget/CheckBox;

    invoke-static {v7}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v4, :cond_122

    move v0, v4

    :goto_f5
    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v8, v5, Lcom/android/athome/picker/a/i;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    if-ne v7, v0, :cond_124

    move v0, v4

    :goto_ff
    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v0, v2

    :goto_103
    iget-object v7, v5, Lcom/android/athome/picker/a/i;->d:Landroid/widget/ImageButton;

    if-eqz v7, :cond_7a

    iget-object v7, v5, Lcom/android/athome/picker/a/i;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10c

    move v3, v2

    :cond_10c
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v5, Lcom/android/athome/picker/a/i;->e:Lcom/android/athome/picker/a/f;

    iput p1, v0, Lcom/android/athome/picker/a/f;->a:I

    goto/16 :goto_7a

    :cond_115
    iget-object v8, v5, Lcom/android/athome/picker/a/i;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v5, Lcom/android/athome/picker/a/i;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    :cond_120
    move v0, v3

    goto :goto_dd

    :cond_122
    move v0, v2

    goto :goto_f5

    :cond_124
    move v0, v2

    goto :goto_ff

    :cond_126
    invoke-static {v0}, Lcom/android/athome/picker/media/o;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-static {v7}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v4, :cond_14a

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/a/d;->getItemViewType(I)I

    move-result v0

    if-eq v0, v9, :cond_14a

    invoke-virtual {p0}, Lcom/android/athome/picker/a/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_14c

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/a/d;->getItemViewType(I)I

    move-result v0

    if-ne v0, v9, :cond_14c

    :cond_14a
    move v0, v4

    goto :goto_103

    :cond_14c
    move v0, v2

    goto :goto_103

    .line 430
    :pswitch_14e
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v5, Lcom/android/athome/picker/a/i;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/athome/picker/media/o;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7a

    :cond_15f
    move v4, v2

    .line 439
    goto/16 :goto_92

    .line 441
    :cond_162
    iget v3, p0, Lcom/android/athome/picker/a/d;->b:I

    if-ne p1, v3, :cond_16b

    :goto_166
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto/16 :goto_95

    :cond_16b
    move v4, v2

    goto :goto_166

    :cond_16d
    move v0, v2

    goto :goto_103

    .line 423
    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_14e
        :pswitch_14e
        :pswitch_a1
        :pswitch_a1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 345
    const/4 v0, 0x5

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/a/d;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 375
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 373
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 369
    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 492
    invoke-virtual {p0, p3}, Lcom/android/athome/picker/a/d;->getItemViewType(I)I

    move-result v0

    .line 493
    if-eq v0, v5, :cond_a

    if-nez v0, :cond_b

    .line 541
    :cond_a
    :goto_a
    return-void

    .line 495
    :cond_b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 496
    invoke-virtual {p0}, Lcom/android/athome/picker/a/d;->e()V

    goto :goto_a

    .line 499
    :cond_12
    invoke-virtual {p0, p3}, Lcom/android/athome/picker/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 500
    invoke-static {v1}, Lcom/android/athome/picker/media/k;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 506
    const/4 v2, 0x2

    if-ne v0, v2, :cond_32

    .line 508
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v2}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-virtual {v0}, Lcom/android/athome/picker/a/a;->a()V

    goto :goto_a

    .line 510
    :cond_32
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 511
    check-cast p2, Landroid/widget/Checkable;

    .line 512
    invoke-interface {p2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 514
    iput-boolean v5, p0, Lcom/android/athome/picker/a/d;->h:Z

    .line 515
    invoke-static {v1}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 516
    if-nez v0, :cond_77

    iget-object v3, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    if-eq v2, v3, :cond_77

    .line 518
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v3}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_66

    .line 524
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v3}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;)I

    move-result v3

    iget-object v4, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 526
    :cond_66
    invoke-static {v2, v1}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 528
    invoke-interface {p2, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 537
    :cond_71
    :goto_71
    iput-boolean v6, p0, Lcom/android/athome/picker/a/d;->h:Z

    .line 538
    invoke-virtual {p0}, Lcom/android/athome/picker/a/d;->a()V

    goto :goto_a

    .line 529
    :cond_77
    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v5, :cond_71

    .line 530
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    invoke-interface {p2, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_71
.end method
