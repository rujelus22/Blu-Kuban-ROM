.class public Lcom/google/android/apps/plus/views/PersonCardView;
.super Landroid/view/ViewGroup;
.source "PersonCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;
    }
.end annotation


# static fields
.field private static sAvatarPaint:Landroid/graphics/Paint;

.field private static final sBoldSpan:Landroid/text/style/StyleSpan;

.field private static sCircleIconBitmap:Landroid/graphics/Bitmap;

.field private static sCircleIconPaint:Landroid/graphics/Paint;

.field private static sColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private static sDefaultAvatar:Landroid/graphics/Bitmap;

.field private static sInitialized:Z


# instance fields
.field private mAction:I

.field private mActionButton:Landroid/widget/Button;

.field private mActionButtonHeight:I

.field private mActionButtonMinWidth:I

.field private mActionButtonTextColor:I

.field private mActionButtonVisible:Z

.field private mAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mAvatarBounds:Landroid/graphics/Rect;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mAvatarInvalidated:Z

.field private final mAvatarOriginalBounds:Landroid/graphics/Rect;

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private final mAvatarSize:I

.field private mAvatarVisible:Z

.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mCircleIconPaddingTop:I

.field private mCircleIconVisible:Z

.field private mCircleIconX:I

.field private mCircleIconY:I

.field private mCircleListVisible:Z

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private final mCirclesTextView:Landroid/widget/TextView;

.field private mContactLookupKey:Ljava/lang/String;

.field private mDismissButton:Landroid/widget/ImageView;

.field private mDismissButtonBackground:Landroid/graphics/drawable/Drawable;

.field private final mDismissButtonMargin:I

.field private final mDismissButtonSize:I

.field private mDismissButtonVisible:Z

.field private mDisplayName:Ljava/lang/String;

.field private final mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

.field private mForceAvatarDefault:Z

.field private mGaiaId:Ljava/lang/String;

.field private final mGapBetweenIconAndCircles:I

.field private final mGapBetweenNameAndCircles:I

.field private mHighlightedText:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;

.field private final mMinHeight:I

.field private final mMinWidth:I

.field private final mNameTextBuilder:Landroid/text/SpannableStringBuilder;

.field private final mNameTextView:Landroid/widget/TextView;

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private mPersonId:Ljava/lang/String;

.field private mPlusPage:Z

.field private mPosition:I

.field private final mSelector:Landroid/graphics/drawable/Drawable;

.field private mWellFormedEmail:Ljava/lang/String;

