.class public Lcom/google/android/apps/plus/views/PeopleListItemView;
.super Lcom/google/android/apps/plus/views/CheckableListItemView;
.source "PeopleListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;
    }
.end annotation


# static fields
.field private static sAddButtonIcon:Landroid/graphics/drawable/Drawable;

.field private static sDefaultUserImage:Landroid/graphics/Bitmap;

.field private static sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

.field private static sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

.field private static sVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private static sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

.field private static sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final mActionButtonWidth:I

.field private mAddButton:Landroid/widget/ImageView;

.field private final mAddButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mAddButtonVisible:Z

.field private mAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mAvatarBounds:Landroid/graphics/Rect;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private mAvatarInvalidated:Z

.field private final mAvatarOriginalBounds:Landroid/graphics/Rect;

.field private final mAvatarPaint:Landroid/graphics/Paint;

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

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

.field private mContactId:J

.field private mContactLookupKey:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private final mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

.field private mFirstRow:Z

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

.field private final mRemoveButtonBackground:Landroid/graphics/drawable/Drawable;

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
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CheckableListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    .line 70
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    .line 78
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 79
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    .line 150
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 152
    sget-object v2, Lcom/google/android/apps/plus/R$styleable;->ContactListItemView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    .line 155
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingTop:I

    .line 157
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingBottom:I

    .line 159
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingLeft:I

    .line 161
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingRight:I

    .line 163
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 165
    .local v1, nameTextSize:F
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextSize:F

    .line 167
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenImageAndText:I

    .line 169
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    .line 173
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenNameAndCircles:I

    .line 175
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    .line 177
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenTextAndButton:I

    .line 179
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 181
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    .line 185
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    .line 187
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    .line 189
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextColor:I

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 194
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 195
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 196
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    const v3, 0x1030044

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 197
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 198
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 203
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    .line 204
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 205
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 206
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    const v3, 0x1030044

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 207
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextSize:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 208
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 214
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    .line 216
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_153

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    .line 222
    :cond_153
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_168

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_168
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_17d

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020115

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    .line 232
    :cond_17d
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_192

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_192
    sget-object v2, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    .line 238
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;
    .registers 5
    .parameter

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2d

    .line 132
    :try_start_6
    const-string v0, "com.google.android.apps.plus.views.PeopleListItemViewV11"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PeopleListItemView;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    .line 140
    :goto_24
    return-object v0

    .line 135
    :catch_25
    move-exception v0

    .line 136
    const-string v1, "PeopleListItemView"

    const-string v2, "Cannot instantiate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :cond_2d
    new-instance v0, Lcom/google/android/apps/plus/views/PeopleListItemView;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_24
.end method

.method private getAddButtonIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 241
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sAddButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    .line 242
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sAddButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 245
    :cond_19
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sAddButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getRemoveButtonIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 249
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 253
    :cond_19
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sRemoveButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getTypeTextView()Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_37

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    .line 268
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 269
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    const v2, 0x1030044

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 270
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 271
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 273
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 275
    .end local v0           #context:Landroid/content/Context;
    :cond_37
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    return-object v1
.end method

