.class public Lcom/google/android/apps/plus/views/CommentRowView;
.super Landroid/view/View;
.source "CommentRowView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;
    }
.end annotation


# static fields
.field private static COMMENT_AUTHOR_BITMAP_DIMENSION:I

.field private static COMMENT_SEPARATOR_HEIGHT:I

.field private static CONTENT_BOTTOM_MARGIN:I

.field private static CONTENT_TOP_MARGIN:I

.field private static ICON_RIGHT_MARGIN:I

.field private static PLUSONE_CLICKABLE_PADDING_X:I

.field private static PLUSONE_CLICKABLE_PADDING_Y:I

.field private static PLUSONE_RIGHT_MARGIN:I

.field private static mInitialized:Z

.field private static sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

.field private static sCommentBackgroundPaint:Landroid/graphics/Paint;

.field private static sContentPaint:Landroid/text/TextPaint;

.field private static sNamePaint:Landroid/text/TextPaint;

.field private static sPlusOneBitmap:Landroid/graphics/Bitmap;

.field private static sPlusOneByMeBitmap:Landroid/graphics/Bitmap;

.field private static sPlusOnePaint:Landroid/text/TextPaint;

.field private static sTimePaint:Landroid/text/TextPaint;

.field private static sUserImageBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAuthorId:J

.field private mAuthorName:Ljava/lang/String;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private mChecked:Z

.field private mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private final mClickableItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/plus/views/ClickableItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/text/Spanned;

.field private mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mNameLayout:Landroid/text/StaticLayout;

.field private mPlusOneClickableRect:Lcom/google/android/apps/plus/views/ClickableRect;

.field private mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mPlusOnePeopleClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;

.field private mPlusOneText:Ljava/lang/String;

.field private mPosition:I

.field private mRelativeTime:Ljava/lang/String;

.field private mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CommentRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x7f0c0042

    const v4, 0x7f09000b

    const/4 v3, 0x1

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    .line 106
    sget-boolean v1, Lcom/google/android/apps/plus/views/CommentRowView;->mInitialized:Z

    if-nez v1, :cond_143

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sUserImageBitmap:Landroid/graphics/Bitmap;

    .line 110
    const v1, 0x7f0200ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    .line 111
    const v1, 0x7f0200ad

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOneByMeBitmap:Landroid/graphics/Bitmap;

    .line 112
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    .line 115
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sNamePaint:Landroid/text/TextPaint;

    .line 116
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 117
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 118
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 119
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    .line 122
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 123
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 126
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    .line 127
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 128
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 129
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 130
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 132
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    .line 133
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 135
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 137
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    .line 138
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->CONTENT_TOP_MARGIN:I

    .line 143
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->CONTENT_BOTTOM_MARGIN:I

    .line 144
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    .line 145
    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    .line 147
    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_SEPARATOR_HEIGHT:I

    .line 149
    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_RIGHT_MARGIN:I

    .line 150
    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_CLICKABLE_PADDING_X:I

    .line 152
    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_CLICKABLE_PADDING_Y:I

    .line 155
    sput-boolean v3, Lcom/google/android/apps/plus/views/CommentRowView;->mInitialized:Z

    .line 158
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_143
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 159
    return-void
.end method

