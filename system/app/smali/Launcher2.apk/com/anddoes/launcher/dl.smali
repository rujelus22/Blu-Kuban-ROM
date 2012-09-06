.class final Lcom/anddoes/launcher/dl;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/GroupConfigActivity;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/GroupConfigActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 417
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/dl;)Lcom/anddoes/launcher/GroupConfigActivity;
    .registers 2
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->b(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    iget-object v0, v0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_12
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->b(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 425
    :goto_12
    if-ltz p1, :cond_16

    if-lt p1, v0, :cond_21

    .line 426
    :cond_16
    const/4 v0, 0x0

    .line 428
    :goto_17
    return-object v0

    .line 424
    :cond_18
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    iget-object v0, v0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_12

    .line 428
    :cond_21
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->b(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_34
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    iget-object v0, v0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->b(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    :goto_12
    if-ltz p1, :cond_16

    if-lt p1, v0, :cond_29

    .line 434
    :cond_16
    const-string v0, "GroupConfigActivity"

    const-string v1, "Position out of bounds in List Adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-wide/16 v0, -0x1

    .line 437
    :goto_1f
    return-wide v0

    .line 432
    :cond_20
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    iget-object v0, v0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_12

    .line 437
    :cond_29
    int-to-long v0, p1

    goto :goto_1f
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 441
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->b(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 442
    :goto_15
    if-lt p1, v0, :cond_4a

    .line 443
    const-string v0, "GroupConfigActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid view position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual size is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/GroupConfigActivity;->b(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 p2, 0x0

    .line 491
    :cond_40
    :goto_40
    return-object p2

    .line 441
    :cond_41
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    iget-object v0, v0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_15

    .line 447
    :cond_4a
    if-nez p2, :cond_d8

    .line 449
    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->c(Lcom/anddoes/launcher/GroupConfigActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_d4

    const v0, 0x7f030005

    :goto_5d
    invoke-virtual {v1, v0, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 451
    new-instance v0, Lcom/anddoes/launcher/dn;

    invoke-direct {v0, p0, p2}, Lcom/anddoes/launcher/dn;-><init>(Lcom/anddoes/launcher/dl;Landroid/view/View;)V

    .line 452
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 457
    :goto_6a
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/dl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_40

    .line 459
    const-string v3, ""

    .line 460
    const-string v2, ""

    .line 461
    instance-of v4, v0, Lcom/anddoes/launcher/y;

    if-eqz v4, :cond_e0

    .line 462
    check-cast v0, Lcom/anddoes/launcher/y;

    .line 463
    invoke-virtual {v1}, Lcom/anddoes/launcher/dn;->a()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/GroupConfigActivity;->d(Lcom/anddoes/launcher/GroupConfigActivity;)Lcom/anddoes/launcher/ds;

    move-result-object v3

    iget-object v4, v0, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/anddoes/launcher/ds;->a(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    iget-object v2, v0, Lcom/anddoes/launcher/y;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 483
    :cond_99
    :goto_99
    iget-object v0, v1, Lcom/anddoes/launcher/dn;->c:Landroid/widget/TextView;

    if-nez v0, :cond_aa

    iget-object v0, v1, Lcom/anddoes/launcher/dn;->a:Landroid/view/View;

    const v4, 0x7f080005

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/anddoes/launcher/dn;->c:Landroid/widget/TextView;

    :cond_aa
    iget-object v0, v1, Lcom/anddoes/launcher/dn;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v1}, Lcom/anddoes/launcher/dn;->c()Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v0, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/GroupConfigActivity;->g(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 485
    invoke-virtual {v1}, Lcom/anddoes/launcher/dn;->c()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/anddoes/launcher/dm;

    invoke-direct {v1, p0, p1}, Lcom/anddoes/launcher/dm;-><init>(Lcom/anddoes/launcher/dl;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_40

    .line 450
    :cond_d4
    const v0, 0x7f030032

    goto :goto_5d

    .line 454
    :cond_d8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/dn;

    move-object v1, v0

    goto :goto_6a

    .line 466
    :cond_e0
    instance-of v4, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_13f

    .line 467
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 468
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-lez v2, :cond_103

    .line 469
    invoke-virtual {v1}, Lcom/anddoes/launcher/dn;->a()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/GroupConfigActivity;->d(Lcom/anddoes/launcher/GroupConfigActivity;)Lcom/anddoes/launcher/ds;

    move-result-object v3

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v3, v4, v5}, Lcom/anddoes/launcher/ds;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    :cond_103
    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 472
    iget-object v3, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Landroid/content/ComponentName;II)[I

    move-result-object v3

    .line 473
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {v1}, Lcom/anddoes/launcher/dn;->b()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v5}, Lcom/anddoes/launcher/GroupConfigActivity;->e(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aget v7, v3, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 475
    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    .line 474
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v0

    goto/16 :goto_99

    .line 476
    :cond_13f
    instance-of v4, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_99

    .line 477
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 478
    invoke-virtual {v1}, Lcom/anddoes/launcher/dn;->a()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/GroupConfigActivity;->d(Lcom/anddoes/launcher/GroupConfigActivity;)Lcom/anddoes/launcher/ds;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/ds;->a(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 480
    iget-object v3, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/GroupConfigActivity;->f(Lcom/anddoes/launcher/GroupConfigActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {v1}, Lcom/anddoes/launcher/dn;->b()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/anddoes/launcher/dl;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v4}, Lcom/anddoes/launcher/GroupConfigActivity;->e(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v0

    goto/16 :goto_99
.end method
