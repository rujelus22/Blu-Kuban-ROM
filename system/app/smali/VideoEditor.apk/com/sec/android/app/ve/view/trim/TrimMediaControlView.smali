.class public Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;
.super Landroid/widget/LinearLayout;
.source "TrimMediaControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

.field private static mUndoControlButton:Landroid/widget/Button;

.field private static mUndoDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mEffectControlButton:Landroid/view/View;

.field private mSplitControlButton:Landroid/view/View;

.field private mTransControlButton:Landroid/view/View;

.field private mTrimControlButton:Landroid/view/View;

.field private mdrawControlButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    sput-object p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->_instance:Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sput-object p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->_instance:Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->_instance:Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    return-object v0
.end method

.method private selectEffect()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->resetSelection()V

    .line 204
    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4b

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mEffectControlButton:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mEffectControlButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 212
    :cond_23
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 213
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    .line 214
    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 215
    :cond_31
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 216
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 217
    :cond_3e
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 218
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToRetouch()V

    .line 224
    :cond_4b
    return-void
.end method

.method private selectSplit()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 160
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    if-eq v0, v1, :cond_39

    .line 161
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 162
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->resetSelection()V

    .line 170
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getSplitUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 171
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    :goto_29
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mSplitControlButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 181
    const v0, 0x7f0b0120

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_39
    return-void

    .line 173
    :cond_3a
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_29
.end method

.method private selectTransition()V
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->resetSelection()V

    .line 190
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTransControlButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 192
    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 194
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 195
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTransition()V

    .line 200
    return-void
.end method

.method private selectTrim()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 227
    const-string v1, "Selected is Trim"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-nez v1, :cond_d

    .line 258
    :cond_c
    :goto_c
    return-void

    .line 230
    :cond_d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 231
    .local v0, currentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v1

    if-eqz v1, :cond_c

    .line 236
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 237
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 238
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->resetSelection()V

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTrimControlButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 250
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getTrimUndoRedoInfo()Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    move-result-object v1

    if-nez v1, :cond_55

    .line 251
    sget-object v1, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    :goto_49
    const v1, 0x7f0b011e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 253
    :cond_55
    sget-object v1, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_49
.end method

.method public static undoSet()V
    .registers 2

    .prologue
    .line 154
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 156
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const v3, 0x7f0800bf

    const/4 v2, 0x1

    .line 60
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTrimControlButton:Landroid/view/View;

    .line 61
    const v0, 0x7f0b011f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mSplitControlButton:Landroid/view/View;

    .line 62
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTransControlButton:Landroid/view/View;

    .line 63
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mEffectControlButton:Landroid/view/View;

    .line 65
    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTrimControlButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mSplitControlButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTransControlButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mEffectControlButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getTrimUndoRedoInfo()Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 88
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getTrimUndoRedoInfo()Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo()Z

    move-result v0

    if-nez v0, :cond_74

    .line 90
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 106
    :cond_74
    :goto_74
    return-void

    .line 92
    :cond_75
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getEffectUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 93
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getEffectUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    if-ne v0, v4, :cond_74

    .line 95
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_74

    .line 97
    :cond_8e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getSplitUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 98
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getSplitUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mOperationType:I

    if-ne v0, v4, :cond_74

    .line 100
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_74

    .line 103
    :cond_a7
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_74
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 110
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 111
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 113
    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 262
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 264
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 265
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 399
    :cond_19
    :goto_19
    return-void

    .line 268
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlayerCreated()Z

    move-result v5

    if-nez v5, :cond_19

    .line 272
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->endKenburns()Z

    .line 276
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    .line 278
    .local v4, parent:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_104

    goto :goto_19

    .line 315
    :sswitch_37
    const-string v5, "Effect click..."

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 317
    :try_start_3c
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->selectEffect()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_19

    .line 318
    :catch_40
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 281
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->selectTrim()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_19

    .line 282
    :catch_49
    move-exception v3

    .line 283
    .local v3, e3:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 288
    .end local v3           #e3:Ljava/lang/Exception;
    :sswitch_4e
    const-string v5, "Split it"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 290
    :try_start_53
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->selectSplit()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_19

    .line 291
    :catch_57
    move-exception v2

    .line 292
    .local v2, e2:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 297
    .end local v2           #e2:Ljava/lang/Exception;
    :sswitch_5c
    const-string v5, "Transition click..."

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 299
    :try_start_61
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_88

    .line 300
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    if-eqz v5, :cond_88

    .line 301
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v5

    if-le v5, v6, :cond_88

    .line 302
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->selectTransition()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_82} :catch_83

    goto :goto_19

    .line 308
    :catch_83
    move-exception v1

    .line 309
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 304
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_88
    :try_start_88
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 306
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v5, 0x7f080073

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9a} :catch_83

    goto/16 :goto_19

    .line 324
    :sswitch_9c
    const-string v5, "Undo/redo it : "

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 332
    :try_start_a1
    sget-object v5, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 335
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getTrimUndoRedoInfo()Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    move-result-object v5

    if-eqz v5, :cond_d1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v5

    if-eq v5, v7, :cond_d1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->trimUndo()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 342
    sget-object v5, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c9} :catch_cb

    goto/16 :goto_19

    .line 361
    :catch_cb
    move-exception v0

    .line 362
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    .line 344
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d1
    :try_start_d1
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getSplitUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    move-result-object v5

    if-eqz v5, :cond_e5

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->splitUndo()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 349
    sget-object v5, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_19

    .line 350
    :cond_e5
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getEffectUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v5

    if-eq v5, v7, :cond_19

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->effectUndo()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 353
    sget-object v5, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_101} :catch_cb

    goto/16 :goto_19

    .line 278
    nop

    :sswitch_data_104
    .sparse-switch
        0x7f0b00ca -> :sswitch_37
        0x7f0b0111 -> :sswitch_5c
        0x7f0b011d -> :sswitch_45
        0x7f0b011f -> :sswitch_4e
        0x7f0b0125 -> :sswitch_9c
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 118
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 119
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 120
    :cond_10
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->_instance:Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    .line 122
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 404
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2d

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 405
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 406
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 407
    :cond_1b
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 408
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 409
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->resetSelection()V

    .line 411
    const/4 v0, 0x1

    .line 413
    :cond_2d
    return v0
.end method

.method public resetSelection()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTrimControlButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mSplitControlButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mTransControlButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mEffectControlButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 132
    const v0, 0x7f0b011e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v0, 0x7f0b0120

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getTrimUndoRedoInfo()Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;

    move-result-object v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getSplitUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;

    move-result-object v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getEffectUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 144
    :cond_4f
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :goto_55
    return-void

    .line 146
    :cond_56
    sget-object v0, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->mUndoControlButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_55
.end method
