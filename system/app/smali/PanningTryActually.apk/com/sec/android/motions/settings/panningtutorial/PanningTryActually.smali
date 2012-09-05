.class public Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;
.super Landroid/app/Activity;
.source "PanningTryActually.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;,
        Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;
    }
.end annotation


# instance fields
.field private mAccumulatedDelta:D

.field private mBackButton:Landroid/widget/Button;

.field private mDoneButton:Landroid/widget/Button;

.field private mDownX:I

.field private mDownY:I

.field private mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconResources:[I

.field private mIconText:Landroid/widget/TextView;

.field private mInfoButton:Landroid/widget/ImageButton;

.field private mIsLongPressed:Z

.field private mIsPreviewMode:Z

.field private mMotionListenerRegistered:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mOKButton:Landroid/widget/Button;

.field private mPanningBasis:D

.field private mPanningCount:I

.field private mPreviewButtonBar:Landroid/view/ViewGroup;

.field private mPreviewResources:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPreviewResources:[I

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconResources:[I

    .line 54
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    .line 55
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    .line 56
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconText:Landroid/widget/TextView;

    .line 57
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDoneButton:Landroid/widget/Button;

    .line 58
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mOKButton:Landroid/widget/Button;

    .line 59
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mBackButton:Landroid/widget/Button;

    .line 60
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPreviewButtonBar:Landroid/view/ViewGroup;

    .line 61
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mInfoButton:Landroid/widget/ImageButton;

    .line 63
    iput v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownX:I

    .line 64
    iput v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownY:I

    .line 65
    iput-boolean v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsLongPressed:Z

    .line 67
    iput-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionListenerRegistered:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    .line 70
    const-wide/high16 v0, 0x404e

    iput-wide v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningBasis:D

    .line 75
    iput-boolean v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsPreviewMode:Z

    .line 76
    iput v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningCount:I

    .line 79
    new-instance v0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;

    invoke-direct {v0, p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;-><init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V

    iput-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    .line 420
    return-void

    .line 45
    nop

    :array_44
    .array-data 0x4
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
    .end array-data

    .line 48
    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconResources:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsLongPressed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->stopPanning()V

    return-void
.end method

.method private closeDialogs()V
    .registers 3

    .prologue
    .line 345
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9

    .line 350
    :goto_4
    const/4 v1, 0x2

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->dismissDialog(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_e

    .line 354
    :goto_8
    return-void

    .line 346
    :catch_9
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 351
    .end local v0           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 352
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private startPanning()V
    .registers 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f070007

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconText:Landroid/widget/TextView;

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionListenerRegistered:Z

    if-nez v0, :cond_43

    .line 285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x28

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningBasis:D

    .line 288
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionListenerRegistered:Z

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningCount:I

    .line 293
    :cond_43
    return-void
.end method

.method private stopPanning()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconText:Landroid/widget/TextView;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    iget-boolean v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionListenerRegistered:Z

    if-ne v0, v4, :cond_28

    .line 302
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 303
    iput-boolean v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionListenerRegistered:Z

    .line 306
    :cond_28
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 154
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->finish()V

    .line 156
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 310
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->finish()V

    .line 323
    :cond_c
    :goto_c
    return-void

    .line 312
    :cond_d
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mOKButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 313
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning_sensitivity"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->finish()V

    goto :goto_c

    .line 317
    :cond_36
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 318
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->setResult(I)V

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->finish()V

    goto :goto_c

    .line 320
    :cond_47
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mInfoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 321
    invoke-virtual {p0, v2}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->showDialog(I)V

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->setContentView(I)V

    .line 103
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    .line 104
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPreviewResources:[I

    array-length v3, v3

    if-ge v1, v3, :cond_36

    .line 105
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, preview:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPreviewResources:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    invoke-virtual {v3, v2}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->addView(Landroid/view/View;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 111
    .end local v2           #preview:Landroid/widget/ImageView;
    :cond_36
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    .line 112
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconResources:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconText:Landroid/widget/TextView;

    .line 117
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconText:Landroid/widget/TextView;

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 119
    const v3, 0x7f050005

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDoneButton:Landroid/widget/Button;

    .line 120
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mOKButton:Landroid/widget/Button;

    .line 123
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v3, 0x7f050008

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mBackButton:Landroid/widget/Button;

    .line 126
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mInfoButton:Landroid/widget/ImageButton;

    .line 129
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mInfoButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f050006

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPreviewButtonBar:Landroid/view/ViewGroup;

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_e0

    .line 135
    const-string v3, "Preview"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_da

    .line 136
    iput-boolean v7, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsPreviewMode:Z

    .line 137
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    :goto_cb
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v3, :cond_d9

    .line 147
    const-string v3, "motion_recognition"

    invoke-virtual {p0, v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 149
    :cond_d9
    return-void

    .line 140
    :cond_da
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPreviewButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_cb

    .line 143
    :cond_e0
    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPreviewButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_cb
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_1e

    .line 337
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 340
    :goto_9
    return-object v0

    .line 331
    :pswitch_a
    new-instance v1, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;-><init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;)V

    #calls: Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->createDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->access$500(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;)Landroid/app/Dialog;

    move-result-object v0

    .line 332
    goto :goto_9

    .line 334
    :pswitch_14
    new-instance v1, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;-><init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;)V

    #calls: Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->createDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->access$700(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;)Landroid/app/Dialog;

    move-result-object v0

    .line 335
    goto :goto_9

    .line 329
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    .line 244
    :cond_a
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsLongPressed:Z

    .line 251
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 252
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->startPanning()V

    .line 255
    :cond_12
    return v1
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 12
    .parameter "motionEvent"

    .prologue
    const/4 v5, 0x1

    .line 159
    iget-boolean v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsLongPressed:Z

    if-nez v4, :cond_6

    .line 211
    :cond_5
    :goto_5
    :sswitch_5
    return-void

    .line 162
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v4

    sparse-switch v4, :sswitch_data_fc

    goto :goto_5

    .line 164
    :sswitch_e
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v2

    .line 165
    .local v2, dx:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v3

    .line 166
    .local v3, dy:I
    mul-int v4, v2, v2

    mul-int v6, v3, v3

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    if-lez v2, :cond_38

    move v4, v5

    :goto_23
    int-to-double v8, v4

    mul-double v0, v6, v8

    .line 168
    .local v0, delta:D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_3a

    .line 169
    const-string v4, "PanningTryActually"

    const-string v5, "onMotionListener : skipping too small delta"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 166
    .end local v0           #delta:D
    :cond_38
    const/4 v4, -0x1

    goto :goto_23

    .line 173
    .restart local v0       #delta:D
    :cond_3a
    iget-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    add-double/2addr v6, v0

    iput-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    .line 175
    const-string v4, "PanningTryActually"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMotionListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "current screen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    invoke-virtual {v7}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->getCurrentScreen()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningBasis:D

    neg-double v8, v8

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_bb

    .line 178
    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    invoke-virtual {v4}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->getCurrentScreen()I

    move-result v4

    if-ltz v4, :cond_ae

    .line 179
    iget-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningBasis:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    .line 180
    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    iget-object v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    invoke-virtual {v6}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->getCurrentScreen()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->snapToScreen(I)V

    .line 181
    iget v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningCount:I

    .line 197
    :cond_a0
    :goto_a0
    iget v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningCount:I

    if-lt v4, v5, :cond_5

    .line 198
    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 183
    :cond_ae
    const-string v4, "PanningTryActually"

    const-string v6, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    goto :goto_a0

    .line 186
    :cond_bb
    iget-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningBasis:D

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_a0

    .line 187
    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    invoke-virtual {v4}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->getCurrentScreen()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    invoke-virtual {v6}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_ee

    .line 188
    iget-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningBasis:D

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    .line 189
    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    iget-object v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDrawer:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;

    invoke-virtual {v6}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->getCurrentScreen()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActuallyDrawer;->snapToScreen(I)V

    .line 190
    iget v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mPanningCount:I

    goto :goto_a0

    .line 192
    :cond_ee
    const-string v4, "PanningTryActually"

    const-string v6, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mAccumulatedDelta:D

    goto :goto_a0

    .line 162
    nop

    :sswitch_data_fc
    .sparse-switch
        0x1 -> :sswitch_5
        0xa -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x3d -> :sswitch_e
        0x43 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-boolean v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionListenerRegistered:Z

    if-ne v0, v2, :cond_1b

    .line 228
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mMotionListenerRegistered:Z

    .line 232
    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->closeDialogs()V

    .line 233
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 260
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_46

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownX:I

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownY:I

    .line 264
    const-string v0, "PanningTryActually"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch MotionEvent.ACTION_DOWN x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_45
    :goto_45
    return v4

    .line 265
    :cond_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a4

    .line 266
    iget v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mDownY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x403e

    cmpl-double v0, v0, v2

    if-lez v0, :cond_77

    .line 267
    iput-boolean v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsLongPressed:Z

    .line 268
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->stopPanning()V

    .line 270
    :cond_77
    const-string v0, "PanningTryActually"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch MotionEvent.ACTION_MOVE x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 272
    :cond_a4
    iput-boolean v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsLongPressed:Z

    .line 273
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->stopPanning()V

    goto :goto_45
.end method
