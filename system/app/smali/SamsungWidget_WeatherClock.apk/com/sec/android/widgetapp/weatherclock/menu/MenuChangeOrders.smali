.class public Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;
.super Landroid/app/Activity;
.source "MenuChangeOrders.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;
    }
.end annotation


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private bitmap:Landroid/graphics/Bitmap;

.field private btCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private mBMove:Z

.field private mBottom:I

.field private mCtx:Landroid/content/Context;

.field mCurrentY:I

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
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

.field private mMovingItemIndex:I

.field private mNeedScrollDown:Z

.field private mNeedScrollUp:Z

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

.field private mOrgItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
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
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected perform:Z

.field runnableDown:Ljava/lang/Runnable;

.field runnableUp:Ljava/lang/Runnable;

.field scrollHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 101
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    .line 102
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

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mappingKey:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;

    .line 89
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 91
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    .line 110
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    .line 113
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogEdit:Landroid/widget/EditText;

    .line 116
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBMove:Z

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHandler:Landroid/os/Handler;

    .line 382
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 659
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$7;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 676
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$8;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 708
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->perform:Z

    .line 736
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$9;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 872
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    .line 873
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->runnableUp:Ljava/lang/Runnable;

    .line 889
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$11;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$11;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->runnableDown:Ljava/lang/Runnable;

    .line 979
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$12;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTouchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private AdjustBound(I)V
    .registers 3
    .parameter "DragPoint"

    .prologue
    .line 711
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    .line 712
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    .line 713
    return-void
.end method

.method private RefreshListView()Z
    .registers 16

    .prologue
    .line 544
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mItemCount:I

    add-int/lit8 v9, v1, -0x1

    .line 546
    .local v9, ListMaxValue:I
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    if-gez v1, :cond_d

    .line 548
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    .line 549
    const/4 v1, 0x0

    .line 604
    :goto_c
    return v1

    .line 551
    :cond_d
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    if-le v1, v9, :cond_15

    .line 553
    iput v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    .line 554
    const/4 v1, 0x0

    goto :goto_c

    .line 557
    :cond_15
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 558
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V

    .line 561
    .local v0, emptyItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int v14, v1, v2

    .line 562
    .local v14, viewListMax:I
    const/4 v10, 0x0

    .line 563
    .local v10, bCheckScroll:Z
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mItemCount:I

    if-le v1, v14, :cond_3c

    .line 564
    const/4 v10, 0x1

    .line 567
    :cond_3c
    const/4 v12, 0x0

    .line 568
    .local v12, index:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3e
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mItemCount:I

    if-ge v12, v1, :cond_78

    .line 570
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    if-ne v1, v11, :cond_54

    .line 572
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    if-ne v1, v9, :cond_4c

    if-eqz v10, :cond_51

    .line 573
    :cond_4c
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_51
    :goto_51
    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    .line 577
    :cond_54
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 578
    .local v13, tempMoveResult:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 580
    add-int/lit8 v12, v12, 0x1

    .line 583
    :cond_66
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mItemCount:I

    if-ge v12, v1, :cond_75

    .line 585
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_75
    add-int/lit8 v12, v12, 0x1

    goto :goto_51

    .line 592
    .end local v13           #tempMoveResult:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    :cond_78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    .line 593
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListMaxCount:I

    .line 594
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    if-ne v1, v9, :cond_a3

    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListMaxCount:I

    if-lt v9, v1, :cond_a3

    .line 596
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItemIndex:I

    if-eq v1, v9, :cond_97

    .line 598
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    .line 601
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCurrentY:I

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mLastY:I

    .line 602
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mLastY:I

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->AdjustBound(I)V

    .line 604
    :cond_a3
    const/4 v1, 0x1

    goto/16 :goto_c
.end method

