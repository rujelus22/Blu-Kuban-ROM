.class public Lcom/google/android/apps/plus/views/CircleListItemView;
.super Lcom/google/android/apps/plus/views/CheckableListItemView;
.source "CircleListItemView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/CircleListItemView$1;,
        Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    }
.end annotation


# static fields
.field private static final sCircleTypeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultAvatarBitmap:Landroid/graphics/drawable/Drawable;

.field private static sDefaultCircleDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

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

.field private final mGaiaIds:[J

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
    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/CircleListItemView;->sCircleTypeIcons:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
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

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CheckableListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    .line 59
    new-array v5, v10, [J

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[J

    .line 67
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    .line 68
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    .line 78
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 170
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 172
    sget-object v5, Lcom/google/android/apps/plus/R$styleable;->CircleListItemView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 173
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPreferredHeight:I

    .line 175
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingTop:I

    .line 177
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingBottom:I

    .line 179
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingLeft:I

    .line 181
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingRight:I

    .line 183
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    .line 185
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSpacing:I

    .line 187
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 189
    .local v3, nameTextSize:F
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 191
    .local v2, nameTextBold:Z
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenNameAndCount:I

    .line 193
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenIconAndText:I

    .line 195
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeSmall:I

    .line 197
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeLarge:I

    .line 199
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 201
    .local v1, memberCountTextColor:I
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenCountAndCheckBox:I

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 206
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 207
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    const v6, 0x1030044

    invoke-virtual {v5, p1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 209
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    if-eqz v2, :cond_cd

    .line 211
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 213
    :cond_cd
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->addView(Landroid/view/View;)V

    .line 218
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    .line 219
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 220
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 221
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    const v6, 0x1030044

    invoke-virtual {v5, p1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 222
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 225
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->addView(Landroid/view/View;)V

    .line 229
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPhotoPaint:Landroid/graphics/Paint;

    .line 230
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconBounds:Landroid/graphics/Rect;

    .line 233
    sget-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultAvatarBitmap:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_146

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 235
    .local v4, resources:Landroid/content/res/Resources;
    const v5, 0x7f020035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultAvatarBitmap:Landroid/graphics/drawable/Drawable;

    .line 236
    const v5, 0x7f0200d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_146
    sget-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultCircleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/CircleListItemView;)Lcom/google/android/apps/plus/service/AvatarCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 558
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 559
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 561
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    if-eqz v5, :cond_75

    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v5, :cond_75

    iget v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    if-eqz v5, :cond_75

    const/4 v0, 0x1

    .line 562
    .local v0, avatarsShown:Z
    :goto_19
    if-eqz v0, :cond_84

    .line 563
    iget v4, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripLeft:I

    .line 564
    .local v4, offset:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    iget v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mVisibleAvatarCount:I

    if-ge v3, v5, :cond_84

    .line 565
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 566
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripTop:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 567
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 568
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripTop:I

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 569
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 570
    .local v2, holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->refreshIfNecessary()V

    .line 571
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 572
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->isAvatarVisible()Z

    move-result v5

    if-eqz v5, :cond_77

    if-eqz v1, :cond_77

    .line 573
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 574
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 575
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mSourceRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPhotoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 580
    :goto_6c
    iget v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSpacing:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 561
    .end local v0           #avatarsShown:Z
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .end local v3           #i:I
    .end local v4           #offset:I
    :cond_75
    const/4 v0, 0x0

    goto :goto_19

    .line 577
    .restart local v0       #avatarsShown:Z
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .restart local v3       #i:I
    .restart local v4       #offset:I
    :cond_77
    sget-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultAvatarBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 578
    sget-object v5, Lcom/google/android/apps/plus/views/CircleListItemView;->sDefaultAvatarBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6c

    .line 583
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .end local v3           #i:I
    .end local v4           #offset:I
    :cond_84
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/CheckableListItemView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 584
    return-void
.end method

.method public getCircleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleName:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleType()I
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleType:I

    return v0
.end method

.method public getMemberCount()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 400
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onAttachedToWindow()V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 402
    return-void
.end method

.method public onAvatarChanged(J)V
    .registers 7
    .parameter "userId"

    .prologue
    .line 418
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 419
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 420
    .local v0, holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    #getter for: Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mContactId:J
    invoke-static {v0}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->access$200(Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_20

    .line 421
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->reloadAvatar()V

    .line 422
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleListItemView;->invalidate()V

    .line 426
    .end local v0           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_1f
    return-void

    .line 418
    .restart local v0       #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 409
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onDetachedFromWindow()V

    .line 410
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 411
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
    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingLeft:I

    move/from16 v21, v0

    .line 483
    .local v21, leftBound:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingTop:I

    move/from16 v27, v0

    .line 484
    .local v27, topBound:I
    sub-int v14, p5, p3

    .line 486
    .local v14, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    .line 487
    .local v22, nameTextHeight:I
    move/from16 v25, v22

    .line 488
    .local v25, textHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_32

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    .line 490
    .local v11, countTextHeight:I
    move/from16 v0, v25

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 495
    .end local v11           #countTextHeight:I
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1e2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeSmall:I

    move/from16 v18, v0

    .line 496
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

    .line 497
    .local v5, avatarsShown:Z
    :goto_59
    if-eqz v5, :cond_1ed

    .line 498
    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 499
    .local v16, iconBoxHeight:I
    sub-int v28, v16, v18

    div-int/lit8 v28, v28, 0x2

    add-int v19, v27, v28

    .line 500
    .local v19, iconTop:I
    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 501
    sub-int v28, v16, v25

    div-int/lit8 v28, v28, 0x2

    add-int v26, v27, v28

    .line 507
    .end local v16           #iconBoxHeight:I
    .local v26, textTop:I
    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 508
    .local v20, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 509
    .local v17, iconHeight:I
    sub-int v28, v18, v17

    div-int/lit8 v28, v28, 0x2

    add-int v7, v19, v28

    .line 510
    .local v7, centeredTop:I
    sub-int v28, v18, v20

    div-int/lit8 v28, v28, 0x2

    add-int v6, v21, v28

    .line 512
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

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenIconAndText:I

    move/from16 v28, v0

    add-int v28, v28, v18

    add-int v21, v21, v28

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v24, p4, v28

    .line 517
    .local v24, rightBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBoxVisible:Z

    move/from16 v28, v0

    if-eqz v28, :cond_fd

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v10

    .line 519
    .local v10, checkboxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v8

    .line 520
    .local v8, checkboxHeight:I
    sub-int v28, p5, p3

    sub-int v28, v28, v8

    div-int/lit8 v9, v28, 0x2

    .line 521
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

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenCountAndCheckBox:I

    move/from16 v28, v0

    add-int v28, v28, v10

    sub-int v24, v24, v28

    .line 527
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

    .line 528
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

    .line 530
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

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_165

    .line 532
    add-int v28, v21, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenNameAndCount:I

    move/from16 v29, v0

    add-int v12, v28, v29

    .line 533
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

    .line 536
    .end local v12           #countTextLeft:I
    :cond_165
    if-eqz v5, :cond_1fe

    .line 537
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

    .line 538
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripLeft:I

    .line 540
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

    .line 543
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

    .line 547
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1c4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mVisibleAvatarCount:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v15, v0, :cond_1fe

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->loadAvatar()V

    .line 547
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c4

    .line 495
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

    .line 496
    .restart local v18       #iconSize:I
    :cond_1ea
    const/4 v5, 0x0

    goto/16 :goto_59

    .line 503
    .restart local v5       #avatarsShown:Z
    :cond_1ed
    sub-int v28, p5, p3

    sub-int v28, v28, v18

    div-int/lit8 v19, v28, 0x2

    .line 504
    .restart local v19       #iconTop:I
    sub-int v28, p5, p3

    sub-int v28, v28, v25

    div-int/lit8 v26, v28, 0x2

    .restart local v26       #textTop:I
    goto/16 :goto_77

    .line 527
    .restart local v6       #centeredLeft:I
    .restart local v7       #centeredTop:I
    .restart local v17       #iconHeight:I
    .restart local v20       #iconWidth:I
    .restart local v24       #rightBound:I
    :cond_1fb
    const/4 v13, 0x0

    goto/16 :goto_10f

    .line 551
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

    .line 433
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;->resolveSize(II)I

    move-result v5

    .line 434
    .local v5, width:I
    const/4 v1, 0x0

    .line 436
    .local v1, height:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    if-eqz v6, :cond_aa

    iget v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconSizeSmall:I

    .line 438
    .local v2, iconSize:I
    :goto_e
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingLeft:I

    sub-int v6, v5, v6

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingRight:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenIconAndText:I

    sub-int v3, v6, v7

    .line 441
    .local v3, nameTextWidth:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBoxVisible:Z

    if-eqz v6, :cond_37

    .line 442
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v0, p2}, Landroid/widget/CheckBox;->measure(II)V

    .line 443
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 444
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenCountAndCheckBox:I

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 447
    :cond_37
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 449
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 451
    .local v4, textHeight:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v6, :cond_5f

    .line 452
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 453
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 454
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGapBetweenNameAndCount:I

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 457
    :cond_5f
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 458
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    if-eqz v6, :cond_74

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v6, :cond_74

    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    if-eqz v6, :cond_74

    const/4 v0, 0x1

    .line 459
    .local v0, avatarsShown:Z
    :cond_74
    if-eqz v0, :cond_7d

    .line 460
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarSize:I

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 463
    :cond_7d
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 465
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 471
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingTop:I

    iget v7, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 472
    iget v6, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mPreferredHeight:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 474
    invoke-virtual {p0, v5, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setMeasuredDimension(II)V

    .line 475
    return-void

    .line 436
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
    .line 245
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarStripVisible:Z

    .line 246
    return-void
.end method

.method public setCircle(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 14
    .parameter "circleId"
    .parameter "type"
    .parameter "name"
    .parameter "memberCount"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 249
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleId:Ljava/lang/String;

    .line 250
    iput p2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleType:I

    .line 251
    iput-object p3, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleName:Ljava/lang/String;

    .line 252
    iput p4, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    .line 254
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mHighlightedText:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 256
    if-eq p2, v8, :cond_24

    const/4 v0, 0x3

    if-eq p2, v0, :cond_24

    const/4 v0, 0x2

    if-eq p2, v0, :cond_24

    const/4 v0, 0x5

    if-eq p2, v0, :cond_24

    const/16 v0, 0xa

    if-ne p2, v0, :cond_91

    :cond_24
    move v0, v8

    :goto_25
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    .line 262
    move v6, p2

    .line 263
    .local v6, cacheKey:I
    const/4 v0, -0x1

    if-ne p2, v0, :cond_34

    const-string v0, "v.whatshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 264
    const/4 v6, -0x2

    .line 266
    :cond_34
    sget-object v0, Lcom/google/android/apps/plus/views/CircleListItemView;->sCircleTypeIcons:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_69

    .line 269
    sparse-switch v6, :sswitch_data_b0

    .line 286
    const v7, 0x7f0200d1

    .line 288
    .local v7, circleIconResource:I
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    sget-object v0, Lcom/google/android/apps/plus/views/CircleListItemView;->sCircleTypeIcons:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v7           #circleIconResource:I
    :cond_69
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCountShown:Z

    if-eqz v0, :cond_a7

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    :goto_90
    return-void

    .end local v6           #cacheKey:I
    :cond_91
    move v0, v3

    .line 256
    goto :goto_25

    .line 271
    .restart local v6       #cacheKey:I
    :sswitch_93
    const v7, 0x7f0200d9

    .line 272
    .restart local v7       #circleIconResource:I
    goto :goto_4c

    .line 274
    .end local v7           #circleIconResource:I
    :sswitch_97
    const v7, 0x7f0200d5

    .line 275
    .restart local v7       #circleIconResource:I
    goto :goto_4c

    .line 277
    .end local v7           #circleIconResource:I
    :sswitch_9b
    const v7, 0x7f0200d6

    .line 278
    .restart local v7       #circleIconResource:I
    goto :goto_4c

    .line 280
    .end local v7           #circleIconResource:I
    :sswitch_9f
    const v7, 0x7f0200d2

    .line 281
    .restart local v7       #circleIconResource:I
    goto :goto_4c

    .line 283
    .end local v7           #circleIconResource:I
    :sswitch_a3
    const v7, 0x7f0200dc

    .line 284
    .restart local v7       #circleIconResource:I
    goto :goto_4c

    .line 297
    .end local v7           #circleIconResource:I
    :cond_a7
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_90

    .line 269
    nop

    :sswitch_data_b0
    .sparse-switch
        -0x2 -> :sswitch_a3
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_97
        0x9 -> :sswitch_93
        0xa -> :sswitch_9f
    .end sparse-switch
.end method

.method public setHighlightedText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 388
    if-nez p1, :cond_6

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mHighlightedText:Ljava/lang/String;

    .line 393
    :goto_5
    return-void

    .line 391
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
    .line 318
    const/16 v9, 0x10

    iget v10, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mMemberCount:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    .line 319
    const/4 v2, 0x0

    .line 321
    .local v2, gaiaIdCount:I
    if-eqz p1, :cond_3d

    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, offset:I
    :goto_e
    iget v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v2, v9, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3d

    .line 327
    const/16 v9, 0x7c

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 328
    .local v8, separatorIndex:I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_25

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 332
    :cond_25
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v0

    .line 334
    .local v0, gaiaId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_3a

    .line 335
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[J

    add-int/lit8 v3, v2, 0x1

    .end local v2           #gaiaIdCount:I
    .local v3, gaiaIdCount:I
    aput-wide v0, v9, v2

    move v2, v3

    .line 337
    .end local v3           #gaiaIdCount:I
    .restart local v2       #gaiaIdCount:I
    :cond_3a
    add-int/lit8 v7, v8, 0x1

    .line 338
    goto :goto_e

    .line 341
    .end local v0           #gaiaId:J
    .end local v7           #offset:I
    .end local v8           #separatorIndex:I
    :cond_3d
    :goto_3d
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-le v9, v10, :cond_55

    .line 342
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3d

    .line 345
    :cond_55
    const/4 v5, 0x0

    .local v5, i:I
    :goto_56
    iget v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v5, v9, :cond_7c

    .line 346
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v5, :cond_6d

    .line 347
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    new-instance v10, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;-><init>(Lcom/google/android/apps/plus/views/CircleListItemView;Lcom/google/android/apps/plus/views/CircleListItemView$1;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_6d
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setAvatarVisible(Z)V

    .line 345
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 355
    :cond_7c
    const/4 v5, 0x0

    :goto_7d
    if-ge v5, v2, :cond_a8

    .line 356
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[J

    aget-wide v0, v9, v5

    .line 357
    .restart local v0       #gaiaId:J
    const/4 v6, 0x0

    .local v6, j:I
    :goto_84
    iget v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v6, v9, :cond_a2

    .line 358
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 359
    .local v4, holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->getContactId()J

    move-result-wide v9

    cmp-long v9, v9, v0

    if-nez v9, :cond_a5

    .line 362
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setAvatarVisible(Z)V

    .line 363
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[J

    const-wide/16 v10, 0x0

    aput-wide v10, v9, v5

    .line 355
    .end local v4           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    .line 357
    .restart local v4       #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    :cond_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    .line 369
    .end local v0           #gaiaId:J
    .end local v4           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .end local v6           #j:I
    :cond_a8
    const/4 v5, 0x0

    :goto_a9
    if-ge v5, v2, :cond_d6

    .line 370
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mGaiaIds:[J

    aget-wide v0, v9, v5

    .line 371
    .restart local v0       #gaiaId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-nez v9, :cond_b8

    .line 369
    :cond_b5
    :goto_b5
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    .line 376
    :cond_b8
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_b9
    iget v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCount:I

    if-ge v6, v9, :cond_b5

    .line 377
    iget-object v9, p0, Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarHolders:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;

    .line 378
    .restart local v4       #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->isAvatarVisible()Z

    move-result v9

    if-nez v9, :cond_d3

    .line 379
    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setContactId(J)V

    .line 380
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->setAvatarVisible(Z)V

    goto :goto_b5

    .line 376
    :cond_d3
    add-int/lit8 v6, v6, 0x1

    goto :goto_b9

    .line 385
    .end local v0           #gaiaId:J
    .end local v4           #holder:Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
    .end local v6           #j:I
    :cond_d6
    return-void
.end method

.method public updateContentDescription()V
    .registers 7

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000f

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

    .line 593
    return-void
.end method
