.class public final Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
.super Landroid/widget/LinearLayout;
.source "TransitionControlView.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;,
        Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;
    }
.end annotation


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;


# instance fields
.field private adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

.field private dp:Lcom/sec/android/app/ve/ui/DurationSettingPopup;

.field private lCamCamcorder:Landroid/app/AlertDialog;

.field private listView:Landroid/widget/ListView;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

.field private mSelected:I

.field private mSubType:I

.field private mTimeBtn:Landroid/widget/Button;

.field private mTransButton:Landroid/view/View;

.field private mTransitionTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSelected:I

    .line 66
    new-instance v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;-><init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 308
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mContext:Landroid/content/Context;

    .line 310
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I
    .registers 2
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I

    return-void
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I
    .registers 2
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSubType:I

    return v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I
    .registers 2
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSelected:I

    return v0
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->setSelection(I)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    .registers 1

    .prologue
    .line 303
    sget-object v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->_instance:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    return-object v0
.end method

.method private setSelection(I)V
    .registers 4
    .parameter "selected"

    .prologue
    .line 393
    iput p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSelected:I

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSelected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getType(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSubType:I

    .line 396
    iget v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSubType:I

    if-nez v0, :cond_27

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    :goto_26
    return-void

    .line 399
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_26
.end method


# virtual methods
.method public getPosition(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 572
    sparse-switch p1, :sswitch_data_18

    .line 629
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 575
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 577
    :sswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 579
    :sswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 581
    :sswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 583
    :sswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 585
    :sswitch_f
    const/4 v0, 0x5

    goto :goto_4

    .line 587
    :sswitch_11
    const/4 v0, 0x6

    goto :goto_4

    .line 589
    :sswitch_13
    const/4 v0, 0x7

    goto :goto_4

    .line 591
    :sswitch_15
    const/16 v0, 0x8

    goto :goto_4

    .line 572
    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_b
        0x2 -> :sswitch_9
        0x3 -> :sswitch_7
        0x5 -> :sswitch_d
        0x9 -> :sswitch_f
        0x28 -> :sswitch_11
        0x29 -> :sswitch_13
        0x2a -> :sswitch_15
    .end sparse-switch
.end method

.method public getType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 502
    packed-switch p1, :pswitch_data_1c

    .line 566
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 505
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 508
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 511
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 514
    :pswitch_b
    const/4 v0, 0x1

    goto :goto_4

    .line 516
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 519
    :pswitch_f
    const/16 v0, 0x9

    goto :goto_4

    .line 522
    :pswitch_12
    const/16 v0, 0x28

    goto :goto_4

    .line 524
    :pswitch_15
    const/16 v0, 0x29

    goto :goto_4

    .line 527
    :pswitch_18
    const/16 v0, 0x2a

    goto :goto_4

    .line 502
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 362
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    .line 367
    const v1, 0x7f0b0115

    .line 366
    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 373
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 376
    :cond_3b
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_54

    .line 377
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->gotFocus()V

    .line 379
    :cond_54
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 382
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 383
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 384
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 386
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 387
    :cond_20
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->_instance:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    .line 388
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->lostAllFocus()V

    .line 389
    const-string v0, "onDetachedFromWindow TransitionControlview"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 313
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 314
    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->listView:Landroid/widget/ListView;

    .line 315
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransButton:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;-><init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mContext:Landroid/content/Context;

    .line 320
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 319
    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mInflater:Landroid/view/LayoutInflater;

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$2;-><init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 356
    sput-object p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->_instance:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    .line 358
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 639
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 642
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTrim()V

    .line 643
    const/4 v0, 0x1

    .line 645
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshing TransitionControlView :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    if-eqz v0, :cond_27

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    invoke-interface {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;->IsFocused()Z

    move-result v0

    if-nez v0, :cond_27

    .line 490
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTrim()V

    .line 493
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    if-eqz v0, :cond_30

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->notifyDataSetChanged()V

    .line 497
    :cond_30
    return-void
.end method

.method public resetCamcoderDialog()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 65
    :cond_16
    return-void
.end method

.method public setEditInfo(IILcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;)V
    .registers 9
    .parameter "transitionType"
    .parameter "transitionTime"
    .parameter "listener"

    .prologue
    const/4 v3, -0x1

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransitionControl : Transition type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 465
    iput p2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I

    .line 466
    iget v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I

    if-nez v1, :cond_1c

    .line 467
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I

    .line 468
    :cond_1c
    iput-object p3, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mListener:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;

    .line 469
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getPosition(I)I

    move-result v0

    .line 470
    .local v0, pos:I
    if-eq v0, v3, :cond_5f

    .line 471
    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->setSelection(I)V

    .line 478
    :goto_27
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->adapter:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->notifyDataSetChanged()V

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 483
    return-void

    .line 474
    :cond_5f
    iput v3, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSelected:I

    .line 475
    iput p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSubType:I

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTimeBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_27
.end method
