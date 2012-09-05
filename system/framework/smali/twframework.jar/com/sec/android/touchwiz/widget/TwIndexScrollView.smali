.class public Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "TwIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;
    }
.end annotation


# static fields
.field public static final LEFT_HANDLE:I = 0x0

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwIndexScrollView"

.field public static mCallDrawIndexTextAtOnDraw:Z

.field private static mHandleTextColor:I

.field private static mHandleTextColorDimmed:I

.field private static mHandleTextColorPressed:I


# instance fields
.field private final FADE_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_DELAY:J

.field private final debug:Z

.field private mArrListScroll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockSelectingDot:Z

.field private mDepthLimit:I

.field private mDotNum:I

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFadeOutRun:Ljava/lang/Runnable;

.field private mFirstHandlePadding:I

.field private mFirstHandleRect:Landroid/graphics/Rect;

.field private mFirstHandleWidth:I

.field private mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleBgDrawable2:Landroid/graphics/drawable/Drawable;

.field private mHandlePosition:I

.field private mHandleShadowTextColor:I

.field private mHandleTextPainter:Landroid/graphics/Paint;

.field private mHandleTextSize:I

.field private mIndexCharacters:[Ljava/lang/String;

.field private mIndexInterval:I

.field private mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

.field private mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

.field private final mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

.field private mIsFavoriteContactMode:Z

.field private mIsScroll:Z

.field private mLastY:F

.field private mLockMove:Z

.field private mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

.field private mScrollBarOn:Z

.field private mSecondHandleGap:I

.field private mSecondHandleWidth:I

.field private mSimpleIndexScroll:Z

.field private mSimpleModeForContact:Z

.field private mStartMotionX:F

.field private mTextWidth:I

.field mTopPadding:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 58
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 68
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 74
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 110
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 114
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 123
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 156
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 174
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 178
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 186
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 194
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 198
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 202
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 207
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    .line 208
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    .line 209
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 210
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 212
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 216
    const-wide/16 v1, 0x15e

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 218
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 221
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    .local v0, rsrc:Landroid/content/res/Resources;
    const v1, 0x2060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 231
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "indexInterval"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 58
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 68
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 74
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 110
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 114
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 123
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 156
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 174
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 178
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 186
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 194
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 198
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 202
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 207
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    .line 208
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    .line 209
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 210
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 212
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 216
    const-wide/16 v1, 0x15e

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 218
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 221
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, rsrc:Landroid/content/res/Resources;
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 244
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 58
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 68
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 74
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 110
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 114
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 123
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 156
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 174
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 178
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 182
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 186
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 194
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 198
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 202
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 207
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    .line 208
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    .line 209
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 210
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 211
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 212
    const-wide/16 v3, 0x1f4

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 216
    const-wide/16 v3, 0x15e

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 218
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 221
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 253
    sget-object v3, Ltouchwiz/R$styleable;->TwIndexView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 254
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 255
    .local v1, buttonPosition:I
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 257
    .local v2, rsrc:Landroid/content/res/Resources;
    const/4 v3, 0x6

    const v4, 0x2060016

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 258
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 58
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 68
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 74
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 110
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 114
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 123
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 156
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 174
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 178
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 186
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 194
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 198
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 202
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 207
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    .line 208
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    .line 209
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 210
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 212
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 216
    const-wide/16 v1, 0x15e

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 218
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 221
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 269
    .local v0, rsrc:Landroid/content/res/Resources;
    const v1, 0x2060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 270
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method private abortAnimation()V
    .registers 5

    .prologue
    .line 921
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 922
    .local v0, outTransF:Landroid/view/animation/Transformation;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 924
    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 926
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)Landroid/graphics/Rect;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    return-void
.end method

.method static synthetic access$2000()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleShadowTextColor:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->fadeScrollBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    return p1
.end method

.method private awakenScrollBar()V
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 910
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 911
    return-void
.end method

.method private decreaseScrollDepth()V
    .registers 4

    .prologue
    .line 539
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 540
    .local v0, arrSize:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    .line 541
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    :cond_10
    return-void
.end method

