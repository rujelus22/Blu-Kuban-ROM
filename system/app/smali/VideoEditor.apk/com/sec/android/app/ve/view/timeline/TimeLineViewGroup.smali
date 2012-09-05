.class public final Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;
.super Landroid/widget/FrameLayout;
.source "TimeLineViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;,
        Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;,
        Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;,
        Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;,
        Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;
    }
.end annotation


# static fields
.field public static final ADD_MEDIA_MUSIC:I = 0x2

.field public static final ADD_MEDIA_PICTURE:I = 0x0

.field public static final ADD_MEDIA_VIDEO:I = 0x1

.field public static final MODE_EFFECT:I = 0x5

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SPLIT:I = 0x2

.field public static final MODE_SUB_ADDMEDIA:I = 0x6

.field public static final MODE_SUB_RETOUCH:I = 0x4

.field public static final MODE_SUB_TRANSITION:I = 0x3

.field public static final MODE_TRIM:I = 0x1

.field private static _instance:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

.field private static effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

.field private static mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

.field private static mUndoControlButton:Landroid/widget/Button;


# instance fields
.field private captionBarOn:Z

.field currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

.field currentbackUpTime:F

.field private dragListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;

.field private mChangeModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

.field private mHander:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOperationMode:I

.field private mOperationSubMode:I

.field private mParent:Lcom/sec/android/app/ve/view/DragLayer;

.field private mShouldAllowScroll:Z

.field private mSplitBtn:Landroid/view/View;

.field paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

