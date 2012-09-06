.class public Lcom/google/android/apps/plus/views/StreamOneUpActivityView;
.super Lcom/google/android/apps/plus/views/StreamOneUpBaseView;
.source "StreamOneUpActivityView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/StreamOneUpActivityView$4;
    }
.end annotation


# static fields
.field private static sActionBarBackgroundPaint:Landroid/graphics/Paint;

.field private static sAddPlusOneDesc:Ljava/lang/String;

.field private static sAvatarMarginLeft:I

.field private static sAvatarMarginRight:I

.field private static sAvatarMarginTop:I

.field private static sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

.field private static sAvatarSize:I

.field private static sBackgroundPaint:Landroid/graphics/Paint;

.field protected static sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sCheckInIconBitmap:Landroid/graphics/Bitmap;

.field private static sContentPaint:Landroid/text/TextPaint;

.field private static sDatePaint:Landroid/text/TextPaint;

.field private static sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

.field private static sFontSpacing:F

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private static sLinkedBackgroundPaint:Landroid/graphics/Paint;

.field private static sLinkedBodyPaint:Landroid/text/TextPaint;

.field private static sLinkedBorderPaint:Landroid/graphics/Paint;

.field private static sLinkedBorderRadius:F

.field private static sLinkedBorderSize:I

.field private static sLinkedHeaderPaint:Landroid/text/TextPaint;

.field private static sLinkedIconBitmap:Landroid/graphics/Bitmap;

.field private static sLinkedIconMarginRight:I

.field private static sLinkedInnerMargin:I

.field private static sLocationIconBitmap:Landroid/graphics/Bitmap;

.field private static sLocationIconMarginRight:I

.field private static sLocationPaint:Landroid/text/TextPaint;

.field private static sMarginBottom:I

.field private static sMarginLeft:I

.field private static sMarginRight:I

.field private static sNameMarginTop:I

.field private static sNamePaint:Landroid/text/TextPaint;

.field private static sPlusOneButtonMarginLeft:I

.field private static sPlusOneButtonMarginRight:I

.field private static sPlusOneInversePaint:Landroid/text/TextPaint;

.field private static sPlusOnePaint:Landroid/text/TextPaint;

.field protected static sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sRemovePlusOneDesc:Ljava/lang/String;

.field private static sReshareBackgroundPaint:Landroid/graphics/Paint;

.field private static sReshareBodyPaint:Landroid/text/TextPaint;

.field private static sReshareBorderPaint:Landroid/graphics/Paint;

.field private static sReshareBorderRadius:F

.field private static sReshareBorderSize:I

.field private static sReshareHeaderPaint:Landroid/text/TextPaint;

.field private static sReshareInnerMargin:I

.field private static sResizePaint:Landroid/graphics/Paint;

.field private static sSkyjamIconBitmap:Landroid/graphics/Bitmap;

.field private static sTitleMarginBottom:I


# instance fields
.field private final mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

.field private mAclText:Ljava/lang/String;

.field private mActivityId:Ljava/lang/String;

.field private mAuthorId:Ljava/lang/String;

.field private mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

.field private mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private mAuthorName:Ljava/lang/String;

.field private mBackgroundOffset:I

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

.field private mContent:Landroid/text/Spannable;

.field private mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mCreationSource:Ljava/lang/String;

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mDate:Ljava/lang/String;

.field private mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mLinkedBody:Landroid/text/Spannable;

.field private mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mLinkedContentBorder:Landroid/graphics/RectF;

.field private mLinkedHeader:Landroid/text/Spannable;

.field private mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mLinkedIconRect:Landroid/graphics/Rect;

.field private mLocation:Landroid/text/Spannable;

.field private final mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

.field private mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mLocationIcon:Landroid/graphics/Bitmap;

.field private mLocationIconRect:Landroid/graphics/Rect;

.field private mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

.field protected mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field private mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mPlusOneType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field private mReshareBody:Landroid/text/Spannable;

.field private mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mReshareContentBorder:Landroid/graphics/RectF;

.field private mReshareHeader:Landroid/text/Spannable;

.field private mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private final mSkyjamClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

.field private mSkyjamContentBorder:Landroid/graphics/RectF;

.field private mSkyjamHeader:Landroid/text/Spannable;

.field private mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mSkyjamIconRect:Landroid/graphics/Rect;

.field private mSkyjamSubheader1:Landroid/text/Spannable;

.field private mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private mSkyjamSubheader2:Landroid/text/Spannable;

