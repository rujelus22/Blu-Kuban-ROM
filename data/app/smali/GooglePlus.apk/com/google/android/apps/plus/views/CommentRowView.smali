.class public Lcom/google/android/apps/plus/views/CommentRowView;
.super Landroid/view/View;
.source "CommentRowView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;
.implements Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;
    }
.end annotation


# static fields
.field private static COMMENT_AUTHOR_BITMAP_DIMENSION:I

.field private static COMMENT_BOTTOM_MARGIN:I

.field private static COMMENT_LEFT_MARGIN:I

.field private static COMMENT_RIGHT_MARGIN:I

.field private static COMMENT_SEPARATOR_HEIGHT:I

.field private static COMMENT_TOP_MARGIN:I

.field private static FONT_SPACING:F

.field private static ICON_RIGHT_MARGIN:I

.field private static TIME_Y_OFFSET:I

.field private static mInitialized:Z

.field private static sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

.field private static sCommentBackgroundPaint:Landroid/graphics/Paint;

.field private static sContentPaint:Landroid/text/TextPaint;

.field private static sTimePaint:Landroid/text/TextPaint;

.field private static sUserImageBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAuthorName:Ljava/lang/String;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

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

.field private mCommentId:Ljava/lang/String;

.field private mContent:Landroid/text/Spanned;

.field private mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

.field private mPlusOneCommentClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;

.field private mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field private mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mPosition:I

.field private mRelativeTime:Ljava/lang/String;

.field private mShowPlusOneView:Z

.field private mTimeLayout:Landroid/text/StaticLayout;

.field private mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CommentRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x7f0d0071

    const v4, 0x7f0d0070

    const/4 v3, 0x1

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    .line 106
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mShowPlusOneView:Z

    .line 123
    sget-boolean v1, Lcom/google/android/apps/plus/views/CommentRowView;->mInitialized:Z

    if-nez v1, :cond_fa

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sUserImageBitmap:Landroid/graphics/Bitmap;

    .line 127
    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    .line 130
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    .line 131
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 132
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 133
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 136
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    .line 137
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 138
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 139
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 140
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 141
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 143
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    .line 144
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    const v1, 0x7f0d006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_TOP_MARGIN:I

    .line 149
    const v1, 0x7f0d006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_BOTTOM_MARGIN:I

    .line 150
    const v1, 0x7f0d006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_LEFT_MARGIN:I

    .line 151
    const v1, 0x7f0d006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_RIGHT_MARGIN:I

    .line 152
    const v1, 0x7f0d0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    .line 153
    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    .line 155
    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_SEPARATOR_HEIGHT:I

    .line 157
    const v1, 0x7f0d0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->TIME_Y_OFFSET:I

    .line 158
    const v1, 0x7f0d0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/CommentRowView;->FONT_SPACING:F

    .line 160
    sput-boolean v3, Lcom/google/android/apps/plus/views/CommentRowView;->mInitialized:Z

    .line 163
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_fa
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 164
    return-void
.end method

