.class public Lcom/google/android/apps/plus/views/StreamOneUpCommentView;
.super Lcom/google/android/apps/plus/views/StreamOneUpBaseView;
.source "StreamOneUpCommentView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/StreamOneUpCommentView$1;,
        Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;
    }
.end annotation


# static fields
.field private static sAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private static sAvatarMarginRight:I

.field private static sAvatarMarginTop:I

.field private static sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

.field private static sAvatarSize:I

.field private static sBackgroundPaint:Landroid/graphics/Paint;

.field private static sContentPaint:Landroid/text/TextPaint;

.field private static sDatePaint:Landroid/text/TextPaint;

.field private static sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

.field private static sDividerPaint:Landroid/graphics/Paint;

.field private static sDividerThickness:I

.field private static sFontSpacing:F

.field private static sMarginBottom:I

.field private static sMarginLeft:I

.field private static sMarginRight:I

.field private static sMarginTop:I

.field private static sNameMarginRight:I

.field private static sNamePaint:Landroid/text/TextPaint;

.field private static sPlusOneColor:I

.field private static sPlusOneInverseColor:I

.field private static sPlusOnePaint:Landroid/text/TextPaint;

.field protected static sPressedStateBackground:Landroid/graphics/drawable/Drawable;

.field private static sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mAuthorId:Ljava/lang/String;

.field private mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

.field private mAuthorName:Ljava/lang/String;

.field private mClickableItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/plus/views/ClickableItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentContent:Ljava/lang/String;

.field private mCommentId:Ljava/lang/String;

.field private mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mDate:Ljava/lang/String;

.field private mDateLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

.field private mPlusOneByMe:Z

.field private mPlusOneCount:I

.field private mPlusOneId:Ljava/lang/String;

.field private mPressed:Z

.field private mSetPressedRunnable:Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x7f0d0203

    const v6, 0x7f0d0202

    const v5, 0x7f0d0201

    const v4, 0x7f0d0200

    const/4 v3, 0x1

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mClickableItems:Ljava/util/Set;

    .line 144
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_191

    .line 145
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPressedStateBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sFontSpacing:F

    .line 153
    const v1, 0x7f0d01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    .line 155
    const v1, 0x7f0d01e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginTop:I

    .line 157
    const v1, 0x7f0d01ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginLeft:I

    .line 159
    const v1, 0x7f0d01eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginRight:I

    .line 161
    const v1, 0x7f0d01ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginBottom:I

    .line 163
    const v1, 0x7f0d01ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginTop:I

    .line 165
    const v1, 0x7f0d01ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginRight:I

    .line 167
    const v1, 0x7f0d01ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNameMarginRight:I

    .line 169
    const v1, 0x7f0d01f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerThickness:I

    .line 172
    const v1, 0x7f0a0130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOneColor:I

    .line 173
    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOneInverseColor:I

    .line 175
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 177
    const v1, 0x7f020024

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    .line 179
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    .line 180
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 181
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 182
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 183
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 184
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 187
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    .line 188
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 189
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 190
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 191
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 194
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sContentPaint:Landroid/text/TextPaint;

    .line 195
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 196
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 197
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 198
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 200
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sContentPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 205
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOnePaint:Landroid/text/TextPaint;

    .line 206
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOnePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 207
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 209
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 212
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 213
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerPaint:Landroid/graphics/Paint;

    .line 217
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0132

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerThickness:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 221
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sResizePaint:Landroid/graphics/Paint;

    .line 223
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_191
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    return p1
.end method

.method private clearLayoutState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 549
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 550
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDateLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 551
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 554
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 557
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 558
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 559
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentContent:Ljava/lang/String;

    .line 560
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneId:Ljava/lang/String;

    .line 561
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneByMe:Z

    .line 562
    iput v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneCount:I

    .line 563
    return-void
.end method

