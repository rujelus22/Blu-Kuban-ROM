.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;
.super Landroid/app/Activity;
.source "MenuChangeOrders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;
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

.field mHandler:Landroid/os/Handler;

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
            "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

.field private mMovingItemIndex:I

.field private mNeedScrollDown:Z

.field private mNeedScrollUp:Z

.field private mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

.field private mOrgItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
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
            "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
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

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    .line 78
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mappingKey:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    .line 85
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    .line 86
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogEdit:Landroid/widget/EditText;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;

    .line 105
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    .line 107
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    .line 113
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    .line 116
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->toast:Landroid/widget/Toast;

    .line 117
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z

    .line 118
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBMove:Z

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHandler:Landroid/os/Handler;

    .line 505
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$10;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$10;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 804
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$11;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 880
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$12;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1042
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    .line 1043
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$13;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$13;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->runnableUp:Ljava/lang/Runnable;

    .line 1068
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->runnableDown:Ljava/lang/Runnable;

    .line 1207
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$15;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private AdjustBound(I)V
    .registers 3
    .parameter "DragPoint"

    .prologue
    .line 856
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    .line 857
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    .line 858
    return-void
.end method

.method private RefreshListView()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 668
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mItemCount:I

    add-int/lit8 v3, v4, -0x1

    .line 670
    .local v3, listMaxValue:I
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    if-gez v4, :cond_e

    .line 672
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    move v4, v5

    .line 720
    :goto_d
    return v4

    .line 675
    :cond_e
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    if-le v4, v3, :cond_16

    .line 677
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    move v4, v5

    .line 678
    goto :goto_d

    .line 681
    :cond_16
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 682
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    const-string v4, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-direct {v0, v4, v7, v8, v9}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .local v0, emptyItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;
    const/4 v2, 0x0

    .line 685
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mItemCount:I

    if-ge v2, v4, :cond_62

    .line 687
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    if-ne v4, v1, :cond_3e

    .line 689
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    if-eq v4, v3, :cond_3b

    .line 690
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 694
    :cond_3e
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 696
    add-int/lit8 v2, v2, 0x1

    .line 699
    :cond_50
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mItemCount:I

    if-ge v2, v4, :cond_5f

    .line 701
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 708
    :cond_62
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    .line 709
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListMaxCount:I

    .line 710
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    if-ne v4, v3, :cond_8b

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListMaxCount:I

    if-lt v3, v4, :cond_8b

    .line 712
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItemIndex:I

    if-eq v4, v3, :cond_80

    .line 714
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_80
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    .line 717
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCurrentY:I

    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mLastY:I

    .line 718
    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mLastY:I

    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->AdjustBound(I)V

    :cond_8b
    move v4, v6

    .line 720
    goto :goto_d
.end method

