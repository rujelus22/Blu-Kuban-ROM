.class final Lcom/google/googlenav/ui/view/dialog/cD;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cz;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/dialog/cz;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cD;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    .line 339
    const v0, 0x1020014

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/dialog/cz;Landroid/content/Context;Ljava/util/List;Lcom/google/googlenav/ui/view/dialog/cA;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/dialog/cD;-><init>(Lcom/google/googlenav/ui/view/dialog/cz;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 373
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 376
    invoke-virtual {v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    .line 380
    invoke-static {v10}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-array v3, v10, [Lcom/google/googlenav/ui/aW;

    invoke-static {v1}, Lcom/google/googlenav/ai;->l(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    aput-object v1, v3, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    iget-object v1, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 390
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :goto_6f
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->d:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v0, v11}, Lcom/google/googlenav/ui/android/FlowLayout;->setVisibility(I)V

    .line 399
    return-void

    .line 392
    :cond_75
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 394
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6f
.end method

.method private b(Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v3, 0x0

    .line 405
    invoke-virtual {p2, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 406
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->d:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/FlowLayout;->removeAllViewsInLayout()V

    move v2, v3

    .line 410
    :goto_13
    if-ge v2, v4, :cond_61

    .line 411
    const v0, 0x7f04018f

    iget-object v1, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->d:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 413
    const v0, 0x7f1002bc

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 414
    invoke-virtual {p2, v9, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    new-instance v7, Lcom/google/googlenav/ui/bx;

    sget v8, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v7, v1, v8}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 416
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cD;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/cz;->d(Lcom/google/googlenav/ui/view/dialog/cz;)Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v1

    .line 417
    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/cD;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-static {v8}, Lcom/google/googlenav/ui/view/dialog/cz;->e(Lcom/google/googlenav/ui/view/dialog/cz;)LS/f;

    move-result-object v8

    if-ne v1, v8, :cond_4c

    .line 418
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_4c
    check-cast v1, LT/f;

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->d:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/FlowLayout;->addView(Landroid/view/View;)V

    .line 422
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 424
    :cond_61
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->d:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/FlowLayout;->setVisibility(I)V

    .line 425
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_78

    .line 426
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cD;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cz;->a:Lcom/google/googlenav/ui/wizard/ja;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cE;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cE;-><init>(Lcom/google/googlenav/ui/view/dialog/cD;)V

    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Ljava/util/List;Lah/p;)V

    .line 436
    :cond_78
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v0, p1, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    instance-of v0, p2, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;

    if-eqz v0, :cond_30

    move-object v0, p2

    .line 350
    :goto_5
    check-cast v0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cD;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 355
    iget-object v2, v0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->a:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 357
    iget-object v2, v0, Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;->b:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 360
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 361
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/cD;->a(Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 366
    :goto_2f
    return-object v0

    .line 348
    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cD;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 363
    :cond_3f
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/dialog/cD;->b(Lcom/google/googlenav/ui/view/dialog/SpicybowlMigrationListItem;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_2f
.end method