.method private drawComment(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 352
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    if-nez v3, :cond_6

    .line 391
    :goto_5
    return-void

    .line 357
    :cond_6
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_92

    .line 358
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    .local v0, drawBitmap:Landroid/graphics/Bitmap;
    :goto_14
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 368
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 369
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 370
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 374
    :cond_39
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v1

    .line 375
    .local v1, drawX:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v2

    .line 376
    .local v2, drawY:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 377
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 378
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 380
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDateLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v1

    .line 381
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDateLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v2

    .line 382
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 383
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDateLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 384
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v1

    .line 387
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v2

    .line 388
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 389
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 390
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5

    .line 360
    .end local v0           #drawBitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawX:I
    .end local v2           #drawY:I
    :cond_92
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #drawBitmap:Landroid/graphics/Bitmap;
    goto :goto_14
.end method

.method private measureAndLayoutComment(III)I
    .registers 33
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 276
    move/from16 v24, p1

    .line 277
    .local v24, drawX:I
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginTop:I

    add-int v25, p2, v4

    .line 279
    .local v25, drawY:I
    new-instance v4, Lcom/google/android/apps/plus/views/ClickableUserImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    const/4 v9, 0x2

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    add-int v5, v5, v24

    sget v6, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    add-int v6, v6, v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 283
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginRight:I

    add-int/2addr v4, v5

    add-int v24, v24, v4

    .line 284
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginTop:I

    sub-int v25, v25, v4

    .line 287
    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v7, v4

    .line 288
    .local v7, dateWidth:I
    new-instance v4, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDate:Ljava/lang/String;

    sget-object v6, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v9, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sFontSpacing:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDateLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 291
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    sub-int v4, p3, v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginRight:I

    sub-int/2addr v4, v5

    sub-int v11, v4, v7

    .line 292
    .local v11, availableWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorName:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    int-to-float v6, v11

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 296
    .local v9, ellipsizedAuthor:Ljava/lang/CharSequence;
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    sub-int v4, p3, v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginRight:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v7

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v5, v9, v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 298
    new-instance v8, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    sget-object v10, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v13, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sFontSpacing:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getWidth()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNameMarginRight:I

    add-int/2addr v4, v5

    add-int v24, v24, v4

    .line 304
    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v5

    add-int v25, v25, v4

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDateLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 308
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    sub-int v4, p3, v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginRight:I

    sub-int v11, v4, v5

    .line 309
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarSize:I

    add-int v4, v4, p1

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarMarginRight:I

    add-int v24, v4, v5

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mNameLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getHeight()I

    move-result v4

    add-int v25, p2, v4

    .line 314
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneCount:I

    if-lez v4, :cond_1e1

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080422

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneCount:I

    const/4 v13, 0x1

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 319
    .local v26, plusOneText:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " &nbsp; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 322
    .local v23, content:Landroid/text/Spannable;
    new-instance v12, Landroid/text/style/TextAppearanceSpan;

    const/4 v13, 0x0

    const/4 v14, 0x1

    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    float-to-int v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 325
    .local v12, appearanceSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneByMe:Z

    if-eqz v4, :cond_1dd

    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOneInverseColor:I

    :goto_157
    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 327
    .local v22, colorSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-interface/range {v23 .. v23}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v28, v4, v5

    .line 328
    .local v28, spanStart:I
    invoke-interface/range {v23 .. v23}, Landroid/text/Spannable;->length()I

    move-result v27

    .line 331
    .local v27, spanEnd:I
    const/16 v4, 0x21

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-interface {v0, v12, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 332
    const/16 v4, 0x21

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v14, v23

    .line 337
    .end local v12           #appearanceSpan:Landroid/text/style/TextAppearanceSpan;
    .end local v22           #colorSpan:Landroid/text/style/ForegroundColorSpan;
    .end local v23           #content:Landroid/text/Spannable;
    .end local v26           #plusOneText:Ljava/lang/String;
    .end local v27           #spanEnd:I
    .end local v28           #spanStart:I
    .local v14, content:Landroid/text/Spannable;
    :goto_184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    new-instance v13, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v15, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v18, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sFontSpacing:F

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-object/from16 v21, v0

    move/from16 v16, v11

    invoke-direct/range {v13 .. v21}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v4

    add-int v25, v25, v4

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .line 325
    .end local v14           #content:Landroid/text/Spannable;
    .restart local v12       #appearanceSpan:Landroid/text/style/TextAppearanceSpan;
    .restart local v23       #content:Landroid/text/Spannable;
    .restart local v26       #plusOneText:Ljava/lang/String;
    :cond_1dd
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPlusOneColor:I

    goto/16 :goto_157

    .line 334
    .end local v12           #appearanceSpan:Landroid/text/style/TextAppearanceSpan;
    .end local v23           #content:Landroid/text/Spannable;
    .end local v26           #plusOneText:Ljava/lang/String;
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentContent:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    .restart local v14       #content:Landroid/text/Spannable;
    goto :goto_184
.end method

.method private removeSetPressedRunnable()V
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mSetPressedRunnable:Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;

    if-eqz v0, :cond_9

    .line 624
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mSetPressedRunnable:Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 626
    :cond_9
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;)V
    .registers 12
    .parameter "cursor"

    .prologue
    const/4 v9, 0x5

    const/16 v8, 0xa

    .line 566
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 569
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->clearLayoutState()V

    .line 571
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorId:Ljava/lang/String;

    .line 572
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorName:Ljava/lang/String;

    .line 573
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorName:Ljava/lang/String;

    if-nez v5, :cond_3a

    .line 574
    const-string v5, ""

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorName:Ljava/lang/String;

    .line 575
    const-string v5, "StreamOneUp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> Author name was null for gaia id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_3a
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentId:Ljava/lang/String;

    .line 578
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentContent:Ljava/lang/String;

    .line 579
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/util/Dates;->getAbbreviatedRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDate:Ljava/lang/String;

    .line 581
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 582
    .local v2, plusOneBytes:[B
    if-eqz v2, :cond_73

    .line 584
    :try_start_5d
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    .line 585
    .local v3, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneId:Ljava/lang/String;

    .line 586
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneByMe:Z

    .line 587
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneCount:I
    :try_end_73
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5d .. :try_end_73} :catch_be

    .line 595
    .end local v3           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_73
    :goto_73
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 596
    .local v4, sb:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorName:Ljava/lang/String;

    if-eqz v5, :cond_87

    .line 597
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 599
    :cond_87
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentContent:Ljava/lang/String;

    if-eqz v5, :cond_94

    .line 600
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 602
    :cond_94
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDate:Ljava/lang/String;

    if-eqz v5, :cond_a1

    .line 603
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 605
    :cond_a1
    iget v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneCount:I

    if-lez v5, :cond_b0

    .line 606
    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 608
    :cond_b0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->invalidate()V

    .line 611
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->requestLayout()V

    .line 612
    return-void

    .line 588
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :catch_be
    move-exception v1

    .line 589
    .local v1, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v5, "StreamOneUp"

    invoke-static {v5, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 590
    const-string v5, "StreamOneUp"

    const-string v6, "Error parsing PlusOneData"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73
.end method

.method public cancelPressedState()V
    .registers 2

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    if-eqz v0, :cond_a

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    .line 617
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->invalidate()V

    .line 619
    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->removeSetPressedRunnable()V

    .line 620
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 396
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 398
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_a2

    move v5, v6

    .line 452
    :goto_15
    return v5

    .line 400
    :pswitch_16
    iget-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 401
    .local v1, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v3, v4, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 402
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 403
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->invalidate()V

    goto :goto_15

    .line 408
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_34
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mSetPressedRunnable:Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;

    if-nez v5, :cond_3f

    .line 409
    new-instance v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;

    invoke-direct {v5, p0, v8}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;Lcom/google/android/apps/plus/views/StreamOneUpCommentView$1;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mSetPressedRunnable:Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;

    .line 411
    :cond_3f
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mSetPressedRunnable:Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v5, v7, v8}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v5, v6

    .line 412
    goto :goto_15

    .line 416
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_4b
    iput-object v8, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 417
    iput-boolean v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    .line 418
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->removeSetPressedRunnable()V

    .line 419
    iget-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 420
    .restart local v1       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    goto :goto_58

    .line 423
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->invalidate()V

    move v5, v6

    .line 424
    goto :goto_15

    .line 428
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_6d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    .line 429
    .local v2, wasChecked:Z
    iput-boolean v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    .line 430
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->removeSetPressedRunnable()V

    .line 431
    iget-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v7, :cond_84

    .line 432
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v7, 0x3

    invoke-interface {v6, v3, v4, v7}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 433
    iput-object v8, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->invalidate()V

    goto :goto_15

    .line 437
    :cond_84
    if-eqz v2, :cond_89

    .line 438
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->invalidate()V

    :cond_89
    move v5, v6

    .line 440
    goto :goto_15

    .line 445
    .end local v2           #wasChecked:Z
    :pswitch_8b
    if-ltz v3, :cond_9b

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_9b

    if-ltz v4, :cond_9b

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_9e

    .line 446
    :cond_9b
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->removeSetPressedRunnable()V

    :cond_9e
    move v5, v6

    .line 448
    goto/16 :goto_15

    .line 398
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_4b
        :pswitch_8b
        :pswitch_6d
    .end packed-switch
.end method

.method public getAuthorId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusOneByMe()Z
    .registers 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneByMe:Z

    return v0
.end method

.method public getPlusOneCount()I
    .registers 2

    .prologue
    .line 536
    iget v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneCount:I

    return v0
.end method

.method public getPlusOneId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPlusOneId:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 471
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onAttachedToWindow()V

    .line 472
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 473
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_9

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(Ljava/lang/String;)V

    .line 488
    :cond_9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 477
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onDetachedFromWindow()V

    .line 478
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 479
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getWidth()I

    move-result v7

    .line 249
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getHeight()I

    move-result v6

    .line 251
    .local v6, height:I
    int-to-float v3, v7

    int-to-float v4, v6

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->drawComment(Landroid/graphics/Canvas;)V

    .line 255
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    if-eqz v0, :cond_2b

    .line 256
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPressedStateBackground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerThickness:I

    sub-int v1, v6, v1

    invoke-virtual {v0, v8, v8, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sPressedStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    :cond_2b
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginLeft:I

    int-to-float v1, v0

    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerThickness:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginRight:I

    sub-int v0, v7, v0

    int-to-float v3, v0

    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerThickness:I

    sub-int v0, v6, v0

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 262
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onMeasure(II)V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getPaddingLeft()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginLeft:I

    add-int v2, v4, v5

    .line 230
    .local v2, xStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getPaddingTop()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginTop:I

    add-int v3, v4, v5

    .line 232
    .local v3, yStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getMeasuredWidth()I

    move-result v1

    .line 233
    .local v1, width:I
    sub-int v4, v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginRight:I

    sub-int v0, v4, v5

    .line 235
    .local v0, contentWidth:I
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->measureAndLayoutComment(III)I

    move-result v3

    .line 237
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sMarginBottom:I

    add-int/2addr v4, v3

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sDividerThickness:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->setMeasuredDimension(II)V

    .line 239
    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    if-eqz v4, :cond_3d

    .line 240
    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    invoke-interface {v4, p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;->onMeasured(Landroid/view/View;)V

    .line 242
    :cond_3d
    return-void
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->clearLayoutState()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z

    .line 495
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 459
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onStart()V

    .line 460
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 461
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onStop()V

    .line 466
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->sAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 467
    return-void
.end method

.method public setOneUpClickListener(Lcom/google/android/apps/plus/views/StreamOneUpListener;)V
    .registers 2
    .parameter "oneUpListener"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    .line 544
    return-void
.end method