.method private RefreshListViewAll()V
    .registers 4

    .prologue
    .line 725
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    if-eqz v1, :cond_34

    .line 727
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 728
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mItemCount:I

    if-ge v0, v1, :cond_28

    .line 730
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    if-ne v0, v1, :cond_1c

    .line 732
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 736
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 740
    :cond_28
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 741
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 743
    .end local v0           #i:I
    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    .line 744
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 73
    sget v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogState:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItemIndex:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Lcom/sec/android/widgetapp/stockclock/data/StockListItem;)Lcom/sec/android/widgetapp/stockclock/data/StockListItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->AdjustBound(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->startDragging(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->processDragMove(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->RefreshListView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setButtonFocus()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBMove:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBMove:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getTopScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->scrollUp()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getBottomScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->scrollDown()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mItemCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setSLog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/view/View$OnLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->onItemSelect:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finalizeDrag()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    return p1
.end method

.method private dragView(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getMinY()I

    move-result v1

    .line 1182
    .local v1, min:I
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v0

    .line 1184
    .local v0, max:I
    if-ge p2, v1, :cond_1e

    .line 1186
    move p2, v1

    .line 1193
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1194
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    return-void

    .line 1188
    :cond_1e
    if-le p2, v0, :cond_b

    .line 1190
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

    .line 986
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 988
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->stopDragging()V

    .line 989
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->RefreshListViewAll()V

    .line 990
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 991
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 993
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_2d

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_36

    .line 994
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1009
    :goto_32
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setButtonFocus()V

    .line 1011
    :cond_35
    return-void

    .line 997
    :cond_36
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_32

    .line 1002
    :cond_3c
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_48

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_4e

    .line 1003
    :cond_48
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_32

    .line 1006
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_32
.end method

.method private getBottomScrollMargin()I
    .registers 3

    .prologue
    .line 1034
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private getMaxY()I
    .registers 4

    .prologue
    const v2, 0x7f0b0120

    .line 1021
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_15

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_34

    .line 1022
    :cond_15
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1023
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1027
    :goto_33
    return v0

    .line 1026
    :cond_34
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 1027
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_33
.end method

.method private getMinY()I
    .registers 4

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    add-int v0, v1, v2

    .line 1016
    .local v0, top:I
    return v0
.end method

.method private getTopScrollMargin()I
    .registers 3

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getMinY()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

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

    .line 1097
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    .line 1098
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->RefreshListView()Z

    move-result v0

    .line 1099
    .local v0, result:Z
    if-eqz v0, :cond_37

    .line 1101
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 1102
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1104
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_2f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_38

    .line 1105
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1120
    :goto_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setButtonFocus()V

    .line 1122
    :cond_37
    return v0

    .line 1108
    :cond_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34

    .line 1113
    :cond_3e
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_4a

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_50

    .line 1114
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34

    .line 1117
    :cond_50
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

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

    .line 1139
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I

    .line 1140
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->RefreshListView()Z

    move-result v0

    .line 1141
    .local v0, result:Z
    if-eqz v0, :cond_37

    .line 1143
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 1144
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1146
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_2f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_38

    .line 1147
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1162
    :goto_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setButtonFocus()V

    .line 1164
    :cond_37
    return v0

    .line 1150
    :cond_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34

    .line 1155
    :cond_3e
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_4a

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_50

    .line 1156
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34

    .line 1159
    :cond_50
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

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

    .line 914
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v1

    .line 916
    .local v1, max:I
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    if-ge p2, v3, :cond_21

    .line 918
    const/4 p2, 0x0

    .line 924
    :cond_e
    :goto_e
    iput p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCurrentY:I

    .line 925
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->dragView(II)V

    .line 927
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    if-ne v3, v5, :cond_25

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mLastY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_25

    .line 982
    :cond_20
    :goto_20
    return-void

    .line 920
    :cond_21
    if-le p2, v1, :cond_e

    .line 922
    move p2, v1

    goto :goto_e

    .line 932
    :cond_25
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    if-ge p2, v3, :cond_5d

    .line 934
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 935
    .local v2, moveCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    if-ge v0, v2, :cond_9b

    .line 937
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->moveUp()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 939
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    .line 940
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    .line 941
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    if-ge v3, v4, :cond_5a

    .line 943
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    .line 944
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    .line 935
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 949
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_5d
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    if-le p2, v3, :cond_9b

    .line 951
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 952
    .restart local v2       #moveCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6b
    if-ge v0, v2, :cond_9b

    .line 954
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->moveDown()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 956
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    .line 957
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    .line 958
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_98

    .line 960
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v3

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    .line 961
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBottom:I

    .line 952
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 967
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_9b
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getTopScrollMargin()I

    move-result v3

    if-le p2, v3, :cond_b3

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt p2, v3, :cond_b3

    .line 969
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    .line 972
    :cond_b3
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getTopScrollMargin()I

    move-result v3

    if-ge p2, v3, :cond_c8

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    if-nez v3, :cond_c8

    .line 974
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    .line 975
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->runnableUp:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20

    .line 977
    :cond_c8
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_20

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    if-nez v3, :cond_20

    .line 979
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    .line 980
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->runnableDown:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20
.end method

.method private scrollDown()V
    .registers 4

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1128
    .local v0, fv:I
    add-int/lit8 v0, v0, 0x1

    .line 1130
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->moveDown()Z

    .line 1132
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1133
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1135
    return-void
.end method

.method private scrollUp()V
    .registers 4

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1170
    .local v0, fv:I
    add-int/lit8 v0, v0, -0x1

    .line 1172
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->moveUp()Z

    .line 1174
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1175
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1177
    return-void
.end method

.method private setButtonFocus()V
    .registers 6

    .prologue
    const v4, 0x7f0b0122

    const v3, 0x7f0b0121

    const v2, 0x7f0b011f

    .line 293
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_1b

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_61

    .line 294
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 295
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 329
    :goto_4b
    return-void

    .line 305
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto :goto_4b

    .line 312
    :cond_61
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 313
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusRightId(I)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusDownId(I)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    goto :goto_4b

    .line 323
    :cond_92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusUpId(I)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setNextFocusLeftId(I)V

    goto :goto_4b
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 356
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    .line 364
    :goto_18
    return-void

    .line 362
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 373
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 379
    return-void
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .registers 7
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 862
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 863
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 864
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 865
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v2, p2, 0xa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 866
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 867
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 868
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 870
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 871
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 872
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 873
    .local v0, v:Landroid/widget/ImageView;
    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 874
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 875
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    .line 876
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    .line 878
    return-void
.end method

.method private stopDragging()V
    .registers 3

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 1201
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    .line 1205
    :cond_13
    return-void
.end method


# virtual methods
.method public cancelRun()V
    .registers 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finish()V

    .line 229
    return-void
.end method

.method public cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_11

    .line 580
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    .line 585
    :cond_11
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    .line 587
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    if-eqz v0, :cond_1e

    .line 589
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;->clear()V

    .line 590
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    .line 593
    :cond_1e
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;

    .line 594
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    .line 596
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    .line 597
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 599
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_31

    .line 600
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 601
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 604
    :cond_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 606
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 607
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    .line 610
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 612
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 616
    :cond_47
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    .line 618
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 619
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    .line 622
    :cond_52
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;

    .line 623
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_5f

    .line 624
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 625
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->toast:Landroid/widget/Toast;

    .line 628
    :cond_5f
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    .line 629
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogEdit:Landroid/widget/EditText;

    .line 631
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    .line 633
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBitmap:Landroid/graphics/Bitmap;

    .line 635
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    .line 636
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    .line 637
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_7d

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_94

    .line 638
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    if-eqz v0, :cond_88

    .line 639
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    .line 642
    :cond_88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    if-eqz v0, :cond_93

    .line 643
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    .line 658
    :cond_93
    :goto_93
    return-void

    .line 648
    :cond_94
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_9f

    .line 649
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 652
    :cond_9f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_93

    .line 653
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    goto :goto_93
.end method

.method public doneRun()V
    .registers 5

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setResult(ILandroid/content/Intent;)V

    .line 235
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 237
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateChangeOrder(Ljava/util/ArrayList;)I

    move-result v1

    .line 238
    .local v1, result:I
    const/16 v2, -0x5a

    if-ne v1, v2, :cond_27

    .line 240
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setResult(I)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finish()V

    .line 280
    .end local v1           #result:I
    :cond_26
    :goto_26
    return-void

    .line 243
    .restart local v1       #result:I
    :cond_27
    if-nez v1, :cond_26

    .line 246
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$7;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$7;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finish()V

    goto :goto_26

    .line 278
    .end local v1           #result:I
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finish()V

    goto :goto_26
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finalizeDrag()V

    .line 663
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 664
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

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 129
    const-string v0, "Tag"

    const-string v1, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setContentView(I)V

    .line 132
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setActivityVisibleState(Z)V

    .line 133
    iput-object p0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    .line 134
    const v0, 0x7f0b011f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    .line 135
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 137
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mItemCount:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030032

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    .line 143
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_8f

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_e3

    .line 145
    :cond_8f
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    .line 148
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDone_Button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancel_Button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setButtonFocus()V

    .line 181
    :goto_c0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;

    .line 184
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$5;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$5;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$6;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 224
    return-void

    .line 163
    :cond_e3
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 164
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 165
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 166
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mDoneButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$3;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$4;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setButtonFocus()V

    goto :goto_c0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_10e

    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 386
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 387
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 388
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    .line 390
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 391
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    .line 392
    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogEdit:Landroid/widget/EditText;

    .line 393
    sget v2, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogState:I

    .line 395
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 396
    sget v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 419
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$9;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$9;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$8;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$8;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 400
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 406
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 412
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 384
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 396
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
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 572
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 574
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->cleanResource()V

    .line 575
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 552
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

    .line 555
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 557
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 559
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->showDialog(I)V

    .line 560
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 564
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 336
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 338
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setActivityVisibleState(Z)V

    .line 339
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->finalizeDrag()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    .line 345
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    .line 350
    :cond_18
    :goto_18
    return-void

    .line 347
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 538
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->setActivityVisibleState(Z)V

    .line 544
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mIsVisible:Z

    .line 290
    return-void
.end method
