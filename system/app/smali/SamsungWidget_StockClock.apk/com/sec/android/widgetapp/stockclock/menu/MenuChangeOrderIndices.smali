.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;
.super Landroid/app/Activity;
.source "MenuChangeOrderIndices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;
    }
.end annotation


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mBMove:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottom:I

.field mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mCancel_Button:Landroid/widget/Button;

.field private mCtx:Landroid/content/Context;

.field mCurrentY:I

.field mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mDone_Button:Landroid/widget/Button;

.field private mDragView:Landroid/view/View;

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
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

.field private mMovingItemIndex:I

.field private mNeedScrollDown:Z

.field private mNeedScrollUp:Z

.field private mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

.field private mOrgItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
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
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation
.end field

.field private onItemSelect:Z

.field runnableDown:Ljava/lang/Runnable;

.field runnableUp:Ljava/lang/Runnable;

.field scrollHandler:Landroid/os/Handler;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->keyBuf:Ljava/lang/String;

    .line 77
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mappingKey:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    .line 85
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogEdit:Landroid/widget/EditText;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTempRect:Landroid/graphics/Rect;

    .line 104
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 106
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mPopupDialog:Landroid/app/Dialog;

    .line 112
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mIsLastScroll:Z

    .line 115
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->toast:Landroid/widget/Toast;

    .line 116
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onItemSelect:Z

    .line 117
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBMove:Z

    .line 538
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$10;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$10;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 803
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$11;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$11;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 881
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$12;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1043
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->scrollHandler:Landroid/os/Handler;

    .line 1044
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->runnableUp:Ljava/lang/Runnable;

    .line 1069
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$14;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$14;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->runnableDown:Ljava/lang/Runnable;

    .line 1208
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$15;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private AdjustBound(I)V
    .registers 3
    .parameter "DragPoint"

    .prologue
    .line 857
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    .line 858
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    .line 859
    return-void
.end method

.method private RefreshListView()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 667
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mItemCount:I

    add-int/lit8 v3, v4, -0x1

    .line 669
    .local v3, listMaxValue:I
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    if-gez v4, :cond_e

    .line 671
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    move v4, v5

    .line 719
    :goto_d
    return v4

    .line 674
    :cond_e
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    if-le v4, v3, :cond_16

    .line 676
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    move v4, v5

    .line 677
    goto :goto_d

    .line 680
    :cond_16
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 681
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;-><init>()V

    .line 683
    .local v0, emptyItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    const/4 v2, 0x0

    .line 684
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mItemCount:I

    if-ge v2, v4, :cond_5a

    .line 686
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    if-ne v4, v1, :cond_36

    .line 688
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    if-eq v4, v3, :cond_33

    .line 689
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 693
    :cond_36
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 695
    add-int/lit8 v2, v2, 0x1

    .line 698
    :cond_48
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mItemCount:I

    if-ge v2, v4, :cond_57

    .line 700
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 707
    :cond_5a
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mIsLastScroll:Z

    .line 708
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListMaxCount:I

    .line 709
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    if-ne v4, v3, :cond_83

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListMaxCount:I

    if-lt v3, v4, :cond_83

    .line 711
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItemIndex:I

    if-eq v4, v3, :cond_78

    .line 713
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_78
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mIsLastScroll:Z

    .line 716
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCurrentY:I

    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mLastY:I

    .line 717
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mLastY:I

    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->AdjustBound(I)V

    :cond_83
    move v4, v6

    .line 719
    goto :goto_d
.end method