.method private measureHeight(II)I
    .registers 28
    .parameter "width"
    .parameter "heightMeasureSpec"

    .prologue
    .line 333
    if-gtz p1, :cond_5

    .line 334
    const/16 v21, 0x0

    .line 423
    :goto_4
    return v21

    .line 337
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 338
    .local v22, specMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 339
    .local v23, specSize:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v16, contentDescriptionBuilder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 342
    .local v18, context:Landroid/content/Context;
    const/16 v21, 0x0

    .line 343
    .local v21, result:I
    const/high16 v2, 0x4000

    move/from16 v0, v22

    if-ne v0, v2, :cond_2a

    .line 345
    move/from16 v21, v23

    .line 421
    :cond_20
    :goto_20
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CommentRowView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 347
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingTop()I

    move-result v21

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingRight()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v2, v7

    sget v7, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    sub-int/2addr v2, v7

    sget v7, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    sub-int v17, v2, v7

    .line 351
    .local v17, contentWidth:I
    sget-object v2, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    move/from16 v24, v0

    .line 353
    .local v24, timeSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v2, :cond_1dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v19

    .line 354
    .local v19, plusOneCount:I
    :goto_5b
    if-lez v19, :cond_1f2

    .line 355
    const/16 v2, 0x63

    move/from16 v0, v19

    if-le v0, v2, :cond_1e0

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f07007b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneText:Ljava/lang/String;

    .line 360
    :goto_72
    sget-object v2, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    sget v7, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_RIGHT_MARGIN:I

    add-int/2addr v2, v7

    sget-object v7, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int v20, v2, v7

    .line 365
    .local v20, plusOneSize:I
    :goto_88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingLeft()I

    move-result v9

    sget v10, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingTop()I

    move-result v10

    sget v11, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v10, v11

    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 369
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    sget-object v4, Lcom/google/android/apps/plus/views/CommentRowView;->sNamePaint:Landroid/text/TextPaint;

    sub-int v5, v17, v24

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mNameLayout:Landroid/text/StaticLayout;

    .line 373
    const v2, 0x7f0700da

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    aput-object v9, v7, v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v2, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const v2, 0x7f0700dc

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    aput-object v9, v7, v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v2, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/CommentRowView;->CONTENT_TOP_MARGIN:I

    add-int/2addr v2, v7

    add-int v21, v21, v2

    .line 383
    if-lez v19, :cond_14c

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneClickableRect:Lcom/google/android/apps/plus/views/ClickableRect;

    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingRight()I

    move-result v2

    sub-int v2, p1, v2

    sub-int v2, v2, v20

    sget v7, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_CLICKABLE_PADDING_X:I

    sub-int v3, v2, v7

    .line 387
    .local v3, plusOneLeft:I
    sget v2, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_CLICKABLE_PADDING_Y:I

    sub-int v4, v21, v2

    .line 388
    .local v4, plusOneTop:I
    sget v2, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_CLICKABLE_PADDING_X:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v20, v2

    .line 389
    .local v5, plusOneWidth:I
    sget-object v2, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v7, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_CLICKABLE_PADDING_Y:I

    mul-int/lit8 v7, v7, 0x2

    add-int v6, v2, v7

    .line 391
    .local v6, plusOneHeight:I
    new-instance v2, Lcom/google/android/apps/plus/views/ClickableRect;

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/views/ClickableRect;-><init>(IIIILcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneClickableRect:Lcom/google/android/apps/plus/views/ClickableRect;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneClickableRect:Lcom/google/android/apps/plus/views/ClickableRect;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v3           #plusOneLeft:I
    .end local v4           #plusOneTop:I
    .end local v5           #plusOneWidth:I
    .end local v6           #plusOneHeight:I
    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    if-eqz v2, :cond_1be

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 398
    const-string v2, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 401
    new-instance v7, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    sget-object v9, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    sub-int v10, v17, v20

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct/range {v7 .. v15}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingLeft()I

    move-result v7

    sget v8, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v7, v8

    sget v8, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingTop()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sget v9, Lcom/google/android/apps/plus/views/CommentRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    add-int v21, v21, v2

    .line 411
    :cond_1be
    sget v2, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingBottom()I

    move-result v2

    add-int v21, v21, v2

    .line 415
    const/high16 v2, -0x8000

    move/from16 v0, v22

    if-ne v0, v2, :cond_20

    .line 417
    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_20

    .line 353
    .end local v19           #plusOneCount:I
    .end local v20           #plusOneSize:I
    :cond_1dc
    const/16 v19, 0x0

    goto/16 :goto_5b

    .line 358
    .restart local v19       #plusOneCount:I
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneText:Ljava/lang/String;

    goto/16 :goto_72

    .line 363
    :cond_1f2
    const/16 v20, 0x0

    .restart local v20       #plusOneSize:I
    goto/16 :goto_88
.end method

.method private measureWidth(I)I
    .registers 5
    .parameter "measureSpec"

    .prologue
    .line 299
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 300
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 303
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_12

    .line 316
    const/4 v0, 0x0

    .line 321
    .local v0, result:I
    :goto_c
    return v0

    .line 305
    .end local v0           #result:I
    :sswitch_d
    move v0, v2

    .line 306
    .restart local v0       #result:I
    goto :goto_c

    .line 310
    .end local v0           #result:I
    :sswitch_f
    move v0, v2

    .line 311
    .restart local v0       #result:I
    goto :goto_c

    .line 303
    nop

    :sswitch_data_12
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPosition:I

    .line 245
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 246
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mNameLayout:Landroid/text/StaticLayout;

    .line 247
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 248
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    .line 249
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 252
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 490
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 491
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_66

    :pswitch_14
    move v4, v5

    .line 526
    :goto_15
    return v4

    .line 493
    :pswitch_16
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 494
    .local v1, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 495
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 496
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    goto :goto_15

    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_34
    move v4, v5

    .line 500
    goto :goto_15

    .line 504
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_36
    iput-object v7, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 506
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 507
    .restart local v1       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    goto :goto_3e

    .line 510
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    move v4, v5

    .line 511
    goto :goto_15

    .line 515
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_53
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v6, :cond_63

    .line 516
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v3, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 517
    iput-object v7, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 518
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    goto :goto_15

    :cond_63
    move v4, v5

    .line 521
    goto :goto_15

    .line 491
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_16
        :pswitch_36
        :pswitch_14
        :pswitch_53
    .end packed-switch
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 261
    return-void
.end method

.method public onAvatarChanged(J)V
    .registers 4
    .parameter "userId"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_9

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(J)V

    .line 280
    :cond_9
    return-void
.end method

.method public onClickableRectClick(Lcom/google/android/apps/plus/views/ClickableRect;)V
    .registers 5
    .parameter "rect"

    .prologue
    .line 563
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOnePeopleClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;

    if-eqz v1, :cond_1f

    .line 564
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, plusOneId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 566
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOnePeopleClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;->showPlusOnePeople(Ljava/lang/String;I)V

    .line 570
    .end local v0           #plusOneId:Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 270
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 431
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 433
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    if-eqz v0, :cond_ed

    .line 434
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 435
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 443
    .local v6, bitmapToDraw:Landroid/graphics/Bitmap;
    :goto_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v6, v13, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 449
    :cond_40
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v10, v0

    .line 450
    .local v10, timeSize:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v11, v0, v10

    .line 451
    .local v11, xPosBegin:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingTop()I

    move-result v12

    .line 452
    .local v12, yPos:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    int-to-float v1, v11

    int-to-float v2, v12

    sget-object v3, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    sget-object v3, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingLeft()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    add-int v11, v0, v1

    .line 456
    int-to-float v0, v11

    int-to-float v1, v12

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 458
    neg-int v0, v11

    int-to-float v0, v0

    neg-int v1, v12

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->CONTENT_TOP_MARGIN:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v7

    .line 462
    .local v7, plusOneCount:I
    :cond_98
    if-lez v7, :cond_d7

    .line 463
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v8, v0

    .line 464
    .local v8, plusOneTextSize:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v9, v0, v8

    .line 466
    .local v9, plusOneXPos:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneText:Ljava/lang/String;

    int-to-float v1, v9

    int-to-float v2, v12

    sget-object v3, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    sget-object v3, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 468
    sget v0, Lcom/google/android/apps/plus/views/CommentRowView;->PLUSONE_RIGHT_MARGIN:I

    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v9, v0

    .line 470
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 471
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOneByMeBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    int-to-float v2, v12

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 477
    .end local v8           #plusOneTextSize:I
    .end local v9           #plusOneXPos:I
    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v0, :cond_ec

    .line 478
    int-to-float v0, v11

    int-to-float v1, v12

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 480
    neg-int v0, v11

    int-to-float v0, v0

    neg-int v1, v12

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    :cond_ec
    return-void

    .line 437
    .end local v6           #bitmapToDraw:Landroid/graphics/Bitmap;
    .end local v7           #plusOneCount:I
    .end local v10           #timeSize:I
    .end local v11           #xPosBegin:I
    .end local v12           #yPos:I
    :cond_ed
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v2, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_SEPARATOR_HEIGHT:I

    sub-int/2addr v0, v2

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/CommentRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1c

    .line 441
    :cond_105
    sget-object v6, Lcom/google/android/apps/plus/views/CommentRowView;->sUserImageBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2a

    .line 473
    .restart local v6       #bitmapToDraw:Landroid/graphics/Bitmap;
    .restart local v7       #plusOneCount:I
    .restart local v8       #plusOneTextSize:I
    .restart local v9       #plusOneXPos:I
    .restart local v10       #timeSize:I
    .restart local v11       #xPosBegin:I
    .restart local v12       #yPos:I
    :cond_109
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    int-to-float v2, v12

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_d7
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/CommentRowView;->measureWidth(I)I

    move-result v0

    .line 288
    .local v0, width:I
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/views/CommentRowView;->measureHeight(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/CommentRowView;->setMeasuredDimension(II)V

    .line 289
    return-void
.end method

.method public setAuthor(JLjava/lang/String;)V
    .registers 10
    .parameter "authorId"
    .parameter "authorName"

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorId:J

    .line 199
    iput-object p3, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;JLjava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    if-eq p1, v0, :cond_9

    .line 545
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    .line 546
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    .line 548
    :cond_9
    return-void
.end method

.method public setClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 166
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .registers 5
    .parameter "contentHtml"
    .parameter "truncated"

    .prologue
    .line 217
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 218
    if-eqz p2, :cond_1d

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_1d
    invoke-static {p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    .line 224
    :cond_23
    return-void
.end method

.method public setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 2
    .parameter "plusOneData"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 238
    return-void
.end method

.method public setPlusOnePeopleClickHandler(Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;)V
    .registers 2
    .parameter "plusOnePeopleClickHandler"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOnePeopleClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;

    .line 173
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 181
    iput p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPosition:I

    .line 182
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CommentRowView;->setChecked(Z)V

    .line 537
    return-void

    .line 536
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
