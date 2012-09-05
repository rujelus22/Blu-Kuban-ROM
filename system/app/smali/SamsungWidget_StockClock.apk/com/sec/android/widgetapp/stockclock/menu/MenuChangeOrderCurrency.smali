.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;
.super Landroid/app/Activity;
.source "MenuChangeOrderCurrency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;
    }
.end annotation


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private dbHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

.field private mBMove:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottom:I

.field mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mCancel_Button:Landroid/widget/Button;

.field private mCountryName:[Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field mCurrentY:I

.field mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mDone_Button:Landroid/widget/Button;

.field private mDragView:Landroid/view/View;

.field private mFalgIDs:[I

.field private mHeight:I

.field mIsLastScroll:Z

.field mIsVisible:Z

.field private mItemCount:I

.field mLastY:I

.field private mListMaxCount:I

.field private mListView:Landroid/widget/ListView;

.field private mMoveResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

.field private mMovingItemIndex:I

.field private mNeedScrollDown:Z

.field private mNeedScrollUp:Z

.field private mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

.field private mOrgItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupDialog:Landroid/app/Dialog;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mTempRect:Landroid/graphics/Rect;

.field private mToPosition:I

.field private mTop:I

.field private mTouchHandle:Landroid/os/Handler;

.field mTouchRunnable:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWorkingArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation
.end field

.field private onItemSelect:Z

.field runnableDown:Ljava/lang/Runnable;

.field runnableUp:Ljava/lang/Runnable;

.field scrollHandler:Landroid/os/Handler;

.field public toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->keyBuf:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mappingKey:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    .line 83
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogEdit:Landroid/widget/EditText;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    .line 104
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mPopupDialog:Landroid/app/Dialog;

    .line 110
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mIsLastScroll:Z

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "USD"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "JPY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GBP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AUD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KRW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCountryName:[Ljava/lang/String;

    .line 115
    new-array v0, v4, [I

    fill-array-data v0, :array_82

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mFalgIDs:[I

    .line 118
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z

    .line 120
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBMove:Z

    .line 512
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$9;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$9;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 785
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$10;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 863
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$11;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1028
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->scrollHandler:Landroid/os/Handler;

    .line 1029
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$12;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->runnableUp:Ljava/lang/Runnable;

    .line 1054
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->runnableDown:Ljava/lang/Runnable;

    .line 1194
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$14;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$14;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTouchRunnable:Ljava/lang/Runnable;

    return-void

    .line 115
    :array_82
    .array-data 0x4
        0x60t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private AdjustBound(I)V
    .registers 3
    .parameter "DragPoint"

    .prologue
    .line 839
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    .line 840
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    .line 841
    return-void
.end method

.method private RefreshListView()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 634
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mItemCount:I

    add-int/lit8 v3, v4, -0x1

    .line 636
    .local v3, listMaxValue:I
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    if-gez v4, :cond_e

    .line 638
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    move v4, v5

    .line 686
    :goto_d
    return v4

    .line 641
    :cond_e
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    if-le v4, v3, :cond_16

    .line 643
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    move v4, v5

    .line 644
    goto :goto_d

    .line 647
    :cond_16
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 648
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;-><init>()V

    .line 650
    .local v0, emptyItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    const/4 v2, 0x0

    .line 651
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mItemCount:I

    if-ge v2, v4, :cond_5a

    .line 653
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    if-ne v4, v1, :cond_36

    .line 655
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    if-eq v4, v3, :cond_33

    .line 656
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 660
    :cond_36
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 662
    add-int/lit8 v2, v2, 0x1

    .line 665
    :cond_48
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mItemCount:I

    if-ge v2, v4, :cond_57

    .line 667
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 674
    :cond_5a
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mIsLastScroll:Z

    .line 675
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListMaxCount:I

    .line 676
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    if-ne v4, v3, :cond_83

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListMaxCount:I

    if-lt v3, v4, :cond_83

    .line 678
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItemIndex:I

    if-eq v4, v3, :cond_78

    .line 680
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_78
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mIsLastScroll:Z

    .line 683
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCurrentY:I

    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mLastY:I

    .line 684
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mLastY:I

    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->AdjustBound(I)V

    :cond_83
    move v4, v6

    .line 686
    goto :goto_d
.end method

.method private RefreshListViewAll()V
    .registers 4

    .prologue
    .line 691
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    if-eqz v1, :cond_34

    .line 693
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 694
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mItemCount:I

    if-ge v0, v1, :cond_28

    .line 696
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    if-ne v0, v1, :cond_1c

    .line 698
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 702
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 706
    :cond_28
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 707
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 709
    .end local v0           #i:I
    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    .line 710
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 70
    sget v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCountryName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    sput p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mFalgIDs:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    return p1
.end method

.method static synthetic access$1302(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItemIndex:I

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;)Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->AdjustBound(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Landroid/graphics/Bitmap;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->startDragging(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->processDragMove(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->RefreshListView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setButtonFocus()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBMove:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBMove:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollUp:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getTopScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->scrollUp()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollDown:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getBottomScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->scrollDown()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mItemCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setSLog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/view/View$OnLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->onItemSelect:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finalizeDrag()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTouchHandle:Landroid/os/Handler;

    return-object v0
.end method

.method private dragView(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getMinY()I

    move-result v1

    .line 1169
    .local v1, min:I
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getMaxY()I

    move-result v0

    .line 1171
    .local v0, max:I
    if-ge p2, v1, :cond_1e

    .line 1173
    move p2, v1

    .line 1180
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1181
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    return-void

    .line 1175
    :cond_1e
    if-le p2, v0, :cond_b

    .line 1177
    move p2, v0

    goto :goto_b
.end method

.method private finalizeDrag()V
    .registers 7

    .prologue
    const v5, 0xfa000

    const v4, 0xe1000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 972
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 974
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->stopDragging()V

    .line 975
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->RefreshListViewAll()V

    .line 976
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->notifyDataSetChanged()V

    .line 977
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 979
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_2d

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_36

    .line 980
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 995
    :goto_32
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setButtonFocus()V

    .line 997
    :cond_35
    return-void

    .line 983
    :cond_36
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_32

    .line 988
    :cond_3c
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_48

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_4e

    .line 989
    :cond_48
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_32

    .line 992
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_32
.end method

.method private getBottomScrollMargin()I
    .registers 3

    .prologue
    .line 1020
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private getMaxY()I
    .registers 4

    .prologue
    const v2, 0x7f0b0120

    .line 1007
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_15

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_34

    .line 1008
    :cond_15
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1013
    :goto_33
    return v0

    .line 1012
    :cond_34
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 1013
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_33
.end method

.method private getMinY()I
    .registers 4

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getMaxY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    add-int v0, v1, v2

    .line 1002
    .local v0, top:I
    return v0
.end method

.method private getTopScrollMargin()I
    .registers 3

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getMinY()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private moveDown()Z
    .registers 8

    .prologue
    const v6, 0xfa000

    const v5, 0xe1000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1083
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    .line 1084
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->RefreshListView()Z

    move-result v0

    .line 1085
    .local v0, result:Z
    if-eqz v0, :cond_37

    .line 1087
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->notifyDataSetChanged()V

    .line 1088
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1090
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_2f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_38

    .line 1091
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1107
    :goto_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setButtonFocus()V

    .line 1109
    :cond_37
    return v0

    .line 1094
    :cond_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34

    .line 1100
    :cond_3e
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_4a

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_50

    .line 1101
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34

    .line 1104
    :cond_50
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34
.end method

.method private moveUp()Z
    .registers 8

    .prologue
    const v6, 0xfa000

    const v5, 0xe1000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1126
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I

    .line 1127
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->RefreshListView()Z

    move-result v0

    .line 1128
    .local v0, result:Z
    if-eqz v0, :cond_37

    .line 1130
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->notifyDataSetChanged()V

    .line 1131
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1133
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_2f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_38

    .line 1134
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1149
    :goto_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setButtonFocus()V

    .line 1151
    :cond_37
    return v0

    .line 1137
    :cond_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34

    .line 1142
    :cond_3e
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_4a

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_50

    .line 1143
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34

    .line 1146
    :cond_50
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34
.end method

.method private processDragMove(II)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x1

    .line 900
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getMaxY()I

    move-result v1

    .line 902
    .local v1, max:I
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    if-ge p2, v3, :cond_21

    .line 904
    const/4 p2, 0x0

    .line 910
    :cond_e
    :goto_e
    iput p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCurrentY:I

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->dragView(II)V

    .line 913
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mIsLastScroll:Z

    if-ne v3, v5, :cond_25

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mLastY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_25

    .line 968
    :cond_20
    :goto_20
    return-void

    .line 906
    :cond_21
    if-le p2, v1, :cond_e

    .line 908
    move p2, v1

    goto :goto_e

    .line 918
    :cond_25
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    if-ge p2, v3, :cond_5d

    .line 920
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 921
    .local v2, moveCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    if-ge v0, v2, :cond_9b

    .line 923
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->moveUp()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 925
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    .line 926
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    .line 927
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    if-ge v3, v4, :cond_5a

    .line 929
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    .line 930
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    .line 921
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 935
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_5d
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    if-le p2, v3, :cond_9b

    .line 937
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 938
    .restart local v2       #moveCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6b
    if-ge v0, v2, :cond_9b

    .line 940
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->moveDown()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 942
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    .line 943
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    .line 944
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_98

    .line 946
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getMaxY()I

    move-result v3

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    .line 947
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBottom:I

    .line 938
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 953
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_9b
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getTopScrollMargin()I

    move-result v3

    if-le p2, v3, :cond_b3

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt p2, v3, :cond_b3

    .line 955
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollDown:Z

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollUp:Z

    .line 958
    :cond_b3
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getTopScrollMargin()I

    move-result v3

    if-ge p2, v3, :cond_c8

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollUp:Z

    if-nez v3, :cond_c8

    .line 960
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollUp:Z

    .line 961
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->runnableUp:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20

    .line 963
    :cond_c8
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_20

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollDown:Z

    if-nez v3, :cond_20

    .line 965
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollDown:Z

    .line 966
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->runnableDown:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20
.end method

.method private scrollDown()V
    .registers 4

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1115
    .local v0, fv:I
    add-int/lit8 v0, v0, 0x1

    .line 1117
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->moveDown()Z

    .line 1119
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1120
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1122
    return-void
.end method

.method private scrollUp()V
    .registers 4

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1157
    .local v0, fv:I
    add-int/lit8 v0, v0, -0x1

    .line 1159
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->moveUp()Z

    .line 1161
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1162
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1164
    return-void
.end method

.method private setButtonFocus()V
    .registers 6

    .prologue
    const v4, 0x7f0b0122

    const v3, 0x7f0b0121

    const v2, 0x7f0b011f

    .line 279
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_1b

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_61

    .line 280
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 281
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 315
    :goto_4b
    return-void

    .line 291
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto :goto_4b

    .line 298
    :cond_61
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 299
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusRightId(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusDownId(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    goto :goto_4b

    .line 309
    :cond_92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    goto :goto_4b
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 362
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->keyBuf:Ljava/lang/String;

    .line 370
    :goto_18
    return-void

    .line 368
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 380
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 381
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 386
    return-void
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 845
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 846
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 847
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 848
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v1, p2, 0xa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 849
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 850
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 851
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 853
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 854
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 855
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 856
    const v0, -0xff0001

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 857
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 858
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCtx:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowManager:Landroid/view/WindowManager;

    .line 859
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    .line 861
    return-void
.end method

.method private stopDragging()V
    .registers 3

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 1188
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollUp:Z

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollDown:Z

    .line 1192
    :cond_13
    return-void
.end method


# virtual methods
.method public cancelRun()V
    .registers 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finish()V

    .line 231
    return-void
.end method

.method public cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_11

    .line 554
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 556
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    .line 560
    :cond_11
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCtx:Landroid/content/Context;

    .line 562
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    if-eqz v0, :cond_1e

    .line 564
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;->clear()V

    .line 565
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    .line 568
    :cond_1e
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTempRect:Landroid/graphics/Rect;

    .line 569
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDragView:Landroid/view/View;

    .line 571
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowManager:Landroid/view/WindowManager;

    .line 572
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 574
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    if-eqz v0, :cond_31

    .line 575
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->close()V

    .line 576
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    .line 579
    :cond_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 581
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 582
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    .line 585
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 587
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 588
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 591
    :cond_47
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    .line 593
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    .line 597
    :cond_52
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_5d

    .line 598
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 599
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->toast:Landroid/widget/Toast;

    .line 602
    :cond_5d
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    .line 603
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogEdit:Landroid/widget/EditText;

    .line 605
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    .line 607
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    .line 608
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mPopupDialog:Landroid/app/Dialog;

    .line 609
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTouchHandle:Landroid/os/Handler;

    .line 611
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_7b

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_87

    .line 612
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    if-eqz v0, :cond_86

    .line 613
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    .line 624
    :cond_86
    :goto_86
    return-void

    .line 618
    :cond_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_86

    .line 619
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    goto :goto_86
.end method

.method public doneRun()V
    .registers 3

    .prologue
    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 250
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finish()V

    .line 276
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finalizeDrag()V

    .line 629
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 630
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0b0122

    const v7, 0x7f0b0121

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 129
    const-string v1, "Tag"

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setContentView(I)V

    .line 133
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setActivityVisibleState(Z)V

    .line 134
    iput-object p0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCtx:Landroid/content/Context;

    .line 135
    const v1, 0x7f0b011f

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    .line 136
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    .line 140
    :try_start_41
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->loadArrayListByFile(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4f} :catch_df

    .line 148
    :goto_4f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mItemCount:I

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 150
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030022

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    .line 153
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0xfa000

    if-eq v1, v2, :cond_95

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    const v2, 0xe1000

    if-ne v1, v2, :cond_f3

    .line 155
    :cond_95
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    .line 156
    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    .line 157
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDone_Button:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancel_Button:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$2;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setButtonFocus()V

    .line 193
    :goto_c6
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$OrderItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mTouchHandle:Landroid/os/Handler;

    .line 197
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$5;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$5;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 208
    return-void

    .line 142
    :catch_df
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    const-string v1, ""

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v1, -0x5a

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finish()V

    goto/16 :goto_4f

    .line 173
    .end local v0           #e:Ljava/io/IOException;
    :cond_f3
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 174
    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 175
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setButtonFocus()V

    goto :goto_c6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 391
    packed-switch p1, :pswitch_data_10e

    .line 508
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 393
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 394
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    .line 397
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 398
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    .line 399
    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogEdit:Landroid/widget/EditText;

    .line 400
    sget v2, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogState:I

    .line 402
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 403
    sget v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 426
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$8;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$8;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$7;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$7;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 407
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 413
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 419
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 391
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 403
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 544
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 545
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 546
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 548
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->cleanResource()V

    .line 549
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 213
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 218
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 220
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->showDialog(I)V

    .line 221
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 225
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 334
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setActivityVisibleState(Z)V

    .line 335
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->finalizeDrag()V

    .line 337
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    .line 341
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    .line 346
    :cond_18
    :goto_18
    return-void

    .line 343
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setActivityVisibleState(Z)V

    .line 356
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mIsVisible:Z

    .line 325
    return-void
.end method