.field private mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const v7, 0x7f0d01f7

    const v6, 0x7f0d01f6

    const v5, 0x7f0d01fe

    const v4, 0x7f0a011c

    const/4 v3, 0x1

    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    .line 237
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 247
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 257
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 287
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_3fa

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 291
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    .line 293
    const v1, 0x7f0d01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    .line 295
    const v1, 0x7f0d01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginBottom:I

    .line 297
    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginLeft:I

    .line 299
    const v1, 0x7f0d01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginRight:I

    .line 301
    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sTitleMarginBottom:I

    .line 303
    const v1, 0x7f0d01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginTop:I

    .line 305
    const v1, 0x7f0d01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginLeft:I

    .line 307
    const v1, 0x7f0d01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginRight:I

    .line 309
    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNameMarginTop:I

    .line 311
    const v1, 0x7f0d01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    .line 313
    const v1, 0x7f0d01dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderSize:I

    .line 315
    const v1, 0x7f0d01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    .line 317
    const v1, 0x7f0d01e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    .line 319
    const v1, 0x7f0d01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    .line 321
    const v1, 0x7f0d01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderSize:I

    .line 323
    const v1, 0x7f0d01e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderRadius:F

    .line 325
    const v1, 0x7f0d01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconMarginRight:I

    .line 328
    const v1, 0x7f0d01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginLeft:I

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginRight:I

    .line 331
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 333
    const v1, 0x7f0200e0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconBitmap:Landroid/graphics/Bitmap;

    .line 334
    const v1, 0x7f02012f

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sSkyjamIconBitmap:Landroid/graphics/Bitmap;

    .line 335
    const v1, 0x7f0200b6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sCheckInIconBitmap:Landroid/graphics/Bitmap;

    .line 336
    const v1, 0x7f0200e8

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconBitmap:Landroid/graphics/Bitmap;

    .line 337
    const v1, 0x7f020024

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    .line 339
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 340
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 342
    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 343
    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 346
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    .line 347
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 348
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 349
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 350
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 351
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 353
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    .line 354
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 355
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 356
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 357
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 358
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 360
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    .line 361
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 362
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 363
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 364
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 365
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f8

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 368
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    .line 369
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 370
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0122

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 371
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 372
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 373
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 375
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f9

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 378
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    .line 379
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 380
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0123

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 381
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 382
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 384
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fa

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 387
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    .line 388
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 389
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0126

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 390
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 391
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 393
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fb

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 396
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    .line 397
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 398
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0127

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 399
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 400
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 402
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fc

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 405
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    .line 406
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 407
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0128

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 408
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 409
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 410
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fd

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 413
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    .line 414
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 415
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0129

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 416
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 417
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 420
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    .line 421
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 422
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 423
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 425
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 428
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 429
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    .line 433
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0121

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    .line 437
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0120

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 439
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    .line 442
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    .line 447
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0124

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 449
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 451
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    .line 452
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 456
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sResizePaint:Landroid/graphics/Paint;

    .line 458
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 460
    const v1, 0x7f080455

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAddPlusOneDesc:Ljava/lang/String;

    .line 461
    const v1, 0x7f080456

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sRemovePlusOneDesc:Ljava/lang/String;

    .line 276
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_3fa
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v7, 0x7f0d01f7

    const v6, 0x7f0d01f6

    const v5, 0x7f0d01fe

    const v4, 0x7f0a011c

    const/4 v3, 0x1

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    .line 237
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 247
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 257
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 287
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_3fa

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 291
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    .line 293
    const v1, 0x7f0d01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    .line 295
    const v1, 0x7f0d01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginBottom:I

    .line 297
    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginLeft:I

    .line 299
    const v1, 0x7f0d01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginRight:I

    .line 301
    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sTitleMarginBottom:I

    .line 303
    const v1, 0x7f0d01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginTop:I

    .line 305
    const v1, 0x7f0d01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginLeft:I

    .line 307
    const v1, 0x7f0d01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginRight:I

    .line 309
    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNameMarginTop:I

    .line 311
    const v1, 0x7f0d01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    .line 313
    const v1, 0x7f0d01dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderSize:I

    .line 315
    const v1, 0x7f0d01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    .line 317
    const v1, 0x7f0d01e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    .line 319
    const v1, 0x7f0d01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    .line 321
    const v1, 0x7f0d01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderSize:I

    .line 323
    const v1, 0x7f0d01e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderRadius:F

    .line 325
    const v1, 0x7f0d01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconMarginRight:I

    .line 328
    const v1, 0x7f0d01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginLeft:I

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginRight:I

    .line 331
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 333
    const v1, 0x7f0200e0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconBitmap:Landroid/graphics/Bitmap;

    .line 334
    const v1, 0x7f02012f

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sSkyjamIconBitmap:Landroid/graphics/Bitmap;

    .line 335
    const v1, 0x7f0200b6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sCheckInIconBitmap:Landroid/graphics/Bitmap;

    .line 336
    const v1, 0x7f0200e8

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconBitmap:Landroid/graphics/Bitmap;

    .line 337
    const v1, 0x7f020024

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    .line 339
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 340
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 342
    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 343
    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 346
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    .line 347
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 348
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 349
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 350
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 351
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 353
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    .line 354
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 355
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 356
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 357
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 358
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 360
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    .line 361
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 362
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 363
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 364
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 365
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f8

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 368
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    .line 369
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 370
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0122

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 371
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 372
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 373
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 375
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f9

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 378
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    .line 379
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 380
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0123

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 381
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 382
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 384
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fa

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 387
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    .line 388
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 389
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0126

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 390
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 391
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 393
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fb

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 396
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    .line 397
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 398
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0127

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 399
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 400
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 402
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fc

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 405
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    .line 406
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 407
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0128

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 408
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 409
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 410
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fd

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 413
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    .line 414
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 415
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0129

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 416
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 417
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 420
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    .line 421
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 422
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 423
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 425
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 428
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 429
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    .line 433
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0121

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    .line 437
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0120

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 439
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    .line 442
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    .line 447
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0124

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 449
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 451
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    .line 452
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 456
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sResizePaint:Landroid/graphics/Paint;

    .line 458
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 460
    const v1, 0x7f080455

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAddPlusOneDesc:Ljava/lang/String;

    .line 461
    const v1, 0x7f080456

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sRemovePlusOneDesc:Ljava/lang/String;

    .line 280
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_3fa
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x7f0d01f7

    const v6, 0x7f0d01f6

    const v5, 0x7f0d01fe

    const v4, 0x7f0a011c

    const/4 v3, 0x1

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    .line 237
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 247
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 257
    new-instance v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 287
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_3fa

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 291
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    .line 293
    const v1, 0x7f0d01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    .line 295
    const v1, 0x7f0d01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginBottom:I

    .line 297
    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginLeft:I

    .line 299
    const v1, 0x7f0d01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginRight:I

    .line 301
    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sTitleMarginBottom:I

    .line 303
    const v1, 0x7f0d01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginTop:I

    .line 305
    const v1, 0x7f0d01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginLeft:I

    .line 307
    const v1, 0x7f0d01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginRight:I

    .line 309
    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNameMarginTop:I

    .line 311
    const v1, 0x7f0d01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    .line 313
    const v1, 0x7f0d01dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderSize:I

    .line 315
    const v1, 0x7f0d01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    .line 317
    const v1, 0x7f0d01e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    .line 319
    const v1, 0x7f0d01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    .line 321
    const v1, 0x7f0d01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderSize:I

    .line 323
    const v1, 0x7f0d01e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderRadius:F

    .line 325
    const v1, 0x7f0d01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconMarginRight:I

    .line 328
    const v1, 0x7f0d01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginLeft:I

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginRight:I

    .line 331
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 333
    const v1, 0x7f0200e0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconBitmap:Landroid/graphics/Bitmap;

    .line 334
    const v1, 0x7f02012f

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sSkyjamIconBitmap:Landroid/graphics/Bitmap;

    .line 335
    const v1, 0x7f0200b6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sCheckInIconBitmap:Landroid/graphics/Bitmap;

    .line 336
    const v1, 0x7f0200e8

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconBitmap:Landroid/graphics/Bitmap;

    .line 337
    const v1, 0x7f020024

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    .line 339
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 340
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 342
    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 343
    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 346
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    .line 347
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 348
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 349
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 350
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 351
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 353
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    .line 354
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 355
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 356
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 357
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 358
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 360
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    .line 361
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 362
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a011f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 363
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 364
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 365
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f8

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 368
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    .line 369
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 370
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0122

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 371
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 372
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 373
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 375
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01f9

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 378
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    .line 379
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 380
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0123

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 381
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 382
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 384
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fa

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 387
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    .line 388
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 389
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0126

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 390
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 391
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 393
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fb

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 396
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    .line 397
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 398
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0127

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 399
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 400
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 402
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fc

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 405
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    .line 406
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 407
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0128

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 408
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 409
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 410
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0d01fd

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 413
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    .line 414
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 415
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0129

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 416
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 417
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 420
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    .line 421
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 422
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 423
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 425
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 428
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 429
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    .line 433
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0121

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    .line 437
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0120

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 439
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    .line 442
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    .line 447
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0124

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 449
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 451
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    .line 452
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sActionBarBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 456
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sResizePaint:Landroid/graphics/Paint;

    .line 458
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 460
    const v1, 0x7f080455

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAddPlusOneDesc:Ljava/lang/String;

    .line 461
    const v1, 0x7f080456

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sRemovePlusOneDesc:Ljava/lang/String;

    .line 284
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_3fa
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method private clearLayoutState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1208
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 1209
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1210
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1211
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1212
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1213
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1214
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1217
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 1218
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIcon:Landroid/graphics/Bitmap;

    .line 1221
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1222
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 1223
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedContentBorder:Landroid/graphics/RectF;

    .line 1224
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamContentBorder:Landroid/graphics/RectF;

    .line 1225
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedIconRect:Landroid/graphics/Rect;

    .line 1226
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamIconRect:Landroid/graphics/Rect;

    .line 1227
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIconRect:Landroid/graphics/Rect;

    .line 1228
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareContentBorder:Landroid/graphics/RectF;

    .line 1229
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1230
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1231
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContent:Landroid/text/Spannable;

    .line 1232
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeader:Landroid/text/Spannable;

    .line 1233
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBody:Landroid/text/Spannable;

    .line 1234
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeader:Landroid/text/Spannable;

    .line 1235
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1:Landroid/text/Spannable;

    .line 1236
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2:Landroid/text/Spannable;

    .line 1237
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    .line 1238
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBody:Landroid/text/Spannable;

    .line 1239
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocation:Landroid/text/Spannable;

    .line 1240
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 1241
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 1041
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-nez v2, :cond_5

    .line 1054
    :goto_4
    return-void

    .line 1049
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1050
    .local v0, drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1051
    .local v1, drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1052
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1053
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4
.end method

