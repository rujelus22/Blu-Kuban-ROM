.class public Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;,
        Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
    }
.end annotation


# static fields
.field private static final TAG_DYNAMIC_ROW:Ljava/lang/Integer;


# instance fields
.field private mAddInstrumentHint:Landroid/widget/TextView;

.field private mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mInstrumentAndPrice:Landroid/view/View;

.field private mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentSpinner:Landroid/widget/Spinner;

.field private mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

.field private mIsUserInitiatedSelection:Z

.field private mLoadingIndicator:Landroid/view/View;

.field private final mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

.field private mPriceTable:Landroid/widget/TableLayout;

.field private mPriceTableExpanded:Z

.field private mPriceTableSummaryRow:Landroid/view/ViewGroup;

.field private mShowInstrumentAndPrice:Z

.field private purchaseSpinnerDescriptionBottomPadding:I

.field private purchaseSpinnerDescriptionRightPadding:I

.field private purchaseSpinnerDescriptionTopPadding:I

.field private purchaseSpinnerLeftPadding:I

.field private purchaseSpinnerRightPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->TAG_DYNAMIC_ROW:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 286
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/support/v4/app/Fragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerLeftPadding:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/widget/TableLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerRightPadding:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionTopPadding:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionRightPadding:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionBottomPadding:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    return-object v0
.end method