.method private getUnblockButtonIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 257
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    .line 258
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 261
    :cond_19
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sUnblockButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    .line 839
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmailMode:Z

    if-eqz v6, :cond_66

    .line 840
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 841
    .local v5, width:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 842
    .local v1, height:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 843
    .local v2, left:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 844
    .local v3, top:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    add-int v7, v2, v5

    add-int v8, v3, v1

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 845
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedEmailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 871
    .end local v1           #height:I
    .end local v2           #left:I
    .end local v3           #top:I
    .end local v5           #width:I
    :cond_34
    :goto_34
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-nez v6, :cond_40

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-nez v6, :cond_40

    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-eqz v6, :cond_62

    .line 872
    :cond_40
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v6, :cond_e2

    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    add-int v4, v6, v7

    .line 874
    .local v4, verticalDividerTop:I
    :goto_4a
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

    .line 877
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 879
    .end local v4           #verticalDividerTop:I
    :cond_62
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/CheckableListItemView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 880
    return-void

    .line 846
    :cond_66
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSmsMode:Z

    if-eqz v6, :cond_9b

    .line 847
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 848
    .restart local v5       #width:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 849
    .restart local v1       #height:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 850
    .restart local v2       #left:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 851
    .restart local v3       #top:I
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    add-int v7, v2, v5

    add-int v8, v3, v1

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 852
    sget-object v6, Lcom/google/android/apps/plus/views/PeopleListItemView;->sWellFormedSmsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_34

    .line 853
    .end local v1           #height:I
    .end local v2           #left:I
    .end local v3           #top:I
    .end local v5           #width:I
    :cond_9b
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    if-eqz v6, :cond_34

    .line 854
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    if-eqz v6, :cond_a8

    .line 855
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 858
    :cond_a8
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v6, :cond_34

    .line 859
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarInvalidated:Z

    if-eqz v6, :cond_be

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v6, :cond_be

    .line 860
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarInvalidated:Z

    .line 861
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v6, p0, v7}, Lcom/google/android/apps/plus/service/AvatarCache;->refreshAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 864
    :cond_be
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_df

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 865
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_c4
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 866
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 867
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarOriginalBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_34

    .line 864
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_df
    sget-object v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->sDefaultUserImage:Landroid/graphics/Bitmap;

    goto :goto_c4

    .line 872
    :cond_e2
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerPadding:I

    goto/16 :goto_4a
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "canvas"
    .parameter "background"

    .prologue
    const/4 v1, 0x0

    .line 896
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v2, :cond_16

    iget v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    .line 897
    .local v0, top:I
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getHeight()I

    move-result v3

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 898
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 899
    return-void

    .end local v0           #top:I
    :cond_16
    move v0, v1

    .line 896
    goto :goto_7
.end method

.method public getContactId()J
    .registers 3

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactId:J

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPersonId:Ljava/lang/String;

    return-object v0
.end method

.method public getWellFormedEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getWellFormedSms()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSms:Ljava/lang/String;

    return-object v0
.end method

.method public isPlusPage()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPlusPage:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 608
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onAttachedToWindow()V

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 610
    return-void
.end method

