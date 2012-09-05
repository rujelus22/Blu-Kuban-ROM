.class public Lcom/sec/android/app/ve/view/OperationViewGroup;
.super Landroid/widget/FrameLayout;
.source "OperationViewGroup.java"


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/OperationViewGroup;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mContext:Landroid/content/Context;

    .line 49
    sput-object p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->_instance:Lcom/sec/android/app/ve/view/OperationViewGroup;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mContext:Landroid/content/Context;

    .line 53
    sput-object p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->_instance:Lcom/sec/android/app/ve/view/OperationViewGroup;

    .line 54
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p1, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mContext:Landroid/content/Context;

    .line 56
    const-string v0, "This is inside OperationViewGroup"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/ve/view/OperationViewGroup;->_instance:Lcom/sec/android/app/ve/view/OperationViewGroup;

    return-object v0
.end method

.method private init()V
    .registers 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    .line 65
    .local v0, lAddMediaControlView:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;
    const/16 v1, 0xa0

    const/16 v2, 0x154

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/view/OperationViewGroup;->addView(Landroid/view/View;II)V

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 69
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 70
    :cond_25
    sput-object p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->_instance:Lcom/sec/android/app/ve/view/OperationViewGroup;

    .line 71
    return-void
.end method


# virtual methods
.method public changeToAddMedia()V
    .registers 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->removeAllViews()V

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->init()V

    .line 123
    return-void
.end method

.method public changeToRetouch()V
    .registers 5

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->removeAllViews()V

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, view:Landroid/view/View;
    const/16 v1, 0xc8

    const/16 v2, 0x154

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/view/OperationViewGroup;->addView(Landroid/view/View;II)V

    .line 141
    return-void
.end method

.method public changeToTransition()V
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->removeAllViews()V

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    .line 131
    .local v0, transitionView:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    const/16 v1, 0xc8

    const/16 v2, 0x154

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/view/OperationViewGroup;->addView(Landroid/view/View;II)V

    .line 134
    return-void
.end method

.method public changeToTrim()V
    .registers 5

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->removeAllViews()V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030041

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    .line 111
    .local v0, trimMediaControlView:Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;
    const/16 v1, 0xc8

    const/16 v2, 0x154

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/view/OperationViewGroup;->addView(Landroid/view/View;II)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->init(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 114
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 115
    :cond_29
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 116
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 117
    :cond_37
    return-void
.end method

.method public launchTrimSection()V
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 79
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoVideoInVisible()V

    .line 80
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageInVisible()V

    .line 81
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoMusicInVisible()V

    .line 83
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inflateMediaPickerView(I)V

    .line 85
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->refreshFullStoryTime()V

    .line 87
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 89
    const-string v0, "opgv is not null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTrim()V

    .line 95
    :goto_3c
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 97
    const-string v0, "Making SurfaceView visible"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->makePreViewOperationVisible()V

    .line 104
    :cond_4e
    :goto_4e
    return-void

    .line 93
    :cond_4f
    const-string v0, "opgv is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_3c

    .line 103
    :cond_55
    const-string v0, "PVG is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_4e
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 39
    sput-object p0, Lcom/sec/android/app/ve/view/OperationViewGroup;->_instance:Lcom/sec/android/app/ve/view/OperationViewGroup;

    .line 40
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/OperationViewGroup;->_instance:Lcom/sec/android/app/ve/view/OperationViewGroup;

    .line 45
    return-void
.end method
