.class public abstract Lcom/google/android/apps/plus/views/StreamCardView;
.super Lcom/google/android/apps/plus/views/CardView;
.source "StreamCardView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/StreamCardView$3;,
        Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;,
        Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;
    }
.end annotation


# static fields
.field protected static sAuthorBitmap:Landroid/graphics/Bitmap;

.field protected static sAuthorNameYOffset:I

.field protected static sAutoTextPaint:Landroid/text/TextPaint;

.field protected static sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

.field protected static sAvatarSize:I

.field protected static sCommentsBitmap:Landroid/graphics/Bitmap;

.field protected static sContentXPadding:I

.field protected static sContentYPadding:I

.field private static final sDampingInterpolator:Landroid/view/animation/Interpolator;

.field protected static sMediaCardBigHeightPercentage:F

.field protected static sMediaCardHeightPercentage:F

.field protected static sMediaShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sNameTextPaint:Landroid/text/TextPaint;

.field protected static sRelativeTimeTextPaint:Landroid/text/TextPaint;

.field protected static sRelativeTimeYOffset:I

.field protected static sReshareBitmap:Landroid/graphics/Bitmap;

.field private static sStreamCardViewInitialized:Z

.field protected static sTagAlbumBitmaps:[Landroid/graphics/Bitmap;

.field protected static sTagBackgroundYPadding:I

.field protected static sTagDrawable:Landroid/graphics/drawable/Drawable;

.field protected static sTagHangoutBitmaps:[Landroid/graphics/Bitmap;

.field protected static sTagIconXPadding:I

.field protected static sTagIconYPadding:I

.field protected static sTagLinkBitmaps:[Landroid/graphics/Bitmap;

.field protected static sTagLocationBitmaps:[Landroid/graphics/Bitmap;

.field protected static sTagMusicBitmaps:[Landroid/graphics/Bitmap;

.field protected static sTagTextPaint:Landroid/text/TextPaint;

.field protected static sTagTextXPadding:I

.field protected static sTagVideoBitmaps:[Landroid/graphics/Bitmap;

.field protected static sTagYOffset:I

.field protected static sTiledStageDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected static sWhatsHotBitmap:Landroid/graphics/Bitmap;


# instance fields
.field protected mActivityId:Ljava/lang/String;

.field protected mAttribution:Ljava/lang/CharSequence;

.field protected mAttributionLayout:Landroid/text/StaticLayout;

.field protected mAuthorGaiaId:Ljava/lang/String;

.field protected mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

.field protected mAuthorName:Ljava/lang/String;

.field protected mAuthorNameLayout:Landroid/text/StaticLayout;

.field protected mAutoText:I

.field protected mAutoTextLayout:Landroid/text/StaticLayout;

.field protected mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field protected mContent:Ljava/lang/CharSequence;

.field protected mContentLayout:Landroid/text/StaticLayout;

.field protected mFillerContent:Ljava/lang/CharSequence;

.field protected mFillerContentLayout:Landroid/text/StaticLayout;

.field protected mInvisiblePlusOneButton:Z

.field protected mIsLimited:Z

.field protected mObjectType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field protected mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field protected mOverridePlusOnedButtonDisplay:Z

.field protected mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field protected mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field protected mPopularPost:Z

.field protected mRelativeTime:Ljava/lang/String;

.field protected mRelativeTimeLayout:Landroid/text/StaticLayout;

.field protected mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field private mShakeAnimation:Ljava/lang/Runnable;

.field protected mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

.field protected mTag:Ljava/lang/CharSequence;

.field protected mTagDrawableInstance:Landroid/graphics/drawable/Drawable;

.field protected mTagIcon:Landroid/graphics/Bitmap;

.field protected mTagLayout:Landroid/text/StaticLayout;

.field protected mTotalComments:I

.field private mViewedListener:Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/apps/plus/views/StreamCardView$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/StreamCardView$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/StreamCardView;->sDampingInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/StreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v7, 0x7f0d01b4

    const v5, 0x7f0d01ad

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, res:Landroid/content/res/Resources;
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamCardView;->sStreamCardViewInitialized:Z

    if-nez v1, :cond_23e

    .line 178
    sput-boolean v6, Lcom/google/android/apps/plus/views/StreamCardView;->sStreamCardViewInitialized:Z

    .line 180
    invoke-static {p1}, Lcom/google/android/apps/plus/util/PlusBarUtils;->init(Landroid/content/Context;)V

    .line 182
    invoke-static {p1, v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 184
    new-array v1, v4, [Landroid/graphics/Bitmap;

    const v2, 0x7f020127

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200ae

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagAlbumBitmaps:[Landroid/graphics/Bitmap;

    .line 187
    new-array v1, v4, [Landroid/graphics/Bitmap;

    const v2, 0x7f020129

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200e0

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagLinkBitmaps:[Landroid/graphics/Bitmap;

    .line 190
    new-array v1, v4, [Landroid/graphics/Bitmap;

    const v2, 0x7f02012a

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200e8

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagLocationBitmaps:[Landroid/graphics/Bitmap;

    .line 193
    new-array v1, v4, [Landroid/graphics/Bitmap;

    const v2, 0x7f02012b

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f02012f

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagMusicBitmaps:[Landroid/graphics/Bitmap;

    .line 196
    new-array v1, v4, [Landroid/graphics/Bitmap;

    const v2, 0x7f02012c

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f020187

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagVideoBitmaps:[Landroid/graphics/Bitmap;

    .line 199
    new-array v1, v4, [Landroid/graphics/Bitmap;

    const v2, 0x7f020128

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v6

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagHangoutBitmaps:[Landroid/graphics/Bitmap;

    .line 203
    const v1, 0x7f0200bb

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sCommentsBitmap:Landroid/graphics/Bitmap;

    .line 204
    const v1, 0x7f020114

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sReshareBitmap:Landroid/graphics/Bitmap;

    .line 205
    const v1, 0x7f020024

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    .line 206
    const v1, 0x7f020189

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sWhatsHotBitmap:Landroid/graphics/Bitmap;

    .line 208
    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sMediaShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 211
    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTiledStageDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTiledStageDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 213
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTiledStageDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 215
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    .line 216
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 217
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0108

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 218
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 220
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 223
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    .line 224
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 225
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a010e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 226
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 227
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 229
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 232
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    .line 233
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 234
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a010f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 235
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 236
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 237
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0d01bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0d01c0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v5, 0x7f0a0110

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 242
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01bb

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 244
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    .line 245
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 246
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0112

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 247
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 248
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01b5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 251
    const v1, 0x7f0d01b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    .line 252
    const v1, 0x7f0d01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAuthorNameYOffset:I

    .line 253
    const v1, 0x7f0d01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeYOffset:I

    .line 254
    const v1, 0x7f0d01b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentXPadding:I

    .line 255
    const v1, 0x7f0d01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    .line 256
    const v1, 0x7f0d01ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagYOffset:I

    .line 257
    const v1, 0x7f0d01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextXPadding:I

    .line 258
    const v1, 0x7f0d01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagBackgroundYPadding:I

    .line 259
    const v1, 0x7f0d01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagIconXPadding:I

    .line 260
    const v1, 0x7f0d01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagIconYPadding:I

    .line 262
    const v1, 0x7f0d020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sMediaCardHeightPercentage:F

    .line 263
    const v1, 0x7f0d020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamCardView;->sMediaCardBigHeightPercentage:F

    .line 267
    :cond_23e
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagDrawableInstance:Landroid/graphics/drawable/Drawable;

    .line 268
    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/apps/plus/views/StreamCardView;->sDampingInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/views/StreamCardView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;

    return-object p1
.end method

.method private ensureOverridePlusOnedButton(I)V
    .registers 12
    .parameter "overrideCount"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-nez v0, :cond_35

    .line 931
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 932
    .local v9, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080422

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, incrementedText:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    sget-object v4, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v5, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v7, v9, Landroid/graphics/Rect;->left:I

    iget v8, v9, Landroid/graphics/Rect;->top:I

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 939
    .end local v2           #incrementedText:Ljava/lang/String;
    .end local v9           #rect:Landroid/graphics/Rect;
    :cond_35
    return-void
.end method


# virtual methods
.method protected createAuthorNameAndRelativeTimeLayoutOnSameLine(III)I
    .registers 18
    .parameter "x"
    .parameter "y"
    .parameter "width"

    .prologue
    .line 601
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p3

    int-to-float v5, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v5, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 603
    .local v2, nameToDraw:Ljava/lang/CharSequence;
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v4, v1

    .line 604
    .local v4, nameWidth:I
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    .line 606
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int v13, p2, v1

    .line 608
    .local v13, returnHeight:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTime:Ljava/lang/String;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p3

    int-to-float v5, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v5, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 610
    .local v6, relativeTimeToDraw:Ljava/lang/CharSequence;
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v8, v1

    .line 612
    .local v8, relativeTimeWidth:I
    sub-int v1, p3, v4

    if-ge v8, v1, :cond_5a

    .line 613
    new-instance v5, Landroid/text/StaticLayout;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeTextPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    .line 616
    :cond_5a
    return v13
.end method

.method protected createMediaBottomArea(IIII)I
    .registers 11
    .parameter "originalX"
    .parameter "originalY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 646
    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sYDoublePadding:I

    add-int/2addr v3, p4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getMediaHeightPercentage()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sTopBorderPadding:I

    add-int/2addr v3, v4

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sAuthorNameYOffset:I

    add-int v2, v3, v4

    .line 649
    .local v2, y:I
    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-virtual {p0, p1, v3}, Lcom/google/android/apps/plus/views/StreamCardView;->setAuthorImagePosition(II)V

    .line 650
    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sContentXPadding:I

    add-int/2addr v3, v4

    add-int/2addr p1, v3

    .line 651
    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sContentXPadding:I

    add-int/2addr v3, v4

    sub-int/2addr p3, v3

    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, showingSomething:Z
    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/apps/plus/views/StreamCardView;->createAuthorNameAndRelativeTimeLayoutOnSameLine(III)I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int v2, v3, v4

    .line 656
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContent:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 657
    add-int v3, p4, p2

    sub-int/2addr v3, v2

    sget-object v4, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sget-object v5, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int v0, v3, v4

    .line 659
    .local v0, maxLines:I
    if-lez v0, :cond_61

    .line 660
    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContent:Ljava/lang/CharSequence;

    invoke-static {v3, v4, p3, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContentLayout:Landroid/text/StaticLayout;

    .line 662
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 663
    const/4 v1, 0x1

    .line 667
    .end local v0           #maxLines:I
    :cond_61
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttribution:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 668
    add-int v3, p4, p2

    sub-int/2addr v3, v2

    sget-object v4, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sget-object v5, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int v0, v3, v4

    .line 670
    .restart local v0       #maxLines:I
    if-lez v0, :cond_93

    .line 671
    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttribution:Ljava/lang/CharSequence;

    invoke-static {v3, v4, p3, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    .line 673
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 674
    const/4 v1, 0x1

    .line 678
    .end local v0           #maxLines:I
    :cond_93
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContent:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 679
    add-int v3, p4, p2

    sub-int/2addr v3, v2

    sget-object v4, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sget-object v5, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int v0, v3, v4

    .line 681
    .restart local v0       #maxLines:I
    if-lez v0, :cond_c5

    .line 682
    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContent:Ljava/lang/CharSequence;

    invoke-static {v3, v4, p3, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    .line 684
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 685
    const/4 v1, 0x1

    .line 689
    .end local v0           #maxLines:I
    :cond_c5
    if-nez v1, :cond_fc

    iget v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    if-eqz v3, :cond_fc

    .line 690
    add-int v3, p4, p2

    sub-int/2addr v3, v2

    sget-object v4, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sget-object v5, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int v0, v3, v4

    .line 692
    .restart local v0       #maxLines:I
    if-lez v0, :cond_fc

    .line 693
    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sAutoTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p3, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoTextLayout:Landroid/text/StaticLayout;

    .line 695
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 699
    .end local v0           #maxLines:I
    :cond_fc
    return v2
.end method

.method protected createNameLayout(III)I
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "width"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    int-to-float v3, p3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 566
    .local v1, nameToDraw:Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sNameTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method protected createPlusOneBar(III)I
    .registers 21
    .parameter "x"
    .parameter "y"
    .parameter "width"

    .prologue
    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 800
    .local v3, context:Landroid/content/Context;
    add-int p1, p1, p3

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v2, :cond_155

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v2

    if-eqz v2, :cond_155

    const/4 v15, 0x1

    .line 803
    .local v15, plusOnedByMe:Z
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-nez v2, :cond_158

    const/16 v16, 0x1

    .line 804
    .local v16, plusOnes:I
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080422

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move/from16 v0, v16

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, plusOnesString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 807
    new-instance v2, Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v15, :cond_162

    sget-object v5, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedTextPaint:Landroid/text/TextPaint;

    :goto_4c
    if-eqz v15, :cond_166

    sget-object v6, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    :goto_50
    if-eqz v15, :cond_16a

    sget-object v7, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    :goto_54
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int p1, p1, v2

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int p2, p2, v2

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    if-eqz v15, :cond_e5

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 819
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableButton;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamCardView;->sReshareBitmap:Landroid/graphics/Bitmap;

    sget-object v8, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v9, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object v6, v3

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v5, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusBarXPadding:I

    add-int/2addr v2, v5

    sub-int p1, p1, v2

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_e5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTotalComments:I

    if-lez v2, :cond_146

    .line 827
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTotalComments:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 828
    .local v8, comments:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 829
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableButton;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamCardView;->sCommentsBitmap:Landroid/graphics/Bitmap;

    sget-object v9, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    sget-object v10, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v11, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/google/android/apps/plus/views/EventStreamCardView;

    if-eqz v2, :cond_16e

    const/4 v12, 0x0

    :goto_10f
    move-object v6, v3

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-direct/range {v5 .. v14}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v5, Lcom/google/android/apps/plus/util/PlusBarUtils;->sPlusBarXPadding:I

    add-int/2addr v2, v5

    sub-int p1, p1, v2

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 838
    .end local v8           #comments:Ljava/lang/String;
    :cond_146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int v2, v2, p2

    return v2

    .line 802
    .end local v4           #plusOnesString:Ljava/lang/String;
    .end local v15           #plusOnedByMe:Z
    .end local v16           #plusOnes:I
    :cond_155
    const/4 v15, 0x0

    goto/16 :goto_17

    .line 803
    .restart local v15       #plusOnedByMe:Z
    :cond_158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v16

    goto/16 :goto_1f

    .line 807
    .restart local v4       #plusOnesString:Ljava/lang/String;
    .restart local v16       #plusOnes:I
    :cond_162
    sget-object v5, Lcom/google/android/apps/plus/util/PlusBarUtils;->sNotPlusOnedTextPaint:Landroid/text/TextPaint;

    goto/16 :goto_4c

    :cond_166
    sget-object v6, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_50

    :cond_16a
    sget-object v7, Lcom/google/android/apps/plus/util/PlusBarUtils;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_54

    .restart local v8       #comments:Ljava/lang/String;
    :cond_16e
    move-object/from16 v12, p0

    .line 829
    goto :goto_10f
.end method

.method protected createTagBar(III)I
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "width"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    if-eqz v0, :cond_53

    .line 752
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextXPadding:I

    add-int/2addr p1, v0

    .line 753
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextXPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 754
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sTagYOffset:I

    add-int/2addr p2, v0

    .line 755
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    .line 756
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagIconXPadding:I

    add-int/2addr v0, v2

    add-int/2addr p1, v0

    .line 757
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagIconXPadding:I

    add-int/2addr v0, v2

    sub-int/2addr p3, v0

    .line 760
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, p3, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->smartEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 762
    .local v1, tagTextToDraw:Ljava/lang/CharSequence;
    sget-object v0, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int p3, v0

    .line 763
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    .line 765
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 767
    .end local v1           #tagTextToDraw:Ljava/lang/CharSequence;
    :cond_53
    return p2
.end method

.method protected drawAuthorImage(Landroid/graphics/Canvas;II)V
    .registers 9
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 544
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-nez v2, :cond_6

    .line 561
    :cond_5
    :goto_5
    return-void

    .line 549
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 550
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 555
    .local v1, userImageToDraw:Landroid/graphics/Bitmap;
    :goto_14
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 556
    .local v0, rect:Landroid/graphics/Rect;
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 557
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 558
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 559
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 552
    .end local v0           #rect:Landroid/graphics/Rect;
    .end local v1           #userImageToDraw:Landroid/graphics/Bitmap;
    :cond_34
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .restart local v1       #userImageToDraw:Landroid/graphics/Bitmap;
    goto :goto_14
.end method

.method protected drawAuthorName(Landroid/graphics/Canvas;II)I
    .registers 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1c

    .line 573
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 574
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 575
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 579
    :cond_1c
    return p3
.end method

.method protected drawMediaBottomArea(Landroid/graphics/Canvas;IIII)I
    .registers 9
    .parameter "canvas"
    .parameter "originalX"
    .parameter "originalY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 704
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sYPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getMediaHeightPercentage()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sTopBorderPadding:I

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAuthorNameYOffset:I

    add-int p3, v0, v1

    .line 706
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/StreamCardView;->drawAuthorImage(Landroid/graphics/Canvas;II)V

    .line 708
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentXPadding:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 709
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentXPadding:I

    add-int/2addr v0, v1

    sub-int/2addr p4, v0

    .line 711
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/StreamCardView;->drawAuthorName(Landroid/graphics/Canvas;II)I

    move-result p3

    .line 712
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_47

    .line 713
    add-int v0, p2, p4

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sRelativeTimeYOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/StreamCardView;->drawRelativeTimeLayout(Landroid/graphics/Canvas;II)I

    .line 717
    :cond_47
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr p3, v0

    .line 719
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContentLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_69

    .line 720
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 721
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 722
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 723
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    .line 726
    :cond_69
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_88

    .line 727
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 728
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 729
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    .line 733
    :cond_88
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_a7

    .line 734
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 735
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 736
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 737
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    .line 740
    :cond_a7
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c6

    .line 741
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 742
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 743
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 744
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sContentYPadding:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    .line 747
    :cond_c6
    return p3
.end method

.method protected drawMediaTopAreaShadow(Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 636
    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sXPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int v1, p2, v2

    .line 637
    .local v1, mediaWidth:I
    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sYPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getMediaHeightPercentage()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 638
    .local v0, mediaHeight:I
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sMediaShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sLeftBorderPadding:I

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sTopBorderPadding:I

    sget v5, Lcom/google/android/apps/plus/views/StreamCardView;->sLeftBorderPadding:I

    add-int/2addr v5, v1

    sget v6, Lcom/google/android/apps/plus/views/StreamCardView;->sTopBorderPadding:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 641
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sMediaShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 642
    return-void
.end method

.method protected drawMediaTopAreaStage(Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 620
    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sXPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v2, p2, v3

    .line 621
    .local v2, mediaWidth:I
    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sYPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getMediaHeightPercentage()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 622
    .local v1, mediaHeight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/util/BackgroundPatternUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->getBackgroundPattern(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 624
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sLeftBorderPadding:I

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sTopBorderPadding:I

    sget v5, Lcom/google/android/apps/plus/views/StreamCardView;->sLeftBorderPadding:I

    add-int/2addr v5, v2

    sget v6, Lcom/google/android/apps/plus/views/StreamCardView;->sTopBorderPadding:I

    add-int/2addr v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 627
    return-void
.end method

.method protected drawMediaTopAreaStageWithTiledBackground(Landroid/graphics/Canvas;II)V
    .registers 9
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 630
    sget-object v0, Lcom/google/android/apps/plus/views/StreamCardView;->sTiledStageDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sLeftBorderPadding:I

    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTopBorderPadding:I

    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sXDoublePadding:I

    add-int/2addr v3, p2

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sRightBorderPadding:I

    add-int/2addr v3, v4

    sget v4, Lcom/google/android/apps/plus/views/StreamCardView;->sYPadding:I

    add-int/2addr v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 632
    sget-object v0, Lcom/google/android/apps/plus/views/StreamCardView;->sTiledStageDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    return-void
.end method

.method protected drawPlusOneBar(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mInvisiblePlusOneButton:Z

    if-nez v0, :cond_d

    .line 843
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButtonDisplay:Z

    if-nez v0, :cond_20

    .line 844
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 850
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v0, :cond_16

    .line 851
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 853
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v0, :cond_1f

    .line 854
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 856
    :cond_1f
    return-void

    .line 845
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v0, :cond_d

    .line 846
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    goto :goto_d
.end method

.method protected drawRelativeTimeLayout(Landroid/graphics/Canvas;II)I
    .registers 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1c

    .line 592
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 593
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 594
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 595
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 597
    :cond_1c
    return p3
.end method

.method protected drawTagBarIconAndBackground(Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 771
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_79

    .line 772
    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagYOffset:I

    add-int/2addr p3, v2

    .line 773
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextXPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 774
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_21

    .line 775
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sTagIconXPadding:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 778
    :cond_21
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagDrawableInstance:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sTagBackgroundYPadding:I

    sub-int v3, p3, v3

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, p3

    sget v6, Lcom/google/android/apps/plus/views/StreamCardView;->sTagBackgroundYPadding:I

    add-int/2addr v5, v6

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 780
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagDrawableInstance:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 782
    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagTextXPadding:I

    add-int/2addr p2, v2

    .line 784
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_68

    .line 785
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sTagIconYPadding:I

    add-int v0, v2, v3

    .line 787
    .local v0, iconY:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    int-to-float v3, p2

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 788
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamCardView;->sTagIconXPadding:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 791
    .end local v0           #iconY:I
    :cond_68
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 792
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 793
    neg-int v2, p2

    int-to-float v2, v2

    neg-int v3, p3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 796
    .end local v1           #width:I
    :cond_79
    return-void
.end method

.method protected drawWhatsHot(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 859
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPopularPost:Z

    if-eqz v1, :cond_1d

    .line 860
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sBottomBorderPadding:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sWhatsHotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 861
    .local v0, y:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamCardView;->sWhatsHotBitmap:Landroid/graphics/Bitmap;

    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sLeftBorderPadding:I

    int-to-float v2, v2

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 863
    .end local v0           #y:I
    :cond_1d
    return-void
.end method

.method protected formatLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "locationName"

    .prologue
    .line 1006
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getDesiredHeight()I
    .registers 2

    .prologue
    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredWidth()I
    .registers 2

    .prologue
    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method protected getMediaHeightPercentage()F
    .registers 3

    .prologue
    .line 890
    iget v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mDisplaySizeType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mDisplaySizeType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 892
    :cond_a
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sMediaCardBigHeightPercentage:F

    .line 894
    :goto_c
    return v0

    :cond_d
    sget v0, Lcom/google/android/apps/plus/views/StreamCardView;->sMediaCardHeightPercentage:F

    goto :goto_c
.end method

.method public getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 990
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlusOneButtonAnimationCopies()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/apps/plus/views/ClickableButton;",
            "Lcom/google/android/apps/plus/views/ClickableButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 915
    .local v3, x:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 916
    .local v4, y:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/apps/plus/views/ClickableButton;->createAbsoluteCoordinatesCopy(II)Lcom/google/android/apps/plus/views/ClickableButton;

    move-result-object v1

    .line 919
    .local v1, originalButton:Lcom/google/android/apps/plus/views/ClickableButton;
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-nez v5, :cond_24

    const/4 v0, 0x1

    .line 921
    .local v0, incrementedCount:I
    :goto_15
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/StreamCardView;->ensureOverridePlusOnedButton(I)V

    .line 923
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/apps/plus/views/ClickableButton;->createAbsoluteCoordinatesCopy(II)Lcom/google/android/apps/plus/views/ClickableButton;

    move-result-object v2

    .line 926
    .local v2, overridePlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 919
    .end local v0           #incrementedCount:I
    .end local v2           #overridePlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;
    :cond_24
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    goto :goto_15
.end method

.method public init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V
    .registers 41
    .parameter "cursor"
    .parameter "displaySizeType"
    .parameter "size"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewedListener"
    .parameter "plusBarClickListener"

    .prologue
    .line 274
    invoke-super/range {p0 .. p7}, Lcom/google/android/apps/plus/views/CardView;->init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 278
    .local v10, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 280
    .local v29, res:Landroid/content/res/Resources;
    const/16 v18, 0x0

    .line 281
    .local v18, hasVideo:Z
    const/4 v15, 0x0

    .line 282
    .local v15, hasFavicon:Z
    const/16 v16, 0x0

    .line 283
    .local v16, hasImage:Z
    const/16 v17, 0x0

    .line 285
    .local v17, hasLocation:Z
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/StreamCardView;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    .line 287
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    .line 288
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorGaiaId:Ljava/lang/String;

    .line 289
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    if-nez v2, :cond_45

    .line 291
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    .line 294
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 295
    new-instance v2, Lcom/google/android/apps/plus/views/ClickableUserImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorGaiaId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    const/4 v7, 0x2

    move-object/from16 v3, p0

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTime:Ljava/lang/String;

    .line 303
    const/16 v2, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 305
    .local v8, contentFlags:J
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 306
    .local v24, mediaBytes:[B
    if-eqz v24, :cond_150

    .line 307
    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v12

    .line 308
    .local v12, dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/16 v19, 0x0

    .local v19, i:I
    array-length v0, v12

    move/from16 v20, v0

    .local v20, length:I
    :goto_a4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_150

    .line 309
    aget-object v2, v12, v19

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v23

    .line 310
    .local v23, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v32

    .line 312
    .local v32, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_cf

    .line 313
    aget-object v2, v12, v19

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/DbMedia;->getContentText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mContent:Ljava/lang/CharSequence;

    .line 332
    :cond_c4
    :goto_c4
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_138

    .line 333
    const/16 v18, 0x1

    .line 308
    :cond_cc
    :goto_cc
    add-int/lit8 v19, v19, 0x1

    goto :goto_a4

    .line 314
    :cond_cf
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_db

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_c4

    :cond_db
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasContentHtml()Z

    move-result v2

    if-eqz v2, :cond_c4

    aget-object v2, v12, v19

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/DbMedia;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    if-nez v2, :cond_127

    const-wide/16 v2, 0x50

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_127

    .line 320
    aget-object v2, v12, v19

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/DbMedia;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    .line 321
    const-wide/16 v2, 0x20

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11d

    .line 322
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagAlbumBitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    goto :goto_c4

    .line 324
    :cond_11d
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagLinkBitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    goto :goto_c4

    .line 327
    :cond_127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContent:Ljava/lang/CharSequence;

    if-nez v2, :cond_c4

    .line 328
    aget-object v2, v12, v19

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/DbMedia;->getContentText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContent:Ljava/lang/CharSequence;

    goto :goto_c4

    .line 334
    :cond_138
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_141

    .line 335
    const/16 v16, 0x1

    goto :goto_cc

    .line 336
    :cond_141
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_cc

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 337
    const/4 v15, 0x1

    goto/16 :goto_cc

    .line 342
    .end local v12           #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v19           #i:I
    .end local v20           #length:I
    .end local v23           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v32           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_150
    const/16 v25, 0x0

    .line 343
    .local v25, originalAuthorId:Ljava/lang/String;
    const/16 v26, 0x0

    .line 344
    .local v26, originalAuthorName:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 346
    .local v14, explanations:[B
    if-eqz v14, :cond_18b

    .line 347
    invoke-static {v14}, Lcom/google/android/apps/plus/content/DbExplanation;->deserialize([B)[Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v11

    .line 348
    .local v11, dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    if-eqz v11, :cond_18b

    .line 349
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_165
    array-length v2, v11

    move/from16 v0, v19

    if-ge v0, v2, :cond_18b

    .line 350
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    aget-object v3, v11, v19

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36c

    .line 349
    :goto_17b
    add-int/lit8 v19, v19, 0x1

    goto :goto_165

    .line 352
    :pswitch_17e
    aget-object v2, v11, v19

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v25

    .line 353
    aget-object v2, v11, v19

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    .line 354
    goto :goto_17b

    .line 365
    .end local v11           #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v19           #i:I
    :cond_18b
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1aa

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 366
    const v2, 0x7f08012d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v26, v3, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttribution:Ljava/lang/CharSequence;

    .line 370
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    if-nez v2, :cond_1e0

    const-wide/16 v2, 0x8

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e0

    .line 371
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 373
    .local v22, locationBytes:[B
    if-eqz v22, :cond_1e0

    .line 375
    :try_start_1c3
    invoke-static/range {v22 .. v22}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v21

    .line 376
    .local v21, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/StreamCardView;->formatLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    .line 377
    sget-object v2, Lcom/google/android/apps/plus/views/StreamCardView;->sTagLocationBitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;
    :try_end_1de
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1c3 .. :try_end_1de} :catch_2fd

    .line 378
    const/16 v17, 0x1

    .line 387
    .end local v21           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v22           #locationBytes:[B
    :cond_1e0
    :goto_1e0
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTotalComments:I

    .line 389
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 391
    .local v27, plusOneBytes:[B
    if-eqz v27, :cond_328

    .line 393
    :try_start_1f4
    invoke-static/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_1fc
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1f4 .. :try_end_1fc} :catch_310

    .line 404
    :goto_1fc
    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20d

    .line 405
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/StreamCardView;->mViewedListener:Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;

    .line 408
    :cond_20d
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v31

    .line 410
    .local v31, source:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-object/from16 v0, v31

    if-ne v0, v2, :cond_32f

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    :goto_221
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mObjectType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 413
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_333

    const/4 v2, 0x1

    :goto_230
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mIsLimited:Z

    .line 414
    const/16 v2, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_336

    const/4 v2, 0x1

    :goto_240
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPopularPost:Z

    .line 416
    if-eqz v18, :cond_339

    .line 417
    const v2, 0x7f080440

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    .line 431
    :goto_24d
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v30, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 434
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    if-eqz v2, :cond_270

    .line 435
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 437
    :cond_270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTime:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mContent:Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContent:Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttribution:Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTotalComments:I

    if-lez v2, :cond_2c9

    .line 444
    const v2, 0x7f0e0013

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTotalComments:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mTotalComments:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-nez v2, :cond_361

    const/16 v28, 0x0

    .line 449
    .local v28, plusOnes:I
    :goto_2d1
    if-lez v28, :cond_2ed

    .line 450
    const v2, 0x7f0e0031

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_2ed
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/StreamCardView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 455
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/StreamCardView;->setFocusable(Z)V

    .line 456
    return-void

    .line 379
    .end local v27           #plusOneBytes:[B
    .end local v28           #plusOnes:I
    .end local v30           #sb:Ljava/lang/StringBuilder;
    .end local v31           #source:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .restart local v22       #locationBytes:[B
    :catch_2fd
    move-exception v13

    .line 380
    .local v13, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "StreamCardView"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 381
    const-string v2, "StreamCardView"

    const-string v3, "Error parsing Location"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e0

    .line 394
    .end local v13           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v22           #locationBytes:[B
    .restart local v27       #plusOneBytes:[B
    :catch_310
    move-exception v13

    .line 395
    .restart local v13       #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "StreamCardView"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_321

    .line 396
    const-string v2, "StreamCardView"

    const-string v3, "Error parsing PlusOneData"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :cond_321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto/16 :goto_1fc

    .line 401
    .end local v13           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_328
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto/16 :goto_1fc

    .line 410
    .restart local v31       #source:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    :cond_32f
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto/16 :goto_221

    .line 413
    :cond_333
    const/4 v2, 0x0

    goto/16 :goto_230

    .line 414
    :cond_336
    const/4 v2, 0x0

    goto/16 :goto_240

    .line 418
    :cond_339
    if-eqz v15, :cond_344

    .line 419
    const v2, 0x7f080444

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    goto/16 :goto_24d

    .line 420
    :cond_344
    if-eqz v16, :cond_34f

    .line 421
    const v2, 0x7f08043f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    goto/16 :goto_24d

    .line 422
    :cond_34f
    if-eqz v17, :cond_35a

    .line 423
    const v2, 0x7f080443

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    goto/16 :goto_24d

    .line 425
    :cond_35a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    goto/16 :goto_24d

    .line 448
    .restart local v30       #sb:Ljava/lang/StringBuilder;
    :cond_361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v28

    goto/16 :goto_2d1

    .line 350
    nop

    :pswitch_data_36c
    .packed-switch 0x1
        :pswitch_17e
    .end packed-switch
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_9

    .line 868
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(Ljava/lang/String;)V

    .line 870
    :cond_9
    return-void
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 8
    .parameter "button"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    if-eqz v0, :cond_13

    .line 901
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v0, :cond_14

    .line 902
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mObjectType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;->onPlusOneClicked(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Lcom/google/android/apps/plus/views/StreamCardView;)V

    .line 911
    :cond_13
    :goto_13
    return-void

    .line 904
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v0, :cond_22

    .line 905
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mIsLimited:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;->onReshareClicked(Ljava/lang/String;Z)V

    goto :goto_13

    .line 906
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v0, :cond_13

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getDesiredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getDesiredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->getMediaCount()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;->onCommentsClicked(Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;III)V

    goto :goto_13
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;

    .line 464
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->clearAnimation()V

    .line 466
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardView;->onDetachedFromWindow()V

    .line 467
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 528
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/CardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 530
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mViewedListener:Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;

    if-eqz v0, :cond_15

    .line 531
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mViewedListener:Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;->onStreamCardViewed(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mViewedListener:Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;

    .line 535
    :cond_15
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 519
    invoke-virtual {p0, v1, v1}, Lcom/google/android/apps/plus/views/StreamCardView;->setMeasuredDimension(II)V

    .line 523
    :goto_8
    return-void

    .line 521
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/views/CardView;->onMeasure(II)V

    goto :goto_8
.end method

.method public onRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 471
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardView;->onRecycle()V

    .line 473
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mActivityId:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorGaiaId:Ljava/lang/String;

    .line 475
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorName:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 477
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorNameLayout:Landroid/text/StaticLayout;

    .line 479
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTime:Ljava/lang/String;

    .line 480
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    .line 482
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTag:Ljava/lang/CharSequence;

    .line 483
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagIcon:Landroid/graphics/Bitmap;

    .line 484
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTagLayout:Landroid/text/StaticLayout;

    .line 486
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContent:Ljava/lang/CharSequence;

    .line 487
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mContentLayout:Landroid/text/StaticLayout;

    .line 489
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttribution:Ljava/lang/CharSequence;

    .line 490
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    .line 492
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContent:Ljava/lang/CharSequence;

    .line 493
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    .line 495
    iput v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoText:I

    .line 496
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAutoTextLayout:Landroid/text/StaticLayout;

    .line 498
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 499
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 500
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 501
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 502
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mInvisiblePlusOneButton:Z

    .line 503
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButtonDisplay:Z

    .line 505
    iput v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mTotalComments:I

    .line 506
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 508
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mStreamPlusBarClickListener:Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;

    .line 509
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mObjectType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 510
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mIsLimited:Z

    .line 511
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPopularPost:Z

    .line 513
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mViewedListener:Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;

    .line 514
    return-void
.end method

.method public overridePlusOnedButtonDisplay(ZI)V
    .registers 5
    .parameter "override"
    .parameter "overrideCount"

    .prologue
    const/4 v1, 0x0

    .line 877
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButtonDisplay:Z

    .line 878
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButtonDisplay:Z

    if-eqz v0, :cond_1b

    .line 879
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/StreamCardView;->ensureOverridePlusOnedButton(I)V

    .line 880
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ClickableButton;->setListener(Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;)V

    .line 881
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/ClickableButton;->setListener(Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;)V

    .line 882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mInvisiblePlusOneButton:Z

    .line 886
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->invalidate()V

    .line 887
    return-void

    .line 884
    :cond_1b
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mOverridePlusOnedButton:Lcom/google/android/apps/plus/views/ClickableButton;

    goto :goto_17
.end method

.method protected setAuthorImagePosition(II)V
    .registers 6
    .parameter "left"
    .parameter "top"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_f

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    sget v1, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    add-int/2addr v1, p1

    sget v2, Lcom/google/android/apps/plus/views/StreamCardView;->sAvatarSize:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 541
    :cond_f
    return-void
.end method

.method public startDelayedShakeAnimation()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x267

    const v5, 0x3f733333

    .line 942
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mInvisiblePlusOneButton:Z

    .line 943
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->invalidate()V

    .line 947
    iget v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mDisplaySizeType:I

    packed-switch v2, :pswitch_data_5c

    .line 962
    const/high16 v0, -0x4040

    .line 963
    .local v0, rotX:F
    const/high16 v1, 0x4000

    .line 968
    .local v1, rotY:F
    :goto_14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4a

    .line 969
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/views/StreamCardView;->sDampingInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 987
    :goto_3d
    return-void

    .line 949
    .end local v0           #rotX:F
    .end local v1           #rotY:F
    :pswitch_3e
    instance-of v2, p0, Lcom/google/android/apps/plus/views/TextCardView;

    if-eqz v2, :cond_47

    .line 950
    const/high16 v0, -0x3fe0

    .line 954
    .restart local v0       #rotX:F
    :goto_44
    const/high16 v1, 0x4020

    .line 955
    .restart local v1       #rotY:F
    goto :goto_14

    .line 952
    .end local v0           #rotX:F
    .end local v1           #rotY:F
    :cond_47
    const/high16 v0, -0x4000

    .restart local v0       #rotX:F
    goto :goto_44

    .line 973
    .restart local v1       #rotY:F
    :cond_4a
    new-instance v2, Lcom/google/android/apps/plus/views/StreamCardView$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/apps/plus/views/StreamCardView$2;-><init>(Lcom/google/android/apps/plus/views/StreamCardView;FF)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;

    .line 984
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/StreamCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 985
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamCardView;->mShakeAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v6, v7}, Lcom/google/android/apps/plus/views/StreamCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3d

    .line 947
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_3e
    .end packed-switch
.end method
