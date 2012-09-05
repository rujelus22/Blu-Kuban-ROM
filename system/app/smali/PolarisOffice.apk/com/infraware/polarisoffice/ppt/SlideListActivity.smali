.class public Lcom/infraware/polarisoffice/ppt/SlideListActivity;
.super Lcom/infraware/common/baseactivity/BaseListActivity;
.source "SlideListActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$PptEditorListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/infraware/office/evengine/EvListener$ViewerListener;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private final MSG_ADD_THUMBNAIL:I

.field private final MSG_ADD_THUMBNAIL_DELAYED:I

.field private adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

.field public handler:Landroid/os/Handler;

.field protected mAvailSelectItem:Z

.field protected mDelay:I

.field private mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

.field private mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mLastChangeItemPosition:I

.field protected mListScrollState:I

.field mMoveIconView:Landroid/widget/ImageView;

.field private mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

.field private mSelectedIconNum:I

.field private final mThumbnailHeight:I

.field private final mThumbnailWidth:I

.field private mTotalPageNum:I

.field protected mbDrawAllThumbnail:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 41
    iput v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mTotalPageNum:I

    .line 43
    const-string v0, "SlideListActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->LOG_CAT:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mMoveIconView:Landroid/widget/ImageView;

    .line 45
    iput v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mSelectedIconNum:I

    .line 46
    iput v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mLastChangeItemPosition:I

    .line 47
    const/16 v0, 0xb5

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mThumbnailWidth:I

    .line 48
    const/16 v0, 0x7e

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mThumbnailHeight:I

    .line 50
    const/16 v0, 0x10

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->MSG_ADD_THUMBNAIL:I

    .line 51
    const/16 v0, 0x11

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->MSG_ADD_THUMBNAIL_DELAYED:I

    .line 53
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mbDrawAllThumbnail:Z

    .line 54
    iput v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mListScrollState:I

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDelay:I

    .line 57
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mAvailSelectItem:Z

    .line 59
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity$1;-><init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;-><init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    .line 235
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity$3;-><init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

    .line 246
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;-><init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/ppt/SlideListActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mLastChangeItemPosition:I

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/ppt/SlideListActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mSelectedIconNum:I

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mSelectedIconNum:I

    return v0
.end method


# virtual methods
.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnCloseDoc()V
    .registers 1

    .prologue
    .line 408
    return-void
.end method

.method public OnDrawBitmap()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    return-void
.end method

.method public OnDrawBitmap(II)V
    .registers 3
    .parameter "nCallId"
    .parameter "bShowAutomap"

    .prologue
    .line 432
    return-void
.end method

.method public OnDrawThumbnailBitmap(I)V
    .registers 2
    .parameter "nPageNum"

    .prologue
    .line 429
    return-void
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .registers 4
    .parameter "nStrID"

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_2a

    .line 453
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 447
    :pswitch_5
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 449
    :pswitch_11
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 451
    :pswitch_1d
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 445
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method

.method public OnImagePlaceHolderDefaultImage()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnLoadComplete(Ljava/lang/String;)V
    .registers 2
    .parameter "strWritePassword"

    .prologue
    .line 402
    return-void
.end method

.method public OnLoadFail(I)V
    .registers 2
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 405
    return-void
.end method

.method public OnPageMove(III)V
    .registers 4
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"

    .prologue
    .line 411
    return-void
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "bBitmapImage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x10

    .line 331
    if-eqz p3, :cond_8

    if-nez p4, :cond_a

    .line 332
    :cond_8
    const/4 v1, 0x0

    .line 357
    :goto_9
    return-object v1

    .line 334
    :cond_a
    const-string v2, "SlideListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnPptGetSlidesBitmap - else "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 338
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_5f

    const/4 v0, 0x0

    .line 341
    .local v0, bHaveBitmap:Z
    :goto_27
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, p5}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->ChangeListItems(ILjava/lang/Boolean;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->notifyDataSetChanged()V

    .line 347
    const-string v2, "PolarisOffice"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SlideListActivity]:OnPptGetSlidesBitmap nPageNum:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mListScrollState:I

    if-nez v2, :cond_61

    .line 353
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 339
    .end local v0           #bHaveBitmap:Z
    :cond_5f
    const/4 v0, 0x1

    .restart local v0       #bHaveBitmap:Z
    goto :goto_27

    .line 355
    :cond_61
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDelay:I

    int-to-long v3, v3

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9
.end method

.method public OnPptOnDrawSlidenote(I)V
    .registers 2
    .parameter "pageNum"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    return-void
.end method

.method public OnPptSlideDelete()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    return-void
.end method

.method public OnPptSlideexInsert()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    return-void
.end method

.method public OnPrintMode(Ljava/lang/String;)V
    .registers 2
    .parameter "strPrintFile"

    .prologue
    .line 435
    return-void
.end method

.method public OnPrintedCount(I)V
    .registers 2
    .parameter "nTotalCount"

    .prologue
    .line 438
    return-void
.end method

.method public OnProgress(II)V
    .registers 3
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"

    .prologue
    .line 417
    return-void
.end method

.method public OnProgressStart(I)V
    .registers 2
    .parameter "EV_PROGRESS_TYPE"

    .prologue
    .line 414
    return-void
.end method

.method public OnSearchMode(IIII)V
    .registers 5
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    .line 423
    return-void
.end method

.method public OnTerminate()V
    .registers 1

    .prologue
    .line 420
    return-void
.end method

.method public OnTextToSpeachString(Ljava/lang/String;)V
    .registers 2
    .parameter "strTTS"

    .prologue
    .line 441
    return-void