.method private RefreshListViewAll()V
    .registers 5

    .prologue
    .line 608
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    if-eqz v2, :cond_36

    .line 610
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 611
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mItemCount:I

    if-ge v0, v2, :cond_2a

    .line 612
    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    if-ne v0, v2, :cond_1c

    .line 613
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 615
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 616
    .local v1, tempMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 620
    .end local v1           #tempMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 621
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    .end local v0           #i:I
    :cond_36
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 624
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 73
    sget v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogState:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->AdjustBound(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Landroid/graphics/Bitmap;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->startDragging(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->processDragMove(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->RefreshListView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBMove:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBMove:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finalizeDrag()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTouchHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getTopScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->scrollUp()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getBottomScrollMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->scrollDown()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mItemCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setSLog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItemIndex:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;)Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private dragView(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getMinY()I

    move-result v1

    .line 958
    .local v1, min:I
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v0

    .line 960
    .local v0, max:I
    if-ge p2, v1, :cond_1e

    .line 961
    move p2, v1

    .line 967
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 968
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    return-void

    .line 963
    :cond_1e
    if-le p2, v0, :cond_b

    .line 964
    move p2, v0

    goto :goto_b
.end method

.method private finalizeDrag()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 840
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->stopDragging()V

    .line 841
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->RefreshListViewAll()V

    .line 842
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 843
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 844
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 852
    :cond_25
    :goto_25
    return-void

    .line 848
    :cond_26
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    goto :goto_25
.end method

.method private getBottomScrollMargin()I
    .registers 3

    .prologue
    .line 865
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 426
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private getMaxY()I
    .registers 4

    .prologue
    .line 860
    const v1, 0x7f0c0076

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 861
    .local v0, bt:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method private getMinY()I
    .registers 4

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    add-int v0, v1, v2

    .line 856
    .local v0, top:I
    return v0
.end method

.method private getTopScrollMargin()I
    .registers 3

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getMinY()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private moveDown()Z
    .registers 3

    .prologue
    .line 907
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    .line 909
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->RefreshListView()Z

    move-result v0

    .line 910
    .local v0, result:Z
    if-eqz v0, :cond_11

    .line 911
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 913
    :cond_11
    return v0
.end method

.method private moveUp()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 928
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    .line 930
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->RefreshListView()Z

    move-result v0

    .line 931
    .local v0, result:Z
    if-eqz v0, :cond_27

    .line 932
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->notifyDataSetChanged()V

    .line 933
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 934
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 935
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 942
    :cond_27
    :goto_27
    return v0

    .line 938
    :cond_28
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 939
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    goto :goto_27
.end method

.method private processDragMove(II)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x1

    .line 780
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v1

    .line 782
    .local v1, max:I
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    if-ge p2, v3, :cond_21

    .line 783
    const/4 p2, 0x0

    .line 789
    :cond_e
    :goto_e
    iput p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCurrentY:I

    .line 791
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->dragView(II)V

    .line 793
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mIsLastScroll:Z

    if-ne v3, v5, :cond_25

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mLastY:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_25

    .line 836
    :cond_20
    :goto_20
    return-void

    .line 785
    :cond_21
    if-le p2, v1, :cond_e

    .line 786
    move p2, v1

    goto :goto_e

    .line 797
    :cond_25
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    if-ge p2, v3, :cond_61

    .line 798
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I

    if-ltz v3, :cond_20

    .line 799
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    sub-int/2addr v3, p2

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 800
    .local v2, moveCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_36
    if-ge v0, v2, :cond_9f

    .line 801
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->moveUp()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 802
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    .line 803
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    .line 804
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    if-ge v3, v4, :cond_5e

    .line 805
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    .line 806
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    .line 800
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 811
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_61
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    if-le p2, v3, :cond_9f

    .line 812
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 813
    .restart local v2       #moveCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6f
    if-ge v0, v2, :cond_9f

    .line 814
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->moveDown()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 815
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    .line 816
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    .line 817
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_9c

    .line 818
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getMaxY()I

    move-result v3

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    .line 819
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTop:I

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mBottom:I

    .line 813
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 825
    .end local v0           #i:I
    .end local v2           #moveCount:I
    :cond_9f
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getTopScrollMargin()I

    move-result v3

    if-le p2, v3, :cond_b7

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt p2, v3, :cond_b7

    .line 826
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    .line 828
    :cond_b7
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getTopScrollMargin()I

    move-result v3

    if-ge p2, v3, :cond_cc

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    if-nez v3, :cond_cc

    .line 829
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    .line 830
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->runnableUp:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20

    .line 832
    :cond_cc
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getBottomScrollMargin()I

    move-result v4

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_20

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    if-nez v3, :cond_20

    .line 833
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    .line 834
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->runnableDown:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_20
.end method

.method private scrollDown()V
    .registers 4

    .prologue
    .line 917
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 918
    .local v0, fv:I
    add-int/lit8 v0, v0, 0x1

    .line 920
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->moveDown()Z

    .line 922
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 923
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 925
    return-void
.end method

.method private scrollUp()V
    .registers 4

    .prologue
    .line 946
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 947
    .local v0, fv:I
    add-int/lit8 v0, v0, -0x1

    .line 949
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->moveUp()Z

    .line 951
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 952
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 954
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 409
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    .line 418
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 420
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    .line 422
    :cond_2c
    return-void

    .line 415
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 431
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 432
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 437
    return-void
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .registers 7
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 716
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 717
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 718
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 719
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    add-int/lit8 v2, p2, 0xa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 720
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 721
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 722
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 726
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 727
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 728
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 729
    .local v0, v:Landroid/widget/ImageView;
    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 730
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 731
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    .line 732
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    .line 734
    return-void
.end method

.method private stopDragging()V
    .registers 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 973
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollUp:Z

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollDown:Z

    .line 977
    :cond_13
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    .line 476
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    if-eqz v0, :cond_18

    .line 478
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;->clear()V

    .line 479
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    .line 482
    :cond_18
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mTempRect:Landroid/graphics/Rect;

    .line 484
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mDragView:Landroid/view/View;

    .line 485
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowManager:Landroid/view/WindowManager;

    .line 486
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 488
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 489
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 491
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 493
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 494
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    .line 497
    :cond_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    .line 499
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 500
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 503
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    .line 505
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 506
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    .line 509
    :cond_48
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    .line 510
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMovingItem:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 512
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    .line 514
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 515
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 517
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    .line 518
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 519
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 520
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 521
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    .line 523
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_67

    .line 525
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    .line 529
    :cond_67
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_72

    .line 531
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 532
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    .line 534
    :cond_72
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    .line 535
    return-void
.end method

.method public doneRun(Landroid/view/View;)V
    .registers 7
    .parameter "target"

    .prologue
    const/4 v4, -0x1

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setResult(ILandroid/content/Intent;)V

    .line 173
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 174
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateChangeOrder(Ljava/util/ArrayList;)I

    move-result v1

    .line 176
    .local v1, result:I
    if-ne v4, v1, :cond_24

    .line 177
    const/16 v2, 0x3e7

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finish()V

    .line 209
    .end local v1           #result:I
    :goto_23
    return-void

    .line 182
    .restart local v1       #result:I
    :cond_24
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$3;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finish()V

    goto :goto_23

    .line 207
    .end local v1           #result:I
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finish()V

    goto :goto_23
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mIsVisible:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finalizeDrag()V

    .line 539
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 540
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setContentView(I)V

    .line 127
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setActivityVisibleState(Z)V

    .line 128
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 129
    iput-object p0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCtx:Landroid/content/Context;

    .line 130
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    .line 131
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 135
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    .line 136
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mItemCount:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    const v1, 0x7f030026

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    .line 141
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mMoveResultList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrgItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 144
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 147
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 148
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mOrderAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$OrderItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHapticFeedbackEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->btCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_10e

    .line 379
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 265
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 266
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    .line 269
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 271
    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    .line 272
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogEdit:Landroid/widget/EditText;

    .line 273
    sget v2, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogState:I

    .line 274
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 276
    sget v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 297
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$5;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 280
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 286
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 292
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 262
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 276
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 450
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->setRefresh(Z)V

    .line 451
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 452
    .local v0, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 453
    .local v2, mAppWidgetId:I
    if-eqz v0, :cond_19

    .line 454
    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 458
    :cond_19
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.clockweatherwidget.weather.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_31

    .line 464
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 466
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->cleanResource()V

    .line 467
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 241
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> KD <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 247
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 249
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->showDialog(I)V

    .line 250
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 255
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 673
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setActivityVisibleState(Z)V

    .line 225
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 226
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->finalizeDrag()V

    .line 228
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    .line 230
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    .line 234
    :cond_18
    :goto_18
    return-void

    .line 232
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->setActivityVisibleState(Z)V

    .line 444
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 445
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mIsVisible:Z

    .line 220
    return-void
.end method