.method public onAvatarChanged(J)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarInvalidated:Z

    .line 325
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->invalidate()V

    .line 327
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    if-eqz v0, :cond_d

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_e

    .line 908
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;->onAddPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V

    .line 915
    :cond_d
    :goto_d
    return-void

    .line 909
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_18

    .line 910
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;->onRemovePersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V

    goto :goto_d

    .line 911
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_d

    .line 912
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;->onUnblockPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V

    goto :goto_d
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 617
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->onDetachedFromWindow()V

    .line 618
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 619
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 35
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 717
    sub-int v12, p5, p3

    .line 718
    .local v12, height:I
    const/16 v20, 0x0

    .line 719
    .local v20, topBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_29

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sub-int v27, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/google/android/apps/plus/views/SectionHeaderView;->layout(IIII)V

    .line 721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    move/from16 v24, v0

    add-int v20, v20, v24

    .line 724
    :cond_29
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingLeft:I

    .line 726
    .local v14, leftBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a9

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v14, v0, Landroid/graphics/Rect;->left:I

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    sub-int v25, v12, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v25, v25, v20

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenImageAndText:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int v14, v14, v24

    .line 735
    :cond_a9
    sub-int v24, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v17, v24, v25

    .line 737
    .local v17, rightBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_ee

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v23

    .line 739
    .local v23, unblockButtonWidth:I
    sub-int v24, v17, v23

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/ImageView;->layout(IIII)V

    .line 742
    sub-int v17, v17, v23

    .line 745
    .end local v23           #unblockButtonWidth:I
    :cond_ee
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_129

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v16

    .line 747
    .local v16, removeButtonWidth:I
    sub-int v24, v17, v16

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/ImageView;->layout(IIII)V

    .line 750
    sub-int v17, v17, v16

    .line 753
    .end local v16           #removeButtonWidth:I
    :cond_129
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_16c

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 756
    .local v6, addButtonWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    move/from16 v24, v0

    if-nez v24, :cond_275

    .line 757
    sub-int v24, v17, v6

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    .line 758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    move/from16 v25, v0

    add-int v5, v24, v25

    .line 762
    .local v5, addButtonLeft:I
    :goto_159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v5, v6

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v5, v1, v2, v12}, Landroid/widget/ImageView;->layout(IIII)V

    .line 763
    sub-int v17, v17, v6

    .line 766
    .end local v5           #addButtonLeft:I
    .end local v6           #addButtonWidth:I
    :cond_16c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a7

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v9

    .line 768
    .local v9, checkboxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v7

    .line 769
    .local v7, checkboxHeight:I
    sub-int v24, v12, v20

    sub-int v24, v24, v7

    div-int/lit8 v24, v24, 0x2

    add-int v8, v20, v24

    .line 770
    .local v8, checkboxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v24, v0

    sub-int v25, v17, v9

    add-int v26, v8, v7

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 772
    sub-int v17, v17, v9

    .line 775
    .end local v7           #checkboxHeight:I
    .end local v8           #checkboxTop:I
    .end local v9           #checkboxWidth:I
    :cond_1a7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    move/from16 v24, v0

    if-nez v24, :cond_1c7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    move/from16 v24, v0

    if-nez v24, :cond_1c7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    move/from16 v24, v0

    if-nez v24, :cond_1c7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1cf

    .line 777
    :cond_1c7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenTextAndButton:I

    move/from16 v24, v0

    sub-int v17, v17, v24

    .line 780
    :cond_1cf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_27f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    .line 781
    .local v22, typeTextWidth:I
    :goto_1e1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    move/from16 v24, v0

    if-nez v24, :cond_283

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    .line 783
    .local v15, nameTextHeight:I
    sub-int v24, v12, v20

    sub-int v24, v24, v15

    div-int/lit8 v24, v24, 0x2

    add-int v19, v20, v24

    .line 784
    .local v19, textTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_224

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    sub-int v25, v17, v22

    add-int v26, v19, v15

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    move/from16 v3, v17

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    move/from16 v24, v0

    add-int v24, v24, v22

    sub-int v17, v17, v24

    .line 790
    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v19, v15

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v25

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 828
    .end local v19           #textTop:I
    :goto_237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_274

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmailMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_274

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSmsMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_274

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-nez v24, :cond_274

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v24, v0

    if-eqz v24, :cond_274

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 832
    :cond_274
    return-void

    .line 760
    .end local v15           #nameTextHeight:I
    .end local v22           #typeTextWidth:I
    .restart local v6       #addButtonWidth:I
    :cond_275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerLeft:I

    move/from16 v24, v0

    sub-int v5, v24, v6

    .restart local v5       #addButtonLeft:I
    goto/16 :goto_159

    .line 780
    .end local v5           #addButtonLeft:I
    .end local v6           #addButtonWidth:I
    :cond_27f
    const/16 v22, 0x0

    goto/16 :goto_1e1

    .line 791
    .restart local v22       #typeTextWidth:I
    :cond_283
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_375

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    .line 793
    .restart local v15       #nameTextHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    .line 795
    .local v10, circleTextHeight:I
    move/from16 v21, v10

    .line 796
    .local v21, totalHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2b7

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 799
    :cond_2b7
    add-int v21, v21, v15

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    move/from16 v24, v0

    sub-int v24, v24, v21

    div-int/lit8 v24, v24, 0x2

    add-int v20, v20, v24

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v20, v15

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v25

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenNameAndCircles:I

    move/from16 v24, v0

    add-int v24, v24, v15

    add-int v20, v20, v24

    .line 806
    move/from16 v18, v14

    .line 807
    .local v18, textLeft:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_32d

    .line 808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v13, v20, v24

    .line 809
    .local v13, iconTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v25, v0

    add-int v25, v25, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v14, v13, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int v18, v18, v24

    .line 814
    .end local v13           #iconTop:I
    :cond_32d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    div-int/lit8 v24, v24, 0x2

    add-int v11, v20, v24

    .line 815
    .local v11, circleTextTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_360

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    sub-int v25, v17, v22

    add-int v26, v11, v10

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    move/from16 v24, v0

    add-int v24, v24, v22

    sub-int v17, v17, v24

    .line 820
    :cond_360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v11, v10

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v25

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_237

    .line 823
    .end local v10           #circleTextHeight:I
    .end local v11           #circleTextTop:I
    .end local v15           #nameTextHeight:I
    .end local v18           #textLeft:I
    .end local v21           #totalHeight:I
    :cond_375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    .line 824
    .restart local v15       #nameTextHeight:I
    sub-int v24, v12, v20

    sub-int v24, v24, v15

    div-int/lit8 v24, v24, 0x2

    add-int v19, v20, v24

    .line 825
    .restart local v19       #textTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v19, v15

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v25

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_237
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 626
    invoke-static {v7, p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->resolveSize(II)I

    move-result v3

    .line 627
    .local v3, width:I
    const/4 v1, 0x0

    .line 629
    .local v1, height:I
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingLeft:I

    sub-int v4, v3, v4

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 631
    .local v2, textWidth:I
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v4, :cond_1a

    .line 632
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 635
    :cond_1a
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-eqz v4, :cond_39

    .line 636
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 639
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 640
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 643
    :cond_39
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-eqz v4, :cond_58

    .line 644
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 647
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 648
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 651
    :cond_58
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-eqz v4, :cond_77

    .line 652
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 655
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 656
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mActionButtonWidth:I

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mVerticalDividerWidth:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 659
    :cond_77
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    if-eqz v4, :cond_91

    .line 660
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7, p2}, Landroid/widget/CheckBox;->measure(II)V

    .line 661
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 662
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    .line 665
    :cond_91
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-nez v4, :cond_a1

    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-nez v4, :cond_a1

    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-nez v4, :cond_a1

    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCheckBoxVisible:Z

    if-eqz v4, :cond_a4

    .line 667
    :cond_a1
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenTextAndButton:I

    sub-int/2addr v2, v4

    .line 670
    :cond_a4
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/widget/TextView;->measure(II)V

    .line 674
    iget v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarSize:I

    .line 676
    move v0, v2

    .line 678
    .local v0, circleTextWidth:I
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    if-eqz v4, :cond_ba

    .line 679
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 682
    :cond_ba
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    if-eqz v4, :cond_cd

    .line 683
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 684
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenIconAndCircles:I

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 687
    :cond_cd
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    if-eqz v4, :cond_10d

    .line 688
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 690
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 691
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconSize:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    .line 693
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 697
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mGapBetweenNameAndCircles:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleLineHeight:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 701
    :cond_10d
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingTop:I

    iget v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 702
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPreferredHeight:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 704
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v4, :cond_12d

    .line 705
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/apps/plus/views/SectionHeaderView;->measure(II)V

    .line 706
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/SectionHeaderView;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    .line 707
    iget v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderHeight:I

    add-int/2addr v1, v4

    .line 709
    :cond_12d
    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setMeasuredDimension(II)V

    .line 710
    return-void
