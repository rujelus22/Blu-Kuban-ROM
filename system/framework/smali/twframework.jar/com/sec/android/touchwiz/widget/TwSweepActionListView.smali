.class public Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwSweepActionListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;
    }
.end annotation


# static fields
.field private static final CONTEXT_URGENT_AUTO_CLOSE_ANIMATION_DURATION:I = 0x190

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x258

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final SWEEP_ADJUSTMENT_MAX_VALUE:I = 0x23a

.field private static final SWEEP_FIRE_THRESHOLD_VALUE:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwSweepActionListView"

.field private static final VELOCITY_UNITS:I = 0x1f4


# instance fields
.field private final DEBUGABLE:Z

.field private final DEBUGABLE_COSINE_VALUE:Z

.field private actionViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;",
            ">;"
        }
    .end annotation
.end field

.field private bActionUp:Z

.field private bFlickV:Z

.field private bKeyPressed:Z

.field private bKeyReleased:Z

.field private bSweepEnd:Z

.field private bTouchEvent:Z

.field private curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

.field private curIndex:I

.field private decorInit:Z

.field private isSweep:Z

.field private listTop:I

.field private mActionUpX:F

.field private mContext:Landroid/content/Context;

.field mDecorLayout:Landroid/widget/FrameLayout;

.field private mFling:Z

.field mOldDecorViewLayerType:I

.field private mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mTopPositionSave:I

.field private mTouchPointX:F

.field private mTouchPointY:F

.field private mTouchSlop:I

.field private mVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private sweepContainerView:Landroid/widget/RelativeLayout;

.field private tempRect:Landroid/graphics/Rect;

.field private transformation:Landroid/view/animation/Transformation;

.field private values:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 143
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "c"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE:Z

    .line 58
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE_COSINE_VALUE:Z

    .line 87
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 89
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 91
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    .line 97
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 114
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 116
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 118
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 124
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    .line 130
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 132
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    .line 134
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 136
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mOldDecorViewLayerType:I

    .line 150
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    .line 151
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 153
    .local v0, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    .line 155
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 156
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDrawSelectorOnTop(Z)V

    .line 160
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-object v0
.end method