.method private measureHeight(II)I
    .registers 33
    .parameter "width"
    .parameter "heightMeasureSpec"

    .prologue
    .line 342
    if-gtz p1, :cond_4

    .line 343
    const/4 v11, 0x0

    .line 436
    :goto_3
    return v11

    .line 346
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 347
    .local v27, specMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v28

    .line 348
    .local v28, specSize:I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v21, contentDescriptionBuilder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 350
    .local v22, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 353
    .local v26, res:Landroid/content/res/Resources;
    const/high16 v1, 0x4000

    move/from16 v0, v27

    if-ne v0, v1, :cond_2b

    .line 355
    move/from16 v11, v28

    .line 434
    .local v11, result:I
    :cond_21
    :goto_21
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CommentRowView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 357
    .end local v11           #result:I
    :cond_2b
    sget v11, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_TOP_MARGIN:I

    .line 359
    .restart local v11       #result:I
    sget v29, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_LEFT_MARGIN:I

    .line 361
    .local v29, xStart:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    sget v3, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    add-int v3, v3, v29

    sget v5, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v5, v11

    move/from16 v0, v29

    invoke-virtual {v1, v0, v11, v3, v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 364
    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    sget v3, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    add-int/2addr v1, v3

    add-int v29, v29, v1

    .line 366
    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_LEFT_MARGIN:I

    sub-int v1, p1, v1

    sget v3, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_RIGHT_MARGIN:I

    sub-int/2addr v1, v3

    sget v3, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    sub-int/2addr v1, v3

    sget v3, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    sub-int v4, v1, v3

    .line 369
    .local v4, contentWidth:I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 370
    .local v2, builder:Landroid/text/SpannableStringBuilder;
    const-string v1, " "

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    if-eqz v1, :cond_6f

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 376
    :cond_6f
    new-instance v24, Landroid/text/style/ForegroundColorSpan;

    const v1, 0x7f0a002f

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, v24

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 378
    .local v24, nameColorSpan:Landroid/text/style/ForegroundColorSpan;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x21

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 380
    new-instance v23, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 381
    .local v23, nameBoldSpan:Landroid/text/style/StyleSpan;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x21

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 385
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v3, Lcom/google/android/apps/plus/views/CommentRowView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v6, Lcom/google/android/apps/plus/views/CommentRowView;->FONT_SPACING:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move/from16 v0, v29

    invoke-virtual {v1, v0, v11}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    const v1, 0x7f080155

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, " "

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, " "

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v11, v1

    .line 399
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mShowPlusOneView:Z

    if-eqz v1, :cond_16d

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 403
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    const/4 v12, 0x0

    move-object/from16 v5, v22

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move/from16 v9, v29

    move v10, v4

    invoke-static/range {v5 .. v12}, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->setupButtons(Landroid/content/Context;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;IIIZ)Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;

    move-result-object v25

    .line 405
    .local v25, plusOneViews:Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    .line 406
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v25           #plusOneViews:Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;
    :cond_16d
    new-instance v12, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    sget-object v14, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    sget-object v1, Lcom/google/android/apps/plus/views/CommentRowView;->sTimePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v15, v1

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v17, Lcom/google/android/apps/plus/views/CommentRowView;->FONT_SPACING:F

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mTimeLayout:Landroid/text/StaticLayout;

    .line 415
    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->TIME_Y_OFFSET:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v11, v1

    .line 417
    const v1, 0x7f080157

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, " "

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mShowPlusOneView:Z

    if-eqz v1, :cond_1de

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 424
    .local v20, buttonBottom:I
    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 426
    .end local v20           #buttonBottom:I
    :cond_1de
    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_BOTTOM_MARGIN:I

    add-int/2addr v11, v1

    .line 428
    const/high16 v1, -0x8000

    move/from16 v0, v27

    if-ne v0, v1, :cond_21

    .line 430
    move/from16 v0, v28

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto/16 :goto_21
.end method

.method private measureWidth(I)I
    .registers 5
    .parameter "measureSpec"

    .prologue
    .line 308
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 309
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 312
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_12

    .line 325
    const/4 v0, 0x0

    .line 330
    .local v0, result:I
    :goto_c
    return v0

    .line 314
    .end local v0           #result:I
    :sswitch_d
    move v0, v2

    .line 315
    .restart local v0       #result:I
    goto :goto_c

    .line 319
    .end local v0           #result:I
    :sswitch_f
    move v0, v2

    .line 320
    .restart local v0       #result:I
    goto :goto_c

    .line 312
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

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPosition:I

    .line 250
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 251
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 252
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mTimeLayout:Landroid/text/StaticLayout;

    .line 253
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 254
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 255
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    .line 256
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 257
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCommentId:Ljava/lang/String;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mShowPlusOneView:Z

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 261
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 487
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 488
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_66

    :pswitch_14
    move v4, v5

    .line 523
    :goto_15
    return v4

    .line 490
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

    .line 491
    .local v1, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 492
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 493
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    goto :goto_15

    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_34
    move v4, v5

    .line 497
    goto :goto_15

    .line 501
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_36
    iput-object v7, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 503
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

    .line 504
    .restart local v1       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    goto :goto_3e

    .line 507
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    move v4, v5

    .line 508
    goto :goto_15

    .line 512
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_53
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v6, :cond_63

    .line 513
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v3, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 514
    iput-object v7, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 515
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    goto :goto_15

    :cond_63
    move v4, v5

    .line 518
    goto :goto_15

    .line 488
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
    .line 552
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 270
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(Ljava/lang/String;)V

    .line 289
    :cond_9
    return-void
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 5
    .parameter "button"

    .prologue
    .line 565
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCommentClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;

    if-eqz v1, :cond_23

    .line 567
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, plusOneId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 569
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCommentClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;->showPlusOnePeople(Ljava/lang/String;I)V

    .line 573
    .end local v0           #plusOneId:Ljava/lang/String;
    :cond_23
    return-void
.end method

.method public onClickableImageButtonClick(Lcom/google/android/apps/plus/views/ClickableImageButton;)V
    .registers 5
    .parameter "button"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCommentClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;

    if-eqz v0, :cond_11

    .line 578
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCommentClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCommentId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;->onPlusOneCommentClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    .line 580
    :cond_11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 279
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 444
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 446
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    if-eqz v0, :cond_86

    .line 447
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    sget-object v0, Lcom/google/android/apps/plus/views/CommentRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 456
    .local v6, bitmapToDraw:Landroid/graphics/Bitmap;
    :goto_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v6, v9, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 462
    :cond_40
    sget v8, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_TOP_MARGIN:I

    .line 463
    .local v8, yStart:I
    sget v0, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_LEFT_MARGIN:I

    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->COMMENT_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->ICON_RIGHT_MARGIN:I

    add-int v7, v0, v1

    .line 466
    .local v7, xStart:I
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 468
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/CommentRowView;->TIME_Y_OFFSET:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 471
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 473
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mShowPlusOneView:Z

    if-eqz v0, :cond_85

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 479
    :cond_85
    return-void

    .line 450
    .end local v6           #bitmapToDraw:Landroid/graphics/Bitmap;
    .end local v7           #xStart:I
    .end local v8           #yStart:I
    :cond_86
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

    goto :goto_1c

    .line 454
    :cond_9d
    sget-object v6, Lcom/google/android/apps/plus/views/CommentRowView;->sUserImageBitmap:Landroid/graphics/Bitmap;

    goto :goto_2a
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/CommentRowView;->measureWidth(I)I

    move-result v0

    .line 297
    .local v0, width:I
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/views/CommentRowView;->measureHeight(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/CommentRowView;->setMeasuredDimension(II)V

    .line 298
    return-void
.end method

.method public setAuthor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "authorGaiaId"
    .parameter "authorName"

    .prologue
    .line 204
    iput-object p2, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mAuthorName:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    if-eq p1, v0, :cond_9

    .line 542
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    .line 543
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CommentRowView;->invalidate()V

    .line 545
    :cond_9
    return-void
.end method

.method public setClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 171
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .registers 2
    .parameter "commentId"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mCommentId:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .registers 5
    .parameter "contentHtml"
    .parameter "truncated"

    .prologue
    .line 215
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 216
    if-eqz p2, :cond_1d

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_1d
    invoke-static {p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mContent:Landroid/text/Spanned;

    .line 222
    :cond_23
    return-void
.end method

.method public setPlusOneCommentClickHandler(Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;)V
    .registers 2
    .parameter "plusOneCommentClickHandler"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneCommentClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOneCommentClickHandler;

    .line 179
    return-void
.end method

.method public setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 2
    .parameter "plusOneData"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 236
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 187
    iput p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mPosition:I

    .line 188
    return-void
.end method

.method public setShowPlusOneView(Z)V
    .registers 2
    .parameter "showPlusOneView"

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mShowPlusOneView:Z

    .line 561
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mRelativeTime:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CommentRowView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CommentRowView;->setChecked(Z)V

    .line 534
    return-void

    .line 533
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