.end method

.method protected getHaveToDrawingPageCount()I
    .registers 5

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 116
    .local v1, listView:Landroid/widget/ListView;
    instance-of v3, v1, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v3, :cond_12

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    move-object v3, v1

    check-cast v3, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    invoke-virtual {v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_14

    .line 125
    .end local v0           #i:I
    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3

    .restart local v0       #i:I
    :cond_14
    move-object v3, v1

    .line 119
    check-cast v3, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    invoke-virtual {v3, v0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    .line 120
    .local v2, tepList:Lcom/infraware/common/control/dragndroplist/DragNDropListItem;
    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getExistBitmapImg()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_30

    .line 121
    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getPageNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_13

    .line 117
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method protected getHaveToDrawingPageCountInViewRect()I
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 129
    .local v1, listView:Landroid/widget/ListView;
    instance-of v3, v1, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v3, :cond_18

    move-object v3, v1

    .line 130
    check-cast v3, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    invoke-virtual {v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, i:I
    :goto_f
    move-object v3, v1

    check-cast v3, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    invoke-virtual {v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getLastVisiblePosition()I

    move-result v3

    if-le v0, v3, :cond_1a

    .line 138
    .end local v0           #i:I
    :cond_18
    const/4 v3, 0x0

    :goto_19
    return v3

    .restart local v0       #i:I
    :cond_1a
    move-object v3, v1

    .line 132
    check-cast v3, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    invoke-virtual {v3, v0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    .line 133
    .local v2, tepList:Lcom/infraware/common/control/dragndroplist/DragNDropListItem;
    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getExistBitmapImg()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_36

    .line 134
    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->getPageNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_19

    .line 130
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 389
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x6

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mLastChangeItemPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    .line 391
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 392
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->setResult(ILandroid/content/Intent;)V

    .line 393
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->finish()V

    .line 394
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->onBackPressed()V

    .line 395
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 381
    .local v0, listView:Landroid/widget/ListView;
    instance-of v1, v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v1, :cond_d

    .line 382
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    .end local v0           #listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->StopDrag()V

    .line 384
    :cond_d
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v0, v1

    .line 288
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 290
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 302
    :goto_e
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 294
    :pswitch_13
    const-string v2, "SlideListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onContextItemSelected : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x2

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    .line 296
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mLastChangeItemPosition:I

    .line 297
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->removeItem(I)V

    .line 298
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    invoke-virtual {v2}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->notifyDataSetChanged()V

    goto :goto_e

    .line 290
    nop

    :pswitch_data_48
    .packed-switch 0x7f0c0331
        :pswitch_13
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->setContentView(I)V

    .line 149
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->setTitle(I)V

    .line 152
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 154
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 155
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mTotalPageNum:I

    .line 157
    new-instance v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    invoke-direct {v0, p0}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    .line 158
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    new-array v1, v12, [I

    const v4, 0x7f030052

    aput v4, v1, v11

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_bc

    invoke-virtual {v0, v1, v4}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->initResources([I[I)V

    .line 162
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 164
    .local v9, listView:Landroid/widget/ListView;
    instance-of v0, v9, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v0, :cond_6b

    move-object v0, v9

    .line 165
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    invoke-virtual {v0, v1}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setDropListener(Lcom/infraware/common/control/dragndroplist/DropListener;)V

    move-object v0, v9

    .line 166
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

    invoke-virtual {v0, v1}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setRemoveListener(Lcom/infraware/polarisoffice/common/RemoveListener;)V

    move-object v0, v9

    .line 167
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    invoke-virtual {v0, v1}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setDragListener(Lcom/infraware/common/control/dragndroplist/DragListener;)V

    move-object v0, v9

    .line 168
    check-cast v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    invoke-virtual {v0, p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 171
    :cond_6b
    new-instance v3, Ljava/lang/String;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v8

    .line 173
    .local v8, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_79
    iget v0, v8, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-lt v7, v0, :cond_99

    .line 176
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mTotalPageNum:I

    if-le v0, v12, :cond_90

    .line 186
    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 188
    :cond_90
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$5;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity$5;-><init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    return-void

    .line 174
    :cond_99
    iget-object v6, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    new-instance v0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    add-int/lit8 v4, v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0201a0

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;-><init>(Ljava/lang/Boolean;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->addItem(Lcom/infraware/common/control/dragndroplist/DragNDropListItem;)V

    .line 173
    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    .line 158
    nop

    :array_bc
    .array-data 0x4
        0xd9t 0x1t 0xct 0x7ft
        0xdbt 0x1t 0xct 0x7ft
        0xdat 0x1t 0xct 0x7ft
        0xdct 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-ne p2, v1, :cond_21

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_21

    .line 309
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 310
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 311
    const v1, 0x7f080230

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 313
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_21
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/baseactivity/BaseListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 314
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 319
    .local v1, listView:Landroid/widget/ListView;
    instance-of v2, v1, Lcom/infraware/common/control/dragndroplist/DragNDropListView;

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mAvailSelectItem:Z

    if-eqz v2, :cond_1f

    .line 320
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x6

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    .line 321
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->finish()V

    .line 326
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1f
    invoke-super/range {p0 .. p5}, Lcom/infraware/common/baseactivity/BaseListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 327
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 398
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->setTitle(I)V

    .line 399
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    const-string v0, "SlideListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScroll - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/16 v3, 0x10

    .line 105
    const-string v0, "SlideListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScrollStateChanged - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput p2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mListScrollState:I

    .line 107
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mListScrollState:I

    if-nez v0, :cond_2d

    .line 108
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    :cond_2d
    return-void
.end method