.method private drawLinkedContent(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 1060
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-nez v2, :cond_a

    .line 1093
    :cond_9
    :goto_9
    return-void

    .line 1068
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedContentBorder:Landroid/graphics/RectF;

    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1070
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedContentBorder:Landroid/graphics/RectF;

    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1073
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_48

    .line 1075
    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1078
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1079
    .local v0, drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1080
    .local v1, drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1081
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1082
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1086
    .end local v0           #drawX:I
    .end local v1           #drawY:I
    :cond_48
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_9

    .line 1087
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1088
    .restart local v0       #drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1089
    .restart local v1       #drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1090
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1091
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9
.end method

.method private drawLocation(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 1183
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-nez v2, :cond_6

    .line 1197
    :goto_5
    return-void

    .line 1190
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIcon:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v4, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1192
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1193
    .local v0, drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1194
    .local v1, drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1195
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1196
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5
.end method

.method private drawReshareContent(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 1147
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-nez v2, :cond_9

    .line 1177
    :cond_8
    :goto_8
    return-void

    .line 1155
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareContentBorder:Landroid/graphics/RectF;

    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderRadius:F

    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderRadius:F

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1157
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareContentBorder:Landroid/graphics/RectF;

    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderRadius:F

    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderRadius:F

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1160
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_40

    .line 1162
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1163
    .local v0, drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1164
    .local v1, drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1165
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1166
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1170
    .end local v0           #drawX:I
    .end local v1           #drawY:I
    :cond_40
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_8

    .line 1171
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1172
    .restart local v0       #drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1173
    .restart local v1       #drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1174
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1175
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8
.end method

.method private drawSkyjamContent(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 1099
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeader:Landroid/text/Spannable;

    if-nez v2, :cond_6

    .line 1141
    :cond_5
    :goto_5
    return-void

    .line 1107
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamContentBorder:Landroid/graphics/RectF;

    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1109
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamContentBorder:Landroid/graphics/RectF;

    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderRadius:F

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1112
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_44

    .line 1114
    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sSkyjamIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1117
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1118
    .local v0, drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1119
    .local v1, drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1120
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1121
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1125
    .end local v0           #drawX:I
    .end local v1           #drawY:I
    :cond_44
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    if-eqz v2, :cond_65

    .line 1126
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v0

    .line 1127
    .restart local v0       #drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v1

    .line 1128
    .restart local v1       #drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1129
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1130
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1134
    .end local v0           #drawX:I
    .end local v1           #drawY:I
    :cond_65
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_5

    .line 1135
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    .line 1136
    .restart local v0       #drawX:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    .line 1137
    .restart local v1       #drawY:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1138
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1139
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 997
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-nez v3, :cond_6

    .line 1035
    :goto_5
    return-void

    .line 1002
    :cond_6
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 1003
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1012
    .local v0, drawBitmap:Landroid/graphics/Bitmap;
    :goto_14
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1013
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarOverlayBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1015
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1016
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 1020
    :cond_39
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 1023
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v1

    .line 1024
    .local v1, drawX:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v2

    .line 1025
    .local v2, drawY:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1026
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1027
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1030
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v1

    .line 1031
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v2

    .line 1032
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1033
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1034
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    .line 1005
    .end local v0           #drawBitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawX:I
    .end local v2           #drawY:I
    :cond_79
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #drawBitmap:Landroid/graphics/Bitmap;
    goto :goto_14
.end method

.method private isReshare()Z
    .registers 2

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private measureAndLayoutContent(III)I
    .registers 15
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContent:Landroid/text/Spannable;

    if-nez v0, :cond_5

    .line 718
    .end local p2
    :goto_4
    return p2

    .line 708
    .restart local p2
    :cond_5
    move v3, p3

    .line 709
    .local v3, availableWidth:I
    move v9, p1

    .line 710
    .local v9, drawX:I
    move v10, p2

    .line 712
    .local v10, drawY:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 713
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContent:Landroid/text/Spannable;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 715
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 716
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result p2

    goto :goto_4
.end method

.method private measureAndLayoutLinkedContent(III)I
    .registers 22
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeader:Landroid/text/Spannable;

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBody:Landroid/text/Spannable;

    if-nez v1, :cond_d

    .line 791
    .end local p2
    :goto_c
    return p2

    .line 736
    .restart local p2
    :cond_d
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v11, p1, v1

    .line 737
    .local v11, drawX:I
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v12, p2, v1

    .line 738
    .local v12, drawY:I
    const/4 v15, 0x0

    .line 739
    .local v15, left:I
    const/16 v17, 0x0

    .line 740
    .local v17, top:I
    const/16 v16, 0x0

    .line 741
    .local v16, right:I
    const/4 v10, 0x0

    .line 744
    .local v10, bottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeader:Landroid/text/Spannable;

    if-eqz v1, :cond_b5

    .line 745
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 746
    .local v14, iconWidth:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 747
    .local v13, iconHeight:I
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, v11, v14

    add-int v3, v12, v13

    invoke-direct {v1, v11, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedIconRect:Landroid/graphics/Rect;

    .line 749
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    add-int/2addr v1, v14

    add-int/2addr v11, v1

    .line 750
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p3, v1

    sub-int/2addr v1, v14

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    sub-int v4, v1, v2

    .line 753
    .local v4, availableWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 754
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeader:Landroid/text/Spannable;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v6, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1, v11, v12}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 760
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v15, v1, v2

    .line 761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v17, v1, v2

    .line 762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getRight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v16, v1, v2

    .line 763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v10, v1, v2

    .line 765
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    add-int/2addr v1, v14

    sub-int/2addr v11, v1

    .line 766
    add-int v1, v12, v13

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 770
    .end local v4           #availableWidth:I
    .end local v13           #iconHeight:I
    .end local v14           #iconWidth:I
    :cond_b5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBody:Landroid/text/Spannable;

    if-eqz v1, :cond_129

    .line 771
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, p3, v1

    .line 773
    .restart local v4       #availableWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 774
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBody:Landroid/text/Spannable;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v6, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1, v11, v12}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    if-nez v15, :cond_111

    .line 781
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v15, v1, v2

    .line 782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v17, v1, v2

    .line 784
    :cond_111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getRight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v16, v1, v2

    .line 785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v10, v1, v2

    .line 789
    .end local v4           #availableWidth:I
    :cond_129
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v15

    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v10

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedContentBorder:Landroid/graphics/RectF;

    move/from16 p2, v10

    .line 791
    goto/16 :goto_c
.end method

.method private measureAndLayoutLocation(III)I
    .registers 17
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocation:Landroid/text/Spannable;

    if-nez v0, :cond_5

    .line 990
    .end local p2
    :goto_4
    return p2

    .line 974
    .restart local p2
    :cond_5
    move v9, p1

    .line 975
    .local v9, drawX:I
    move v10, p2

    .line 977
    .local v10, drawY:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 978
    .local v12, iconWidth:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 979
    .local v11, iconHeight:I
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, v9, v12

    add-int v2, v10, v11

    invoke-direct {v0, v9, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIconRect:Landroid/graphics/Rect;

    .line 981
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconMarginRight:I

    add-int/2addr v0, v12

    add-int/2addr v9, v0

    .line 982
    sub-int v0, p3, v12

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconMarginRight:I

    sub-int v3, v0, v1

    .line 984
    .local v3, availableWidth:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 985
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocation:Landroid/text/Spannable;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 987
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 988
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_4
.end method

.method private measureAndLayoutReshareContent(III)I
    .registers 19
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBody:Landroid/text/Spannable;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    if-nez v0, :cond_9

    .line 954
    .end local p2
    :goto_8
    return p2

    .line 887
    .restart local p2
    :cond_9
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v3, p3, v0

    .line 888
    .local v3, availableWidth:I
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v10, p1, v0

    .line 889
    .local v10, drawX:I
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v11, p2, v0

    .line 890
    .local v11, drawY:I
    const/4 v12, 0x0

    .line 891
    .local v12, left:I
    const/4 v14, 0x0

    .line 892
    .local v14, top:I
    const/4 v13, 0x0

    .line 893
    .local v13, right:I
    const/4 v9, 0x0

    .line 896
    .local v9, bottom:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    if-eqz v0, :cond_f7

    .line 897
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 898
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareHeaderPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 901
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0, v10, v11}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 902
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    sub-int v12, v0, v1

    .line 905
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    sub-int v14, v0, v1

    .line 906
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getRight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v13, v0, v1

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v9, v0, v1

    .line 909
    move v11, v9

    .line 916
    :goto_6e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBody:Landroid/text/Spannable;

    if-eqz v0, :cond_c3

    .line 917
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 918
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBody:Landroid/text/Spannable;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareBodyPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 921
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0, v10, v11}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 922
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    if-nez v12, :cond_ae

    .line 925
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getLeft()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    sub-int v12, v0, v1

    .line 926
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getTop()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    sub-int v14, v0, v1

    .line 928
    :cond_ae
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getRight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v13, v0, v1

    .line 929
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBodyLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v9, v0, v1

    .line 931
    move v11, v9

    .line 935
    :cond_c3
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocation:Landroid/text/Spannable;

    if-eqz v0, :cond_cc

    .line 936
    invoke-direct {p0, v10, v11, v3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutLocation(III)I

    move-result v11

    .line 937
    move v9, v11

    .line 941
    :cond_cc
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeader:Landroid/text/Spannable;

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBody:Landroid/text/Spannable;

    if-eqz v0, :cond_dc

    .line 942
    :cond_d4
    invoke-direct {p0, v10, v11, v3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutLinkedContent(III)I

    move-result v11

    .line 943
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v9, v11, v0

    .line 946
    :cond_dc
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeader:Landroid/text/Spannable;

    if-eqz v0, :cond_e8

    .line 947
    invoke-direct {p0, v10, v11, v3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutSkyjamContent(III)I

    move-result v11

    .line 948
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sReshareInnerMargin:I

    add-int v9, v11, v0

    .line 952
    :cond_e8
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v12

    int-to-float v2, v14

    int-to-float v4, v13

    int-to-float v5, v9

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareContentBorder:Landroid/graphics/RectF;

    move/from16 p2, v9

    .line 954
    goto/16 :goto_8

    .line 911
    :cond_f7
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    goto/16 :goto_6e
.end method

.method private measureAndLayoutSkyjamContent(III)I
    .registers 22
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeader:Landroid/text/Spannable;

    if-nez v1, :cond_7

    .line 869
    .end local p2
    :goto_6
    return p2

    .line 808
    .restart local p2
    :cond_7
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v11, p1, v1

    .line 809
    .local v11, drawX:I
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v12, p2, v1

    .line 816
    .local v12, drawY:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sSkyjamIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 817
    .local v14, iconWidth:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sSkyjamIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 818
    .local v13, iconHeight:I
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, v11, v14

    add-int v3, v12, v13

    invoke-direct {v1, v11, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamIconRect:Landroid/graphics/Rect;

    .line 820
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    add-int/2addr v1, v14

    add-int/2addr v11, v1

    .line 821
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p3, v1

    sub-int/2addr v1, v14

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    sub-int v4, v1, v2

    .line 824
    .local v4, availableWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 825
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeader:Landroid/text/Spannable;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedHeaderPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v6, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1, v11, v12}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 829
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v15, v1, v2

    .line 832
    .local v15, left:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v17, v1, v2

    .line 833
    .local v17, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getRight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v16, v1, v2

    .line 834
    .local v16, right:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeaderLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v10, v1, v2

    .line 836
    .local v10, bottom:I
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedIconMarginRight:I

    add-int/2addr v1, v14

    sub-int/2addr v11, v1

    .line 837
    add-int v1, v12, v13

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 840
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, p3, v1

    .line 842
    new-instance v1, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1:Landroid/text/Spannable;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v6, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v1, v11, v12}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 846
    if-nez v15, :cond_df

    .line 847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v15, v1, v2

    .line 848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    sub-int v17, v1, v2

    .line 850
    :cond_df
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getRight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int/2addr v1, v2

    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1Layout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getBottom()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v10, v1, v2

    .line 854
    move v12, v10

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 857
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2:Landroid/text/Spannable;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedBodyPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v6, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1, v11, v12}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getRight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int/2addr v1, v2

    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2Layout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLinkedInnerMargin:I

    add-int v10, v1, v2

    .line 867
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v15

    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v10

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamContentBorder:Landroid/graphics/RectF;

    move/from16 p2, v10

    .line 869
    goto/16 :goto_6
.end method

.method private measureAndLayoutTitle(III)I
    .registers 31
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 629
    .local v3, context:Landroid/content/Context;
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginLeft:I

    sub-int v2, p3, v2

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    sub-int/2addr v2, v5

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginRight:I

    sub-int v8, v2, v5

    .line 634
    .local v8, availableWidth:I
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginLeft:I

    add-int v19, p1, v2

    .line 635
    .local v19, drawX:I
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginTop:I

    add-int v20, p2, v2

    .line 637
    .local v20, drawY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    add-int v5, v5, v19

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    add-int v7, v7, v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v5, v7}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v2, :cond_1d4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v2

    if-eqz v2, :cond_1d4

    const/16 v23, 0x1

    .line 640
    .local v23, plusOnedByMe:Z
    :goto_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-nez v2, :cond_1d8

    const/16 v24, 0x1

    .line 641
    .local v24, plusOnes:I
    :goto_44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080422

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v11, 0x1

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v2, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, plusOnesString:Ljava/lang/String;
    add-int v2, p1, p3

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginRight:I

    sub-int v19, v2, v5

    .line 645
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNameMarginTop:I

    add-int v20, p2, v2

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 649
    new-instance v2, Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v23, :cond_1e2

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneInversePaint:Landroid/text/TextPaint;

    :goto_7b
    if-eqz v23, :cond_1e6

    sget-object v6, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    :goto_7f
    if-eqz v23, :cond_1ea

    sget-object v7, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnedPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    :goto_83
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    .end local v8           #availableWidth:I
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v19, v19, v2

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 660
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginLeft:I

    add-int v2, v2, p1

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    add-int/2addr v2, v5

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginRight:I

    add-int v19, v2, v5

    .line 661
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNameMarginTop:I

    add-int v20, p2, v2

    .line 662
    sub-int v2, p3, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v2, v5

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOneButtonMarginLeft:I

    sub-int v8, v2, v5

    .line 665
    .restart local v8       #availableWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorName:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    int-to-float v7, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v5, v7, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 667
    .local v6, ellipsizedAuthor:Ljava/lang/CharSequence;
    new-instance v5, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v10, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    .line 672
    .local v22, locale:Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDate:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .line 674
    .local v26, upperDate:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCreationSource:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 675
    .local v21, dsaText:Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 676
    .local v10, s:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v18, v2, -0x1

    .line 677
    .local v18, aclStart:I
    if-ltz v18, :cond_17e

    .line 678
    new-instance v25, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclText:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 679
    .local v25, span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v5, 0x21

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 683
    .end local v25           #span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getHeight()I

    move-result v2

    add-int v20, v20, v2

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 686
    new-instance v9, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v11, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sDatePaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget v14, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sFontSpacing:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    move-object/from16 v17, v0

    move v12, v8

    invoke-direct/range {v9 .. v17}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 691
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDateSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getBottom()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sTitleMarginBottom:I

    add-int/2addr v2, v5

    return v2

    .line 639
    .end local v4           #plusOnesString:Ljava/lang/String;
    .end local v6           #ellipsizedAuthor:Ljava/lang/CharSequence;
    .end local v10           #s:Landroid/text/SpannableStringBuilder;
    .end local v18           #aclStart:I
    .end local v21           #dsaText:Ljava/lang/String;
    .end local v22           #locale:Ljava/util/Locale;
    .end local v23           #plusOnedByMe:Z
    .end local v24           #plusOnes:I
    .end local v26           #upperDate:Ljava/lang/String;
    :cond_1d4
    const/16 v23, 0x0

    goto/16 :goto_3c

    .line 640
    .restart local v23       #plusOnedByMe:Z
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v24

    goto/16 :goto_44

    .line 649
    .restart local v4       #plusOnesString:Ljava/lang/String;
    .restart local v24       #plusOnes:I
    :cond_1e2
    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sPlusOnePaint:Landroid/text/TextPaint;

    goto/16 :goto_7b

    :cond_1e6
    sget-object v6, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_7f

    :cond_1ea
    sget-object v7, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sButtonPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_83
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;)V
    .registers 48
    .parameter "cursor"

    .prologue
    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 1247
    .local v13, context:Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->clearLayoutState()V

    .line 1249
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1250
    .local v9, activityId:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, authorId:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mActivityId:Ljava/lang/String;

    .line 1253
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclText:Ljava/lang/String;

    .line 1254
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCreationSource:Ljava/lang/String;

    .line 1255
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorId:Ljava/lang/String;

    .line 1256
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorName:Ljava/lang/String;

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorName:Ljava/lang/String;

    if-nez v3, :cond_63

    .line 1259
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorName:Ljava/lang/String;

    .line 1260
    const-string v3, "StreamOneUp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===> Author name was null for gaia id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_63
    new-instance v3, Lcom/google/android/apps/plus/views/ClickableUserImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    const/4 v8, 0x2

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1266
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v13, v3, v4}, Lcom/google/android/apps/plus/util/Dates;->getAbbreviatedRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDate:Ljava/lang/String;

    .line 1269
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 1270
    .local v18, explanations:[B
    if-eqz v18, :cond_150

    .line 1271
    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/plus/content/DbExplanation;->deserialize([B)[Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v14

    .line 1272
    .local v14, dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    if-eqz v14, :cond_150

    .line 1273
    const/16 v19, 0x0

    .local v19, i:I
    :goto_a7
    array-length v3, v14

    move/from16 v0, v19

    if-ge v0, v3, :cond_150

    .line 1274
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    aget-object v4, v14, v19

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4ca

    .line 1303
    const-string v3, "StreamOneUp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled explanation: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v14, v19

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :goto_db
    add-int/lit8 v19, v19, 0x1

    goto :goto_a7

    .line 1276
    :pswitch_de
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 1277
    .local v35, res:Landroid/content/res/Resources;
    aget-object v3, v14, v19

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v30

    .line 1278
    .local v30, originalAuthorId:Ljava/lang/String;
    aget-object v3, v14, v19

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v31

    .line 1279
    .local v31, originalAuthorName:Ljava/lang/String;
    const v3, 0x7f080448

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v31, v4, v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 1282
    .local v36, reshareHeader:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    .line 1283
    .local v23, locale:Ljava/util/Locale;
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v45

    .line 1284
    .local v45, upperReshareHeader:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v44

    .line 1286
    .local v44, upperAuthorName:Ljava/lang/String;
    new-instance v40, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-static/range {v30 .. v30}, Lcom/google/android/apps/plus/phone/Intents;->makeProfileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 1288
    .local v40, span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    .line 1289
    .local v42, spanStart:I
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v3

    add-int v41, v42, v3

    .line 1291
    .local v41, spanEnd:I
    new-instance v3, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    const/16 v4, 0x21

    move-object/from16 v0, v40

    move/from16 v1, v42

    move/from16 v2, v41

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_db

    .line 1298
    .end local v23           #locale:Ljava/util/Locale;
    .end local v30           #originalAuthorId:Ljava/lang/String;
    .end local v31           #originalAuthorName:Ljava/lang/String;
    .end local v35           #res:Landroid/content/res/Resources;
    .end local v36           #reshareHeader:Ljava/lang/String;
    .end local v40           #span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    .end local v41           #spanEnd:I
    .end local v42           #spanStart:I
    .end local v44           #upperAuthorName:Ljava/lang/String;
    .end local v45           #upperReshareHeader:Ljava/lang/String;
    :pswitch_149
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sCheckInIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIcon:Landroid/graphics/Bitmap;

    goto :goto_db

    .line 1311
    .end local v14           #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v19           #i:I
    :cond_150
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 1312
    .local v28, mediaBytes:[B
    if-eqz v28, :cond_36d

    .line 1313
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v15

    .line 1314
    .local v15, dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/16 v19, 0x0

    .restart local v19       #i:I
    array-length v0, v15

    move/from16 v38, v0

    .local v38, size:I
    :goto_163
    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_36d

    .line 1315
    aget-object v3, v15, v19

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v27

    .line 1316
    .local v27, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v43

    .line 1318
    .local v43, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    const-string v3, "StreamOneUp"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 1319
    const-string v3, "StreamOneUp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Media type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", content: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", description: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", thumbnail URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_1d2
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    invoke-virtual/range {v43 .. v43}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4d2

    .line 1399
    const-string v3, "StreamOneUp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled media type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_1f7
    :goto_1f7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_163

    .line 1328
    :pswitch_1fb
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v12

    .line 1329
    .local v12, contentHtml:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContent:Landroid/text/Spannable;

    goto :goto_1f7

    .line 1335
    .end local v12           #contentHtml:Ljava/lang/String;
    :pswitch_208
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v11

    .line 1336
    .local v11, content:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v20

    .line 1337
    .local v20, linkUrl:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_249

    .line 1338
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_241

    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1341
    :cond_241
    invoke-static {v11}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeader:Landroid/text/Spannable;

    .line 1344
    :cond_249
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v16

    .line 1345
    .local v16, description:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f7

    .line 1346
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBody:Landroid/text/Spannable;

    goto :goto_1f7

    .line 1353
    .end local v11           #content:Ljava/lang/String;
    .end local v16           #description:Ljava/lang/String;
    .end local v20           #linkUrl:Ljava/lang/String;
    :pswitch_25c
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1354
    .local v26, marketUrl:Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1355
    .local v10, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_315

    .line 1356
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1358
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v32

    .line 1359
    .local v32, playerUrl:Ljava/lang/String;
    const-string v3, "https://"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    .line 1360
    .local v29, musicUrlIndex:I
    if-gez v29, :cond_290

    .line 1361
    const-string v3, "http://"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    .line 1363
    :cond_290
    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    .line 1364
    new-instance v21, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1367
    .local v21, listenLinkBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v22, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skyjam:listen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v22, listenSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    const/4 v3, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v6, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1371
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2:Landroid/text/Spannable;

    .line 1377
    .end local v21           #listenLinkBuilder:Landroid/text/SpannableStringBuilder;
    .end local v22           #listenSpan:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    .end local v29           #musicUrlIndex:I
    .end local v32           #playerUrl:Ljava/lang/String;
    :goto_2da
    new-instance v40, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skyjam:buy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 1378
    .restart local v40       #span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v6, 0x21

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1380
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeader:Landroid/text/Spannable;

    .line 1381
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1:Landroid/text/Spannable;

    goto/16 :goto_1f7

    .line 1373
    .end local v40           #span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    :cond_315
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1374
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2:Landroid/text/Spannable;

    goto :goto_2da

    .line 1387
    .end local v10           #builder:Landroid/text/SpannableStringBuilder;
    .end local v26           #marketUrl:Ljava/lang/String;
    :pswitch_32a
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v11

    .line 1388
    .restart local v11       #content:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v20

    .line 1389
    .restart local v20       #linkUrl:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f7

    .line 1390
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_363

    .line 1391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1393
    :cond_363
    invoke-static {v11}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBody:Landroid/text/Spannable;

    goto/16 :goto_1f7

    .line 1406
    .end local v11           #content:Ljava/lang/String;
    .end local v15           #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v19           #i:I
    .end local v20           #linkUrl:Ljava/lang/String;
    .end local v27           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v38           #size:I
    .end local v43           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_36d
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 1407
    .local v33, plusOneBytes:[B
    if-eqz v33, :cond_37e

    .line 1409
    :try_start_376
    invoke-static/range {v33 .. v33}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_37e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_376 .. :try_end_37e} :catch_48b

    .line 1418
    :cond_37e
    :goto_37e
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v39

    .line 1420
    .local v39, sourceType:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-object/from16 v0, v39

    if-ne v0, v3, :cond_4a5

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    :goto_392
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 1424
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 1425
    .local v24, locationBytes:[B
    if-eqz v24, :cond_3e0

    .line 1427
    :try_start_3a0
    invoke-static/range {v24 .. v24}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3b4

    .line 1430
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sLocationIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationIcon:Landroid/graphics/Bitmap;

    .line 1433
    :cond_3b4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1434
    .local v25, locationName:Ljava/lang/String;
    new-instance v40, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 1435
    .restart local v40       #span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocation:Landroid/text/Spannable;

    .line 1436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocation:Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    move-object/from16 v0, v40

    invoke-interface {v3, v0, v4, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_3e0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3a0 .. :try_end_3e0} :catch_4a9

    .line 1446
    .end local v25           #locationName:Ljava/lang/String;
    .end local v40           #span:Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
    :cond_3e0
    :goto_3e0
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    .line 1448
    .local v37, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mDate:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCreationSource:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAclText:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mContent:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedHeader:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLinkedBody:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamHeader:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader1:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mSkyjamSubheader2:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareHeader:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mReshareBody:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocation:Landroid/text/Spannable;

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v3, :cond_4c3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    if-eqz v3, :cond_4c3

    const/16 v34, 0x1

    .line 1463
    .local v34, plusOnedByMe:Z
    :goto_46c
    if-eqz v34, :cond_4c6

    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sRemovePlusOneDesc:Ljava/lang/String;

    :goto_470
    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1465
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->setFocusable(Z)V

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->invalidate()V

    .line 1468
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->requestLayout()V

    .line 1469
    return-void

    .line 1410
    .end local v24           #locationBytes:[B
    .end local v34           #plusOnedByMe:Z
    .end local v37           #sb:Ljava/lang/StringBuilder;
    .end local v39           #sourceType:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    :catch_48b
    move-exception v17

    .line 1411
    .local v17, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v3, "StreamOneUp"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_49e

    .line 1412
    const-string v3, "StreamOneUp"

    const-string v4, "Error parsing PlusOneData"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1414
    :cond_49e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto/16 :goto_37e

    .line 1420
    .end local v17           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v39       #sourceType:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    :cond_4a5
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto/16 :goto_392

    .line 1437
    .restart local v24       #locationBytes:[B
    :catch_4a9
    move-exception v17

    .line 1438
    .restart local v17       #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v3, "StreamOneUp"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4bc

    .line 1439
    const-string v3, "StreamOneUp"

    const-string v4, "Error parsing Location"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1441
    :cond_4bc
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto/16 :goto_3e0

    .line 1462
    .end local v17           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v37       #sb:Ljava/lang/StringBuilder;
    :cond_4c3
    const/16 v34, 0x0

    goto :goto_46c

    .line 1463
    .restart local v34       #plusOnedByMe:Z
    :cond_4c6
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAddPlusOneDesc:Ljava/lang/String;

    goto :goto_470

    .line 1274
    nop

    :pswitch_data_4ca
    .packed-switch 0x1
        :pswitch_de
        :pswitch_149
    .end packed-switch

    .line 1326
    :pswitch_data_4d2
    .packed-switch 0x1
        :pswitch_1fb
        :pswitch_208
        :pswitch_25c
        :pswitch_25c
        :pswitch_32a
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 535
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 536
    .local v2, x:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 542
    .local v3, y:I
    :goto_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_82

    :pswitch_28
    move v4, v5

    .line 574
    :cond_29
    :goto_29
    return v4

    .line 538
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 539
    .restart local v2       #x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .restart local v3       #y:I
    goto :goto_21

    .line 544
    :pswitch_35
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 545
    .local v1, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 546
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 547
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->invalidate()V

    goto :goto_3b

    .line 554
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :pswitch_53
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 555
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 556
    .restart local v1       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    goto :goto_5b

    .line 558
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->invalidate()V

    move v4, v5

    .line 559
    goto :goto_29

    .line 563
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_70
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v6, :cond_80

    .line 564
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v3, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 565
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 566
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->invalidate()V

    goto :goto_29

    :cond_80
    move v4, v5

    .line 569
    goto :goto_29

    .line 542
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_35
        :pswitch_53
        :pswitch_28
        :pswitch_70
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 467
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onAttachedToWindow()V

    .line 469
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 470
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_9

    .line 582
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(Ljava/lang/String;)V

    .line 584
    :cond_9
    return-void
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 9
    .parameter "button"

    .prologue
    .line 588
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    if-eqz v3, :cond_57

    .line 589
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v3, :cond_57

    .line 590
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_SELECT_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 592
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mActivityId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/apps/plus/views/StreamOneUpListener;->onPlusOne(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)V

    .line 593
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 594
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v1, 0x1

    .line 596
    .local v1, plusOnedByMe:Z
    :goto_2f
    if-eqz v1, :cond_5a

    const v2, 0x7f080458

    .line 598
    .local v2, speakRes:I
    :goto_34
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 600
    .local v0, notificationEvent:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 604
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 605
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 609
    .end local v0           #notificationEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #plusOnedByMe:Z
    .end local v2           #speakRes:I
    :cond_57
    return-void

    .line 594
    :cond_58
    const/4 v1, 0x0

    goto :goto_2f

    .line 596
    .restart local v1       #plusOnedByMe:Z
    :cond_5a
    const v2, 0x7f080457

    goto :goto_34
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 474
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onDetachedFromWindow()V

    .line 476
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 477
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 514
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mBackgroundOffset:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 516
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->drawTitle(Landroid/graphics/Canvas;)V

    .line 518
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->drawContent(Landroid/graphics/Canvas;)V

    .line 520
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->drawReshareContent(Landroid/graphics/Canvas;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->drawLinkedContent(Landroid/graphics/Canvas;)V

    .line 524
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->drawSkyjamContent(Landroid/graphics/Canvas;)V

    .line 526
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->drawLocation(Landroid/graphics/Canvas;)V

    .line 527
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 481
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onMeasure(II)V

    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getPaddingLeft()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginLeft:I

    add-int v2, v4, v5

    .line 484
    .local v2, xStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getPaddingTop()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sAvatarMarginTop:I

    sub-int v3, v4, v5

    .line 486
    .local v3, yStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getMeasuredWidth()I

    move-result v1

    .line 487
    .local v1, width:I
    sub-int v4, v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginRight:I

    sub-int v0, v4, v5

    .line 489
    .local v0, contentWidth:I
    iput v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mBackgroundOffset:I

    .line 491
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutTitle(III)I

    move-result v3

    .line 493
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutContent(III)I

    move-result v3

    .line 495
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->isReshare()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 496
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutReshareContent(III)I

    move-result v3

    .line 503
    :goto_36
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->sMarginBottom:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->setMeasuredDimension(II)V

    .line 505
    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    if-eqz v4, :cond_4a

    .line 506
    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    invoke-interface {v4, p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;->onMeasured(Landroid/view/View;)V

    .line 508
    :cond_4a
    return-void

    .line 498
    :cond_4b
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutLocation(III)I

    move-result v3

    .line 499
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutLinkedContent(III)I

    move-result v3

    .line 500
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->measureAndLayoutSkyjamContent(III)I

    move-result v3

    goto :goto_36
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->clearLayoutState()V

    .line 1202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    .line 1203
    return-void
.end method

.method public setOneUpClickListener(Lcom/google/android/apps/plus/views/StreamOneUpListener;)V
    .registers 2
    .parameter "oneUpListener"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;

    .line 616
    return-void
.end method