.field private splitToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mShouldAllowScroll:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->captionBarOn:Z

    .line 118
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 214
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 215
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    .line 216
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->init(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mShouldAllowScroll:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->captionBarOn:Z

    .line 118
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 221
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 222
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    .line 223
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->init(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V
    .registers 1
    .parameter

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->split()V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Lcom/sec/android/app/ve/view/DragLayer;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mParent:Lcom/sec/android/app/ve/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->captionBarOn:Z

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V
    .registers 1
    .parameter

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideSplitButton()V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V
    .registers 1
    .parameter

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideTrimBar()V

    return-void
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;

    return-void
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private checkViewDroppedParams(FF)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1319
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->stopAutoScoll()V

    .line 1322
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1323
    .local v0, scrollPos:[I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getLocationOnScreen([I)V

    .line 1324
    aget v3, v0, v1

    add-int/lit8 v3, v3, 0x13

    aput v3, v0, v1

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "scrollPos :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TimeLineViewGroup : viewDropped :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1329
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_a0

    .line 1330
    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_a0

    .line 1331
    aget v3, v0, v2

    .line 1332
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_a0

    .line 1333
    aget v3, v0, v1

    .line 1334
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_a0

    .line 1335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TimeLineViewGroup : viewDropped on Scroller:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1339
    :goto_9f
    return v1

    :cond_a0
    move v1, v2

    goto :goto_9f
.end method

.method public static effectUndo()Z
    .registers 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 424
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v5

    .line 508
    .local v2, tmpEdit:Lcom/samsung/app/video/editor/external/Edit;
    :goto_b
    return v4

    .line 426
    .end local v2           #tmpEdit:Lcom/samsung/app/video/editor/external/Edit;
    :cond_c
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    if-nez v4, :cond_12

    move v4, v5

    .line 427
    goto :goto_b

    .line 429
    :cond_12
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v4

    sget-object v7, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v7, v7, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 430
    const/4 v4, 0x0

    sput-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    move v4, v5

    .line 431
    goto :goto_b

    .line 433
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->stopPlayer()V

    .line 434
    const/4 v2, 0x0

    .line 435
    .restart local v2       #tmpEdit:Lcom/samsung/app/video/editor/external/Edit;
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->type:I

    packed-switch v4, :pswitch_data_162

    .line 453
    :goto_38
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->edit:Lcom/samsung/app/video/editor/external/Edit;

    if-eqz v4, :cond_4e

    .line 454
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    new-instance v7, Lcom/samsung/app/video/editor/external/Edit;

    sget-object v8, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v8, v8, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->edit:Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v7, v8}, Lcom/samsung/app/video/editor/external/Edit;-><init>(Lcom/samsung/app/video/editor/external/Edit;)V

    invoke-virtual {v4, v7}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 457
    :cond_4e
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iput-object v2, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->edit:Lcom/samsung/app/video/editor/external/Edit;

    .line 459
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v4

    const v7, 0x7f0b0125

    invoke-virtual {v4, v7}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sput-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    .line 460
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    if-ne v4, v6, :cond_107

    .line 462
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iput v9, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    .line 463
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    const v7, 0x7f0800bf

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 475
    :goto_73
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->type:I

    if-ne v4, v9, :cond_119

    .line 476
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    sget-object v7, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v7, v7, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(Lcom/samsung/app/video/editor/external/Element;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v3

    .line 477
    .local v3, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v3, :cond_ba

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_ba

    .line 478
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    .line 479
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v0, :cond_115

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v4

    if-eqz v4, :cond_115

    .line 480
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->applyRetouch()V

    .line 483
    :goto_a4
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v1

    .line 485
    .local v1, scrollX:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 488
    .end local v0           #edit:Lcom/samsung/app/video/editor/external/Edit;
    .end local v1           #scrollX:I
    :cond_ba
    if-eqz v3, :cond_bf

    .line 489
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->refreshThumbnail()V

    .line 490
    :cond_bf
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    if-ne v4, v9, :cond_cb

    .line 491
    const v4, 0x7f080044

    invoke-static {v4, v10, v5, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 504
    .end local v3           #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_cb
    :goto_cb
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v4

    if-eqz v4, :cond_d8

    .line 505
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    :cond_d8
    move v4, v6

    .line 508
    goto/16 :goto_b

    .line 437
    :pswitch_db
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v2

    .line 438
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->removetransitionEdit()V

    .line 439
    const-string v4, "EffectUndo transition removed"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 444
    :pswitch_f1
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v2

    .line 445
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->removeRetouchEdit()V

    .line 446
    const-string v4, "EffectUndo retouch removed"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 469
    :cond_107
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iput v6, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    .line 470
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    const v7, 0x7f080064

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_73

    .line 482
    .restart local v0       #edit:Lcom/samsung/app/video/editor/external/Edit;
    .restart local v3       #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_115
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->removeRetouch()V

    goto :goto_a4

    .line 492
    .end local v0           #edit:Lcom/samsung/app/video/editor/external/Edit;
    .end local v3           #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_119
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->type:I

    if-ne v4, v6, :cond_cb

    .line 493
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v4}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->refresh(Lcom/samsung/app/video/editor/external/Element;)V

    .line 494
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    sget-object v7, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget-object v7, v7, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(Lcom/samsung/app/video/editor/external/Element;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v3

    .line 495
    .restart local v3       #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v3, :cond_154

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_154

    .line 496
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v1

    .line 498
    .restart local v1       #scrollX:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 501
    .end local v1           #scrollX:I
    :cond_154
    sget-object v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iget v4, v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    if-ne v4, v9, :cond_cb

    .line 502
    const v4, 0x7f080045

    invoke-static {v4, v10, v5, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto/16 :goto_cb

    .line 435
    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_db
        :pswitch_f1
    .end packed-switch
.end method

.method private finishInflate()V
    .registers 10

    .prologue
    const v8, 0x7f0b010d

    const v7, 0x7f0b0103

    const v6, 0x7f0b00f4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 323
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->refreshMusicBar()V

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$3;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 331
    const-wide/16 v2, 0xbb8

    .line 326
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-nez v0, :cond_86

    .line 335
    const v0, 0x7f0b010f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/app/video/editor/external/Constants;->getThemeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 345
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 359
    :goto_77
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    return-void

    .line 348
    :cond_86
    const v0, 0x7f0b010f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/app/video/editor/external/Constants;->getThemeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->makeMusicDurationButtonVisible()V

    goto :goto_77
.end method

.method public static getEffectUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;
    .registers 1

    .prologue
    .line 512
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;
    .registers 1

    .prologue
    .line 227
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    return-object v0
.end method

.method public static getSplitUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    return-object v0
.end method

.method private hideSplitButton()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;

    if-nez v0, :cond_13

    .line 933
    const v0, 0x7f0b010e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;

    .line 938
    return-void
.end method

.method private hideTrimBar()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 925
    const v1, 0x7f0b0116

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/trim/TrimBarView;

    .line 926
    .local v0, trimBar:Lcom/sec/android/app/ve/view/trim/TrimBarView;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->terminate()V

    .line 927
    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->setVisibility(I)V

    .line 928
    const v1, 0x7f0b010e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_f

    .line 248
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 249
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 251
    sput-object v3, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    .line 252
    sput-object v3, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeLineViewGroup init done : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private notifyChangeModeListeners()V
    .registers 5

    .prologue
    .line 1007
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 1011
    :cond_d
    return-void

    .line 1009
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;

    iget v2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationSubMode:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;->modeChanged(II)V

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private refreshMusicBar()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 272
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_9

    .line 290
    :goto_8
    return-void

    .line 274
    :cond_9
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 275
    .local v2, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7e

    .line 276
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 278
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 280
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getAudioDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->updateMusicView(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    goto :goto_8

    .line 283
    :cond_48
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 284
    invoke-direct {p0, v7, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->updateMusicView(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 285
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeBGMMusic()V

    goto :goto_8

    .line 288
    .end local v0           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v1           #file:Ljava/io/File;
    :cond_7e
    invoke-direct {p0, v7, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->updateMusicView(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    goto :goto_8
.end method

.method private static removeExtraView()V
    .registers 3

    .prologue
    .line 1670
    sget-object v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v1, :cond_26

    .line 1671
    const/4 v0, 0x0

    .line 1672
    .local v0, i:I
    :goto_7
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_27

    .line 1677
    :cond_11
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_26

    .line 1679
    sget-object v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    .line 1682
    :cond_26
    return-void

    .line 1673
    :cond_27
    sget-object v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_11

    .line 1672
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static removeSplitUndoInformation()V
    .registers 1

    .prologue
    .line 1684
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    if-eqz v0, :cond_c

    .line 1685
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->recycle()V

    .line 1686
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->removeExtraView()V

    .line 1691
    :cond_c
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    .line 1692
    return-void
.end method

.method public static resetAllUndo()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 516
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    if-eqz v0, :cond_d

    .line 517
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->recycle()V

    .line 518
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->removeExtraView()V

    .line 521
    :cond_d
    sput-object v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    .line 522
    sput-object v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    .line 523
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->removeUndoInformation()V

    .line 524
    return-void
.end method

.method public static setEffectIndoInfo(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Edit;I)V
    .registers 5
    .parameter "element"
    .parameter "edit"
    .parameter "typeUndo"

    .prologue
    const/4 v1, 0x0

    .line 531
    if-nez p0, :cond_6

    .line 532
    sput-object v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    .line 548
    :goto_5
    return-void

    .line 534
    :cond_6
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->resetAllUndo()V

    .line 535
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    if-nez v0, :cond_14

    .line 536
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    .line 538
    :cond_14
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iput-object p0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->element:Lcom/samsung/app/video/editor/external/Element;

    .line 539
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iput p2, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->type:I

    .line 540
    if-eqz p1, :cond_30

    .line 541
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    new-instance v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v1, p1}, Lcom/samsung/app/video/editor/external/Edit;-><init>(Lcom/samsung/app/video/editor/external/Edit;)V

    iput-object v1, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->edit:Lcom/samsung/app/video/editor/external/Edit;

    .line 544
    :goto_27
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    .line 545
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->undoSet()V

    goto :goto_5

    .line 543
    :cond_30
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    iput-object v1, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->edit:Lcom/samsung/app/video/editor/external/Edit;

    goto :goto_27
.end method

.method private final split()V
    .registers 27

    .prologue
    .line 665
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v22

    if-nez v22, :cond_7

    .line 837
    :cond_6
    :goto_6
    return-void

    .line 668
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v22

    const/16 v23, 0x1e

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_28

    .line 669
    const v22, 0x7f080069

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_6

    .line 673
    :cond_28
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v19

    .line 674
    .local v19, thumbnailViewgroup:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 676
    .local v21, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "split check for time :"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v22

    const/high16 v23, 0x3f80

    cmpg-float v22, v22, v23

    if-gez v22, :cond_70

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->splitToast:Landroid/widget/Toast;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f08002d

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->splitToast:Landroid/widget/Toast;

    goto :goto_6

    .line 686
    :cond_70
    if-eqz v21, :cond_6

    .line 688
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v22

    if-eqz v22, :cond_83

    .line 689
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 690
    :cond_83
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    .line 691
    .local v8, element:Lcom/samsung/app/video/editor/external/Element;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "split check 2 for time :"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v23

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v25

    add-float v24, v24, v25

    sub-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v22

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v23

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v24

    add-float v23, v23, v24

    sub-float v22, v22, v23

    const/high16 v23, 0x3f80

    cmpg-float v22, v22, v23

    if-gez v22, :cond_de

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->splitToast:Landroid/widget/Toast;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f08002d

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->splitToast:Landroid/widget/Toast;

    goto/16 :goto_6

    .line 699
    :cond_de
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->resetAllUndo()V

    .line 700
    sget-object v22, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    if-eqz v22, :cond_ed

    .line 701
    sget-object v22, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->recycle()V

    .line 702
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->removeExtraView()V

    .line 705
    :cond_ed
    new-instance v22, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    const/16 v23, 0x0

    new-instance v24, Lcom/samsung/app/video/editor/external/Element;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Lcom/samsung/app/video/editor/external/Element;-><init>(Lcom/samsung/app/video/editor/external/Element;)V

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;-><init>(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Lcom/samsung/app/video/editor/external/Element;I)V

    sput-object v22, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    .line 706
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->undoSet()V

    .line 707
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentViewPositionInList()I

    move-result v5

    .line 709
    .local v5, currentPos:I
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v16

    .line 710
    .local v16, scrollX:I
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v6

    .line 711
    .local v6, currentTime:F
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v22

    sub-int v7, v22, v16

    .line 714
    .local v7, currentX:I
    int-to-float v0, v7

    move/from16 v22, v0

    const/high16 v23, 0x42fa

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 715
    .local v18, thumbSlice:I
    rem-int/lit8 v10, v7, 0x7d

    .line 716
    .local v10, mod:I
    const/16 v22, 0x3e

    move/from16 v0, v22

    if-lt v10, v0, :cond_138

    .line 717
    add-int/lit8 v18, v18, 0x1

    .line 718
    :cond_138
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "keep no of thumb:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mod:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_166

    .line 721
    add-int/lit8 v18, v18, 0x1

    .line 722
    :cond_166
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v22

    sub-int v15, v22, v18

    .line 723
    .local v15, removeViews:I
    if-nez v18, :cond_2cf

    .line 724
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->decreaseThumbnail(I)V

    .line 727
    :goto_177
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v14

    .line 728
    .local v14, oldEndTime:F
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v13

    .line 730
    .local v13, oldDuration:F
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    add-float v22, v22, v6

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 732
    invoke-virtual {v8, v6}, Lcom/samsung/app/video/editor/external/Element;->setDuration(F)V

    .line 733
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/samsung/app/video/editor/external/Element;->setSplitTime(F)V

    .line 745
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v23

    add-int v23, v23, v16

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200c5

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v23

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->createVideoClipViewGroup(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v12

    .line 749
    .local v12, newview:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 751
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v20

    .line 752
    .local v20, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    new-instance v11, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v11, v8}, Lcom/samsung/app/video/editor/external/Element;-><init>(Lcom/samsung/app/video/editor/external/Element;)V

    .line 754
    .local v11, newelement:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    add-float v22, v22, v6

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/samsung/app/video/editor/external/Element;->setSplitTime(F)V

    .line 755
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/samsung/app/video/editor/external/Element;->setStartTime(F)V

    .line 757
    invoke-virtual {v11, v14}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 758
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v22

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/samsung/app/video/editor/external/Element;->setDuration(F)V

    .line 762
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v22

    add-float v17, v22, v6

    .line 763
    .local v17, spiltTime:F
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "split drawing::"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 764
    const/4 v9, 0x0

    .local v9, i:I
    :goto_222
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_2d6

    .line 792
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "split drawing::"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 793
    const/4 v9, 0x0

    :goto_241
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_3df

    .line 820
    invoke-virtual {v12, v11}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setElement(Lcom/samsung/app/video/editor/external/Element;)Z

    .line 821
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "new clip start end split:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " duration:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 823
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_55f

    .line 824
    add-int/lit8 v22, v5, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->insertElement(Lcom/samsung/app/video/editor/external/Element;IZ)V

    .line 825
    add-int/lit8 v22, v5, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    .line 831
    :goto_2a8
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "remove view :"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 833
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->increaseThumbnail(I)V

    .line 834
    sget-object v22, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->setNewView(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V

    .line 835
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->removeUndoInformation()V

    goto/16 :goto_6

    .line 726
    .end local v9           #i:I
    .end local v11           #newelement:Lcom/samsung/app/video/editor/external/Element;
    .end local v12           #newview:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .end local v13           #oldDuration:F
    .end local v14           #oldEndTime:F
    .end local v17           #spiltTime:F
    .end local v20           #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_2cf
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->decreaseThumbnail(I)V

    goto/16 :goto_177

    .line 765
    .restart local v9       #i:I
    .restart local v11       #newelement:Lcom/samsung/app/video/editor/external/Element;
    .restart local v12       #newview:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .restart local v13       #oldDuration:F
    .restart local v14       #oldEndTime:F
    .restart local v17       #spiltTime:F
    .restart local v20       #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_2d6
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " old drawing item:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "S :::"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 766
    const-string v23, "E::: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 765
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    cmpg-float v22, v22, v17

    if-gez v22, :cond_34e

    .line 768
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    cmpg-float v22, v22, v17

    if-ltz v22, :cond_38e

    .line 771
    :cond_34e
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    cmpg-float v22, v22, v17

    if-gez v22, :cond_392

    .line 772
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    cmpl-float v22, v22, v17

    if-lez v22, :cond_392

    .line 773
    const-string v22, "drawing that was split, update clipart "

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    .line 764
    :cond_38e
    :goto_38e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_222

    .line 776
    :cond_392
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    cmpl-float v22, v22, v17

    if-lez v22, :cond_38e

    .line 777
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    cmpl-float v22, v22, v17

    if-lez v22, :cond_38e

    .line 778
    const-string v22, "drawings entirely in new element, update clipart "

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 779
    const-string v22, "remove drawing clipart from list"

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 781
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 782
    add-int/lit8 v9, v9, -0x1

    goto :goto_38e

    .line 794
    :cond_3df
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "drawing item:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "S :::"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 795
    const-string v23, "E::: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 794
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    cmpg-float v22, v22, v17

    if-gez v22, :cond_47a

    .line 797
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    cmpg-float v22, v22, v17

    if-gez v22, :cond_47a

    .line 799
    const-string v22, "remove drawing clipart from list"

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 801
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 802
    add-int/lit8 v9, v9, -0x1

    .line 793
    :cond_476
    :goto_476
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_241

    .line 803
    :cond_47a
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    cmpg-float v22, v22, v17

    if-gez v22, :cond_4e2

    .line 804
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    cmpl-float v22, v22, v17

    if-lez v22, :cond_4e2

    .line 805
    const-string v22, "drawing that was split, update clipart "

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    .line 807
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v24

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v23

    sub-float v23, v23, v17

    add-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    goto :goto_476

    .line 808
    :cond_4e2
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v22

    cmpl-float v22, v22, v17

    if-lez v22, :cond_476

    .line 809
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v22

    cmpl-float v22, v22, v17

    if-lez v22, :cond_476

    .line 810
    const-string v22, "drawings entirely in new element, update clipart "

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v24

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v23

    sub-float v23, v23, v17

    add-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    .line 812
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v24

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v23

    sub-float v23, v23, v17

    add-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    goto/16 :goto_476

    .line 828
    :cond_55f
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/samsung/app/video/editor/external/TranscodeElement;->addElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 829
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2a8
.end method

.method public static splitUndo()Z
    .registers 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 561
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v6

    if-nez v6, :cond_c

    move v6, v7

    .line 657
    .local v1, currentElement:Lcom/samsung/app/video/editor/external/Element;
    .local v5, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :goto_b
    return v6

    .line 563
    .end local v1           #currentElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v5           #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_c
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v6

    const v9, 0x7f0b0125

    invoke-virtual {v6, v9}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    sput-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    .line 564
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    if-eqz v6, :cond_1ef

    .line 565
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mOperationType:I

    if-ne v6, v8, :cond_f6

    .line 566
    const-string v6, "Going for split undo"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->stopPlayer()V

    .line 570
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v0

    .line 572
    .local v0, childNo:I
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 573
    .restart local v1       #currentElement:Lcom/samsung/app/video/editor/external/Element;
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setElement(Lcom/samsung/app/video/editor/external/Element;)Z

    .line 575
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v6

    add-int/2addr v6, v0

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->parentViewThumnailNumber:I

    if-le v6, v9, :cond_e8

    .line 576
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->parentViewThumnailNumber:I

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v9

    sub-int v3, v6, v9

    .line 577
    .local v3, no:I
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->increaseThumbnail(I)V

    .line 578
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->setChildCount(I)V

    .line 584
    .end local v3           #no:I
    :goto_71
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6, v9, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeView(Landroid/view/View;Z)V

    .line 586
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    .line 587
    .restart local v5       #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->replaceElement(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V

    .line 590
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->setOperationType(I)V

    .line 593
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->setParentElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 597
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eq v6, v9, :cond_c1

    .line 598
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v4

    .line 599
    .local v4, startX:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    invoke-virtual {v6, v9, v7}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 602
    .end local v4           #startX:I
    :cond_c1
    const-string v6, "Split undo done"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 604
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    const v9, 0x7f0800bf

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(I)V

    .line 605
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v6

    if-eq v6, v11, :cond_de

    .line 606
    const v6, 0x7f080043

    invoke-static {v6, v10, v7, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 653
    .end local v0           #childNo:I
    :cond_de
    :goto_de
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->calculateCurrentTime()V

    move v6, v8

    .line 654
    goto/16 :goto_b

    .line 580
    .end local v5           #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .restart local v0       #childNo:I
    :cond_e8
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->increaseThumbnail(I)V

    .line 581
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->setChildCount(I)V

    goto/16 :goto_71

    .line 609
    .end local v0           #childNo:I
    .end local v1           #currentElement:Lcom/samsung/app/video/editor/external/Element;
    :cond_f6
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v6

    const/16 v9, 0x1e

    if-lt v6, v9, :cond_10f

    .line 610
    const v6, 0x7f080069

    invoke-static {v6, v10, v7, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    move v6, v7

    .line 611
    goto/16 :goto_b

    .line 613
    :cond_10f
    const-string v6, "Going for split redo"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->stopPlayer()V

    .line 617
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 618
    .restart local v1       #currentElement:Lcom/samsung/app/video/editor/external/Element;
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setElement(Lcom/samsung/app/video/editor/external/Element;)Z

    .line 619
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mChildCount:I

    sub-int/2addr v6, v9

    if-lez v6, :cond_144

    .line 620
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mChildCount:I

    invoke-virtual {v6, v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->decreaseThumbnail(I)V

    .line 623
    :cond_144
    const/4 v2, 0x0

    .line 624
    .local v2, i:I
    :goto_145
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v6

    if-lt v2, v6, :cond_1d9

    .line 630
    :goto_14f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    .line 631
    .restart local v5       #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->replaceElement(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V

    .line 632
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "new view is :"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " addeing at :"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6, v9, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    .line 634
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v6, v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->insertElement(Lcom/samsung/app/video/editor/external/Element;IZ)V

    .line 636
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->setOperationType(I)V

    .line 637
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->setParentElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 641
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eq v6, v9, :cond_1ca

    .line 642
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v4

    .line 643
    .restart local v4       #startX:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    invoke-virtual {v6, v9, v7}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 646
    .end local v4           #startX:I
    :cond_1ca
    const-string v6, "Split redo done"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 647
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    const v7, 0x7f080064

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_de

    .line 625
    .end local v5           #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_1d9
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sget-object v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-ne v6, v9, :cond_1eb

    .line 626
    add-int/lit8 v2, v2, 0x1

    .line 627
    goto/16 :goto_14f

    .line 624
    :cond_1eb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_145

    .end local v1           #currentElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v2           #i:I
    :cond_1ef
    move v6, v7

    .line 657
    goto/16 :goto_b
.end method

.method private static stopPlayer()V
    .registers 1

    .prologue
    .line 555
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 556
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 558
    :cond_17
    return-void
.end method

.method public static undoSet()V
    .registers 0

    .prologue
    .line 527
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->undoSet()V

    .line 528
    return-void
.end method

.method private updateMusicView(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "displayName"
    .parameter "element"

    .prologue
    .line 1658
    const v2, 0x7f0b0108

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 1660
    .local v1, musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    if-eqz v1, :cond_11

    .line 1661
    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->setMusic(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 1662
    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->refreshText()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    .line 1667
    .end local v1           #musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    :cond_11
    :goto_11
    return-void

    .line 1664
    :catch_12
    move-exception v0

    .line 1665
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method


# virtual methods
.method public addChangeModeListener(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    .line 1698
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    return-void
.end method

.method public addDrawing(F)Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 10
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1509
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1554
    :cond_8
    :goto_8
    return-object v0

    .line 1512
    :cond_9
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 1513
    .local v1, currentTranscodeEle:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_29

    .line 1514
    :cond_21
    const v5, 0x7f08006a

    const/4 v6, -0x1

    invoke-static {v5, v6, v7, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_8

    .line 1534
    :cond_29
    new-instance v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>()V

    .line 1535
    .local v0, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v4

    .line 1536
    .local v4, mstartTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    .line 1537
    .local v2, mElement:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v2, :cond_45

    .line 1538
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    add-float/2addr v4, v5

    .line 1540
    :cond_45
    add-float v5, v4, p1

    invoke-virtual {v0, v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    .line 1541
    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    .line 1546
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Text startTime and end time in storyboard :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-float v6, v4, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1546
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1549
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v5, :cond_8

    .line 1551
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 1552
    .local v3, mVideoClipViewGroup:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/app/video/editor/external/Element;->addDrawingEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    goto :goto_8
.end method

.method public addText(Ljava/lang/String;F)Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 9
    .parameter "text"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1566
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1577
    :goto_8
    return-object v2

    .line 1569
    :cond_9
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 1570
    .local v0, currentTranscodeEle:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_29

    .line 1571
    :cond_21
    const v3, 0x7f08006a

    const/4 v4, -0x1

    invoke-static {v3, v4, v5, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_8

    .line 1576
    :cond_29
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v1

    .line 1577
    .local v1, x:I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->insertText(FFLjava/lang/String;F)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    goto :goto_8
.end method

.method public bitmapDragged(FFLandroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "drawable"

    .prologue
    .line 1589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->viewDragged(FFLandroid/view/View;)V

    .line 1590
    return-void
.end method

.method public bitmapDropped(FFLandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "drawable"
    .parameter "type"
    .parameter "filePath"
    .parameter "duration"

    .prologue
    const v1, 0x7f08001f

    const/4 v2, 0x0

    .line 1379
    if-nez p4, :cond_1a

    .line 1380
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/samsung/app/video/editor/external/NativeInterface;->FindIfJPEG(Ljava/lang/String;)I

    move-result v7

    .line 1382
    .local v7, value:I
    if-gez v7, :cond_1a

    .line 1383
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1404
    .end local v7           #value:I
    :cond_19
    :goto_19
    return-void

    .line 1387
    :cond_1a
    const/4 v0, 0x1

    if-ne p4, v0, :cond_31

    .line 1388
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetCodecFileProperties(Ljava/lang/String;)I

    move-result v7

    .line 1390
    .restart local v7       #value:I
    if-gez v7, :cond_31

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 1396
    .end local v7           #value:I
    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->checkViewDroppedParams(FF)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1397
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 1398
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_55

    .line 1399
    const v0, 0x7f080069

    const/4 v1, -0x1

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_19

    .line 1402
    :cond_55
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->insertMedia(FFLandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public cameraBitmapDropped(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "drawable"
    .parameter "type"
    .parameter "filePath"
    .parameter "duration"

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 1415
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1c

    .line 1416
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetCodecFileProperties(Ljava/lang/String;)I

    move-result v7

    .line 1418
    .local v7, value:I
    if-gez v7, :cond_1c

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f08001f

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1467
    .end local v7           #value:I
    :goto_1b
    return-void

    .line 1423
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1424
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_39

    .line 1425
    const v0, 0x7f080069

    invoke-static {v0, v2, v5, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_1b

    .line 1428
    :cond_39
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentViewPositionInList()I

    move-result v6

    .line 1429
    .local v6, pos:I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "camera bitmap pos:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1443
    if-ne v6, v2, :cond_61

    .line 1444
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->insertMedia(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b

    .line 1446
    :cond_61
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    add-int/lit8 v5, v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->insertMedia(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b
.end method

.method public final changeMode(I)V
    .registers 14
    .parameter "mode"

    .prologue
    const/4 v11, 0x5

    const/16 v10, 0x8

    const v9, 0x7f0b0100

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1015
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_f

    .line 1283
    :cond_e
    :goto_e
    return-void

    .line 1018
    :cond_f
    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    if-eq v3, p1, :cond_e

    .line 1020
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpTime:F

    .line 1021
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 1023
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_ca

    .line 1024
    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    .line 1025
    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpTime:F

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_47

    .line 1026
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpTime:F

    .line 1036
    :cond_47
    :goto_47
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    const v4, 0x7f0b0098

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1037
    .local v1, timeview:Landroid/view/View;
    if-ne p1, v8, :cond_e7

    .line 1038
    if-eqz v1, :cond_5a

    .line 1039
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    :cond_5a
    :goto_5a
    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    if-ne v3, v11, :cond_87

    .line 1046
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTransitionView()V

    .line 1048
    iput v7, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    .line 1049
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeMode(I)V

    .line 1050
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v3, :cond_87

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v3

    if-eq v3, v8, :cond_87

    .line 1051
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updatePosition(Lcom/samsung/app/video/editor/external/Element;J)V

    .line 1054
    :cond_87
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationSubMode:I

    .line 1055
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    .line 1059
    if-eq p1, v8, :cond_91

    const/4 v3, 0x2

    if-ne p1, v3, :cond_ec

    .line 1060
    :cond_91
    const v3, 0x7f0b0103

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    :cond_9b
    :goto_9b
    if-ne p1, v8, :cond_105

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_105

    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 1069
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 1153
    const-wide/16 v5, 0x96

    .line 1069
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1281
    :cond_c5
    :goto_c5
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->notifyChangeModeListeners()V

    goto/16 :goto_e

    .line 1028
    .end local v1           #timeview:Landroid/view/View;
    .restart local v2       #view:Landroid/view/View;
    :cond_ca
    instance-of v3, v2, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v3, :cond_47

    .line 1030
    check-cast v2, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    .line 1031
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpTime:F

    goto/16 :goto_47

    .line 1041
    .restart local v1       #timeview:Landroid/view/View;
    :cond_e7
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5a

    .line 1061
    :cond_ec
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v3

    if-eqz v3, :cond_9b

    .line 1062
    const v3, 0x7f0b0103

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9b

    .line 1156
    :cond_105
    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    if-nez v3, :cond_199

    .line 1158
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeMode(I)V

    .line 1161
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1162
    .local v0, scrollParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x13

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1163
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    const v3, 0x7f0b0102

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    const v3, 0x7f0b0101

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v8, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1170
    const v3, 0x7f0b0105

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1171
    const v3, 0x7f0b0108

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->makeMusicDurationButtonVisible()V

    .line 1174
    const v3, 0x7f0b010a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x190

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1175
    const v3, 0x7f0b010d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1176
    const v3, 0x7f0b010b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideTrimBar()V

    .line 1180
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideSplitButton()V

    .line 1181
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 1182
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$6;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 1189
    const-wide/16 v5, 0x14

    .line 1182
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c5

    .line 1192
    .end local v0           #scrollParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_199
    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1d1

    .line 1195
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 1196
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 1197
    :cond_1c3
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 1246
    const-wide/16 v5, 0x96

    .line 1197
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c5

    .line 1247
    :cond_1d1
    if-ne p1, v11, :cond_c5

    .line 1249
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeMode(I)V

    .line 1251
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1252
    .restart local v0       #scrollParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x13

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1253
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    const v3, 0x7f0b0102

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    const v3, 0x7f0b0101

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v8, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1259
    const v3, 0x7f0b0105

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1260
    const v3, 0x7f0b0108

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    const v3, 0x7f0b010a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x190

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1263
    const v3, 0x7f0b010d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1264
    const v3, 0x7f0b010b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideTrimBar()V

    .line 1267
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideSplitButton()V

    .line 1268
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeMode(I)V

    .line 1270
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$8;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 1278
    const-wide/16 v5, 0x14

    .line 1270
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c5
.end method

.method public final changeSubMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 941
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationSubMode:I

    .line 943
    return-void
.end method

.method public checkViewDroppedParams(FFLandroid/view/View;)Z
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1349
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->stopAutoScoll()V

    .line 1352
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1353
    .local v0, scrollPos:[I
    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1355
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "scrollPos :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TimeLineViewGroup : viewDropped :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1359
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_98

    .line 1360
    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_98

    .line 1361
    aget v3, v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_98

    .line 1362
    aget v3, v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_98

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TimeLineViewGroup : viewDropped on Scroller:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1367
    :goto_97
    return v1

    :cond_98
    move v1, v2

    goto :goto_97
.end method

.method public freeze(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeLinViewGroup freeze:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 268
    if-eqz p1, :cond_18

    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mShouldAllowScroll:Z

    .line 269
    return-void

    .line 268
    :cond_18
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public final getOperationMode()I
    .registers 2

    .prologue
    .line 861
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    return v0
.end method

.method public final getOperationSubMode()I
    .registers 2

    .prologue
    .line 865
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationSubMode:I

    return v0
.end method

.method public hideCaptionBar()V
    .registers 6

    .prologue
    const v4, 0x7f0b0106

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 987
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 988
    :cond_10
    const-string v0, "User is in trim mode no caption hide also"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1004
    :cond_15
    :goto_15
    return-void

    .line 992
    :cond_16
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_15

    .line 994
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iput-boolean v2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->captionBarOn:Z

    .line 999
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->makeMusicDurationButtonVisible()V

    .line 1000
    const v0, 0x7f0b010a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1001
    const v0, 0x7f0b010d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1002
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->hideCaptionBar()V

    goto :goto_15
.end method

.method public makeMusicDurationButtonInVisible()V
    .registers 4

    .prologue
    const v2, 0x7f0b0110

    .line 315
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 316
    .local v0, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 317
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAudioListCount()I

    move-result v1

    if-nez v1, :cond_28

    .line 318
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :cond_28
    return-void
.end method

.method public makeMusicDurationButtonVisible()V
    .registers 5

    .prologue
    .line 293
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_33

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    if-nez v1, :cond_33

    .line 294
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 295
    .local v0, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAudioListCount()I

    move-result v1

    if-lez v1, :cond_33

    .line 296
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    const v2, 0x7f0b0110

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->captionBarOn:Z

    if-nez v1, :cond_33

    .line 297
    new-instance v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$2;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 303
    const-wide/16 v2, 0x64

    .line 297
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    .end local v0           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_33
    return-void
.end method

.method public musicDropped(FFLjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "filePath"
    .parameter "displayName"
    .parameter "duration"

    .prologue
    const/4 v4, 0x0

    .line 1478
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1496
    :cond_7
    :goto_7
    return-void

    .line 1481
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 1482
    .local v0, currentTranscodeEle:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    .line 1483
    :cond_20
    const v2, 0x7f08006a

    const/4 v3, -0x1

    invoke-static {v2, v3, v4, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_7

    .line 1486
    :cond_28
    const/4 v1, 0x1

    .line 1488
    .local v1, value:I
    if-gez v1, :cond_38

    .line 1489
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    const v3, 0x7f08001f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1492
    :cond_38
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->checkViewDroppedParams(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1494
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->updateMusic(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7
.end method

.method public onActivityPaused()V
    .registers 1

    .prologue
    .line 1728
    return-void
.end method

.method public onActivityResumed()V
    .registers 7

    .prologue
    const/16 v1, 0xa

    .line 1731
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1751
    :cond_8
    :goto_8
    return-void

    .line 1733
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->refresh()V

    .line 1736
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1737
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-eqz v0, :cond_56

    .line 1739
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1740
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Constants;->getThemeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    :goto_46
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    if-eqz v0, :cond_8

    .line 1749
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    const/16 v3, 0x500

    const/16 v4, 0x122

    const/4 v5, 0x1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->update(IIIIZ)V

    goto :goto_8

    .line 1743
    :cond_56
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1744
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Constants;->getThemeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 232
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_a

    .line 235
    :goto_9
    return-void

    .line 234
    :cond_a
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    goto :goto_9
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 239
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    if-eqz v0, :cond_f

    .line 240
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitUndoRedo:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->recycle()V

    .line 241
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->removeExtraView()V

    .line 244
    :cond_f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 363
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 364
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_a

    .line 401
    :goto_9
    return-void

    .line 366
    :cond_a
    const-string v0, "TimeLineViewGroup onFinishInflate"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->finishInflate()V

    .line 368
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->timeLineFinishInflate()V

    goto :goto_9
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mShouldAllowScroll:Z

    if-nez v0, :cond_b

    .line 260
    const-string v0, "TimeLinViewGroup returing false"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 1708
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1719
    :goto_6
    return-void

    .line 1711
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->refreshMusicBar()V

    .line 1712
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->checkElements()V

    .line 1713
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getInstance()Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1714
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getInstance()Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->refresh()V

    .line 1715
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getInstance()Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1716
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getInstance()Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->refresh()V

    .line 1718
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->refresh()V

    goto :goto_6
.end method

.method public removeChangeModeListener(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1703
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mChangeModeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1705
    :cond_9
    return-void
.end method

.method public setDrawingUndo()V
    .registers 1

    .prologue
    .line 552
    return-void
.end method

.method public showCaptionBar()V
    .registers 5

    .prologue
    const v2, 0x7f0b0106

    .line 947
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 948
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v0

    if-nez v0, :cond_22

    .line 984
    :cond_21
    :goto_21
    return-void

    .line 951
    :cond_22
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 952
    :cond_2c
    const-string v0, "User is in trim mode no caption shown"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_21

    .line 957
    :cond_32
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    .line 961
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 962
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    .line 960
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 982
    const-wide/16 v2, 0x0

    .line 963
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method public showClipDeleteView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mParent:Lcom/sec/android/app/ve/view/DragLayer;

    if-nez v0, :cond_13

    .line 1287
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mParent:Lcom/sec/android/app/ve/view/DragLayer;

    .line 1288
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    if-nez v0, :cond_24

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mParent:Lcom/sec/android/app/ve/view/DragLayer;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    .line 1290
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->setVisibility(I)V

    .line 1293
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 1294
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->dragListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;

    if-nez v0, :cond_3d

    .line 1295
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->dragListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;

    .line 1296
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->dragListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->setDragView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mParent:Lcom/sec/android/app/ve/view/DragLayer;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->dragListener:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/DragLayer;->setDragListener(Lcom/sec/android/app/ve/view/DragLayer$DragListener;)V

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mParent:Lcom/sec/android/app/ve/view/DragLayer;

    invoke-interface {p1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/DragLayer;->startDragging(Landroid/view/View;)V

    .line 1299
    return-void
.end method

.method public showEditDurationPopup(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "element"

    .prologue
    const/16 v3, 0xa

    .line 406
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v0

    if-lez v0, :cond_16

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 415
    :cond_16
    :goto_16
    return-void

    .line 409
    :cond_17
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->init()V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->paintPopup:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->showAtLocation(Landroid/view/View;III)V

    .line 412
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->init(Lcom/samsung/app/video/editor/external/Element;)V

    goto :goto_16
.end method

.method public final trimFocusChanged(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 11
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    const/4 v7, 0x0

    .line 842
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    .line 843
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_7d

    move-object v0, v4

    .line 844
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 845
    .local v0, cView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v2

    .line 846
    .local v2, startPos:I
    const v5, 0x7f0b0116

    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/view/trim/TrimBarView;

    .line 847
    .local v3, trimbar:Lcom/sec/android/app/ve/view/trim/TrimBarView;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 849
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x29

    add-int/lit16 v5, v5, 0x176

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x29

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setting the width :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " start X :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " padding :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " clip widht:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v3, v1}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    add-int/lit16 v5, v2, 0x176

    invoke-virtual {v3, v5, v7, v7, v7}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->setPadding(IIII)V

    .line 856
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->initBothBars()V

    .line 858
    .end local v0           #cView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #startPos:I
    .end local v3           #trimbar:Lcom/sec/android/app/ve/view/trim/TrimBarView;
    :cond_7d
    return-void
.end method

.method public trimRedo()Z
    .registers 2

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->trimUndo()Z

    move-result v0

    return v0
.end method

.method public final trimUndo()Z
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 873
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getTrimUndoRedoInfo()Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    move-result-object v2

    .line 874
    .local v2, mTrimUndoRedoInfo:Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v6

    const v7, 0x7f0b0125

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    sput-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    .line 875
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 877
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    const v7, 0x7f0800bf

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 883
    :goto_24
    if-nez v2, :cond_26

    .line 885
    :cond_26
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->stopPlayer()V

    .line 886
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->getVideoClipViewGroup()Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v5

    .line 887
    .local v5, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v6

    if-eq v6, v5, :cond_4d

    .line 888
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v3

    .line 889
    .local v3, startX:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v6, v7, v9}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 892
    .end local v3           #startX:I
    :cond_4d
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 893
    .local v0, currentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v0, :cond_74

    .line 894
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 895
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->getWhichEnd()I

    move-result v6

    if-ne v6, v8, :cond_8e

    .line 896
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v4

    .line 897
    .local v4, tmp:F
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->getTime()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/app/video/editor/external/Element;->setStartTime(F)V

    .line 898
    invoke-virtual {v2, v4}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->setTime(F)V

    .line 899
    invoke-virtual {v2, v8}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->setWhichEnd(I)V

    .line 908
    .end local v1           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v4           #tmp:F
    :cond_74
    :goto_74
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v6

    if-ne v6, v8, :cond_a1

    .line 909
    invoke-virtual {p0, v10, v10}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->trimFocusChanged(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V

    .line 914
    :cond_7d
    :goto_7d
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->calculateCurrentTime()V

    .line 915
    return v8

    .line 881
    .end local v0           #currentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .end local v5           #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_85
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mUndoControlButton:Landroid/widget/Button;

    const v7, 0x7f080064

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_24

    .line 902
    .restart local v0       #currentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .restart local v1       #element:Lcom/samsung/app/video/editor/external/Element;
    .restart local v5       #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_8e
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    .line 903
    .restart local v4       #tmp:F
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->getTime()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 904
    invoke-virtual {v2, v4}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->setTime(F)V

    .line 905
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->setWhichEnd(I)V

    goto :goto_74

    .line 910
    .end local v1           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v4           #tmp:F
    :cond_a1
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 911
    const v6, 0x7f080042

    const/4 v7, -0x1

    invoke-static {v6, v7, v9, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_7d
.end method

.method public update()V
    .registers 2

    .prologue
    .line 418
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 419
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->finishInflate()V

    .line 420
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->finishInflate()V

    .line 421
    return-void
.end method

.method public updateMusic(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "filePath"
    .parameter "displayName"
    .parameter "duration"

    .prologue
    const/16 v5, 0x64

    .line 1626
    new-instance v1, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/external/Element;-><init>()V

    .line 1627
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/Element;->setType(I)V

    .line 1628
    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/Element;->setFilePath(Ljava/lang/String;)V

    .line 1630
    int-to-float v3, p3

    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 1631
    int-to-float v3, p3

    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/Element;->setDuration(F)V

    .line 1632
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got the duration :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1634
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 1635
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 1636
    invoke-virtual {v0, v5}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 1637
    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 1639
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    .end local v0           #edit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 1640
    .restart local v0       #edit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 1641
    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 1642
    invoke-virtual {v0, v5}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 1644
    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 1647
    invoke-virtual {v1, p2}, Lcom/samsung/app/video/editor/external/Element;->setAudioDisplayName(Ljava/lang/String;)V

    .line 1648
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 1649
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 1650
    .local v2, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v2, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->addAdditionlAudioEleList(Lcom/samsung/app/video/editor/external/Element;)V

    .line 1653
    .end local v2           #transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_69
    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->updateMusicView(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 1654
    return-void
.end method

.method public viewDragged(FFLandroid/view/View;)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "movingView"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1599
    new-array v0, v5, [I

    .line 1600
    .local v0, scrollPos:[I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getLocationOnScreen([I)V

    .line 1602
    aget v1, v0, v3

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_56

    .line 1603
    aget v1, v0, v3

    .line 1604
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_56

    .line 1606
    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x46

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_34

    .line 1607
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->startAutoScroll(I)V

    .line 1617
    :goto_33
    return-void

    .line 1609
    :cond_34
    aget v1, v0, v4

    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x46

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4e

    .line 1610
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->startAutoScroll(I)V

    goto :goto_33

    .line 1612
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->stopAutoScoll()V

    goto :goto_33

    .line 1615
    :cond_56
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->stopAutoScoll()V

    goto :goto_33
.end method

.method public viewDropped(FFLandroid/view/View;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "movingView"

    .prologue
    .line 1308
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->checkViewDroppedParams(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1309
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changePosition(FFLandroid/view/View;)V

    .line 1311
    :cond_d
    return-void
.end method