.method private closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z
    .registers 4
    .parameter "actionView"
    .parameter "animation"

    .prologue
    .line 338
    if-eqz p1, :cond_a

    .line 340
    const/4 v0, 0x2

    iput v0, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 342
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 344
    const/4 v0, 0x1

    .line 348
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private createSweepContainerView(Landroid/content/Context;)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 172
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 174
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_21

    .line 220
    :goto_20
    return-void

    .line 179
    :cond_21
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_47

    .line 194
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 213
    :cond_3f
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getDecorViewLayerType(Landroid/widget/FrameLayout;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mOldDecorViewLayerType:I

    .line 218
    :cond_47
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_20
.end method

.method private decorViewInitialize()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 418
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 420
    .local v0, rocation:[I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLocationInWindow([I)V

    .line 422
    aget v1, v0, v3

    .line 424
    .local v1, top:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 426
    aget v2, v0, v3

    sub-int v2, v1, v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 428
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 430
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 432
    return-void
.end method

.method private getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .registers 6
    .parameter "index"

    .prologue
    .line 390
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 392
    .local v2, len:I
    const/4 v0, 0x0

    .line 394
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1d

    .line 396
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 407
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_1a

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    if-ne v3, p1, :cond_1a

    move-object v3, v0

    .line 412
    :goto_19
    return-object v3

    .line 394
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 412
    :cond_1d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private getCurrentListItem(I)Landroid/view/View;
    .registers 6
    .parameter "itemIndex"

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 1247
    .local v0, firstpos:I
    sub-int v1, p1, v0

    .line 1249
    .local v1, lActChildPos:I
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .registers 6
    .parameter "c"
    .parameter "actionBarView"
    .parameter "position"

    .prologue
    .line 358
    if-eqz p2, :cond_a

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v1, :cond_c

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v1, :cond_c

    .line 360
    :cond_a
    const/4 v0, 0x0

    .line 384
    :goto_b
    return-object v0

    .line 362
    :cond_c
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 374
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V

    .line 382
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private getDecorViewLayerType(Landroid/widget/FrameLayout;)I
    .registers 3
    .parameter "decorlayout"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v0

    return v0
.end method

.method private resizeTempRect()V
    .registers 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 437
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 438
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 439
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 441
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_44

    .line 444
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 445
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 448
    :cond_44
    return-void
.end method

.method private setPressedFalse()V
    .registers 5

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v2

    .line 856
    .local v2, num:I
    const/4 v0, 0x0

    .line 858
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_1b

    .line 860
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_18

    .line 863
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 864
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 858
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 871
    :cond_1b
    return-void
.end method


# virtual methods
.method public allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F
    .registers 6
    .parameter "sabi"
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 875
    move v0, p2

    .line 877
    .local v0, allowDistance:F
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v2, :cond_b

    .line 878
    cmpl-float v2, v0, v1

    if-lez v2, :cond_b

    move v0, v1

    .line 879
    :cond_b
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v2, :cond_14

    .line 880
    cmpg-float v2, v0, v1

    if-gez v2, :cond_14

    move v0, v1

    .line 882
    :cond_14
    return v0
.end method

.method public closeAllActionBar(Z)Z
    .registers 8
    .parameter "animated"

    .prologue
    .line 256
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 259
    .local v0, cloneArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 260
    .local v2, len:I
    const/4 v3, 0x0

    .line 262
    .local v3, retVal:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_20

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 265
    const/4 v3, 0x1

    .line 262
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 269
    :cond_20
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v4, :cond_3e

    if-nez p1, :cond_3e

    .line 270
    const-string v4, "TwSweepActionListView"

    const-string v5, "closeAllActionBar call  sweepActionViewRemove"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    .line 272
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 274
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 282
    :cond_3e
    return v3
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "arg0"

    .prologue
    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 962
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    .line 964
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_f

    .line 965
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 967
    :cond_f
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 969
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 635
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 638
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 649
    :cond_12
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-nez v0, :cond_25

    .line 650
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 653
    :cond_25
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-eqz v0, :cond_2b

    .line 654
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 658
    :cond_2b
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-eqz v0, :cond_31

    .line 659
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 661
    :cond_31
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 663
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x1

    .line 555
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1e

    .line 578
    :cond_8
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 565
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 567
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c

    .line 568
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_c

    .line 555
    nop

    :sswitch_data_1e
    .sparse-switch
        0x4 -> :sswitch_d
        0x13 -> :sswitch_d
        0x14 -> :sswitch_d
        0x15 -> :sswitch_d
        0x16 -> :sswitch_d
        0x17 -> :sswitch_d
        0x42 -> :sswitch_d
    .end sparse-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12
    .parameter "canvas"
    .parameter "child"
    .parameter "drawTime"

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1160
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1161
    .local v2, index:I
    const/4 v3, 0x0

    .line 1163
    .local v3, mTransX:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 1165
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_23

    .line 1167
    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1169
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_23

    .line 1171
    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v4, :pswitch_data_60

    .line 1201
    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #anim:Landroid/view/animation/Animation;
    .end local v2           #index:I
    .end local v3           #mTransX:F
    :cond_23
    :goto_23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    return v4

    .line 1175
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .restart local v1       #anim:Landroid/view/animation/Animation;
    .restart local v2       #index:I
    .restart local v3       #mTransX:F
    :pswitch_28
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setTranslate()V

    goto :goto_23

    .line 1181
    :pswitch_2c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1183
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1185
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    neg-float v3, v4

    .line 1187
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V
    invoke-static {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 1189
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_23

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_23

    .line 1190
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate()V

    goto :goto_23

    .line 1171
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method public dump()V
    .registers 1

    .prologue
    .line 353
    return-void
.end method

.method protected handleDataChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 537
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    .line 538
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 545
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_16

    .line 546
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 549
    :cond_16
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->handleDataChanged()V

    .line 550
    return-void
.end method

.method public isActionBarOpen()Z
    .registers 5

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 239
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1d

    .line 241
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 243
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_1a

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_1a

    .line 244
    const/4 v3, 0x1

    .line 248
    :goto_19
    return v3

    .line 239
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 248
    :cond_1d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 523
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 526
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 528
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 933
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 938
    const/4 v0, 0x2

    if-eq p2, v0, :cond_a

    const/16 v0, 0x82

    if-ne p2, v0, :cond_c

    .line 940
    :cond_a
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    .line 952
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 954
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 682
    .local v0, action:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_e

    .line 683
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 685
    :cond_e
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 687
    packed-switch v0, :pswitch_data_182

    .line 847
    :cond_16
    :goto_16
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1a
    return v9

    .line 691
    :pswitch_1b
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 699
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-eqz v9, :cond_24

    .line 700
    const/4 v9, 0x1

    goto :goto_1a

    .line 702
    :cond_24
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v9, :cond_2b

    .line 703
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 705
    :cond_2b
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    .line 709
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    goto :goto_16

    .line 718
    :pswitch_48
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_16

    .line 722
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_7d

    .line 724
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_75

    .line 726
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-eqz v9, :cond_61

    .line 728
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto :goto_16

    .line 733
    :cond_61
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    sub-float/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v8

    .line 738
    .local v8, sweepdistance:F
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 789
    .end local v8           #sweepdistance:F
    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 790
    const/4 v9, 0x1

    goto :goto_1a

    .line 743
    :cond_7d
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_16

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-nez v9, :cond_16

    .line 746
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 747
    .local v3, distanceX:F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 748
    .local v4, distanceY:F
    mul-float v9, v3, v3

    mul-float v10, v4, v4

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 749
    .local v6, sqrtValue:D
    float-to-double v9, v3

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 754
    .local v1, cosineValue:D
    const-wide v9, 0x408f400000000000L

    mul-double/2addr v9, v1

    double-to-int v9, v9

    const/16 v10, 0x23a

    if-ge v9, v10, :cond_75

    .line 755
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_11b

    .line 756
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_75

    .line 758
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-eqz v9, :cond_75

    .line 759
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 761
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v5

    .line 764
    .local v5, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v5, :cond_ee

    .line 765
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v9, v5, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 767
    :cond_ee
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-nez v9, :cond_f5

    .line 768
    const/4 v9, 0x0

    goto/16 :goto_1a

    .line 769
    :cond_f5
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_103

    .line 770
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setPressed(Z)V

    .line 772
    :cond_103
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 774
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 776
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v9, :cond_116

    .line 777
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    .line 778
    :cond_116
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    goto/16 :goto_75

    .line 784
    .end local v5           #sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_11b
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto/16 :goto_75

    .line 799
    .end local v1           #cosineValue:D
    .end local v3           #distanceX:F
    .end local v4           #distanceY:F
    .end local v6           #sqrtValue:D
    :pswitch_120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_15a

    .line 803
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_15a

    .line 805
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 807
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    .line 809
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_151

    .line 810
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 812
    :cond_151
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 814
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 818
    :cond_15a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 820
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_16a

    .line 822
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 823
    const/4 v9, 0x1

    goto/16 :goto_1a

    .line 827
    :cond_16a
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_176

    .line 829
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 830
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 839
    :cond_176
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 840
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 841
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    goto/16 :goto_16

    .line 687
    nop

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_120
        :pswitch_48
        :pswitch_120
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 586
    sparse-switch p1, :sswitch_data_c

    .line 598
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 593
    :sswitch_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_3

    .line 586
    :sswitch_data_c
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 608
    sparse-switch p1, :sswitch_data_14

    .line 623
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 615
    :sswitch_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 617
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-eqz v0, :cond_3

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_3

    .line 608
    nop

    :sswitch_data_14
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_9

    .line 1208
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    .line 1210
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    .line 974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 976
    .local v0, action:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_e

    .line 977
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 979
    :cond_e
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 981
    packed-switch v0, :pswitch_data_190

    .line 1151
    :cond_16
    :goto_16
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1a
    return v9

    .line 985
    :pswitch_1b
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 996
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-eqz v9, :cond_24

    .line 997
    const/4 v9, 0x1

    goto :goto_1a

    .line 999
    :cond_24
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v9, :cond_2b

    .line 1000
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 1002
    :cond_2b
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    .line 1006
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    goto :goto_16

    .line 1012
    :pswitch_48
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4f

    .line 1013
    const/4 v9, 0x0

    goto :goto_1a

    .line 1016
    :cond_4f
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_7f

    .line 1018
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_77

    .line 1020
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-eqz v9, :cond_63

    .line 1022
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto :goto_16

    .line 1027
    :cond_63
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    sub-float/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v8

    .line 1032
    .local v8, sweepdistance:F
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 1089
    .end local v8           #sweepdistance:F
    :cond_77
    :goto_77
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1090
    const/4 v9, 0x1

    goto :goto_1a

    .line 1037
    :cond_7f
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_16

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-nez v9, :cond_16

    .line 1040
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1041
    .local v3, distanceX:F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1042
    .local v4, distanceY:F
    mul-float v9, v3, v3

    mul-float v10, v4, v4

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1043
    .local v6, sqrtValue:D
    float-to-double v9, v3

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 1049
    .local v1, cosineValue:D
    const-wide v9, 0x408f400000000000L

    mul-double/2addr v9, v1

    double-to-int v9, v9

    const/16 v10, 0x23a

    if-ge v9, v10, :cond_77

    .line 1051
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_121

    .line 1053
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_77

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    if-nez v9, :cond_77

    .line 1055
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-eqz v9, :cond_77

    .line 1057
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 1058
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 1060
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v5

    .line 1063
    .local v5, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v5, :cond_f4

    .line 1064
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v9, v5, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 1067
    :cond_f4
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-nez v9, :cond_fb

    .line 1068
    const/4 v9, 0x0

    goto/16 :goto_1a

    .line 1070
    :cond_fb
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_109

    .line 1071
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setPressed(Z)V

    .line 1073
    :cond_109
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1075
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 1077
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v9, :cond_11c

    .line 1078
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    .line 1079
    :cond_11c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    goto/16 :goto_77

    .line 1085
    .end local v5           #sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_121
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto/16 :goto_77

    .line 1098
    .end local v1           #cosineValue:D
    .end local v3           #distanceX:F
    .end local v4           #distanceY:F
    .end local v6           #sqrtValue:D
    :pswitch_126
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 1099
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressed(Z)V

    .line 1100
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 1101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_16a

    .line 1105
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_16a

    .line 1107
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1109
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    .line 1111
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_161

    .line 1112
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 1114
    :cond_161
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 1116
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 1121
    :cond_16a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 1123
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_17c

    .line 1125
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1126
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1136
    :cond_17c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 1137
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 1138
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 1140
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_16

    .line 1142
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 1143
    const/4 v9, 0x1

    goto/16 :goto_1a

    .line 981
    nop

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_126
        :pswitch_48
        :pswitch_126
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v5, 0x0

    .line 893
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 900
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v3, :cond_e

    .line 903
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 906
    :cond_e
    if-eqz p1, :cond_32

    .line 909
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    .line 910
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_32

    .line 914
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 916
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, v1, :cond_32

    .line 918
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 920
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_2f

    .line 921
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 916
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 926
    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_32
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    .line 928
    return-void
.end method

.method public openActionBar(II)Z
    .registers 8
    .parameter "position"
    .parameter "flickDirection"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 289
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 291
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_10

    .line 292
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    .line 294
    :cond_10
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v3, :cond_17

    .line 295
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 297
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt p1, v3, :cond_23

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLastVisiblePosition()I

    move-result v3

    if-le p1, v3, :cond_25

    :cond_23
    move v1, v2

    .line 332
    :goto_24
    return v1

    .line 300
    :cond_25
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v0

    .line 302
    .local v0, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v0, :cond_39

    .line 303
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 304
    :cond_39
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v3, :cond_56

    .line 311
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 312
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iput v1, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 314
    packed-switch p2, :pswitch_data_58

    .line 326
    :goto_46
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    goto :goto_24

    .line 317
    :pswitch_4c
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_46

    .line 321
    :pswitch_51
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_46

    :cond_56
    move v1, v2

    .line 332
    goto :goto_24

    .line 314
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_51
    .end packed-switch
.end method

.method protected parentPerformItemClick(Landroid/view/View;IJ)Z
    .registers 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 517
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 8
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    .line 491
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_8

    .line 494
    :cond_8
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_13

    .line 495
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 497
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 499
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 501
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_2e

    .line 502
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    .line 503
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 505
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 511
    :cond_2e
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    .line 512
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .registers 6
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-eqz v0, :cond_10

    .line 669
    :cond_e
    const/4 v0, 0x0

    .line 671
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_f
.end method

.method public resetDecorInit()V
    .registers 2

    .prologue
    .line 1659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 1660
    return-void
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    .line 224
    return-void
.end method

.method public setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 228
    return-void
.end method

.method shouldShowSelector()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 453
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-nez v4, :cond_a

    .line 454
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldShowSelector()Z

    move-result v1

    .line 481
    :cond_9
    :goto_9
    return v1

    .line 455
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_18

    .line 456
    const/4 v1, 0x1

    goto :goto_9

    .line 458
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, curActionBarIsPressed:Z
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z

    if-eqz v4, :cond_25

    move v1, v3

    .line 463
    goto :goto_9

    .line 465
    :cond_25
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 467
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_34

    move v1, v3

    .line 468
    goto :goto_9

    .line 470
    :cond_34
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v1

    .line 472
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 474
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_9

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_9

    .line 475
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onListShouldDrawSelector(IFI)Z

    move-result v1

    goto :goto_9

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #curActionBarIsPressed:Z
    .end local v2           #view:Landroid/view/View;
    :cond_51
    move v1, v3

    .line 481
    goto :goto_9
.end method