.method private addInstrumentsWithSpecificFamilyFirst(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;Lcom/google/android/finsky/billing/CheckoutPurchase;I)I
    .registers 12
    .parameter "adapter"
    .parameter "checkoutPurchase"
    .parameter "familyFirst"

    .prologue
    .line 425
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstruments()Ljava/util/List;

    move-result-object v5

    .line 426
    .local v5, instruments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/billing/Instrument;>;"
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v0

    .line 427
    .local v0, defaultInstrument:Lcom/google/android/finsky/billing/Instrument;
    const/4 v1, 0x0

    .line 430
    .local v1, defaultItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/billing/Instrument;

    .line 431
    .local v4, instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v4}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v7

    if-ne v7, p3, :cond_d

    .line 432
    new-instance v6, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;

    invoke-direct {v6, p0, v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 434
    .local v6, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 436
    if-eqz v0, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 437
    move-object v1, v6

    goto :goto_d

    .line 442
    .end local v4           #instrument:Lcom/google/android/finsky/billing/Instrument;
    .end local v6           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    :cond_31
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 443
    .local v2, eligibleInstrumentFamily:I
    if-ne v2, p3, :cond_39

    .line 444
    new-instance v6, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    invoke-direct {v6, p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;I)V

    .line 446
    .local v6, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 448
    if-nez v1, :cond_39

    invoke-virtual {v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 449
    move-object v1, v6

    goto :goto_39

    .line 454
    .end local v2           #eligibleInstrumentFamily:I
    .end local v6           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    :cond_5d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_61
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/billing/Instrument;

    .line 455
    .restart local v4       #instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v4}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentFamily()I

    move-result v7

    if-eq v7, p3, :cond_61

    .line 456
    new-instance v6, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;

    invoke-direct {v6, p0, v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 458
    .local v6, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 460
    if-eqz v0, :cond_61

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 461
    move-object v1, v6

    goto :goto_61

    .line 466
    .end local v4           #instrument:Lcom/google/android/finsky/billing/Instrument;
    .end local v6           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
    :cond_85
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8d
    :goto_8d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 467
    .restart local v2       #eligibleInstrumentFamily:I
    if-eq v2, p3, :cond_8d

    .line 468
    new-instance v6, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    invoke-direct {v6, p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;I)V

    .line 470
    .local v6, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 471
    if-nez v1, :cond_8d

    .line 472
    move-object v1, v6

    goto :goto_8d

    .line 477
    .end local v2           #eligibleInstrumentFamily:I
    .end local v6           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    :cond_ab
    if-eqz v1, :cond_b2

    .line 478
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    .line 480
    :goto_b1
    return v7

    :cond_b2
    const/4 v7, -0x1

    goto :goto_b1
.end method

.method private initPurchaseSpinnerDimens()V
    .registers 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 302
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerLeftPadding:I

    .line 304
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerRightPadding:I

    .line 306
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionTopPadding:I

    .line 308
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionRightPadding:I

    .line 310
    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionBottomPadding:I

    .line 312
    return-void
.end method

.method private resetPriceTable()V
    .registers 7

    .prologue
    .line 488
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 489
    .local v1, dynamicRows:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_27

    .line 490
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->TAG_DYNAMIC_ROW:Ljava/lang/Integer;

    if-ne v4, v5, :cond_24

    .line 491
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 494
    :cond_27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 495
    .local v0, dynamicRow:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_2b

    .line 497
    .end local v0           #dynamicRow:Landroid/view/View;
    :cond_3d
    return-void
.end method

.method private setSpinnerSelection(I)V
    .registers 3
    .parameter "i"

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mIsUserInitiatedSelection:Z

    .line 403
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 404
    return-void
.end method

.method private setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZZ)V
    .registers 10
    .parameter "lineItem"
    .parameter "row"
    .parameter "isTotal"
    .parameter "showDropdown"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 568
    const v2, 0x7f0801a7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 569
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const v2, 0x7f0801a8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 571
    .local v1, price:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 572
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 575
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_3d
    if-eqz p3, :cond_45

    .line 578
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 579
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 581
    :cond_45
    if-nez p3, :cond_4f

    if-nez p4, :cond_4f

    .line 584
    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 586
    :cond_4f
    return-void
.end method

.method private setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .registers 3
    .parameter
    .parameter "total"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 501
    return-void
.end method

.method private setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .registers 13
    .parameter
    .parameter "total"
    .parameter "summary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 505
    iget-boolean v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    if-eqz v5, :cond_5e

    .line 506
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 507
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 509
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->resetPriceTable()V

    .line 510
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$2;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 522
    .local v2, rowClickListener:Landroid/view/View$OnClickListener;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_20
    if-ltz v0, :cond_4e

    .line 523
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0400cd

    iget-object v8, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 525
    .local v1, row:Landroid/view/View;
    sget-object v5, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->TAG_DYNAMIC_ROW:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 526
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {p0, v5, v1, v6, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZZ)V

    .line 527
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v1, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 522
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 532
    .end local v1           #row:Landroid/view/View;
    :cond_4e
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    const v7, 0x7f0801a6

    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 533
    .local v4, totalRow:Landroid/view/View;
    invoke-direct {p0, p2, v4, v3, v6}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZZ)V

    .line 534
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    .end local v0           #i:I
    .end local v2           #rowClickListener:Landroid/view/View$OnClickListener;
    .end local v4           #totalRow:Landroid/view/View;
    :goto_5d
    return-void

    .line 536
    :cond_5e
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 537
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 541
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_86

    .line 542
    .local v3, showLineItems:Z
    :goto_6f
    if-eqz v3, :cond_88

    .line 543
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    new-instance v7, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    :goto_7b
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 563
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-direct {p0, p3, v5, v6, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceRow(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Landroid/view/View;ZZ)V

    goto :goto_5d

    .end local v3           #showLineItems:Z
    :cond_86
    move v3, v6

    .line 541
    goto :goto_6f

    .line 559
    .restart local v3       #showLineItems:Z
    :cond_88
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7b
.end method

.method private updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V
    .registers 8
    .parameter "instrument"

    .prologue
    .line 589
    if-eqz p1, :cond_2c

    .line 590
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v2

    .line 591
    .local v2, option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasTotal()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 592
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 593
    .local v1, lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 594
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSubItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getTotal()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSummary()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 609
    .end local v1           #lineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    .end local v2           #option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    :cond_2b
    :goto_2b
    return-void

    .line 598
    :cond_2c
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v4, v5, :cond_2b

    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 600
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    .line 601
    .local v0, item:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    new-instance v3, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 603
    .local v3, total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setAmount(Lcom/google/android/finsky/remoting/protos/Buy$Money;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 604
    :cond_5a
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 606
    :cond_67
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0701a3

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 607
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    goto :goto_2b
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/CheckoutPurchase;)V
    .registers 12
    .parameter "parent"
    .parameter "checkoutPurchase"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 315
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    .line 316
    const v2, 0x7f0801be

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    .line 317
    const v2, 0x7f0800d5

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    .line 318
    const v2, 0x7f0801c1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    .line 319
    const v2, 0x7f0801c0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    .line 320
    const v2, 0x7f0801bf

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    .line 321
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-direct {v2, p0, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Landroid/widget/Spinner;)V

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    .line 322
    const v2, 0x7f0801bd

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    .line 324
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    if-eqz v2, :cond_cd

    .line 325
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v2

    if-nez v2, :cond_66

    .line 327
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 328
    iput-boolean v7, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 329
    invoke-direct {p0, v8}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V

    .line 380
    :goto_65
    return-void

    .line 330
    :cond_66
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/CheckoutPurchase;->hasAddInstrumentHintText()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 331
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAddInstrumentHintText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iput-boolean v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 335
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 336
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;

    invoke-virtual {v2, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 337
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_65

    .line 339
    :cond_95
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iput-boolean v7, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    .line 342
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    const/4 v3, 0x2

    invoke-direct {p0, v2, p2, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->addInstrumentsWithSpecificFamilyFirst(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;Lcom/google/android/finsky/billing/CheckoutPurchase;I)I

    move-result v1

    .line 346
    .local v1, position:I
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 349
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 366
    if-gez v1, :cond_c6

    .line 367
    const/4 v1, 0x0

    .line 369
    :cond_c6
    invoke-direct {p0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->showInstrumentAndPrice()V

    goto :goto_65

    .line 375
    .end local v1           #position:I
    :cond_cd
    new-instance v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-direct {v0, p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Landroid/widget/Spinner;)V

    .line 376
    .local v0, dummyAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
    new-instance v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;

    invoke-direct {v2, p0, v8}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->add(Ljava/lang/Object;)V

    .line 377
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 378
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->switchToLoading(I)V

    goto :goto_65
.end method

.method public init(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/billing/InstrumentFactory;Landroid/os/Bundle;)V
    .registers 5
    .parameter "activity"
    .parameter "instrumentFactory"
    .parameter "savedState"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    .line 291
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 292
    if-eqz p3, :cond_15

    const-string v0, "expanded"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    .line 293
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->initPurchaseSpinnerDimens()V

    .line 294
    return-void

    .line 292
    :cond_15
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 297
    const-string v0, "expanded"

    iget-boolean v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    return-void
.end method

.method public selectAddInstrument(I)V
    .registers 6
    .parameter "instrumentFamily"

    .prologue
    .line 410
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 411
    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 412
    .local v2, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    instance-of v3, v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    if-eqz v3, :cond_22

    move-object v0, v2

    .line 413
    check-cast v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;

    .line 414
    .local v0, addInstrumentItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mFamilyType:I
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->access$1200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;)I

    move-result v3

    if-ne v3, p1, :cond_22

    .line 415
    invoke-direct {p0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    .line 420
    .end local v0           #addInstrumentItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
    .end local v2           #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    :cond_21
    return-void

    .line 410
    .restart local v2       #item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public selectInstrument(Ljava/lang/String;)V
    .registers 6
    .parameter "instrumentId"

    .prologue
    const/4 v3, 0x0

    .line 386
    if-nez p1, :cond_7

    .line 387
    invoke-direct {p0, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    .line 399
    :goto_6
    return-void

    .line 390
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 391
    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentSpinnerAdapter:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 392
    .local v1, selectorItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 394
    invoke-direct {p0, v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    goto :goto_6

    .line 390
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 398
    .end local v1           #selectorItem:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    :cond_33
    invoke-direct {p0, v3}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setSpinnerSelection(I)V

    goto :goto_6
.end method

.method public showInstrumentAndPrice()V
    .registers 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mShowInstrumentAndPrice:Z

    if-eqz v0, :cond_11

    .line 632
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    :cond_11
    return-void
.end method

.method public switchToFreeUi()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public switchToLoading(I)V
    .registers 5
    .parameter "loadingLabel"

    .prologue
    .line 617
    if-ltz p1, :cond_10

    .line 618
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    const v2, 0x7f0801c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 619
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 621
    .end local v0           #label:Landroid/widget/TextView;
    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mLoadingIndicator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentAndPrice:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mAddInstrumentHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    return-void
.end method