.end method

.method public setAddButtonVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 475
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-ne v0, p1, :cond_6

    .line 495
    :cond_5
    :goto_5
    return-void

    .line 479
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    .line 480
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonVisible:Z

    if-eqz v0, :cond_57

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    if-nez v0, :cond_51

    .line 482
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getAddButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 488
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 491
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 492
    :cond_57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAddButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setAvatarBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 3
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 887
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 888
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->invalidate()V

    .line 889
    return-void
.end method

.method public setAvatarVisible(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    .line 316
    return-void
.end method

.method public setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V
    .registers 2
    .parameter "circleNames"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 387
    return-void
.end method

.method public setContactId(J)V
    .registers 5
    .parameter "contactId"

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v0, :cond_1a

    .line 288
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactId:J

    .line 289
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 291
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->requestLayout()V

    .line 293
    :cond_1a
    return-void
.end method

.method public setContactId(JLjava/lang/String;)V
    .registers 8
    .parameter "contactId"
    .parameter "lookupKey"

    .prologue
    const/4 v3, 0x2

    .line 300
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarVisible:Z

    if-eqz v0, :cond_2a

    .line 302
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactId:J

    .line 303
    iput-object p3, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 305
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactLookupKey:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 309
    :goto_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 310
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->requestLayout()V

    .line 312
    :cond_2a
    return-void

    .line 307
    :cond_2b
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mContactId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_24
.end method

.method public setContactName(Ljava/lang/String;)V
    .registers 8
    .parameter "name"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public setFirstRow(Z)V
    .registers 4
    .parameter "firstRow"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    .line 593
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mFirstRow:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    return-void

    .line 593
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setHighlightedText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 330
    if-nez p1, :cond_6

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    .line 335
    :goto_5
    return-void

    .line 333
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
    .line 600
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mListener:Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;

    .line 601
    return-void
.end method

.method public setPackedCircleIds(Ljava/lang/String;)V
    .registers 4
    .parameter "packedCircleIds"

    .prologue
    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_9
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    return-void

    .line 391
    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setPackedCircleIdsAndEmailAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "packedCircleIds"
    .parameter "emailAddress"
    .parameter "matchingEmailAddress"

    .prologue
    const/4 v4, 0x0

    .line 397
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIdsEmailAddressAndPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
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
    .line 404
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIdsEmailAddressPhoneNumberAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
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
    .line 411
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    .line 412
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 414
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 415
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static/range {p4 .. p4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForPhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 417
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 418
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getTypeTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    .line 465
    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    if-eqz v1, :cond_fd

    const/4 v1, 0x0

    :goto_3d
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4e

    .line 467
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mTypeTextViewVisible:Z

    if-eqz v1, :cond_101

    const/4 v1, 0x0

    :goto_4b
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    :cond_4e
    return-void

    .line 421
    :cond_4f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 422
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 423
    const/4 v10, 0x0

    .line 424
    .local v10, circleCount:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 425
    const/4 v10, 0x1

    .line 426
    const/4 v11, 0x0

    .line 428
    .local v11, offset:I
    :goto_61
    const/16 v1, 0x7c

    invoke-virtual {p1, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 429
    .local v12, separatorIndex:I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_96

    .line 435
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0013

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v1, v2, v10, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    goto :goto_36

    .line 432
    .end local v3           #text:Ljava/lang/String;
    :cond_96
    add-int/lit8 v10, v10, 0x1

    .line 433
    add-int/lit8 v11, v12, 0x1

    .line 434
    goto :goto_61

    .line 442
    .end local v11           #offset:I
    .end local v12           #separatorIndex:I
    :cond_9b
    iget-object v5, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mEmailTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mHighlightedText:Ljava/lang/String;

    move-object v4, p0

    move-object/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    goto :goto_36

    .line 446
    .end local v10           #circleCount:I
    :cond_ac
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 447
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 448
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 449
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 451
    :cond_c5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 453
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 454
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 455
    :cond_d8
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 458
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-static/range {p6 .. p6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 460
    :cond_ef
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleIconVisible:Z

    .line 462
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 465
    :cond_fd
    const/16 v1, 0x8

    goto/16 :goto_3d

    .line 467
    :cond_101
    const/16 v1, 0x8

    goto/16 :goto_4b
.end method

.method public setPersonId(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPersonId:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setPlusPage(Z)V
    .registers 2
    .parameter "plusPage"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mPlusPage:Z

    .line 348
    return-void
.end method

.method public setRemoveButtonVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 501
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-ne v0, p1, :cond_6

    .line 522
    :cond_5
    :goto_5
    return-void

    .line 505
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    .line 506
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonVisible:Z

    if-eqz v0, :cond_57

    .line 507
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    if-nez v0, :cond_51

    .line 508
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getRemoveButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 514
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 518
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 519
    :cond_57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setSectionHeader(C)V
    .registers 4
    .parameter "firstLetter"

    .prologue
    .line 583
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeaderVisible(Z)V

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method protected setSectionHeaderBackgroundColor()V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setBackgroundColor(I)V

    .line 577
    return-void
.end method

.method public setSectionHeaderVisible(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 555
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    .line 556
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeaderVisible:Z

    if-eqz v1, :cond_2d

    .line 557
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    if-nez v1, :cond_27

    .line 558
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 559
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030090

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/SectionHeaderView;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    .line 561
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setSectionHeaderBackgroundColor()V

    .line 562
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 569
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_26
    :goto_26
    return-void

    .line 564
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setVisibility(I)V

    goto :goto_26

    .line 566
    :cond_2d
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mSectionHeader:Lcom/google/android/apps/plus/views/SectionHeaderView;

    if-eqz v1, :cond_26

    .line 567
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

    .line 528
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-ne v0, p1, :cond_6

    .line 549
    :cond_5
    :goto_5
    return-void

    .line 532
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    .line 533
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButtonVisible:Z

    if-eqz v0, :cond_57

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    if-nez v0, :cond_51

    .line 535
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    .line 536
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mRemoveButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getUnblockButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->addView(Landroid/view/View;)V

    .line 545
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 546
    :cond_57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 547
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mUnblockButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setWellFormedEmail(Ljava/lang/String;)V
    .registers 3
    .parameter "wellFormedEmail"

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmailMode:Z

    .line 360
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedEmail:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method public setWellFormedSms(Ljava/lang/String;)V
    .registers 3
    .parameter "wellFormedSms"

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSmsMode:Z

    .line 374
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mWellFormedSms:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void
.end method

.method public updateContentDescription()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 922
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 924
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCirclesTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 925
    .local v0, circleNames:Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mCircleListVisible:Z

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 926
    const v2, 0x7f07017e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 933
    :goto_2b
    return-void

    .line 930
    :cond_2c
    const v2, 0x7f07017d

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PeopleListItemView;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2b
.end method
