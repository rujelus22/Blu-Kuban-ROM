.class Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaRouteChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;
    }
.end annotation


# instance fields
.field private final mCatRouteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryEditingGroups:Ljava/lang/Object;

.field private mEditingGroup:Ljava/lang/Object;

.field private mIgnoreUpdates:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemPosition:I

.field private final mSortRouteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCatRouteList:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 230
    return-void
.end method

.method static synthetic access$500(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method addGroupEditingCategoryRoutes(Ljava/util/List;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, from:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 314
    .local v6, topCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v6, :cond_2c

    .line 315
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 316
    .local v5, route:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    .local v0, group:Ljava/lang/Object;
    if-ne v0, v5, :cond_24

    .line 319
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v1

    .line 320
    .local v1, groupCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_16
    if-ge v4, v1, :cond_29

    .line 321
    invoke-static {v0, v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 322
    .local v3, innerRoute:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 325
    .end local v1           #groupCount:I
    .end local v3           #innerRoute:Ljava/lang/Object;
    .end local v4           #j:I
    :cond_24
    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 330
    .end local v0           #group:Ljava/lang/Object;
    .end local v5           #route:Ljava/lang/Object;
    :cond_2c
    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v8, v8, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mComparator:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 333
    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method addSelectableRoutes(Ljava/lang/Object;Ljava/util/List;)V
    .registers 7
    .parameter "selectedRoute"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 301
    .local v2, routeCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    if-ge v1, v2, :cond_1d

    .line 302
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, info:Ljava/lang/Object;
    if-ne v0, p1, :cond_15

    .line 304
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    .line 306
    :cond_15
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 308
    .end local v0           #info:Ljava/lang/Object;
    :cond_1d
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method bindHeaderView(ILcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;)V
    .registers 6
    .parameter "position"
    .parameter "holder"

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 487
    .local v0, cat:Ljava/lang/Object;
    iget-object v1, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;->getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    return-void
.end method

.method bindItemView(ILcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;)V
    .registers 15
    .parameter "position"
    .parameter "holder"

    .prologue
    const/4 v11, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 449
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 450
    .local v4, info:Ljava/lang/Object;
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 452
    .local v5, status:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 453
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :goto_23
    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 459
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_37

    .line 461
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    iget-object v10, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v10}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 463
    :cond_37
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v10, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_81

    move v6, v7

    :goto_41
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 467
    .local v1, cat:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 468
    .local v0, canGroup:Z
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    if-ne v1, v6, :cond_87

    .line 469
    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 470
    .local v2, group:Ljava/lang/Object;
    iget-object v10, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-static {v2}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v6

    if-le v6, v9, :cond_83

    move v6, v9

    :goto_5a
    invoke-virtual {v10, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 471
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    if-ne v2, v10, :cond_85

    :goto_63
    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 479
    .end local v2           #group:Ljava/lang/Object;
    :cond_66
    :goto_66
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_75

    .line 480
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_af

    :goto_6e
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 481
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupListener:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    iput p1, v6, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->position:I

    .line 483
    :cond_75
    return-void

    .line 455
    .end local v0           #canGroup:Z
    .end local v1           #cat:Ljava/lang/Object;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_76
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v6, p2, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    :cond_81
    move v6, v8

    .line 464
    goto :goto_41

    .restart local v0       #canGroup:Z
    .restart local v1       #cat:Ljava/lang/Object;
    .restart local v2       #group:Ljava/lang/Object;
    :cond_83
    move v6, v7

    .line 470
    goto :goto_5a

    :cond_85
    move v9, v7

    .line 471
    goto :goto_63

    .line 472
    .end local v2           #group:Ljava/lang/Object;
    :cond_87
    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;->isGroupable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 473
    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v6

    if-gt v6, v9, :cond_ab

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v6

    if-eq v6, v11, :cond_ab

    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p1, v6, :cond_ad

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v6, v11, :cond_ad

    :cond_ab
    move v0, v9

    :goto_ac
    goto :goto_66

    :cond_ad
    move v0, v7

    goto :goto_ac

    :cond_af
    move v7, v8

    .line 480
    goto :goto_6e
.end method

.method finishGrouping()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    .line 549
    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    .line 550
    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 551
    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->scrollToSelectedItem()V

    .line 552
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 386
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5
    .parameter "position"

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 351
    .local v0, item:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->isRouteCategory(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 352
    if-nez p1, :cond_e

    const/4 v1, 0x0

    .line 358
    :goto_d
    return v1

    .line 352
    :cond_e
    const/4 v1, 0x1

    goto :goto_d

    .line 353
    :cond_10
    if-nez v0, :cond_14

    .line 354
    const/4 v1, 0x4

    goto :goto_d

    .line 355
    :cond_14
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    if-ne v1, v2, :cond_1e

    .line 356
    const/4 v1, 0x3

    goto :goto_d

    .line 358
    :cond_1e
    const/4 v1, 0x2

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v7

    .line 394
    .local v7, viewType:I
    if-nez p2, :cond_96

    .line 395
    iget-object v8, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$300(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-static {}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$200()[I

    move-result-object v11

    aget v11, v11, v7

    invoke-virtual {v8, v11, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 396
    new-instance v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$1;)V

    .line 397
    .local v3, holder:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;
    iput p1, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->position:I

    .line 398
    const v8, 0x1020014

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->text1:Landroid/widget/TextView;

    .line 399
    const v8, 0x1020015

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    .line 400
    sget v8, Lcom/android/athome/picker/R$id;->icon:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 401
    sget v8, Lcom/android/athome/picker/R$id;->check:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 402
    sget v8, Lcom/android/athome/picker/R$id;->expand_button:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    .line 404
    iget-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    if-eqz v8, :cond_66

    .line 405
    new-instance v8, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    invoke-direct {v8, p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;)V

    iput-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupListener:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    .line 406
    iget-object v8, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    iget-object v11, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupListener:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    :cond_66
    move-object v2, p2

    .local v2, fview:Landroid/view/View;
    move-object v4, p3

    .line 410
    check-cast v4, Landroid/widget/ListView;

    .line 411
    .local v4, list:Landroid/widget/ListView;
    move-object v1, v3

    .line 412
    .local v1, fholder:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;
    new-instance v8, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$1;

    invoke-direct {v8, p0, v4, v2, v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter$1;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;Landroid/widget/ListView;Landroid/view/View;Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 423
    .end local v1           #fholder:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;
    .end local v2           #fview:Landroid/view/View;
    .end local v4           #list:Landroid/widget/ListView;
    :goto_76
    packed-switch v7, :pswitch_data_b4

    .line 434
    :goto_79
    instance-of v8, p2, Landroid/widget/Checkable;

    if-eqz v8, :cond_95

    move-object v0, p2

    .line 435
    check-cast v0, Landroid/widget/Checkable;

    .line 436
    .local v0, c:Landroid/widget/Checkable;
    const/4 v8, 0x3

    if-ne v7, v8, :cond_a9

    .line 437
    iget-object v8, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 438
    .local v6, route:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 439
    .local v5, oldGroup:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    if-ne v5, v8, :cond_a7

    move v8, v9

    :goto_92
    invoke-interface {v0, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 445
    .end local v0           #c:Landroid/widget/Checkable;
    .end local v5           #oldGroup:Ljava/lang/Object;
    .end local v6           #route:Ljava/lang/Object;
    :cond_95
    :goto_95
    return-object p2

    .line 419
    .end local v3           #holder:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;
    :cond_96
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;

    .line 420
    .restart local v3       #holder:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;
    iput p1, v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;->position:I

    goto :goto_76

    .line 426
    :pswitch_9f
    invoke-virtual {p0, p1, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->bindItemView(ILcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;)V

    goto :goto_79

    .line 430
    :pswitch_a3
    invoke-virtual {p0, p1, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->bindHeaderView(ILcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;)V

    goto :goto_79

    .restart local v0       #c:Landroid/widget/Checkable;
    .restart local v5       #oldGroup:Ljava/lang/Object;
    .restart local v6       #route:Ljava/lang/Object;
    :cond_a7
    move v8, v10

    .line 439
    goto :goto_92

    .line 441
    .end local v5           #oldGroup:Ljava/lang/Object;
    .end local v6           #route:Ljava/lang/Object;
    :cond_a9
    iget v8, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    if-ne p1, v8, :cond_b1

    :goto_ad
    invoke-interface {v0, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_95

    :cond_b1
    move v9, v10

    goto :goto_ad

    .line 423
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_a3
        :pswitch_9f
        :pswitch_9f
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 345
    const/4 v0, 0x5

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

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

.method isGrouping()Z
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v4

    .line 493
    .local v4, type:I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_9

    if-nez v4, :cond_a

    .line 541
    :cond_9
    :goto_9
    return-void

    .line 495
    :cond_a
    const/4 v6, 0x4

    if-ne v4, v6, :cond_11

    .line 496
    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->finishGrouping()V

    goto :goto_9

    .line 499
    :cond_11
    invoke-virtual {p0, p3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 500
    .local v1, item:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->isRouteInfo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 505
    move-object v3, v1

    .line 506
    .local v3, route:Ljava/lang/Object;
    const/4 v6, 0x2

    if-ne v4, v6, :cond_32

    .line 508
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v7}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I

    move-result v7

    invoke-static {v6, v7, v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 509
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v6}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->dismiss()V

    goto :goto_9

    .line 510
    :cond_32
    const/4 v6, 0x3

    if-ne v4, v6, :cond_9

    move-object v0, p2

    .line 511
    check-cast v0, Landroid/widget/Checkable;

    .line 512
    .local v0, c:Landroid/widget/Checkable;
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v5

    .line 514
    .local v5, wasChecked:Z
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mIgnoreUpdates:Z

    .line 515
    invoke-static {v3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 516
    .local v2, oldGroup:Ljava/lang/Object;
    if-nez v5, :cond_7b

    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    if-eq v2, v6, :cond_7b

    .line 518
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v7}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_68

    .line 524
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v7}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I

    move-result v7

    iget-object v8, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/athome/picker/media/MediaRouterCompat;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 526
    :cond_68
    invoke-static {v2, v3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    invoke-static {v6, v3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->addRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 528
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 537
    :cond_74
    :goto_74
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mIgnoreUpdates:Z

    .line 538
    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    goto :goto_9

    .line 529
    :cond_7b
    if-eqz v5, :cond_74

    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    invoke-static {v6}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_74

    .line 530
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Ljava/lang/Object;

    invoke-static {v6, v3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    invoke-static {v6, v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_74
.end method

.method scrollToEditingGroup()V
    .registers 7

    .prologue
    .line 274
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    if-nez v5, :cond_d

    .line 291
    :cond_c
    :goto_c
    return-void

    .line 276
    :cond_d
    const/4 v4, 0x0

    .line 277
    .local v4, pos:I
    const/4 v0, 0x0

    .line 278
    .local v0, bound:I
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 279
    .local v3, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v3, :cond_28

    .line 280
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 281
    .local v2, item:Ljava/lang/Object;
    if-eqz v2, :cond_25

    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    if-ne v2, v5, :cond_25

    .line 282
    move v0, v1

    .line 284
    :cond_25
    if-nez v2, :cond_32

    .line 285
    move v4, v1

    .line 290
    .end local v2           #item:Ljava/lang/Object;
    :cond_28
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/widget/ListView;->smoothScrollToPosition(II)V

    goto :goto_c

    .line 279
    .restart local v2       #item:Ljava/lang/Object;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method scrollToSelectedItem()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    if-gez v0, :cond_d

    .line 297
    :cond_c
    :goto_c
    return-void

    .line 296
    :cond_d
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_c
.end method

.method update()V
    .registers 9

    .prologue
    .line 243
    iget-boolean v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mIgnoreUpdates:Z

    if-eqz v5, :cond_5

    .line 271
    :cond_4
    :goto_4
    return-void

    .line 245
    :cond_5
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v5, v5, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v6}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 248
    .local v4, selectedRoute:Ljava/lang/Object;
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    .line 251
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v5, v5, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    invoke-static {v5}, Lcom/android/athome/picker/media/MediaRouterCompat;->getCategoryCount(Ljava/lang/Object;)I

    move-result v1

    .line 252
    .local v1, catCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, v1, :cond_4a

    .line 253
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    iget-object v5, v5, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    invoke-static {v5, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, cat:Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCatRouteList:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;->getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 256
    .local v3, routes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Ljava/lang/Object;

    if-ne v0, v5, :cond_46

    .line 259
    invoke-virtual {p0, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->addGroupEditingCategoryRoutes(Ljava/util/List;)V

    .line 264
    :goto_40
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 261
    :cond_46
    invoke-virtual {p0, v4, v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->addSelectableRoutes(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_40

    .line 267
    .end local v0           #cat:Ljava/lang/Object;
    .end local v3           #routes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4a
    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->notifyDataSetChanged()V

    .line 268
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    if-ltz v5, :cond_4

    .line 269
    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    iget v6, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_4
.end method
