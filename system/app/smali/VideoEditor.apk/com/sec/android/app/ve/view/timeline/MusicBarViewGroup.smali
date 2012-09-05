.class public Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
.super Landroid/widget/LinearLayout;
.source "MusicBarViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final MSG_CALL_DRAG:I = 0xc

.field private static final MSG_CHECK_DOUBLE_TAP:I = 0xb


# instance fields
.field builder:Landroid/app/AlertDialog$Builder;

.field private dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

.field private isCreating:Z

.field private mBGMVolume:I

.field private mBGMVolumeSeek:Landroid/widget/SeekBar;

.field private mCancelButton:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMusicbarBgm:Landroid/view/ViewGroup;

.field private mMusicbarDoubleTap:Z

.field private mMusicbarText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mVideoVolume:I

.field private mVideoVolumeSeek:Landroid/widget/SeekBar;

.field private mVolumeControl:Landroid/widget/LinearLayout;

.field private mVolume_control:Landroid/app/Dialog;

.field private qa:Lcom/sec/android/app/ve/ui/CalloutPopup;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->DOUBLE_TAP_TIMEOUT:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolumeControl:Landroid/widget/LinearLayout;

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mCancelButton:Landroid/widget/Button;

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    .line 65
    iput v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    .line 67
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->isCreating:Z

    .line 68
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 90
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 260
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    .line 294
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 305
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    .line 351
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolumeControl:Landroid/widget/LinearLayout;

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mCancelButton:Landroid/widget/Button;

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    .line 65
    iput v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    .line 67
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->isCreating:Z

    .line 68
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 90
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$3;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 260
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    .line 294
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 305
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    .line 346
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Z
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarDoubleTap:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarDoubleTap:Z

    return-void
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dismissVolumeDialog(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    return-void
.end method

.method static synthetic access$12(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3()I
    .registers 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->DOUBLE_TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    .registers 2
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->x:I

    return v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->x:I

    return-void
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->y:I

    return-void
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 1
    .parameter

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->updateVideoVolumeLevel()V

    return-void
.end method

.method private applyVolumeLevelToList(Ljava/util/List;I)V
    .registers 7
    .parameter "aList"
    .parameter "aVolumeLevel"

    .prologue
    .line 613
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_8

    .line 621
    return-void

    .line 614
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 615
    .local v1, lElement:Lcom/samsung/app/video/editor/external/Element;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Volume Level Before setting -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v2

    mul-int/lit8 v3, p2, 0xa

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 617
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFadInFadOutEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 618
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFadInFadOutEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v2

    mul-int/lit8 v3, p2, 0xa

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 619
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Volume Level After setting -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createVolumeBGMDialog()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, view:Landroid/view/ViewGroup;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 399
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 400
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v2, 0x7f030046

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 402
    .restart local v1       #view:Landroid/view/ViewGroup;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->builder:Landroid/app/AlertDialog$Builder;

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 404
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f08004c

    new-instance v4, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$6;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f08004d

    new-instance v4, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$7;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    new-instance v3, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$8;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 432
    .end local v0           #inflator:Landroid/view/LayoutInflater;
    :cond_63
    const v2, 0x7f0b012d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolumeControl:Landroid/widget/LinearLayout;

    .line 433
    const v2, 0x7f0b012e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getVolumeLevels()V

    .line 437
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    if-eqz v2, :cond_9b

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 440
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 441
    const-string v2, "Setting Video SeekBar Listener"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    new-instance v3, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$9;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 463
    :cond_9b
    const v2, 0x7f0b0133

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    .line 465
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    if-eqz v2, :cond_c5

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 468
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 469
    const-string v2, "Setting BGM SeekBar Listener"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    new-instance v3, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$10;-><init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 490
    :cond_c5
    return-void
.end method

.method private dismissVolumeDialog(Z)V
    .registers 3
    .parameter "aMakeNull"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 666
    if-eqz p1, :cond_e

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    .line 668
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->isCreating:Z

    .line 670
    :cond_11
    return-void
.end method

.method private getVolumeLevels()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 567
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-nez v4, :cond_8

    .line 590
    :cond_7
    :goto_7
    return-void

    .line 569
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    .line 570
    .local v2, lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v2, :cond_44

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_44

    .line 572
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Element;

    .line 573
    .local v3, lFirst:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v3, :cond_44

    .line 575
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getVolumeLevel()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Previous video volume level -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 580
    .end local v3           #lFirst:Lcom/samsung/app/video/editor/external/Element;
    :cond_44
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v1

    .line 581
    .local v1, lAudioList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 583
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 584
    .local v0, lAudio:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v0, :cond_7

    .line 586
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getVolumeLevel()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Previous BGM volume level -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_7
.end method

.method static gettextWidth(Landroid/widget/TextView;)F
    .registers 3
    .parameter "mMusicbarText"

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 255
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private updateVideoVolumeLevel()V
    .registers 4

    .prologue
    .line 594
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v1

    .line 595
    .local v1, lElemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v1, :cond_13

    .line 596
    iget v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->applyVolumeLevelToList(Ljava/util/List;I)V

    .line 598
    :cond_13
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v0

    .line 599
    .local v0, lAudioList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v0, :cond_26

    .line 600
    iget v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->applyVolumeLevelToList(Ljava/util/List;I)V

    .line 601
    :cond_26
    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .prologue
    .line 492
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    .line 494
    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarBgm:Landroid/view/ViewGroup;

    .line 495
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mTimeLineListener:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarBgm:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarBgm:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarBgm:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 501
    return-void
.end method

.method public musicDelete()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-nez v1, :cond_8

    .line 381
    :goto_7
    return-void

    .line 373
    :cond_8
    const-string v1, "Music delete"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 375
    .local v0, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 376
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeBGMMusic()V

    .line 379
    :cond_28
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->setMusic(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_7
.end method

.method public musicOff()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarBgm:Landroid/view/ViewGroup;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 637
    return-void
.end method

.method public musicOn()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarBgm:Landroid/view/ViewGroup;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 629
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 359
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dismissVolumeDialog(Z)V

    .line 361
    return-void
.end method

.method public onDoubleTap()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 179
    :cond_8
    :goto_8
    return-void

    .line 120
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->isCreating:Z

    if-nez v0, :cond_8

    .line 122
    iput-boolean v3, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->isCreating:Z

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    if-eqz v0, :cond_bb

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 132
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAudioListCount()I

    move-result v0

    if-nez v0, :cond_35

    .line 133
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->isVideoFilePresentInStory()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 135
    :cond_35
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->createVolumeBGMDialog()V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    if-eqz v0, :cond_b7

    .line 138
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 140
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 142
    :cond_49
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getVolumeLevels()V

    .line 144
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->isVideoFilePresentInStory()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 158
    :goto_66
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 159
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_aa

    .line 161
    :cond_86
    iput v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 170
    :goto_94
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_8

    .line 151
    :cond_9b
    iput v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVideoVolumeSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_66

    .line 167
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolumeSeek:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mBGMVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_94

    .line 174
    :cond_b7
    iput-boolean v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->isCreating:Z

    goto/16 :goto_8

    .line 177
    :cond_bb
    iput-boolean v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->isCreating:Z

    goto/16 :goto_8
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->init()V

    .line 356
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->x:I

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->y:I

    .line 366
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshText()V
    .registers 5

    .prologue
    .line 506
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 509
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    iget-object v0, v1, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 513
    :cond_2a
    if-nez v0, :cond_2d

    .line 562
    .end local v0           #filePath:Ljava/lang/String;
    :cond_2c
    :goto_2c
    return-void

    .line 516
    .restart local v0       #filePath:Ljava/lang/String;
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v1

    packed-switch v1, :pswitch_data_14a

    goto :goto_2c

    .line 520
    :pswitch_3d
    sget-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VETheme;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VETheme;->getThemeBGM()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 527
    :pswitch_69
    sget-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VETheme;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VETheme;->getThemeBGM()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 533
    :pswitch_95
    sget-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VETheme;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VETheme;->getThemeBGM()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 539
    :pswitch_c2
    sget-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VETheme;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VETheme;->getThemeBGM()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 540
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 545
    :pswitch_ef
    sget-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VETheme;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VETheme;->getThemeBGM()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 551
    :pswitch_11c
    sget-object v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mThemeMap:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VETheme;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VETheme;->getThemeBGM()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 552
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 516
    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_69
        :pswitch_95
        :pswitch_c2
        :pswitch_ef
        :pswitch_11c
    .end packed-switch
.end method

.method public resetVolumeBGMDialog()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mVolume_control:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dismissVolumeDialog(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->onDoubleTap()V

    .line 392
    :cond_13
    return-void
.end method

.method public setMusic(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "displayName"
    .parameter "element"

    .prologue
    const/4 v2, 0x1

    .line 644
    if-eqz p1, :cond_1f

    .line 645
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->musicOn()V

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 648
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->notifyMusicChange(Lcom/samsung/app/video/editor/external/Element;Z)V

    .line 649
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->makeMusicDurationButtonVisible()V

    .line 659
    :goto_1e
    return-void

    .line 651
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->musicOff()V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 654
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->notifyMusicChange(Lcom/samsung/app/video/editor/external/Element;Z)V

    .line 655
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->makeMusicDurationButtonInVisible()V

    goto :goto_1e
.end method
