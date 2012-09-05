.class public Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;
.super Landroid/widget/LinearLayout;
.source "AddMediaControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;


# instance fields
.field private cameraDialog:Landroid/app/AlertDialog;

.field private lCamCorder:Landroid/app/AlertDialog;

.field mAddImage:Landroid/widget/ImageView;

.field mAddMusic:Landroid/widget/ImageView;

.field mAddVideo:Landroid/widget/ImageView;

.field mCamCorderLay:Landroid/widget/LinearLayout;

.field private mCameraDialog:Landroid/app/Dialog;

.field mCameraLay:Landroid/widget/LinearLayout;

.field mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDoneButton:Landroid/widget/Button;

.field mLine1:Landroid/widget/ImageView;

.field mLine2:Landroid/widget/ImageView;

.field mLine3:Landroid/widget/ImageView;

.field private mPrevselectedView:I

.field mRecordFromCamcorder:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mRecordFromCamcorder:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine3:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mDoneButton:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mCancelButton:Landroid/widget/Button;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mCamCorderLay:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mCameraDialog:Landroid/app/Dialog;

    .line 58
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mContext:Landroid/content/Context;

    .line 59
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mRecordFromCamcorder:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine3:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mDoneButton:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mCancelButton:Landroid/widget/Button;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mCamCorderLay:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mCameraDialog:Landroid/app/Dialog;

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mContext:Landroid/content/Context;

    .line 52
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    return-object v0
.end method

.method private launchCameraDialog()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_8

    .line 294
    :goto_7
    return-void

    .line 233
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 234
    .local v1, cameraLayout:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    new-instance v2, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 247
    .local v7, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 255
    const v0, 0x7f0b0011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 256
    .local v8, photoOption:Landroid/widget/TextView;
    const v0, 0x7f0b0012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 257
    .local v9, videoOption:Landroid/widget/TextView;
    const v0, 0x7f0b0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 259
    .local v6, cancelButton:Landroid/widget/Button;
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$3;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$4;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$5;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_7
.end method

.method private resetSelection()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mRecordFromCamcorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    return-void
.end method


# virtual methods
.method public disableDoneButton()V
    .registers 3

    .prologue
    .line 110
    const-string v0, "Disabling Done button"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    return-void
.end method

.method public enableDoneButton()V
    .registers 3

    .prologue
    .line 116
    const-string v0, "enabling Done button"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const v1, 0x7f0b0001

    .line 74
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddVideo:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddVideo:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_14
    iput v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 81
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddImage:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2a

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_2a
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddMusic:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddMusic:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_3e
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mRecordFromCamcorder:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mRecordFromCamcorder:Landroid/widget/ImageView;

    if-eqz v0, :cond_52

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mRecordFromCamcorder:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_52
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mDoneButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_66

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_66
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine1:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine2:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine3:Landroid/widget/ImageView;

    .line 102
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 103
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-nez v0, :cond_9e

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->disableDoneButton()V

    .line 106
    :cond_9e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const v5, 0x7f0b0005

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    iget v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v5, :cond_1a

    .line 131
    const-string v0, "Clicking on the same view again"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 218
    :cond_19
    :goto_19
    return-void

    .line 134
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0008

    if-eq v0, v1, :cond_26

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->resetSelection()V

    .line 136
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_136

    :pswitch_2d
    goto :goto_19

    .line 139
    :pswitch_2e
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->launchVideoPickerView(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 141
    const v0, 0x7f0b0001

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    .line 146
    :pswitch_45
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 148
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->launchImagePickerView()V

    .line 149
    const v0, 0x7f0b0003

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    .line 155
    :pswitch_5c
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 156
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 158
    const-string v0, "AddMusicAlbumPickerView is already shown"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 169
    :goto_71
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 170
    iput v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    .line 163
    :cond_7e
    const-string v0, "AddMusic album songs has been shown.. so launching Album view"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 165
    sput v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    .line 167
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->launchMusicPickerView(I)V

    goto :goto_71

    .line 174
    :pswitch_8d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 175
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_ac

    .line 176
    const v0, 0x7f080069

    const/4 v1, -0x1

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto/16 :goto_19

    .line 180
    :cond_ac
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mRecordFromCamcorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 181
    const-string v0, "This is inside AddMediaControlView CamcorderSelectButton selected"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 183
    const-string v0, "Player playing...so stop it."

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 187
    :cond_cc
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 188
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 190
    const-string v0, "Pausing Music in case of export"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseFromOutSide()V

    .line 194
    :cond_e8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_ff

    .line 195
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-nez v0, :cond_ff

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->disableDoneButton()V

    .line 198
    :cond_ff
    :try_start_ff
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->launchCameraDialog()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_102} :catch_133

    .line 202
    :goto_102
    const v0, 0x7f0b0007

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    goto/16 :goto_19

    .line 205
    :pswitch_109
    const-string v0, "This is inside DoneButton"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 206
    sput v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    .line 208
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-lez v0, :cond_19

    .line 210
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 211
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->launchTrimSection()V

    goto/16 :goto_19

    .line 199
    :catch_133
    move-exception v0

    goto :goto_102

    .line 136
    nop

    :pswitch_data_136
    .packed-switch 0x7f0b0001
        :pswitch_2e
        :pswitch_2d
        :pswitch_45
        :pswitch_2d
        :pswitch_5c
        :pswitch_2d
        :pswitch_8d
        :pswitch_109
    .end packed-switch
.end method

.method public resetBackToPreviousView()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 307
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->isShown()Z

    move-result v0

    if-nez v0, :cond_23

    .line 308
    :cond_13
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 310
    :cond_23
    const-string v0, "Previous view is AddMusic"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 312
    iput v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 313
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->resetSelection()V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 315
    const v0, 0x7f0b0005

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    :cond_3c
    :goto_3c
    return-void

    .line 318
    :cond_3d
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 321
    const-string v0, "Previous view is AddVideo"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->setVideoPickerSelected()V

    goto :goto_3c

    .line 325
    :cond_56
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 327
    const-string v0, "Previous view is AddPhoto"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 328
    iput v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 329
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->resetSelection()V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 331
    const v0, 0x7f0b0003

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3c
.end method

.method public resetCameraDialog()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->launchCameraDialog()V

    .line 228
    :cond_14
    return-void
.end method

.method public setVideoPickerSelected()V
    .registers 3

    .prologue
    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->resetSelection()V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mAddVideo:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 301
    const v0, 0x7f0b0001

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mPrevselectedView:I

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->mLine1:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    return-void
.end method
