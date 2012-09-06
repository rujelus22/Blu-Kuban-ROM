.class public Lcom/google/android/apps/plus/views/PeopleListItemView;
.super Lcom/google/android/apps/plus/views/CheckableListItemView;
.source "PeopleListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;
    }
.end annotation


# static fields
.field private static sAddButtonIcon:Landroid/graphics/drawable/Drawable;

.field private static sDefaultUserImage:Landroid/graphics/Bitmap;

.field private static sMediumAvatarSize:I

.field private static sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

.field private static sSmallAvatarSize:I

.field private static sTinyAvatarSize:I

.field private static sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

.field private static sVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private static sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

.field private static sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mActionButton:Landroid/widget/TextView;

.field private final mActionButtonResourceId:I

.field private mActionButtonVisible:Z

.field private final mActionButtonWidth:I

.field private mAddButton:Landroid/widget/ImageView;

.field private mAddButtonVisible:Z

.field private mAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mAvatarBounds:Landroid/graphics/Rect;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mAvatarInvalidated:Z

.field private final mAvatarOriginalBounds:Landroid/graphics/Rect;

.field private final mAvatarPaint:Landroid/graphics/Paint;

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mAvatarRequestSize:I

.field private final mAvatarSize:I

.field private mAvatarVisible:Z

.field private final mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCircleIconSize:I

.field private mCircleIconVisible:Z

.field private mCircleLineHeight:I

.field private mCircleListVisible:Z

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private final mCirclesTextColor:I

.field private final mCirclesTextSize:F

.field private final mCirclesTextView:Landroid/widget/TextView;

.field private mContactLookupKey:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private final mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

.field private mFirstRow:Z

.field private mGaiaId:Ljava/lang/String;

.field private final mGapBetweenIconAndCircles:I

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenNameAndCircles:I

.field private final mGapBetweenTextAndButton:I

.field private mHighlightedText:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

.field private final mNameTextBuilder:Landroid/text/SpannableStringBuilder;

.field private final mNameTextView:Landroid/widget/TextView;

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private mPersonId:Ljava/lang/String;

.field private mPlusPage:Z

.field private final mPreferredHeight:I

.field private mRemoveButton:Landroid/widget/ImageView;

.field private mRemoveButtonVisible:Z

.field protected mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

.field protected mSectionHeaderHeight:I

.field protected mSectionHeaderVisible:Z

.field private mTypeTextView:Landroid/widget/TextView;

.field private mTypeTextViewVisible:Z

.field private mUnblockButton:Landroid/widget/ImageView;

.field private mUnblockButtonVisible:Z

.field private mVerticalDividerLeft:I

.field private final mVerticalDividerPadding:I

.field private final mVerticalDividerWidth:I

.field private mWellFormedEmail:Ljava/lang/String;

.field private mWellFormedEmailMode:Z

.field private mWellFormedSms:Ljava/lang/String;