.field private mWellFormedEmailMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/views/PersonCardView;->sBoldSpan:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PersonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x2

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v5, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarVisible:Z

    .line 87
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 88
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 92
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 128
    .local v3, resources:Landroid/content/res/Resources;
    sget-boolean v4, Lcom/google/android/apps/plus/views/PersonCardView;->sInitialized:Z

    if-nez v4, :cond_68

    .line 129
    sput-boolean v5, Lcom/google/android/apps/plus/views/PersonCardView;->sInitialized:Z

    .line 130
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/PersonCardView;->sDefaultAvatar:Landroid/graphics/Bitmap;

    .line 131
    const v4, 0x7f0200b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/PersonCardView;->sCircleIconBitmap:Landroid/graphics/Bitmap;

    .line 133
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PersonCardView;->sAvatarPaint:Landroid/graphics/Paint;

    .line 134
    sget-object v4, Lcom/google/android/apps/plus/views/PersonCardView;->sAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 136
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/PersonCardView;->sCircleIconPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, 0x7f0a004c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v4, Lcom/google/android/apps/plus/views/PersonCardView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 142
    :cond_68
    sget-object v4, Lcom/google/android/apps/plus/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 148
    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 150
    const v4, 0x7f02021f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    const v4, 0x7f0d020e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mMinWidth:I

    .line 154
    const v4, 0x7f0d020f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mMinHeight:I

    .line 155
    const v4, 0x7f0d0210

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingRight:I

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingLeft:I

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingBottom:I

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingTop:I

    .line 157
    const v4, 0x7f0d0211

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarSize:I

    .line 158
    const v4, 0x7f0d0218

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonMinWidth:I

    .line 160
    const v4, 0x7f0d0217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonHeight:I

    .line 161
    const v4, 0x7f0a0145

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonTextColor:I

    .line 162
    const v4, 0x7f0d0214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconPaddingTop:I

    .line 164
    const v4, 0x7f0d0215

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGapBetweenIconAndCircles:I

    .line 166
    const v4, 0x7f0d0216

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGapBetweenNameAndCircles:I

    .line 168
    const v4, 0x7f0d021a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonMargin:I

    .line 170
    const v4, 0x7f0d0219

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonSize:I

    .line 173
    const v4, 0x7f0d0212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 174
    .local v2, nameTextSize:F
    const v4, 0x7f0d0213

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 176
    .local v1, circleTextSize:F
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    .line 177
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 178
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 179
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    const v5, 0x1030044

    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 180
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/PersonCardView;->addView(Landroid/view/View;)V

    .line 186
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    .line 187
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 188
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 190
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    const v5, 0x7f0a0144

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/PersonCardView;->addView(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/views/PersonCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 549
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    if-eqz v1, :cond_16

    .line 550
    sget-object v1, Lcom/google/android/apps/plus/views/PersonCardView;->sCircleIconBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconY:I

    int-to-float v3, v3

    sget-object v4, Lcom/google/android/apps/plus/views/PersonCardView;->sCircleIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 553
    :cond_16
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarVisible:Z

    if-eqz v1, :cond_4b

    .line 554
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarInvalidated:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v1, :cond_2c

    .line 555
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarInvalidated:Z

    .line 556
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 559
    :cond_2c
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_60

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 560
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_32
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 561
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 562
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/android/apps/plus/views/PersonCardView;->sAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 565
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 567
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 568
    :cond_5a
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 570
    :cond_5f
    return-void

    .line 559
    :cond_60
    sget-object v0, Lcom/google/android/apps/plus/views/PersonCardView;->sDefaultAvatar:Landroid/graphics/Bitmap;

    goto :goto_32
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 589
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->invalidate()V

    .line 591
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 592
    return-void
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPersonId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPosition:I

    return v0
.end method

.method public getWellFormedEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mWellFormedEmail:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 405
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 407
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 276
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGaiaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarInvalidated:Z

    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->invalidate()V

    .line 280
    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mListener:Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;

    if-eqz v0, :cond_f

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mListener:Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;

    iget v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAction:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;->onActionButtonClick(Lcom/google/android/apps/plus/views/PersonCardView;I)V

    .line 617
    :cond_f
    :goto_f
    return-void

    .line 611
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1a

    .line 612
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mListener:Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;->onDismissButtonClick(Lcom/google/android/apps/plus/views/PersonCardView;)V

    goto :goto_f

    .line 614
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mListener:Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;->onItemClick(Lcom/google/android/apps/plus/views/PersonCardView;)V

    goto :goto_f
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 414
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 415
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 416
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 28
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sub-int v20, p4, p2

    sub-int v21, p5, p3

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sub-int v20, p4, p2

    sub-int v21, p5, p3

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 477
    sub-int v16, p4, p2

    .line 478
    .local v16, width:I
    sub-int v11, p5, p3

    .line 479
    .local v11, height:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingTop:I

    .line 481
    .local v15, topBound:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingLeft:I

    .line 482
    .local v12, leftBound:I
    sub-int v17, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v14, v17, v18

    .line 484
    .local v14, rightBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7d

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 486
    .local v10, dismissWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    .line 487
    .local v9, dismissHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonMargin:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    sub-int v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonMargin:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonMargin:I

    move/from16 v20, v0

    sub-int v20, v16, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonMargin:I

    move/from16 v21, v0

    add-int v21, v21, v9

    invoke-virtual/range {v17 .. v21}, Landroid/widget/ImageView;->layout(IIII)V

    .line 492
    .end local v9           #dismissHeight:I
    .end local v10           #dismissWidth:I
    :cond_7d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e9

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarSize:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v15, v0, Landroid/graphics/Rect;->top:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarSize:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingRight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v12, v12, v17

    .line 501
    :cond_e9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_123

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    .line 503
    .local v6, addButtonWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    .line 504
    .local v3, addButtonHeight:I
    move v4, v12

    .line 505
    .local v4, addButtonLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v17, v11, v17

    sub-int v5, v17, v3

    .line 506
    .local v5, addButtonTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    add-int v18, v4, v6

    add-int v19, v5, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/widget/Button;->layout(IIII)V

    .line 510
    .end local v3           #addButtonHeight:I
    .end local v4           #addButtonLeft:I
    .end local v5           #addButtonTop:I
    .end local v6           #addButtonWidth:I
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    .line 511
    .local v13, nameTextHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    add-int v18, v15, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v15, v14, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 513
    move v7, v12

    .line 514
    .local v7, circleTextLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mGapBetweenNameAndCircles:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 516
    .local v8, circleTextTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_165

    .line 517
    sget-object v17, Lcom/google/android/apps/plus/views/PersonCardView;->sCircleIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mGapBetweenIconAndCircles:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v7, v7, v17

    .line 520
    :cond_165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleListVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_186

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, v8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v8, v14, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 525
    :cond_186
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1bc

    .line 526
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconX:I

    .line 527
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconY:I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLineCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1f2

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconPaddingTop:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconY:I

    .line 536
    :cond_1bc
    :goto_1bc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mWellFormedEmailMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_1f1

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 540
    :cond_1f1
    return-void

    .line 531
    :cond_1f2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    sget-object v19, Lcom/google/android/apps/plus/views/PersonCardView;->sCircleIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconY:I

    goto :goto_1bc
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    const/high16 v10, -0x8000

    .line 423
    iget v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mMinWidth:I

    invoke-static {v7, p1}, Lcom/google/android/apps/plus/views/PersonCardView;->resolveSize(II)I

    move-result v6

    .line 424
    .local v6, width:I
    iget v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mMinHeight:I

    invoke-static {v7, p2}, Lcom/google/android/apps/plus/views/PersonCardView;->resolveSize(II)I

    move-result v2

    .line 426
    .local v2, height:I
    iget v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingLeft:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingRight:I

    sub-int v5, v7, v8

    .line 427
    .local v5, textWidth:I
    iget v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingTop:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingBottom:I

    sub-int v4, v7, v8

    .line 429
    .local v4, textHeight:I
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarVisible:Z

    if-eqz v7, :cond_2a

    .line 430
    iget v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarSize:I

    iget v8, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPaddingRight:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 433
    :cond_2a
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonVisible:Z

    if-eqz v7, :cond_47

    .line 434
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonHeight:I

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->measure(II)V

    .line 437
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGapBetweenNameAndCircles:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 440
    :cond_47
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 444
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGapBetweenNameAndCircles:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 446
    move v1, v5

    .line 447
    .local v1, circleTextWidth:I
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    if-eqz v7, :cond_6d

    .line 448
    sget-object v7, Lcom/google/android/apps/plus/views/PersonCardView;->sCircleIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGapBetweenIconAndCircles:I

    add-int/2addr v7, v8

    sub-int/2addr v1, v7

    .line 451
    :cond_6d
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleListVisible:Z

    if-eqz v7, :cond_88

    .line 453
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    .line 454
    .local v3, lineHeight:I
    div-int v7, v4, v3

    mul-int v0, v7, v3

    .line 455
    .local v0, circleTextHeight:I
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 460
    .end local v0           #circleTextHeight:I
    .end local v3           #lineHeight:I
    :cond_88
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonVisible:Z

    if-eqz v7, :cond_9d

    .line 461
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    iget v8, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonSize:I

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonSize:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->measure(II)V

    .line 466
    :cond_9d
    invoke-virtual {p0, v6, v2}, Lcom/google/android/apps/plus/views/PersonCardView;->setMeasuredDimension(II)V

    .line 467
    return-void
.end method

.method public setActionButtonVisible(ZII)V
    .registers 7
    .parameter "visible"
    .parameter "labelResId"
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonVisible:Z

    if-ne v0, p1, :cond_11

    .line 342
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonVisible:Z

    if-eqz v0, :cond_10

    .line 343
    iput p3, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAction:I

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 366
    :cond_10
    :goto_10
    return-void

    .line 349
    :cond_11
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonVisible:Z

    .line 350
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonVisible:Z

    if-eqz v0, :cond_58

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    if-nez v0, :cond_4b

    .line 352
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    iget v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    iget v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButtonMinWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->addView(Landroid/view/View;)V

    .line 360
    :cond_4b
    iput p3, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAction:I

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_10

    .line 363
    :cond_58
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mActionButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_10
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 3
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 600
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->invalidate()V

    .line 601
    return-void
.end method

.method public setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V
    .registers 2
    .parameter "circleNames"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 313
    return-void
.end method

.method public setContactId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "gaiaId"
    .parameter "lookupKey"

    .prologue
    const/4 v3, 0x2

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGaiaId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mContactLookupKey:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarVisible:Z

    if-eqz v0, :cond_31

    .line 241
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGaiaId:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mContactLookupKey:Ljava/lang/String;

    .line 243
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mForceAvatarDefault:Z

    if-nez v0, :cond_2b

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mContactLookupKey:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 245
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mContactLookupKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 252
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->requestLayout()V

    .line 255
    :cond_31
    return-void

    .line 248
    :cond_32
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGaiaId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_2b
.end method

.method public setContactName(Ljava/lang/String;)V
    .registers 9
    .parameter "name"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDisplayName:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mHighlightedText:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/views/PersonCardView;->sBoldSpan:Landroid/text/style/StyleSpan;

    sget-object v6, Lcom/google/android/apps/plus/views/PersonCardView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/util/SpannableUtils;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public setDismissActionButtonVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonVisible:Z

    if-ne v0, p1, :cond_6

    .line 391
    :cond_5
    :goto_5
    return-void

    .line 373
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonVisible:Z

    .line 374
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonVisible:Z

    if-eqz v0, :cond_56

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    if-nez v0, :cond_50

    .line 376
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    .line 377
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PersonCardView;->addView(Landroid/view/View;)V

    .line 386
    :cond_50
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 387
    :cond_56
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDismissButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setForceAvatarDefault(Z)V
    .registers 3
    .parameter "forceDefault"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mForceAvatarDefault:Z

    .line 209
    if-eqz p1, :cond_7

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 212
    :cond_7
    return-void
.end method

.method public setGaiaId(Ljava/lang/String;)V
    .registers 4
    .parameter "gaiaId"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGaiaId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarVisible:Z

    if-eqz v0, :cond_20

    .line 224
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mGaiaId:Ljava/lang/String;

    .line 225
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mForceAvatarDefault:Z

    if-nez v0, :cond_1a

    .line 226
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 228
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->requestLayout()V

    .line 231
    :cond_20
    return-void
.end method

.method public setHighlightedText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 283
    if-nez p1, :cond_6

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mHighlightedText:Ljava/lang/String;

    .line 288
    :goto_5
    return-void

    .line 286
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mHighlightedText:Ljava/lang/String;

    goto :goto_5
.end method

.method public setOnPersonCardClickListener(Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mListener:Lcom/google/android/apps/plus/views/PersonCardView$OnPersonCardClickListener;

    .line 398
    return-void
.end method

.method public setPackedCircleIdsEmailAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "circleIds"
    .parameter "emailAddress"
    .parameter "snippet"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 318
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleListVisible:Z

    .line 319
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :goto_17
    return-void

    .line 321
    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 322
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleListVisible:Z

    .line 323
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mHighlightedText:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/views/PersonCardView;->sBoldSpan:Landroid/text/style/StyleSpan;

    sget-object v6, Lcom/google/android/apps/plus/views/PersonCardView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/util/SpannableUtils;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    .line 326
    :cond_31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 327
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleListVisible:Z

    .line 328
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 331
    :cond_45
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleListVisible:Z

    .line 332
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleIconVisible:Z

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17
.end method

.method public setPersonId(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPersonId:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setPlusPage(Z)V
    .registers 2
    .parameter "plusPage"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPlusPage:Z

    .line 302
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 200
    iput p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mPosition:I

    .line 201
    return-void
.end method

.method public setWellFormedEmail(Ljava/lang/String;)V
    .registers 3
    .parameter "wellFormedEmail"

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mWellFormedEmailMode:Z

    .line 263
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mWellFormedEmail:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method public updateContentDescription()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PersonCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 625
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 626
    .local v0, circleNames:Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mCircleListVisible:Z

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 627
    const v2, 0x7f08022b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PersonCardView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 634
    :goto_2b
    return-void

    .line 631
    :cond_2c
    const v2, 0x7f08022a

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PersonCardView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2b
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PersonCardView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 578
    const/4 v0, 0x1

    .line 580
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_5
.end method
