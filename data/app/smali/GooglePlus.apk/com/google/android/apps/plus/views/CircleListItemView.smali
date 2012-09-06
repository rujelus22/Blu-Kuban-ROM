.class public Lcom/google/android/apps/plus/views/CircleListItemView;
.super Lcom/google/android/apps/plus/views/CheckableListItemView;
.source "CircleListItemView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/CircleListItemView$1;,
        Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    }
.end annotation


# static fields
.field private static final sCircleTypeIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

.field private static sDefaultCircleDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mAvatarCount:I

.field private final mAvatarHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvatarSize:I

.field private final mAvatarSpacing:I

.field private mAvatarStripLeft:I

.field private mAvatarStripTop:I

.field private mAvatarStripVisible:Z

.field private final mCircleIconBounds:Landroid/graphics/Rect;

.field private mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCircleIconSizeLarge:I

.field private final mCircleIconSizeSmall:I

.field private mCircleId:Ljava/lang/String;

.field private mCircleName:Ljava/lang/String;

.field private mCircleType:I

.field private final mCountTextView:Landroid/widget/TextView;

.field private final mGaiaIds:[Ljava/lang/String;

.field private final mGapBetweenCountAndCheckBox:I

.field private final mGapBetweenIconAndText:I

.field private final mGapBetweenNameAndCount:I

.field private mHighlightedText:Ljava/lang/String;

.field private mMemberCount:I

.field private mMemberCountShown:Z

.field private final mNameTextBuilder:Landroid/text/SpannableStringBuilder;

.field private final mNameTextView:Landroid/widget/TextView;

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mPhotoPaint:Landroid/graphics/Paint;

.field private final mPreferredHeight:I

.field private final mSourceRect:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/Rect;

.field private mVisibleAvatarCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/CircleListItemView;->sCircleTypeIcons:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CheckableListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    .line 62
    new-array v5, v10, [Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[Ljava/lang/String;

    .line 70
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    .line 71
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    .line 81
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 173
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 175
    sget-object v5, Lcom/google/android/apps/plus/R$styleable;->CircleListItemView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPreferredHeight:I

    .line 178
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingTop:I

    .line 180
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingBottom:I

    .line 182
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingLeft:I

    .line 184
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingRight:I

    .line 186
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    .line 188
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSpacing:I

    .line 190
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 192
    .local v3, nameTextSize:F
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 194
    .local v2, nameTextBold:Z
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenNameAndCount:I

    .line 196
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenIconAndText:I

    .line 198
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeSmall:I

    .line 200
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeLarge:I

    .line 202
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 204
    .local v1, memberCountTextColor:I
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenCountAndCheckBox:I

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 209
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 210
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 211
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    const v6, 0x1030044

    invoke-virtual {v5, p1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 212
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    if-eqz v2, :cond_cd

    .line 214
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 216
    :cond_cd
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->addView(Landroid/view/View;)V

    .line 221
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    .line 222
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 223
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 224
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    const v6, 0x1030044

    invoke-virtual {v5, p1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 225
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 226
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->addView(Landroid/view/View;)V

    .line 232
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPhotoPaint:Landroid/graphics/Paint;

    .line 233
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconBounds:Landroid/graphics/Rect;

    .line 236
    sget-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_147

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 238
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleListItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 239
    const v5, 0x7f0201bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_147
    sget-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultCircleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/CircleListItemView;)Lcom/google/android/apps/plus/service/ImageCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 565
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 566
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 568
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    if-eqz v5, :cond_79

    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v5, :cond_79

    iget v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    if-eqz v5, :cond_79

    const/4 v0, 0x1

    .line 569
    .local v0, avatarsShown:Z
    :goto_19
    if-eqz v0, :cond_7b

    .line 570
    iget v4, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripLeft:I

    .line 571
    .local v4, offset:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    iget v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mVisibleAvatarCount:I

    if-ge v3, v5, :cond_7b

    .line 572
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 573
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripTop:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 574
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 575
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripTop:I

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 576
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 577
    .local v2, holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->refreshIfNecessary()V

    .line 578
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 579
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_4f

    .line 580
    sget-object v1, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 582
    :cond_4f
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->isAvatarVisible()Z

    move-result v5

    if-eqz v5, :cond_70

    if-eqz v1, :cond_70

    .line 583
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 584
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 585
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPhotoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 587
    :cond_70
    iget v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSpacing:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 568
    .end local v0           #avatarsShown:Z
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .end local v3           #i:I
    .end local v4           #offset:I
    :cond_79
    const/4 v0, 0x0

    goto :goto_19

    .line 590
    .restart local v0       #avatarsShown:Z
    :cond_7b
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/CheckableListItemView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 591
    return-void
.end method

.method public getCircleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleName:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleType()I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleType:I

    return v0
.end method

.method public getMemberCount()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 407
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onAttachedToWindow()V

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 409
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 425
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 426
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 427
    .local v0, holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    #getter for: Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mGaiaId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->access$200(Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 428
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->reloadAvatar()V

    .line 429
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleListItemView;->invalidate()V

    .line 433
    .end local v0           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_25
    return-void

    .line 425
    .restart local v0       #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 416
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onDetachedFromWindow()V

    .line 417
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 418
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 37
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingLeft:I

    move/from16 v21, v0

    .line 490
    .local v21, leftBound:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingTop:I

    move/from16 v27, v0

    .line 491
    .local v27, topBound:I
    sub-int v14, p5, p3

    .line 493
    .local v14, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    .line 494
    .local v22, nameTextHeight:I
    move/from16 v25, v22

    .line 495
    .local v25, textHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_32

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    .line 497
    .local v11, countTextHeight:I
    move/from16 v0, v25

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 502
    .end local v11           #countTextHeight:I
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1e2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeSmall:I

    move/from16 v18, v0

    .line 503
    .local v18, iconSize:I
    :goto_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1ea

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1ea

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    move/from16 v28, v0

    if-eqz v28, :cond_1ea

    const/4 v5, 0x1

    .line 504
    .local v5, avatarsShown:Z
    :goto_59
    if-eqz v5, :cond_1ed

    .line 505
    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 506
    .local v16, iconBoxHeight:I
    sub-int v28, v16, v18

    div-int/lit8 v28, v28, 0x2

    add-int v19, v27, v28

    .line 507
    .local v19, iconTop:I
    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 508
    sub-int v28, v16, v25

    div-int/lit8 v28, v28, 0x2

    add-int v26, v27, v28

    .line 514
    .end local v16           #iconBoxHeight:I
    .local v26, textTop:I
    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 515
    .local v20, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 516
    .local v17, iconHeight:I
    sub-int v28, v18, v17

    div-int/lit8 v28, v28, 0x2

    add-int v7, v19, v28

    .line 517
    .local v7, centeredTop:I
    sub-int v28, v18, v20

    div-int/lit8 v28, v28, 0x2

    add-int v6, v21, v28

    .line 519
    .local v6, centeredLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    add-int v29, v6, v20

    add-int v30, v7, v17

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenIconAndText:I

    move/from16 v28, v0

    add-int v28, v28, v18

    add-int v21, v21, v28

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v24, p4, v28

    .line 524
    .local v24, rightBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBoxVisible:Z

    move/from16 v28, v0

    if-eqz v28, :cond_fd

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v10

    .line 526
    .local v10, checkboxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v8

    .line 527
    .local v8, checkboxHeight:I
    sub-int v28, p5, p3

    sub-int v28, v28, v8

    div-int/lit8 v9, v28, 0x2

    .line 528
    .local v9, checkboxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    sub-int v29, v24, v10

    add-int v30, v9, v8

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenCountAndCheckBox:I

    move/from16 v28, v0

    add-int v28, v28, v10

    sub-int v24, v24, v28

    .line 534
    .end local v8           #checkboxHeight:I
    .end local v9           #checkboxTop:I
    .end local v10           #checkboxWidth:I
    :cond_fd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    .line 535
    .local v13, countTextWidth:I
    :goto_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v28

    sub-int v29, v24, v21

    sub-int v29, v29, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenNameAndCount:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 537
    .local v23, nameTextWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    add-int v29, v21, v23

    add-int v30, v26, v25

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_165

    .line 539
    add-int v28, v21, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenNameAndCount:I

    move/from16 v29, v0

    add-int v12, v28, v29

    .line 540
    .local v12, countTextLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    add-int v29, v26, v25

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v29

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 543
    .end local v12           #countTextLeft:I
    :cond_165
    if-eqz v5, :cond_1fe

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v28, v14, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripTop:I

    .line 545
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripLeft:I

    .line 547
    sub-int v28, p4, p2

    sub-int v28, v28, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSpacing:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSpacing:I

    move/from16 v30, v0

    add-int v29, v29, v30

    div-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/CircleListItemView;->mVisibleAvatarCount:I

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mVisibleAvatarCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/CircleListItemView;->mVisibleAvatarCount:I

    .line 554
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1c4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mVisibleAvatarCount:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v15, v0, :cond_1fe

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->loadAvatar()V

    .line 554
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c4

    .line 502
    .end local v5           #avatarsShown:Z
    .end local v6           #centeredLeft:I
    .end local v7           #centeredTop:I
    .end local v13           #countTextWidth:I
    .end local v15           #i:I
    .end local v17           #iconHeight:I
    .end local v18           #iconSize:I
    .end local v19           #iconTop:I
    .end local v20           #iconWidth:I
    .end local v23           #nameTextWidth:I
    .end local v24           #rightBound:I
    .end local v26           #textTop:I
    :cond_1e2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeLarge:I

    move/from16 v18, v0

    goto/16 :goto_40

    .line 503
    .restart local v18       #iconSize:I
    :cond_1ea
    const/4 v5, 0x0

    goto/16 :goto_59

    .line 510
    .restart local v5       #avatarsShown:Z
    :cond_1ed
    sub-int v28, p5, p3

    sub-int v28, v28, v18

    div-int/lit8 v19, v28, 0x2

    .line 511
    .restart local v19       #iconTop:I
    sub-int v28, p5, p3

    sub-int v28, v28, v25

    div-int/lit8 v26, v28, 0x2

    .restart local v26       #textTop:I
    goto/16 :goto_77

    .line 534
    .restart local v6       #centeredLeft:I
    .restart local v7       #centeredTop:I
    .restart local v17       #iconHeight:I
    .restart local v20       #iconWidth:I
    .restart local v24       #rightBound:I
    :cond_1fb
    const/4 v13, 0x0

    goto/16 :goto_10f

    .line 558
    .restart local v13       #countTextWidth:I
    .restart local v23       #nameTextWidth:I
    :cond_1fe
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    const/4 v0, 0x0

    .line 440
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;->resolveSize(II)I

    move-result v5

    .line 441
    .local v5, width:I
    const/4 v1, 0x0

    .line 443
    .local v1, height:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    if-eqz v6, :cond_aa

    iget v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeSmall:I

    .line 445
    .local v2, iconSize:I
    :goto_e
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingLeft:I

    sub-int v6, v5, v6

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingRight:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenIconAndText:I

    sub-int v3, v6, v7

    .line 448
    .local v3, nameTextWidth:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBoxVisible:Z

    if-eqz v6, :cond_37

    .line 449
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v0, p2}, Landroid/widget/CheckBox;->measure(II)V

    .line 450
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 451
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenCountAndCheckBox:I

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 454
    :cond_37
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 456
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 458
    .local v4, textHeight:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v6, :cond_5f

    .line 459
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 460
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 461
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenNameAndCount:I

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 464
    :cond_5f
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 465
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    if-eqz v6, :cond_74

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v6, :cond_74

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    if-eqz v6, :cond_74

    const/4 v0, 0x1

    .line 466
    .local v0, avatarsShown:Z
    :cond_74
    if-eqz v0, :cond_7d

    .line 467
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 470
    :cond_7d
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 472
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 478
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingTop:I

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 479
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPreferredHeight:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 481
    invoke-virtual {p0, v5, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setMeasuredDimension(II)V

    .line 482
    return-void

    .line 443
    .end local v0           #avatarsShown:Z
    .end local v2           #iconSize:I
    .end local v3           #nameTextWidth:I
    .end local v4           #textHeight:I
    :cond_aa
    iget v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeLarge:I

    goto/16 :goto_e
.end method

.method public setAvatarStripVisible(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    .line 249
    return-void
.end method

.method public setCircle(Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 16
    .parameter "circleId"
    .parameter "type"
    .parameter "name"
    .parameter "memberCount"
    .parameter "isRestricted"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 253
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleId:Ljava/lang/String;

    .line 254
    iput p2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleType:I

    .line 255
    iput-object p3, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleName:Ljava/lang/String;

    .line 256
    iput p4, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mHighlightedText:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sBoldSpan:Landroid/text/style/StyleSpan;

    sget-object v6, Lcom/google/android/apps/plus/views/CircleListItemView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/util/SpannableUtils;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    if-eq p2, v9, :cond_27

    const/4 v0, 0x3

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_27

    const/4 v0, 0x5

    if-eq p2, v0, :cond_27

    const/16 v0, 0xa

    if-ne p2, v0, :cond_8c

    :cond_27
    move v0, v9

    :goto_28
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    .line 267
    move v7, p2

    .line 268
    .local v7, cacheKey:I
    const/4 v0, -0x1

    if-ne p2, v0, :cond_37

    const-string v0, "v.whatshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 269
    const/4 v7, -0x2

    .line 271
    :cond_37
    sget-object v0, Lcom/google/android/apps/plus/views/CircleListItemView;->sCircleTypeIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_64

    .line 274
    sparse-switch v7, :sswitch_data_b6

    .line 293
    const v8, 0x7f0201b6

    .line 295
    .local v8, circleIconResource:I
    :goto_4b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 297
    sget-object v0, Lcom/google/android/apps/plus/views/CircleListItemView;->sCircleTypeIcons:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    .end local v8           #circleIconResource:I
    :cond_64
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v0, :cond_ae

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :goto_8b
    return-void

    .end local v7           #cacheKey:I
    :cond_8c
    move v0, v2

    .line 261
    goto :goto_28

    .line 276
    .restart local v7       #cacheKey:I
    :sswitch_8e
    if-eqz p5, :cond_94

    const v8, 0x7f0201be

    .line 278
    .restart local v8       #circleIconResource:I
    :goto_93
    goto :goto_4b

    .line 276
    .end local v8           #circleIconResource:I
    :cond_94
    const v8, 0x7f0201bd

    goto :goto_93

    .line 280
    :sswitch_98
    const v8, 0x7f0201b9

    .line 281
    .restart local v8       #circleIconResource:I
    goto :goto_4b

    .line 283
    .end local v8           #circleIconResource:I
    :sswitch_9c
    if-eqz p5, :cond_a2

    const v8, 0x7f0201bb

    .line 285
    .restart local v8       #circleIconResource:I
    :goto_a1
    goto :goto_4b

    .line 283
    .end local v8           #circleIconResource:I
    :cond_a2
    const v8, 0x7f0201ba

    goto :goto_a1

    .line 287
    :sswitch_a6
    const v8, 0x7f0201b7

    .line 288
    .restart local v8       #circleIconResource:I
    goto :goto_4b

    .line 290
    .end local v8           #circleIconResource:I
    :sswitch_aa
    const v8, 0x7f0201c1

    .line 291
    .restart local v8       #circleIconResource:I
    goto :goto_4b

    .line 304
    .end local v8           #circleIconResource:I
    :cond_ae
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b

    .line 274
    :sswitch_data_b6
    .sparse-switch
        -0x2 -> :sswitch_aa
        0x7 -> :sswitch_9c
        0x8 -> :sswitch_98
        0x9 -> :sswitch_8e
        0xa -> :sswitch_a6
    .end sparse-switch
.end method

.method public setHighlightedText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 395
    if-nez p1, :cond_6

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mHighlightedText:Ljava/lang/String;

    .line 400
    :goto_5
    return-void

    .line 398
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mHighlightedText:Ljava/lang/String;

    goto :goto_5
.end method

.method public setPackedMemberIds(Ljava/lang/String;)V
    .registers 14
    .parameter "packedMemberIds"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 325
    const/16 v8, 0x10

    iget v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, gaiaIdCount:I
    if-eqz p1, :cond_3b

    .line 332
    const/4 v6, 0x0

    .line 333
    .local v6, offset:I
    :goto_10
    iget v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v1, v8, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_3b

    .line 334
    const/16 v8, 0x7c

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 335
    .local v7, separatorIndex:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_27

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 339
    :cond_27
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, gaiaId:Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 342
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #gaiaIdCount:I
    .local v2, gaiaIdCount:I
    aput-object v0, v8, v1

    move v1, v2

    .line 344
    .end local v2           #gaiaIdCount:I
    .restart local v1       #gaiaIdCount:I
    :cond_38
    add-int/lit8 v6, v7, 0x1

    .line 345
    goto :goto_10

    .line 348
    .end local v0           #gaiaId:Ljava/lang/String;
    .end local v6           #offset:I
    .end local v7           #separatorIndex:I
    :cond_3b
    :goto_3b
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-le v8, v9, :cond_53

    .line 349
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3b

    .line 352
    :cond_53
    const/4 v4, 0x0

    .local v4, i:I
    :goto_54
    iget v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v4, v8, :cond_79

    .line 353
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_6a

    .line 354
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    new-instance v9, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    invoke-direct {v9, p0, v11}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;-><init>(Lcom/google/android/apps/plus/views/CircleListItemView;Lcom/google/android/apps/plus/views/CircleListItemView$1;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_6a
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setAvatarVisible(Z)V

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 362
    :cond_79
    const/4 v4, 0x0

    :goto_7a
    if-ge v4, v1, :cond_a4

    .line 363
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[Ljava/lang/String;

    aget-object v0, v8, v4

    .line 364
    .restart local v0       #gaiaId:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_81
    iget v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v5, v8, :cond_9e

    .line 365
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 366
    .local v3, holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->getGaiaId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 369
    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setAvatarVisible(Z)V

    .line 370
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[Ljava/lang/String;

    aput-object v11, v8, v4

    .line 362
    .end local v3           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 364
    .restart local v3       #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 376
    .end local v0           #gaiaId:Ljava/lang/String;
    .end local v3           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .end local v5           #j:I
    :cond_a4
    const/4 v4, 0x0

    :goto_a5
    if-ge v4, v1, :cond_cd

    .line 377
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[Ljava/lang/String;

    aget-object v0, v8, v4

    .line 378
    .restart local v0       #gaiaId:Ljava/lang/String;
    if-nez v0, :cond_b0

    .line 376
    :cond_ad
    :goto_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    .line 383
    :cond_b0
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_b1
    iget v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v5, v8, :cond_ad

    .line 384
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 385
    .restart local v3       #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->isAvatarVisible()Z

    move-result v8

    if-nez v8, :cond_ca

    .line 386
    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setGaiaId(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setAvatarVisible(Z)V

    goto :goto_ad

    .line 383
    :cond_ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    .line 392
    .end local v0           #gaiaId:Ljava/lang/String;
    .end local v3           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .end local v5           #j:I
    :cond_cd
    return-void
.end method

.method public updateContentDescription()V
    .registers 7

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0015

    iget v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 600
    return-void
.end method