.field private mWellFormedSmsMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x2

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CheckableListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    .line 72
    iput-boolean v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    .line 80
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 81
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 91
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    .line 159
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 161
    sget-object v2, Lcom/google/android/apps/plus/R$styleable;->ContactListItemView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    .line 164
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingTop:I

    .line 166
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingBottom:I

    .line 168
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingLeft:I

    .line 170
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingRight:I

    .line 172
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 174
    .local v1, nameTextSize:F
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextSize:F

    .line 176
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenImageAndText:I

    .line 178
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    .line 182
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenNameAndCircles:I

    .line 184
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    .line 186
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenTextAndButton:I

    .line 188
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonResourceId:I

    .line 190
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    .line 192
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    .line 194
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    .line 196
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextColor:I

    .line 198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 201
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 202
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 203
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    const v3, 0x1030044

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 204
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 205
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 210
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    .line 211
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 212
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 213
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    const v3, 0x1030044

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 214
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextSize:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 215
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 221
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    .line 223
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_13d

    .line 224
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    .line 227
    :cond_13d
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_152

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 232
    :cond_152
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_167

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_167
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_17c

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    .line 242
    :cond_17c
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    .line 244
    sget v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sMediumAvatarSize:I

    if-nez v2, :cond_1a0

    .line 245
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sMediumAvatarSize:I

    .line 246
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sSmallAvatarSize:I

    .line 247
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sTinyAvatarSize:I

    .line 250
    :cond_1a0
    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/PeopleListItemView;->sMediumAvatarSize:I

    if-le v2, v3, :cond_1ae

    .line 251
    iput v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    .line 252
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 269
    :goto_1ad
    return-void

    .line 253
    :cond_1ae
    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/PeopleListItemView;->sMediumAvatarSize:I

    if-ne v2, v3, :cond_1b7

    .line 254
    iput v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    goto :goto_1ad

    .line 255
    :cond_1b7
    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/PeopleListItemView;->sSmallAvatarSize:I

    if-le v2, v3, :cond_1c5

    .line 256
    iput v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    .line 257
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_1ad

    .line 258
    :cond_1c5
    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/PeopleListItemView;->sSmallAvatarSize:I

    if-ne v2, v3, :cond_1ce

    .line 259
    iput v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    goto :goto_1ad

    .line 260
    :cond_1ce
    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/PeopleListItemView;->sTinyAvatarSize:I

    if-le v2, v3, :cond_1dc

    .line 261
    iput v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    .line 262
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_1ad

    .line 263
    :cond_1dc
    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/PeopleListItemView;->sTinyAvatarSize:I

    if-ne v2, v3, :cond_1e5

    .line 264
    iput v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    goto :goto_1ad

    .line 266
    :cond_1e5
    iput v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    .line 267
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_1ad
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;
    .registers 6
    .parameter "context"

    .prologue
    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2d

    .line 141
    :try_start_6
    const-string v1, "com.google.android.apps.plus.views.PeopleListItemViewV11"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    .line 149
    :goto_24
    return-object v1

    .line 144
    :catch_25
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PeopleListItemView"

    const-string v2, "Cannot instantiate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2d
    new-instance v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_24
.end method

.method private getAddButtonIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 272
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sAddButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    .line 273
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sAddButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    :cond_19
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sAddButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getRemoveButtonIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 280
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    .line 281
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 284
    :cond_19
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getTypeTextView()Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_37

    .line 297
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 300
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    const v2, 0x1030044

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 301
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 304
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 306
    .end local v0           #context:Landroid/content/Context;
    :cond_37
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    return-object v1
.end method

.method private getUnblockButtonIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 288
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    .line 289
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 292
    :cond_19
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private updateDisplayName()V
    .registers 8

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/views/PeopleListItemView;->sBoldSpan:Landroid/text/style/StyleSpan;

    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/util/SpannableUtils;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    :goto_14
    return-void

    .line 383
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmailMode:Z

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 945
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmailMode:Z

    if-eqz v6, :cond_6b

    .line 946
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 947
    .local v5, width:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 948
    .local v1, height:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 949
    .local v2, left:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 950
    .local v3, top:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    add-int v7, v2, v5

    add-int v8, v3, v1

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 951
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 976
    .end local v1           #height:I
    .end local v2           #left:I
    .end local v3           #top:I
    .end local v5           #width:I
    :cond_35
    :goto_35
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    if-nez v6, :cond_45

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-nez v6, :cond_45

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-nez v6, :cond_45

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-eqz v6, :cond_67

    .line 978
    :cond_45
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v6, :cond_e3

    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    add-int v4, v6, v7

    .line 980
    .local v4, verticalDividerTop:I
    :goto_4f
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sVerticalDivider:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    iget v8, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    iget v9, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 983
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 985
    .end local v4           #verticalDividerTop:I
    :cond_67
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/CheckableListItemView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 986
    return-void

    .line 952
    :cond_6b
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSmsMode:Z

    if-eqz v6, :cond_a0

    .line 953
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 954
    .restart local v5       #width:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 955
    .restart local v1       #height:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 956
    .restart local v2       #left:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 957
    .restart local v3       #top:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    add-int v7, v2, v5

    add-int v8, v3, v1

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 958
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_35

    .line 959
    .end local v1           #height:I
    .end local v2           #left:I
    .end local v3           #top:I
    .end local v5           #width:I
    :cond_a0
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    if-eqz v6, :cond_35

    .line 960
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    if-eqz v6, :cond_ad

    .line 961
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 964
    :cond_ad
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v6, :cond_35

    .line 965
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarInvalidated:Z

    if-eqz v6, :cond_c2

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v6, :cond_c2

    .line 966
    iput-boolean v9, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarInvalidated:Z

    .line 967
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v6, p0, v7}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 970
    :cond_c2
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_e0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 971
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_c8
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 972
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_35

    .line 970
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_e0
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    goto :goto_c8

    .line 978
    :cond_e3
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    goto/16 :goto_4f
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "canvas"
    .parameter "background"

    .prologue
    const/4 v1, 0x0

    .line 1002
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v2, :cond_16

    iget v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    .line 1003
    .local v0, top:I
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getHeight()I

    move-result v3

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1004
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1005
    return-void

    .end local v0           #top:I
    :cond_16
    move v0, v1

    .line 1002
    goto :goto_7