.method private drawIndexText(Ljava/lang/String;)V
    .registers 4
    .parameter "indexPath"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setIndexPath(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    .line 832
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 836
    :goto_13
    return-void

    .line 834
    :cond_14
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->invalidate()V

    goto :goto_13
.end method

.method private fadeScrollBar()V
    .registers 2

    .prologue
    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 918
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 919
    return-void
.end method

.method private getHandleRect(I)Landroid/graphics/Rect;
    .registers 16
    .parameter "level"

    .prologue
    const/4 v13, 0x1

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 604
    .local v7, rsrc:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 605
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHeight()I

    move-result v9

    .line 606
    .local v9, viewHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getWidth()I

    move-result v10

    .line 607
    .local v10, viewWidth:I
    if-nez v9, :cond_15

    .line 608
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 610
    :cond_15
    if-nez v10, :cond_19

    .line 611
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 614
    :cond_19
    if-nez p1, :cond_69

    .line 615
    const/4 v8, 0x0

    .line 616
    .local v8, top:I
    const/4 v2, 0x0

    .line 618
    .local v2, firstHandleHeight:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    if-nez v11, :cond_23

    .line 619
    const/4 v5, 0x0

    .line 657
    .end local v2           #firstHandleHeight:I
    .end local v8           #top:I
    :goto_22
    return-object v5

    .line 621
    .restart local v2       #firstHandleHeight:I
    .restart local v8       #top:I
    :cond_23
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    array-length v12, v12

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v2, v11, v12

    .line 622
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    if-eqz v11, :cond_41

    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    if-nez v11, :cond_41

    .line 623
    const v11, 0x2060012

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    .line 625
    :cond_41
    const v11, 0x206000c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    .line 628
    add-int v0, v8, v2

    .line 629
    .local v0, bottom:I
    const/4 v4, 0x0

    .line 630
    .local v4, left:I
    const/4 v6, 0x0

    .line 631
    .local v6, right:I
    if-eqz v9, :cond_52

    if-le v0, v9, :cond_52

    .line 632
    move v0, v9

    .line 634
    :cond_52
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v11, v13, :cond_65

    .line 635
    move v6, v10

    .line 636
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    sub-int v4, v6, v11

    .line 641
    :goto_5b
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v4, v8, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 642
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    goto :goto_22

    .line 638
    :cond_65
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    .line 639
    const/4 v4, 0x0

    goto :goto_5b

    .line 644
    .end local v0           #bottom:I
    .end local v2           #firstHandleHeight:I
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v8           #top:I
    :cond_69
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int v3, v11, v12

    .line 645
    .local v3, intervalX:I
    const/4 v4, 0x0

    .line 646
    .restart local v4       #left:I
    const/4 v6, 0x0

    .line 647
    .restart local v6       #right:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v11, v13, :cond_93

    .line 648
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, p1, -0x1

    mul-int/2addr v12, v3

    sub-int v6, v11, v12

    .line 649
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    sub-int v4, v6, v11

    .line 656
    :goto_85
    new-instance v5, Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v4, v11, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 657
    .local v5, rect:Landroid/graphics/Rect;
    goto :goto_22

    .line 651
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_93
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    add-int/2addr v11, v12

    add-int/lit8 v12, p1, -0x1

    mul-int/2addr v12, v3

    add-int v4, v11, v12

    .line 652
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int v6, v4, v11

    goto :goto_85
.end method

.method private getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .registers 4

    .prologue
    .line 548
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 549
    .local v0, size:I
    if-lez v0, :cond_13

    .line 550
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    .line 552
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private increaseScrollDepth(Ljava/lang/String;I)Z
    .registers 19
    .parameter "indexPath"
    .parameter "posY"

    .prologue
    .line 474
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_2e

    .line 476
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 477
    .local v9, ch:C
    invoke-static {v9}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v15

    .line 478
    .local v15, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v2, v15}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v2, v15}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v2, v15}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 481
    :cond_29
    const/4 v2, 0x0

    .line 532
    .end local v9           #ch:C
    .end local v15           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_2a
    return v2

    .line 474
    .restart local v9       #ch:C
    .restart local v15       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_2b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 487
    .end local v9           #ch:C
    .end local v15           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    if-eqz v2, :cond_6c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6c

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    .line 489
    .local v11, scroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v12

    .line 490
    .local v12, selectedIndex:I
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getmIndexSkipLevel()I

    move-result v13

    .line 497
    .local v13, skipLevel:I
    rem-int v2, v12, v13

    if-ne v2, v13, :cond_6c

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSubscrollIndexInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v12, v2, :cond_6c

    .line 498
    const/4 v2, 0x0

    goto :goto_2a

    .line 501
    .end local v11           #scroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .end local v12           #selectedIndex:I
    .end local v13           #skipLevel:I
    :cond_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 502
    .local v8, oldSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    if-lez v2, :cond_80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    if-ge v8, v2, :cond_e9

    .line 504
    :cond_80
    const/4 v4, 0x0

    .line 505
    .local v4, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ad

    .line 509
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .restart local v4       #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v10, 0x0

    :goto_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    array-length v2, v2

    if-ge v10, v2, :cond_ba

    .line 511
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v14}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 512
    .local v14, tempIndexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 513
    iput v10, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    aget-object v2, v2, v10

    iput-object v2, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 515
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v10, v10, 0x1

    goto :goto_8e

    .line 518
    .end local v14           #tempIndexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-nez v8, :cond_cd

    const/4 v2, 0x0

    :goto_b4
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 520
    :cond_ba
    if-eqz v4, :cond_e9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_e9

    .line 522
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 523
    .local v7, bound:Landroid/graphics/Rect;
    if-nez v7, :cond_cf

    .line 524
    const/4 v2, 0x0

    goto/16 :goto_2a

    .line 518
    .end local v7           #bound:Landroid/graphics/Rect;
    :cond_cd
    const/4 v2, 0x1

    goto :goto_b4

    .line 527
    .restart local v7       #bound:Landroid/graphics/Rect;
    :cond_cf
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;Ljava/util/ArrayList;FILandroid/graphics/Rect;I)V

    .line 528
    .local v1, newSubscroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    const/4 v2, 0x1

    goto/16 :goto_2a

    .line 532
    .end local v1           #newSubscroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .end local v4           #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v7           #bound:Landroid/graphics/Rect;
    :cond_e9
    const/4 v2, 0x0

    goto/16 :goto_2a
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 274
    .local v0, rsrc:Landroid/content/res/Resources;
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setFocusable(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->bringToFront()V

    .line 276
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHapticFeedbackEnabled(Z)V

    .line 277
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSoundEffectsEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    if-nez v1, :cond_12c

    .line 279
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 280
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 284
    :goto_2a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    const v1, 0x206000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    .line 286
    const v1, 0x206000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    .line 287
    const v1, 0x2060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    .line 288
    const v1, 0x2060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I

    .line 290
    const v1, 0x2060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I

    .line 292
    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    .line 293
    const v1, 0x205000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    .line 294
    const v1, 0x20500b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    .line 295
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleShadowTextColor:I

    .line 296
    const v1, 0x206000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextSize:I

    .line 298
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 299
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 304
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 305
    const v1, 0x202001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 306
    const v1, 0x202001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    .line 308
    const/high16 v1, 0x209

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    .line 309
    const v1, 0x2090001

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    .line 310
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 313
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 314
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 315
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 316
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeIn:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 365
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 370
    return-void

    .line 282
    :cond_12c
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeView(Landroid/view/View;)V

    goto/16 :goto_2a
.end method

.method private notifyIndexChange()V
    .registers 5

    .prologue
    .line 841
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->hasIndexerDataValid()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 844
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v0

    .line 845
    .local v0, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    if-eqz v0, :cond_49

    .line 846
    const/4 v1, 0x0

    .line 848
    .local v1, position:I
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 849
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 850
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    neg-int v1, v2

    .line 857
    :cond_44
    :goto_44
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;->onIndexSelected(I)V

    .line 860
    .end local v0           #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .end local v1           #position:I
    :cond_49
    return-void

    .line 852
    .restart local v0       #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .restart local v1       #position:I
    :cond_4a
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v2

    iget v1, v2, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    goto :goto_44
.end method

.method private resetHandleRectSize()V
    .registers 2

    .prologue
    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 597
    return-void
.end method

.method private resetScrollDepth(Z)V
    .registers 6
    .parameter "resetIndex"

    .prologue
    const/4 v3, 0x1

    .line 442
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 443
    .local v0, arrSize:I
    if-nez p1, :cond_b

    if-ge v0, v3, :cond_1f

    .line 445
    :cond_b
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 446
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 447
    .local v1, rect:Landroid/graphics/Rect;
    if-eqz v1, :cond_1e

    .line 448
    const-string v2, ""

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->increaseScrollDepth(Ljava/lang/String;I)Z

    .line 456
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_1e
    return-void

    .line 452
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->sizeDepthScroll()I

    move-result v2

    if-le v2, v3, :cond_1e

    .line 453
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->decreaseScrollDepth()V

    goto :goto_1f
.end method

.method private sizeDepthScroll()I
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 865
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 883
    const/4 v7, 0x0

    .local v7, depth:I
    :goto_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_43

    .line 884
    if-nez v7, :cond_3b

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 885
    .local v2, d:Landroid/graphics/drawable/Drawable;
    :goto_10
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_3e

    const/16 v6, 0xff

    .line 886
    .local v6, alpha:I
    :goto_1c
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_40

    sget v4, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    .line 887
    .local v4, textColor:I
    :goto_28
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget v5, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->drawScroll(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;III)V

    .line 883
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 884
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #textColor:I
    .end local v6           #alpha:I
    :cond_3b
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable2:Landroid/graphics/drawable/Drawable;

    goto :goto_10

    .line 885
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :cond_3e
    const/4 v6, 0x0

    goto :goto_1c

    .line 886
    .restart local v6       #alpha:I
    :cond_40
    sget v4, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    goto :goto_28

    .line 895
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #alpha:I
    :cond_43
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-nez v0, :cond_57

    .line 896
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 897
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    const-wide/16 v8, 0x15e

    invoke-virtual {p0, v0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 899
    :cond_57
    return-void
.end method

.method public getFirstHandleWidth()I
    .registers 2

    .prologue
    .line 591
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    return v0
.end method

.method public getHandlePosition()I
    .registers 2

    .prologue
    .line 585
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 1926
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1936
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1942
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    if-nez v0, :cond_a

    .line 1943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 1945
    :cond_a
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2004
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2011
    .local v0, superState:Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v1, :cond_14

    .line 2012
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 2013
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 2014
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 2016
    :cond_14
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 936
    sub-int v0, p4, p3

    if-lez v0, :cond_1d

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    if-eq v0, p2, :cond_1d

    .line 937
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 941
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->awakenScrollBar()V

    .line 944
    :cond_1d
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 947
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 795
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 796
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v1, :cond_15

    .line 797
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 798
    :goto_a
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->sizeDepthScroll()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_15

    .line 799
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->decreaseScrollDepth()V

    goto :goto_a

    .line 803
    :cond_15
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v0

    .local v0, lastScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    if-eqz v0, :cond_1e

    .line 804
    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->onSizeChanged(I)V

    .line 806
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 807
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 665
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 666
    .local v9, y:F
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 668
    .local v8, x:F
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v4

    .line 669
    .local v4, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    packed-switch v0, :pswitch_data_122

    .line 790
    :cond_15
    :goto_15
    const/4 v10, 0x1

    :goto_16
    return v10

    .line 683
    :pswitch_17
    if-eqz v4, :cond_6b

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-nez v10, :cond_6b

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6b

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 686
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 687
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 688
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mStartMotionX:F

    .line 690
    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getNearestIndex(F)Z
    invoke-static {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;F)Z

    .line 691
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 692
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v10

    if-eqz v10, :cond_63

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v10

    if-nez v10, :cond_63

    .line 693
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->abortAnimation()V

    .line 698
    :cond_5f
    :goto_5f
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->awakenScrollBar()V

    goto :goto_15

    .line 694
    :cond_63
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    if-eqz v10, :cond_5f

    .line 696
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    goto :goto_5f

    .line 700
    :cond_6b
    const/4 v10, 0x0

    goto :goto_16

    .line 709
    :pswitch_6d
    if-eqz v4, :cond_15

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v10, :cond_15

    .line 717
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->sizeDepthScroll()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .line 718
    .local v1, curDepth:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mStartMotionX:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 719
    .local v2, distanceX:F
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v1

    const/high16 v12, 0x3f80

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f00

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float v6, v10, v11

    .line 720
    .local v6, thresholdXNextLevel:F
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int/2addr v10, v11

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    sub-int/2addr v10, v11

    int-to-float v7, v10

    .line 722
    .local v7, thresholdXPreviousLevel:F
    cmpl-float v10, v2, v6

    if-ltz v10, :cond_d2

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_d2

    .line 724
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    if-nez v10, :cond_15

    .line 732
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, indexPath:Ljava/lang/String;
    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->access$700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;)F

    move-result v5

    .line 736
    .local v5, scrollStartY:F
    float-to-int v10, v5

    invoke-direct {p0, v3, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->increaseScrollDepth(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 737
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 738
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v4

    .line 739
    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 743
    const/4 v10, 0x1

    sput-boolean v10, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    .line 748
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    goto/16 :goto_15

    .line 750
    :cond_cd
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    goto/16 :goto_15

    .line 755
    .end local v3           #indexPath:Ljava/lang/String;
    .end local v5           #scrollStartY:F
    :cond_d2
    cmpg-float v10, v2, v7

    if-gez v10, :cond_f1

    .line 756
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 757
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->decreaseScrollDepth()V

    .line 758
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v4

    .line 759
    if-eqz v4, :cond_ec

    .line 760
    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 761
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 763
    :cond_ec
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    goto/16 :goto_15

    .line 769
    :cond_f1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 770
    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 771
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 772
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    .line 773
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    goto/16 :goto_15

    .line 781
    .end local v1           #curDepth:I
    .end local v2           #distanceX:F
    .end local v6           #thresholdXNextLevel:F
    .end local v7           #thresholdXPreviousLevel:F
    :pswitch_109
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v10, :cond_15

    .line 782
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    .line 783
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 784
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 785
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    goto/16 :goto_15

    .line 669
    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_17
        :pswitch_109
        :pswitch_6d
        :pswitch_109
    .end packed-switch
.end method

.method public setHandlePosition(I)V
    .registers 3
    .parameter "buttonPosition"

    .prologue
    .line 573
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 574
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetHandleRectSize()V

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 577
    return-void
.end method

.method public setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V
    .registers 4
    .parameter "indexer"

    .prologue
    .line 378
    if-nez p1, :cond_a

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_a
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    if-eqz v0, :cond_16

    .line 382
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TwIndexView.setIndexer(indexer) :  you are not allowed to set the indexer if you already use indexScroll view under Simple scroll mode !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_16
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_21

    .line 385
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 387
    :cond_21
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 406
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 407
    return-void
.end method

.method public setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V
    .registers 2
    .parameter "iOnIndexSelectedListener"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 954
    return-void
.end method

.method public setSimpleIndexHandleChar([Ljava/lang/String;)V
    .registers 4
    .parameter "handleChar"

    .prologue
    const/4 v1, 0x1

    .line 415
    if-nez p1, :cond_b

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexHandleChar(handleChar) "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_17

    .line 419
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TwIndexView.setSimpleIndexHandleChar(String [] handleChar) :  you must not set the indexer to use simple index handle mode !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_17
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 423
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 425
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 426
    return-void
.end method

.method public setSimpleIndexHandleCharForContact([Ljava/lang/String;)V
    .registers 3
    .parameter "handleChar"

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 435
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public setSubscrollLimit(I)V
    .registers 3
    .parameter "depthLimit"

    .prologue
    .line 559
    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    .line 560
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    .line 562
    :cond_5
    return-void
.end method

.method public setTopPadding(I)V
    .registers 2
    .parameter "mTopPadding"

    .prologue
    .line 1932
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 1933
    return-void
.end method

.method public setmIsFavoriteContactMode(Z)V
    .registers 2
    .parameter "mIsFavoriteContactMode"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 77
    return-void
.end method