.method private RefreshListViewAll()V
    .registers 4

    .prologue
    .line 724
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    if-eqz v1, :cond_34

    .line 726
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 727
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mItemCount:I

    if-ge v0, v1, :cond_28

    .line 729
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    if-ne v0, v1, :cond_1c

    .line 731
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 735
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 739
    :cond_28
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 740
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 742
    .end local v0           #i:I
    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 743
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 72
    sget v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    sput p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogState:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItemIndex:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->AdjustBound(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Landroid/graphics/Bitmap;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->startDragging(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->processDragMove(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->RefreshListView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setButtonFocus()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBMove:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBMove:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollUp:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getTopScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->scrollUp()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollDown:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getBottomScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->scrollDown()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mItemCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setSLog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/view/View$OnLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onItemSelect:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->onItemSelect:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finalizeDrag()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    return p1
.end method

.method private dragView(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getMinY()I

    move-result v1

    .line 1183
    .local v1, min:I
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getMaxY()I

    move-result v0

    .line 1185
    .local v0, max:I
    if-ge p2, v1, :cond_1e

    .line 1187
    move p2, v1

    .line 1194
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1195
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    return-void

    .line 1189
    :cond_1e
    if-le p2, v0, :cond_b

    .line 1191
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

    .line 987
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 989
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->stopDragging()V

    .line 990
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->RefreshListViewAll()V

    .line 991
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->notifyDataSetChanged()V

    .line 992
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 994
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_2d

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_36

    .line 995
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1010
    :goto_32
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setButtonFocus()V

    .line 1012
    :cond_35
    return-void

    .line 998
    :cond_36
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_32

    .line 1003
    :cond_3c
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_48

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_4e

    .line 1004
    :cond_48
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_32

    .line 1007
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_32
.end method

.method private getBottomScrollMargin()I
    .registers 3

    .prologue
    .line 1035
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private getMaxY()I
    .registers 4

    .prologue
    const v2, 0x7f0b0120

    .line 1022
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_15

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_34

    .line 1023
    :cond_15
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1024
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1028
    :goto_33
    return v0

    .line 1027
    :cond_34
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 1028
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_33
.end method

.method private getMinY()I
    .registers 4

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getMaxY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    add-int v0, v1, v2

    .line 1017
    .local v0, top:I
    return v0
.end method

.method private getTopScrollMargin()I
    .registers 3

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getMinY()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

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

    .line 1098
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    .line 1099
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->RefreshListView()Z

    move-result v0

    .line 1100
    .local v0, result:Z
    if-eqz v0, :cond_37

    .line 1102
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->notifyDataSetChanged()V

    .line 1103
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1105
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_2f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_38

    .line 1106
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1121
    :goto_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setButtonFocus()V

    .line 1123
    :cond_37
    return v0

    .line 1109
    :cond_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34

    .line 1114
    :cond_3e
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_4a

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_50

    .line 1115
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34

    .line 1118
    :cond_50
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

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

    .line 1140
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I

    .line 1141
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->RefreshListView()Z

    move-result v0

    .line 1142
    .local v0, result:Z
    if-eqz v0, :cond_37

    .line 1144
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->notifyDataSetChanged()V

    .line 1145
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1147
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_2f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_38

    .line 1148
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1163
    :goto_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setButtonFocus()V

    .line 1165
    :cond_37
    return v0

    .line 1151
    :cond_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34

    .line 1156
    :cond_3e
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_4a

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_50

    .line 1157
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34

    .line 1160
    :cond_50
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

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

    .line 915
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getMaxY()I

    move-result v1

    .line 917
    .local v1, max:I
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    if-ge p2, v3, :cond_21

    .line 919
    const/4 p2, 0x0

    .line 925
    :cond_e
    :goto_e
    iput p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCurrentY:I

    .line 926
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->dragView(II)V

    .line 928
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mIsLastScroll:Z

    if-ne v3, v5, :cond_25

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mLastY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_25

    .line 983
    :cond_20
    :goto_20
    return-void

    .line 921
    :cond_21
    if-le p2, v1, :cond_e

    .line 923
    move p2, v1

    goto :goto_e

    .line 933
    :cond_25
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    if-ge p2, v3, :cond_5d

    .line 935
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 936
    .local v2, moveCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    if-ge v0, v2, :cond_9b

    .line 938
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->moveUp()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 940
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    .line 941
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    .line 942
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    if-ge v3, v4, :cond_5a

    .line 944
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    .line 945
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    .line 936
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 950
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_5d
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    if-le p2, v3, :cond_9b

    .line 952
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 953
    .restart local v2       #moveCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6b
    if-ge v0, v2, :cond_9b

    .line 955
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->moveDown()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 957
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    .line 958
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    .line 959
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_98

    .line 961
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getMaxY()I

    move-result v3

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    .line 962
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBottom:I

    .line 953
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 968
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_9b
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getTopScrollMargin()I

    move-result v3

    if-le p2, v3, :cond_b3

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt p2, v3, :cond_b3

    .line 970
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollDown:Z

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollUp:Z

    .line 973
    :cond_b3
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getTopScrollMargin()I

    move-result v3

    if-ge p2, v3, :cond_c8

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollUp:Z

    if-nez v3, :cond_c8

    .line 975
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollUp:Z

    .line 976
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->runnableUp:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20

    .line 978
    :cond_c8
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_20

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollDown:Z

    if-nez v3, :cond_20

    .line 980
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollDown:Z

    .line 981
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->runnableDown:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20
.end method

.method private scrollDown()V
    .registers 4

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1129
    .local v0, fv:I
    add-int/lit8 v0, v0, 0x1

    .line 1131
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->moveDown()Z

    .line 1133
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1134
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1136
    return-void
.end method

.method private scrollUp()V
    .registers 4

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1171
    .local v0, fv:I
    add-int/lit8 v0, v0, -0x1

    .line 1173
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->moveUp()Z

    .line 1175
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1176
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1178
    return-void
.end method

.method private setButtonFocus()V
    .registers 6

    .prologue
    const v4, 0x7f0b0122

    const v3, 0x7f0b0121

    const v2, 0x7f0b011f

    .line 224
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_1b

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_61

    .line 225
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 226
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 260
    :goto_4b
    return-void

    .line 236
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto :goto_4b

    .line 243
    :cond_61
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 244
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusRightId(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusDownId(I)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    goto :goto_4b

    .line 254
    :cond_92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    goto :goto_4b
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 389
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->keyBuf:Ljava/lang/String;

    .line 397
    :goto_18
    return-void

    .line 395
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 406
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 407
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 412
    return-void
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .registers 7
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 863
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 864
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 865
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 866
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v2, p2, 0xa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 867
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 868
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 869
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 871
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 872
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 873
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 874
    .local v0, v:Landroid/widget/ImageView;
    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 875
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 876
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCtx:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowManager:Landroid/view/WindowManager;

    .line 877
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    .line 879
    return-void
.end method

.method private stopDragging()V
    .registers 3

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 1202
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollUp:Z

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollDown:Z

    .line 1206
    :cond_13
    return-void
.end method


# virtual methods
.method public cancelRun()V
    .registers 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finish()V

    .line 284
    return-void
.end method

.method public cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_11

    .line 580
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    .line 585
    :cond_11
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCtx:Landroid/content/Context;

    .line 587
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    if-eqz v0, :cond_1e

    .line 589
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;->clear()V

    .line 590
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    .line 593
    :cond_1e
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTempRect:Landroid/graphics/Rect;

    .line 594
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDragView:Landroid/view/View;

    .line 596
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowManager:Landroid/view/WindowManager;

    .line 597
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 599
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_31

    .line 600
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 601
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 604
    :cond_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 606
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 607
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    .line 610
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 612
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 616
    :cond_47
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    .line 618
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 619
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    .line 622
    :cond_52
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_5d

    .line 623
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 624
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->toast:Landroid/widget/Toast;

    .line 627
    :cond_5d
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    .line 628
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogEdit:Landroid/widget/EditText;

    .line 630
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    .line 632
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 633
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mPopupDialog:Landroid/app/Dialog;

    .line 634
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;

    .line 636
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_7b

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_92

    .line 637
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    if-eqz v0, :cond_86

    .line 638
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    .line 641
    :cond_86
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    if-eqz v0, :cond_91

    .line 642
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    .line 657
    :cond_91
    :goto_91
    return-void

    .line 647
    :cond_92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_9d

    .line 648
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 651
    :cond_9d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_91

    .line 652
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    goto :goto_91
.end method

.method public doneRun()V
    .registers 6

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setResult(ILandroid/content/Intent;)V

    .line 290
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 292
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateChangeOrderIndices(Ljava/util/ArrayList;)I

    move-result v2

    .line 293
    .local v2, result:I
    const/16 v3, -0x5a

    if-ne v2, v3, :cond_27

    .line 295
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setResult(I)V

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finish()V

    .line 342
    .end local v2           #result:I
    :cond_26
    :goto_26
    return-void

    .line 298
    .restart local v2       #result:I
    :cond_27
    if-nez v2, :cond_26

    .line 312
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 315
    .local v1, mHandler:Landroid/os/Handler;
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$7;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$7;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finish()V

    goto :goto_26

    .line 340
    .end local v1           #mHandler:Landroid/os/Handler;
    .end local v2           #result:I
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finish()V

    goto :goto_26
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finalizeDrag()V

    .line 662
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 663
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0b0122

    const v6, 0x7f0b0121

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 126
    const-string v0, "Tag"

    const-string v1, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setContentView(I)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setActivityVisibleState(Z)V

    .line 130
    iput-object p0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCtx:Landroid/content/Context;

    .line 131
    const v0, 0x7f0b011f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    .line 132
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 134
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    .line 135
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mItemCount:I

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 137
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030032

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_8f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_e3

    .line 142
    :cond_8f
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    .line 143
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDone_Button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancel_Button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setButtonFocus()V

    .line 178
    :goto_c0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mTouchHandle:Landroid/os/Handler;

    .line 180
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$OrderItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$5;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$5;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$6;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 221
    return-void

    .line 160
    :cond_e3
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 161
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 162
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$3;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$4;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setButtonFocus()V

    goto :goto_c0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_10e

    .line 534
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 419
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 420
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    .line 423
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 424
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    .line 425
    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogEdit:Landroid/widget/EditText;

    .line 426
    sget v2, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogState:I

    .line 428
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 429
    sget v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 452
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$9;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$9;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$8;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$8;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 433
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 439
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 445
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 417
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 429
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
    .line 570
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 571
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 572
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 574
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->cleanResource()V

    .line 575
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 266
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

    .line 269
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 271
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 273
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->showDialog(I)V

    .line 274
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 278
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 359
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 361
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setActivityVisibleState(Z)V

    .line 362
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->finalizeDrag()V

    .line 364
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    .line 368
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    .line 373
    :cond_18
    :goto_18
    return-void

    .line 370
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 380
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->setActivityVisibleState(Z)V

    .line 383
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mIsVisible:Z

    .line 352
    return-void
.end method