.end method

.method public getContactName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPersonId:Ljava/lang/String;

    return-object v0
.end method

.method public getWellFormedEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getWellFormedSms()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSms:Ljava/lang/String;

    return-object v0
.end method

.method public isPlusPage()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPlusPage:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 690
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onAttachedToWindow()V

    .line 691
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 692
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 356
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarInvalidated:Z

    .line 358
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->invalidate()V

    .line 360
    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    if-eqz v0, :cond_e

    .line 1013
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    .line 1014
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;->onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V

    .line 1023
    :cond_e
    :goto_e
    return-void

    .line 1015
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1a

    .line 1016
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;->onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V

    goto :goto_e

    .line 1017
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_25

    .line 1018
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;->onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V

    goto :goto_e

    .line 1019
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 1020
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;->onActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;I)V

    goto :goto_e
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 699
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onDetachedFromWindow()V

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 701
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
    .line 814
    sub-int v14, p5, p3

    .line 815
    .local v14, height:I
    const/16 v22, 0x0

    .line 816
    .local v22, topBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_29

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sub-int v29, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    move/from16 v30, v0

    invoke-virtual/range {v26 .. v30}, Lcom/google/android/apps/plus/views/SectionHeaderView;->layout(IIII)V

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    move/from16 v26, v0

    add-int v22, v22, v26

    .line 821
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingLeft:I

    move/from16 v16, v0

    .line 823
    .local v16, leftBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_ad

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    sub-int v27, v14, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    div-int/lit8 v27, v27, 0x2

    add-int v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenImageAndText:I

    move/from16 v27, v0

    add-int v26, v26, v27

    add-int v16, v16, v26

    .line 832
    :cond_ad
    sub-int v26, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingRight:I

    move/from16 v27, v0

    sub-int v19, v26, v27

    .line 834
    .local v19, rightBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_ec

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 836
    .local v6, actionButtonWidth:I
    sub-int v5, v19, v6

    .line 837
    .local v5, actionButtonLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    move/from16 v26, v0

    sub-int v26, v5, v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v5, v6

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/widget/TextView;->layout(IIII)V

    .line 840
    sub-int v19, v19, v6

    .line 843
    .end local v5           #actionButtonLeft:I
    .end local v6           #actionButtonWidth:I
    :cond_ec
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_127

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v25

    .line 845
    .local v25, unblockButtonWidth:I
    sub-int v26, v19, v25

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 848
    sub-int v19, v19, v25

    .line 851
    .end local v25           #unblockButtonWidth:I
    :cond_127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_162

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    .line 853
    .local v18, removeButtonWidth:I
    sub-int v26, v19, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 856
    sub-int v19, v19, v18

    .line 859
    .end local v18           #removeButtonWidth:I
    :cond_162
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1a5

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 862
    .local v8, addButtonWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    move/from16 v26, v0

    if-nez v26, :cond_2b8

    .line 863
    sub-int v26, v19, v8

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    move/from16 v27, v0

    add-int v7, v26, v27

    .line 868
    .local v7, addButtonLeft:I
    :goto_192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    add-int v27, v7, v8

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v7, v1, v2, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 869
    sub-int v19, v19, v8

    .line 872
    .end local v7           #addButtonLeft:I
    .end local v8           #addButtonWidth:I
    :cond_1a5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1e0

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v11

    .line 874
    .local v11, checkboxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v9

    .line 875
    .local v9, checkboxHeight:I
    sub-int v26, v14, v22

    sub-int v26, v26, v9

    div-int/lit8 v26, v26, 0x2

    add-int v10, v22, v26

    .line 876
    .local v10, checkboxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    sub-int v27, v19, v11

    add-int v28, v10, v9

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 878
    sub-int v19, v19, v11

    .line 881
    .end local v9           #checkboxHeight:I
    .end local v10           #checkboxTop:I
    .end local v11           #checkboxWidth:I
    :cond_1e0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    move/from16 v26, v0

    if-nez v26, :cond_208

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    move/from16 v26, v0

    if-nez v26, :cond_208

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    move/from16 v26, v0

    if-nez v26, :cond_208

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    move/from16 v26, v0

    if-nez v26, :cond_208

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_210

    .line 883
    :cond_208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenTextAndButton:I

    move/from16 v26, v0

    sub-int v19, v19, v26

    .line 886
    :cond_210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    .line 887
    .local v24, typeTextWidth:I
    :goto_222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    move/from16 v26, v0

    if-nez v26, :cond_2c6

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    .line 889
    .local v17, nameTextHeight:I
    sub-int v26, v14, v22

    sub-int v26, v26, v17

    div-int/lit8 v26, v26, 0x2

    add-int v21, v22, v26

    .line 890
    .local v21, textTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_265

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    sub-int v27, v19, v24

    add-int v28, v21, v17

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    move/from16 v26, v0

    add-int v26, v26, v24

    sub-int v19, v19, v26

    .line 896
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v21, v17

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 934
    .end local v21           #textTop:I
    :goto_27a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2b7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmailMode:Z

    move/from16 v26, v0

    if-nez v26, :cond_2b7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSmsMode:Z

    move/from16 v26, v0

    if-nez v26, :cond_2b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-nez v26, :cond_2b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2b7

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 938
    :cond_2b7
    return-void

    .line 866
    .end local v17           #nameTextHeight:I
    .end local v24           #typeTextWidth:I
    .restart local v8       #addButtonWidth:I
    :cond_2b8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v26, v0

    sub-int v7, v26, v8

    .restart local v7       #addButtonLeft:I
    goto/16 :goto_192

    .line 886
    .end local v7           #addButtonLeft:I
    .end local v8           #addButtonWidth:I
    :cond_2c2
    const/16 v24, 0x0

    goto/16 :goto_222

    .line 897
    .restart local v24       #typeTextWidth:I
    :cond_2c6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3bc

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    .line 899
    .restart local v17       #nameTextHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    .line 901
    .local v12, circleTextHeight:I
    move/from16 v23, v12

    .line 902
    .local v23, totalHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2fa

    .line 903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 905
    :cond_2fa
    add-int v23, v23, v17

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v23

    div-int/lit8 v26, v26, 0x2

    add-int v22, v22, v26

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v22, v17

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenNameAndCircles:I

    move/from16 v26, v0

    add-int v26, v26, v17

    add-int v22, v22, v26

    .line 912
    move/from16 v20, v16

    .line 913
    .local v20, textLeft:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_374

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    add-int v15, v22, v26

    .line 915
    .local v15, iconTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v27, v0

    add-int v27, v27, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v28, v0

    add-int v28, v28, v15

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    move/from16 v27, v0

    add-int v26, v26, v27

    add-int v20, v20, v26

    .line 920
    .end local v15           #iconTop:I
    :cond_374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v12

    div-int/lit8 v26, v26, 0x2

    add-int v13, v22, v26

    .line 921
    .local v13, circleTextTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3a7

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    sub-int v27, v19, v24

    add-int v28, v13, v12

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    move/from16 v26, v0

    add-int v26, v26, v24

    sub-int v19, v19, v26

    .line 926
    :cond_3a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v13, v12

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v27

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_27a

    .line 929
    .end local v12           #circleTextHeight:I
    .end local v13           #circleTextTop:I
    .end local v17           #nameTextHeight:I
    .end local v20           #textLeft:I
    .end local v23           #totalHeight:I
    :cond_3bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    .line 930
    .restart local v17       #nameTextHeight:I
    sub-int v26, v14, v22

    sub-int v26, v26, v17

    div-int/lit8 v26, v26, 0x2

    add-int v21, v22, v26

    .line 931
    .restart local v21       #textTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v21, v17

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_27a
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 708
    invoke-static {v9, p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->resolveSize(II)I

    move-result v5

    .line 709
    .local v5, width:I
    const/4 v3, 0x0

    .line 711
    .local v3, height:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingLeft:I

    sub-int v6, v5, v6

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingRight:I

    sub-int v4, v6, v7

    .line 713
    .local v4, textWidth:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v6, :cond_1a

    .line 714
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 717
    :cond_1a
    const/4 v1, 0x0

    .line 718
    .local v1, actionButtonWidth:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    if-eqz v6, :cond_38

    .line 719
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {v6, v9, p2}, Landroid/widget/TextView;->measure(II)V

    .line 720
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 721
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 722
    .local v0, actionButtonHeight:I
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 723
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v6, v1

    sub-int/2addr v4, v6

    .line 726
    .end local v0           #actionButtonHeight:I
    :cond_38
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-eqz v6, :cond_57

    .line 727
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 730
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 731
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 734
    :cond_57
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-eqz v6, :cond_76

    .line 735
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 738
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 739
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 742
    :cond_76
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-eqz v6, :cond_95

    .line 743
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 746
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 747
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 750
    :cond_95
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    if-eqz v6, :cond_af

    .line 751
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9, p2}, Landroid/widget/CheckBox;->measure(II)V

    .line 752
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 753
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v4, v6

    .line 756
    :cond_af
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-nez v6, :cond_c3

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    if-nez v6, :cond_c3

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-nez v6, :cond_c3

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-nez v6, :cond_c3

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    if-eqz v6, :cond_c6

    .line 758
    :cond_c3
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenTextAndButton:I

    sub-int/2addr v4, v6

    .line 761
    :cond_c6
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/widget/TextView;->measure(II)V

    .line 765
    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    .line 767
    move v2, v4

    .line 769
    .local v2, circleTextWidth:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    if-eqz v6, :cond_dc

    .line 770
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    add-int/2addr v6, v7

    sub-int/2addr v2, v6

    .line 773
    :cond_dc
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    if-eqz v6, :cond_ef

    .line 774
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 775
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    add-int/2addr v6, v7

    sub-int/2addr v2, v6

    .line 778
    :cond_ef
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    if-eqz v6, :cond_12f

    .line 779
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 781
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 782
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    .line 784
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 788
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenNameAndCircles:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 792
    :cond_12f
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingTop:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 793
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 795
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    if-eqz v6, :cond_14c

    .line 796
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 801
    :cond_14c
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v6, :cond_160

    .line 802
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {v6, p1, v9}, Lcom/google/android/apps/plus/views/SectionHeaderView;->measure(II)V

    .line 803
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/SectionHeaderView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    .line 804
    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    add-int/2addr v3, v6

    .line 806
    :cond_160
    invoke-virtual {p0, v5, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setMeasuredDimension(II)V

    .line 807
    return-void
.end method

.method public onRecycle()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1051
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPersonId:Ljava/lang/String;

    .line 1052
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    .line 1053
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    .line 1054
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    .line 1055
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 1056
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    .line 1057
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPlusPage:Z

    .line 1058
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    .line 1059
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmailMode:Z

    .line 1060
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    .line 1061
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSmsMode:Z

    .line 1062
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSms:Ljava/lang/String;

    .line 1063
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    .line 1064
    return-void
.end method

.method public setActionButtonLabel(I)V
    .registers 7
    .parameter "labelResId"

    .prologue
    const/4 v4, 0x0

    .line 601
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    if-nez v1, :cond_31

    .line 602
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    .line 603
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonResourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 604
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 605
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 606
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 610
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, label:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    return-void
.end method

.method public setActionButtonVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    if-ne v0, p1, :cond_5

    .line 631
    :cond_4
    :goto_4
    return-void

    .line 622
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    .line 623
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonVisible:Z

    if-eqz v0, :cond_1c

    .line 624
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    if-nez v0, :cond_15

    .line 625
    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setActionButtonLabel(I)V

    .line 627
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 628
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 629
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setAddButtonVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 521
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-ne v0, p1, :cond_6

    .line 541
    :cond_5
    :goto_5
    return-void

    .line 525
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    .line 526
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-eqz v0, :cond_57

    .line 527
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    if-nez v0, :cond_51

    .line 528
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 530
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 532
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getAddButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08025a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 537
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 538
    :cond_57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setAvatarVisible(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    .line 349
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 3
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 993
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 994
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->invalidate()V

    .line 995
    return-void
.end method

.method public setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V
    .registers 2
    .parameter "circleNames"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 432
    return-void
.end method

.method public setContactId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "gaiaId"
    .parameter "lookupKey"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v0, :cond_2e

    .line 334
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 337
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 342
    :goto_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 343
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->requestLayout()V

    .line 345
    :cond_2e
    return-void

    .line 340
    :cond_2f
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_28
.end method

.method public setContactName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    .line 372
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateDisplayName()V

    .line 373
    return-void
.end method

.method public setFirstRow(Z)V
    .registers 4
    .parameter "firstRow"

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    .line 675
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    return-void

    .line 675
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setGaiaId(Ljava/lang/String;)V
    .registers 4
    .parameter "gaiaId"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v0, :cond_1d

    .line 319
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGaiaId:Ljava/lang/String;

    .line 320
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequestSize:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 322
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->requestLayout()V

    .line 324
    :cond_1d
    return-void
.end method

.method public setHighlightedText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 363
    if-nez p1, :cond_6

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    .line 368
    :goto_5
    return-void

    .line 366
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    goto :goto_5
.end method

.method public setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    .line 683
    return-void
.end method

.method public setPackedCircleIds(Ljava/lang/String;)V
    .registers 5
    .parameter "packedCircleIds"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 435
    if-eqz p1, :cond_1b

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-void

    :cond_1b
    move v0, v2

    .line 435
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 436
    goto :goto_d
.end method

.method public setPackedCircleIdsAndEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "packedCircleIds"
    .parameter "emailAddress"
    .parameter "matchingEmailAddress"

    .prologue
    const/4 v4, 0x0

    .line 442
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIdsEmailAddressAndPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public setPackedCircleIdsEmailAddressAndPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "packedCircleIds"
    .parameter "emailAddress"
    .parameter "matchingEmailAddress"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 449
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIdsEmailAddressPhoneNumberAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public setPackedCircleIdsEmailAddressPhoneNumberAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter "packedCircleIds"
    .parameter "emailAddress"
    .parameter "matchingEmailAddress"
    .parameter "phoneNumber"
    .parameter "phoneType"
    .parameter "snippet"

    .prologue
    .line 456
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    .line 457
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 459
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 460
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static/range {p4 .. p4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForPhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 462
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 463
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getTypeTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    .line 511
    :cond_36
    :goto_36
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    if-eqz v1, :cond_103

    const/4 v1, 0x0

    :goto_3d
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4e

    .line 513
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    if-eqz v1, :cond_107

    const/4 v1, 0x0

    :goto_4b
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    :cond_4e
    return-void

    .line 466
    :cond_4f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 468
    const/4 v10, 0x0

    .line 469
    .local v10, circleCount:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 470
    const/4 v10, 0x1

    .line 471
    const/4 v11, 0x0

    .line 473
    .local v11, offset:I
    :goto_61
    const/16 v1, 0x7c

    invoke-virtual {p1, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 474
    .local v12, separatorIndex:I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_99

    .line 480
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0019

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v1, v3, v10, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sBoldSpan:Landroid/text/style/StyleSpan;

    sget-object v7, Lcom/google/android/apps/plus/views/PeopleListItemView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static/range {v1 .. v7}, Lcom/google/android/apps/plus/util/SpannableUtils;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    goto :goto_36

    .line 477
    .end local v2           #text:Ljava/lang/String;
    :cond_99
    add-int/lit8 v10, v10, 0x1

    .line 478
    add-int/lit8 v11, v12, 0x1

    .line 479
    goto :goto_61

    .line 488
    .end local v11           #offset:I
    .end local v12           #separatorIndex:I
    :cond_9e
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    sget-object v8, Lcom/google/android/apps/plus/views/PeopleListItemView;->sBoldSpan:Landroid/text/style/StyleSpan;

    sget-object v9, Lcom/google/android/apps/plus/views/PeopleListItemView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v4, p3

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/plus/util/SpannableUtils;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    goto :goto_36

    .line 492
    .end local v10           #circleCount:I
    :cond_b2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 494
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 495
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 497
    :cond_cb
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 498
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 499
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 500
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 501
    :cond_de
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 503
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 504
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static/range {p6 .. p6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 506
    :cond_f5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 507
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 508
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 511
    :cond_103
    const/16 v1, 0x8

    goto/16 :goto_3d

    .line 513
    :cond_107
    const/16 v1, 0x8

    goto/16 :goto_4b
.end method

.method public setPersonId(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPersonId:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setPlusPage(Z)V
    .registers 2
    .parameter "plusPage"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPlusPage:Z

    .line 394
    return-void
.end method

.method public setRemoveButtonVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 547
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-ne v0, p1, :cond_6

    .line 568
    :cond_5
    :goto_5
    return-void

    .line 551
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    .line 552
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-eqz v0, :cond_57

    .line 553
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    if-nez v0, :cond_51

    .line 554
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    .line 555
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getRemoveButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 564
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 565
    :cond_57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 566
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setSectionHeader(C)V
    .registers 4
    .parameter "firstLetter"

    .prologue
    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeaderVisible(Z)V

    .line 666
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    return-void
.end method

.method protected setSectionHeaderBackgroundColor()V
    .registers 4

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setBackgroundColor(I)V

    .line 659
    return-void
.end method

.method public setSectionHeaderVisible(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 637
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    .line 638
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v1, :cond_2d

    .line 639
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    if-nez v1, :cond_27

    .line 640
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 641
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0300c2

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/SectionHeaderView;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 643
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeaderBackgroundColor()V

    .line 644
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 651
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_26
    :goto_26
    return-void

    .line 646
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setVisibility(I)V

    goto :goto_26

    .line 648
    :cond_2d
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    if-eqz v1, :cond_26

    .line 649
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setVisibility(I)V

    goto :goto_26
.end method

.method public setUnblockButtonVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 574
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-ne v0, p1, :cond_6

    .line 595
    :cond_5
    :goto_5
    return-void

    .line 578
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    .line 579
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-eqz v0, :cond_57

    .line 580
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    if-nez v0, :cond_51

    .line 581
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    .line 582
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 585
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getUnblockButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 591
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 592
    :cond_57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 593
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setWellFormedEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "wellFormedEmail"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    .line 406
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateDisplayName()V

    .line 407
    return-void
.end method

.method public setWellFormedSms(Ljava/lang/String;)V
    .registers 3
    .parameter "wellFormedSms"

    .prologue
    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSmsMode:Z

    .line 419
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSms:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void
.end method

.method public updateContentDescription()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1032
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1033
    .local v0, circleNames:Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 1034
    const v2, 0x7f08022b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_2b
    :goto_2b
    return-void

    .line 1037
    :cond_2c
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_41

    .line 1038
    const v2, 0x7f08022a

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 1040
    :cond_41
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 1041
    const v2, 0x7f08022c

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2b
.end method
