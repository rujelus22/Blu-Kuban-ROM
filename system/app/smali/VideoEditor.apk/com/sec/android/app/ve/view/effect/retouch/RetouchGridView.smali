.class public final Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;
.super Landroid/widget/LinearLayout;
.source "RetouchGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;
    }
.end annotation


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field private mEffectButton:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;-><init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mContext:Landroid/content/Context;

    .line 69
    sput-object p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->_instance:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getCurrentView()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/widget/BaseAdapter;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mSelected:I

    return v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mSelected:I

    return-void
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getEffectConstant(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCurrentView()V
    .registers 4

    .prologue
    .line 74
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, cview:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_11

    .line 77
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #cview:Landroid/view/View;
    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 82
    :goto_10
    return-void

    .line 79
    .restart local v0       #cview:Landroid/view/View;
    :cond_11
    check-cast v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .end local v0           #cview:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 80
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(Lcom/samsung/app/video/editor/external/Element;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    goto :goto_10
.end method

.method private getEffectConstant(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, effect:I
    packed-switch p1, :pswitch_data_20

    .line 318
    const/16 v0, 0x16

    .line 322
    :goto_6
    return v0

    .line 279
    :pswitch_7
    const/16 v0, 0x16

    .line 280
    goto :goto_6

    .line 288
    :pswitch_a
    const/16 v0, 0x17

    .line 289
    goto :goto_6

    .line 292
    :pswitch_d
    const/16 v0, 0x1b

    .line 293
    goto :goto_6

    .line 295
    :pswitch_10
    const/16 v0, 0x2b

    .line 296
    goto :goto_6

    .line 298
    :pswitch_13
    const/16 v0, 0x1f

    .line 299
    goto :goto_6

    .line 308
    :pswitch_16
    const/16 v0, 0x18

    .line 309
    goto :goto_6

    .line 311
    :pswitch_19
    const/16 v0, 0x1c

    .line 312
    goto :goto_6

    .line 314
    :pswitch_1c
    const/16 v0, 0x2c

    .line 315
    goto :goto_6

    .line 277
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->_instance:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    return-object v0
.end method

.method private getPosition(I)I
    .registers 3
    .parameter "effect"

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, position:I
    sparse-switch p1, :sswitch_data_16

    .line 375
    const/4 v0, 0x0

    .line 379
    :goto_5
    return v0

    .line 332
    :sswitch_6
    const/4 v0, 0x0

    .line 333
    goto :goto_5

    .line 341
    :sswitch_8
    const/4 v0, 0x1

    .line 342
    goto :goto_5

    .line 345
    :sswitch_a
    const/4 v0, 0x2

    .line 346
    goto :goto_5

    .line 349
    :sswitch_c
    const/4 v0, 0x3

    .line 350
    goto :goto_5

    .line 353
    :sswitch_e
    const/4 v0, 0x4

    .line 354
    goto :goto_5

    .line 363
    :sswitch_10
    const/4 v0, 0x5

    .line 364
    goto :goto_5

    .line 367
    :sswitch_12
    const/4 v0, 0x6

    .line 368
    goto :goto_5

    .line 371
    :sswitch_14
    const/4 v0, 0x7

    .line 372
    goto :goto_5

    .line 329
    :sswitch_data_16
    .sparse-switch
        0x16 -> :sswitch_6
        0x17 -> :sswitch_8
        0x18 -> :sswitch_10
        0x1b -> :sswitch_a
        0x1c -> :sswitch_12
        0x1f -> :sswitch_e
        0x2b -> :sswitch_c
        0x2c -> :sswitch_14
    .end sparse-switch
.end method

.method private refreshRetouchPanel()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    .line 107
    .local v1, retouchEdit:Lcom/samsung/app/video/editor/external/Edit;
    const/16 v0, 0x16

    .line 108
    .local v0, effect:I
    if-eqz v1, :cond_13

    .line 109
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    .line 111
    :cond_13
    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getPosition(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mSelected:I

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    return-void
.end method


# virtual methods
.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 4
    .parameter "addedView"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 208
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_a

    .line 212
    :goto_9
    return-void

    .line 210
    :cond_a
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 211
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 128
    :goto_7
    return-void

    .line 122
    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTrim()V

    goto :goto_7

    .line 120
    :pswitch_data_10
    .packed-switch 0x7f0b00ca
        :pswitch_8
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 216
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_a

    .line 221
    :goto_9
    return-void

    .line 218
    :cond_a
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 219
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->_instance:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    goto :goto_9
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 133
    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->listView:Landroid/widget/ListView;

    .line 134
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mEffectButton:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mEffectButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mEffectButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;-><init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mContext:Landroid/content/Context;

    .line 139
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 138
    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;-><init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->refreshRetouchPanel()V

    .line 204
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 4
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 402
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(Lcom/samsung/app/video/editor/external/Element;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v0, :cond_11

    .line 404
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->refreshRetouchPanel()V

    .line 406
    :cond_11
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 386
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 389
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTrim()V

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 422
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 4
    .parameter "removedView"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "elementTime"
    .parameter "transitionTime"

    .prologue
    .line 414
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 418
    return-void
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 90
    :try_start_0
    const-string v1, "RetouchGridView refresh"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getCurrentView()V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mCurrentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-nez v1, :cond_19

    .line 94
    const-string v1, "RetouchGridView current view lets jump to trim section"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTrim()V

    .line 103
    :goto_18
    return-void

    .line 98
    :cond_19
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->refreshRetouchPanel()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_18

    .line 100
    :catch_1d
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Refresh fails ignore the error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_18
.end method
