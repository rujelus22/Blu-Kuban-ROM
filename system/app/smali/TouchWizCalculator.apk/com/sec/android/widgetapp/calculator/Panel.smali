.class public Lcom/sec/android/widgetapp/calculator/Panel;
.super Landroid/widget/LinearLayout;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;,
        Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;,
        Lcom/sec/android/widgetapp/calculator/Panel$State;
    }
.end annotation


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field bt_id:[I

.field clickListener:Landroid/view/View$OnClickListener;

.field private isOpenClick:Z

.field private mAniEnd:Z

.field private mBringToFront:Z

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentId:I

.field private mContentWidth:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShrinking:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

.field private mTouchInteraction:Z

.field private mTouchable:Z

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field private mWeight:F

.field private panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mAniEnd:Z

    .line 74
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z

    .line 103
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    .line 308
    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$1;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    .line 367
    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$2;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$2;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->clickListener:Landroid/view/View$OnClickListener;

    .line 402
    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$3;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$3;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    .line 489
    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$4;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 512
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchInteraction:Z

    .line 616
    const/16 v4, 0x23

    new-array v4, v4, [I

    fill-array-data v4, :array_f6

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    .line 122
    sget-object v4, Lcom/sec/android/app/calculator/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mDuration:I

    .line 124
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    .line 125
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mLinearFlying:Z

    .line 126
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v2, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    .line 128
    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_63

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_65

    .line 129
    :cond_63
    iput v6, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    .line 131
    :cond_65
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    .line 132
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    .line 136
    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    if-nez v4, :cond_9b

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The handle attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v1       #e:Ljava/lang/RuntimeException;
    :cond_9b
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentId:I

    .line 143
    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentId:I

    if-nez v4, :cond_c2

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The content attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v1       #e:Ljava/lang/RuntimeException;
    :cond_c2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    if-eqz v1, :cond_c8

    .line 151
    throw v1

    .line 153
    :cond_c8
    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-eqz v4, :cond_d0

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-ne v4, v2, :cond_f4

    :cond_d0
    :goto_d0
    iput v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    .line 154
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setOrientation(I)V

    .line 155
    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    .line 156
    new-instance v2, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    .line 157
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    invoke-direct {v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 158
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 159
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/calculator/Panel;->setBaselineAligned(Z)V

    .line 160
    return-void

    :cond_f4
    move v2, v3

    .line 153
    goto :goto_d0

    .line 616
    :array_f6
    .array-data 0x4
        0x1at 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x18t 0x0t 0x5t 0x7ft
        0x12t 0x0t 0x5t 0x7ft
        0x13t 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
        0xet 0x0t 0x5t 0x7ft
        0xft 0x0t 0x5t 0x7ft
        0x10t 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x11t 0x0t 0x5t 0x7ft
        0xct 0x0t 0x5t 0x7ft
        0xbt 0x0t 0x5t 0x7ft
        0xat 0x0t 0x5t 0x7ft
        0xdt 0x0t 0x5t 0x7ft
        0x19t 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x1ft 0x0t 0x5t 0x7ft
        0x20t 0x0t 0x5t 0x7ft
        0x21t 0x0t 0x5t 0x7ft
        0x23t 0x0t 0x5t 0x7ft
        0x25t 0x0t 0x5t 0x7ft
        0x24t 0x0t 0x5t 0x7ft
        0x22t 0x0t 0x5t 0x7ft
        0x26t 0x0t 0x5t 0x7ft
        0x27t 0x0t 0x5t 0x7ft
        0x28t 0x0t 0x5t 0x7ft
        0x29t 0x0t 0x5t 0x7ft
        0x2at 0x0t 0x5t 0x7ft
        0x2bt 0x0t 0x5t 0x7ft
        0x2ct 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/GestureDetector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/calculator/Panel;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/widgetapp/calculator/Panel;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/widgetapp/calculator/Panel;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mDuration:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/calculator/Panel;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->postProcess()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/animation/Interpolator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/calculator/Panel;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mBringToFront:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I

    return v0
.end method

.method private ensureRange(FII)F
    .registers 5
    .parameter "v"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 303
    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 304
    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 305
    return p1
.end method

.method private postProcess()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 525
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 526
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    if-eqz v0, :cond_1d

    .line 531
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_36

    .line 532
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelClosed(Lcom/sec/android/widgetapp/calculator/Panel;)V

    .line 537
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 543
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setTouchInteraction(Z)V

    .line 545
    return-void

    .line 527
    :cond_26
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 528
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 534
    :cond_36
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelOpened(Lcom/sec/android/widgetapp/calculator/Panel;)V

    goto :goto_1d
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->ABOUT_TO_ANIMATE:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v1, v2, :cond_24

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-nez v1, :cond_24

    .line 287
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    if-ne v1, v4, :cond_3b

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I

    .line 288
    .local v0, delta:I
    :goto_12
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-nez v1, :cond_1c

    .line 289
    :cond_1b
    neg-int v0, v0

    .line 291
    :cond_1c
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    if-ne v1, v4, :cond_3e

    .line 292
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    .end local v0           #delta:I
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-eq v1, v2, :cond_30

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v1, v2, :cond_37

    .line 297
    :cond_30
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 299
    :cond_37
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 300
    return-void

    .line 287
    :cond_3b
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I

    goto :goto_12

    .line 294
    .restart local v0       #delta:I
    :cond_3e
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_24
.end method

.method public getClosedHandle()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getmContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public initChange()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v3, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-eq v0, v3, :cond_9

    .line 398
    :goto_8
    return v2

    .line 391
    :cond_9
    sget-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->ABOUT_TO_ANIMATE:Lcom/sec/android/widgetapp/calculator/Panel$State;

    iput-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    .line 392
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    .line 393
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-nez v0, :cond_24

    .line 394
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->onBtnFocus(Z)V

    :cond_24
    move v2, v1

    .line 398
    goto :goto_8

    :cond_26
    move v0, v2

    .line 392
    goto :goto_16
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOpenClick()Z
    .registers 2

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    return v0
.end method

.method public isTouchInteraction()Z
    .registers 2

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchInteraction:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 260
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mBringToFront:Z

    .line 262
    :cond_10
    return-void
.end method

.method public onBtnFocus(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    .line 627
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 628
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 629
    const v2, 0x7f05001e

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1f

    .line 643
    .end local v0           #i:I
    :cond_1e
    return-void

    .line 632
    .restart local v0       #i:I
    :cond_1f
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 633
    .local v1, vw:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 634
    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 636
    .end local v0           #i:I
    .end local v1           #vw:Landroid/view/View;
    :cond_32
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 637
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_42
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 638
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 639
    .restart local v1       #vw:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 640
    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_42
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 217
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    .line 218
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    if-nez v2, :cond_3b

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    .end local v0           #name:Ljava/lang/String;
    :cond_3b
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    .line 227
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    if-nez v2, :cond_7e

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0       #name:Ljava/lang/String;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    .end local v0           #name:Ljava/lang/String;
    :cond_7e
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->removeView(Landroid/view/View;)V

    .line 234
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->removeView(Landroid/view/View;)V

    .line 236
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-eqz v2, :cond_90

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-ne v2, v6, :cond_c0

    :cond_90
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    :goto_92
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->addView(Landroid/view/View;)V

    .line 237
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-eqz v2, :cond_9d

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-ne v2, v6, :cond_c3

    :cond_9d
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    :goto_9f
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->addView(Landroid/view/View;)V

    .line 239
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_ad

    .line 240
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_ad
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 245
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_c6

    .line 255
    :goto_bf
    return-void

    .line 236
    :cond_c0
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    goto :goto_92

    .line 237
    :cond_c3
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    goto :goto_9f

    .line 248
    :cond_c6
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 249
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    if-ne v2, v5, :cond_d8

    .line 250
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 254
    :goto_d2
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_bf

    .line 252
    :cond_d8
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_d2
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 280
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I

    .line 282
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I

    .line 283
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 265
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2b

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 267
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_2b

    .line 268
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 276
    .end local v0           #parent:Landroid/view/View;
    :cond_2b
    :goto_2b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 277
    return-void

    .line 272
    .restart local v0       #parent:Landroid/view/View;
    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2b
.end method

.method public setAniEnd(Z)V
    .registers 2
    .parameter "start"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mAniEnd:Z

    .line 209
    return-void
.end method

.method public setOnPanelListener(Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;)V
    .registers 2
    .parameter "onPanelListener"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    .line 168
    return-void
.end method

.method public setOpenClick(Z)V
    .registers 2
    .parameter "isOpenClick"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    .line 614
    return-void
.end method

.method public setTouchInteraction(Z)V
    .registers 2
    .parameter "touch"

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchInteraction:Z

    .line 517
    return-void
.end method
