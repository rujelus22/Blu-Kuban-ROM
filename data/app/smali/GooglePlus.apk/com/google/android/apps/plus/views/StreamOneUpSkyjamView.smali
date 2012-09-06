.class public Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;
.super Landroid/view/View;
.source "StreamOneUpSkyjamView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;
.implements Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;
.implements Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;


# static fields
.field protected static sDefaultTextPaint:Landroid/text/TextPaint;

.field private static sEmptyImage:Landroid/graphics/Bitmap;

.field private static sGoogleMusic:Landroid/graphics/Bitmap;

.field private static sHangoutCardViewInitialized:Z

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field protected static sMaxWidth:I

.field protected static sNameMargin:I

.field private static sPlayIcon:Landroid/graphics/Bitmap;

.field protected static sPlayStopButtonPadding:I

.field private static sPreviewPaint:Landroid/graphics/Paint;

.field private static sResizePaint:Landroid/graphics/Paint;

.field private static sStopIcon:Landroid/graphics/Bitmap;

.field private static sTagIcon:Landroid/graphics/Bitmap;

.field private static sTagPaint:Landroid/graphics/Paint;

.field protected static sTagTextPaint:Landroid/text/TextPaint;


# instance fields
.field private mActionIcon:Landroid/graphics/Bitmap;

.field private mActionIconPoint:Landroid/graphics/PointF;

.field private mActionRect:Lcom/google/android/apps/plus/views/ClickableRect;

.field private mActivityId:Ljava/lang/String;

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

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mGoogleMusicRect:Landroid/graphics/Rect;

.field private mImage:Lcom/google/android/apps/plus/views/MediaImage;

.field private mImageRect:Landroid/graphics/Rect;

.field private mImageUrl:Ljava/lang/String;

.field private mIsAlbum:Z

.field private mMusicUrl:Ljava/lang/String;

.field private mPreviewBackground:Landroid/graphics/RectF;

.field private mPreviewStatus:Ljava/lang/String;

.field private mPreviewStatusPoint:Landroid/graphics/PointF;

.field private mTagBackground:Landroid/graphics/RectF;

.field private mTagIconRect:Landroid/graphics/Rect;

.field private mTagLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private mTagTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const v4, 0x7f0d0204

    const/4 v3, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sHangoutCardViewInitialized:Z

    if-nez v1, :cond_113

    .line 91
    sput-boolean v3, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sHangoutCardViewInitialized:Z

    .line 93
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02012b

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagIcon:Landroid/graphics/Bitmap;

    .line 98
    const v1, 0x7f020069

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sEmptyImage:Landroid/graphics/Bitmap;

    .line 99
    const v1, 0x7f02006f

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    .line 100
    const v1, 0x7f020159

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayIcon:Landroid/graphics/Bitmap;

    .line 102
    const v1, 0x7f020184

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sStopIcon:Landroid/graphics/Bitmap;

    .line 105
    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sMaxWidth:I

    .line 106
    const v1, 0x7f0d01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sNameMargin:I

    .line 107
    const v1, 0x7f0d01f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayStopButtonPadding:I

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sResizePaint:Landroid/graphics/Paint;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    .line 113
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0136

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    .line 118
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0138

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 124
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 125
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0139

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 126
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 128
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 131
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    .line 132
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 133
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0137

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 136
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 76
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f0d0204

    const/4 v3, 0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sHangoutCardViewInitialized:Z

    if-nez v1, :cond_113

    .line 91
    sput-boolean v3, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sHangoutCardViewInitialized:Z

    .line 93
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02012b

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagIcon:Landroid/graphics/Bitmap;

    .line 98
    const v1, 0x7f020069

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sEmptyImage:Landroid/graphics/Bitmap;

    .line 99
    const v1, 0x7f02006f

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    .line 100
    const v1, 0x7f020159

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayIcon:Landroid/graphics/Bitmap;

    .line 102
    const v1, 0x7f020184

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sStopIcon:Landroid/graphics/Bitmap;

    .line 105
    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sMaxWidth:I

    .line 106
    const v1, 0x7f0d01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sNameMargin:I

    .line 107
    const v1, 0x7f0d01f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayStopButtonPadding:I

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sResizePaint:Landroid/graphics/Paint;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    .line 113
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0136

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    .line 118
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0138

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 124
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 125
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0139

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 126
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 128
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 131
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    .line 132
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 133
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0137

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 136
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 80
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x7f0d0204

    const/4 v3, 0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sHangoutCardViewInitialized:Z

    if-nez v1, :cond_113

    .line 91
    sput-boolean v3, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sHangoutCardViewInitialized:Z

    .line 93
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02012b

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagIcon:Landroid/graphics/Bitmap;

    .line 98
    const v1, 0x7f020069

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sEmptyImage:Landroid/graphics/Bitmap;

    .line 99
    const v1, 0x7f02006f

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    .line 100
    const v1, 0x7f020159

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayIcon:Landroid/graphics/Bitmap;

    .line 102
    const v1, 0x7f020184

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sStopIcon:Landroid/graphics/Bitmap;

    .line 105
    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sMaxWidth:I

    .line 106
    const v1, 0x7f0d01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sNameMargin:I

    .line 107
    const v1, 0x7f0d01f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayStopButtonPadding:I

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sResizePaint:Landroid/graphics/Paint;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    .line 113
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0136

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    .line 118
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0138

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 124
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 125
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0139

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 126
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 128
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 131
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    .line 132
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 133
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0137

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 136
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 85
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_113
    return-void
.end method

.method private clearLayoutState()V
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 339
    return-void
.end method

.method private drawStage(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x40a0

    const/4 v7, 0x0

    .line 455
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagBackground:Landroid/graphics/RectF;

    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 458
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagIcon:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v7, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 459
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v1

    .line 460
    .local v1, drawX:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v2

    .line 461
    .local v2, drawY:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 462
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 463
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 466
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v3, :cond_48

    .line 467
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/MediaImage;->refreshIfInvalidated()V

    .line 468
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/MediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_41

    .line 470
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sEmptyImage:Landroid/graphics/Bitmap;

    .line 473
    :cond_41
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImageRect:Landroid/graphics/Rect;

    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 476
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_48
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    if-eqz v3, :cond_76

    .line 477
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    sget-object v4, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPreviewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 479
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewStatusPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewStatusPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sget-object v6, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIconPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIconPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 484
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mGoogleMusicRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v7, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 486
    :cond_76
    return-void
.end method

.method private measureAndLayoutStage(IIII)I
    .registers 29
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 364
    add-int/lit8 v14, p1, 0xd

    .line 365
    .local v14, drawX:I
    add-int/lit8 v7, p2, 0xd

    .line 370
    .local v7, drawY:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 371
    .local v21, tagIconWidth:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 372
    .local v20, tagIconHeight:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v4, v1

    .line 373
    .local v4, tagTextWidth:I
    add-int/lit8 v1, v21, 0xf

    add-int v23, v1, v4

    .line 374
    .local v23, tagWidth:I
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v7

    add-int v5, v14, v23

    int-to-float v5, v5

    add-int/lit8 v8, v7, 0x27

    int-to-float v8, v8

    invoke-direct {v1, v2, v3, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagBackground:Landroid/graphics/RectF;

    .line 376
    new-instance v1, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagTitle:Ljava/lang/String;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sTagTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .end local v7           #drawY:I
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getHeight()I

    move-result v22

    .line 380
    .local v22, tagLayoutHeight:I
    add-int/lit8 v6, v14, 0x5

    .line 381
    .end local v14           #drawX:I
    .local v6, drawX:I
    add-int/lit8 v1, p2, 0xd

    rsub-int/lit8 v2, v20, 0x27

    div-int/lit8 v2, v2, 0x2

    add-int v7, v1, v2

    .line 383
    .restart local v7       #drawY:I
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, v6, v21

    add-int v3, v7, v20

    invoke-direct {v1, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagIconRect:Landroid/graphics/Rect;

    .line 385
    add-int/lit8 v1, v21, 0x5

    add-int/2addr v6, v1

    .line 386
    add-int/lit8 v1, p2, 0xd

    rsub-int/lit8 v2, v22, 0x27

    div-int/lit8 v2, v2, 0x2

    add-int v7, v1, v2

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 389
    move/from16 v6, p1

    .line 390
    add-int/lit8 v1, p2, 0xd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagBackground:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v7, v1, 0xd

    .line 392
    add-int/lit8 v12, p3, -0x34

    .line 393
    .local v12, availableWidth:I
    sub-int v1, p4, v7

    add-int v11, v1, p2

    .line 396
    .local v11, availableHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v1, :cond_1b5

    .line 397
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 398
    .local v18, imageSize:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MediaImage;->refreshIfInvalidated()V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 400
    .local v13, bitmap:Landroid/graphics/Bitmap;
    if-nez v13, :cond_a9

    .line 401
    sget-object v13, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sEmptyImage:Landroid/graphics/Bitmap;

    .line 403
    :cond_a9
    sub-int v1, v12, v18

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1a

    add-int/2addr v6, v1

    .line 404
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, v6, v18

    add-int v3, v7, v18

    invoke-direct {v1, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImageRect:Landroid/graphics/Rect;

    .line 409
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    :goto_bd
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mIsAlbum:Z

    if-nez v1, :cond_19c

    .line 410
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v6

    int-to-float v3, v7

    add-int v5, v6, v18

    int-to-float v5, v5

    add-int/lit8 v8, v7, 0x42

    int-to-float v8, v8

    invoke-direct {v1, v2, v3, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionRect:Lcom/google/android/apps/plus/views/ClickableRect;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 413
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableRect;

    add-int v8, v6, v18

    add-int/lit8 v9, v7, 0x42

    move-object/from16 v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/plus/views/ClickableRect;-><init>(IIIILcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionRect:Lcom/google/android/apps/plus/views/ClickableRect;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionRect:Lcom/google/android/apps/plus/views/ClickableRect;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->isPlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sStopIcon:Landroid/graphics/Bitmap;

    :goto_105
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 420
    .local v17, iconHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    add-int/lit8 v6, v1, 0xd

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    rsub-int/lit8 v2, v17, 0x42

    div-int/lit8 v2, v2, 0x2

    add-int v7, v1, v2

    .line 422
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v6

    int-to-float v3, v7

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIconPoint:Landroid/graphics/PointF;

    .line 424
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v19, v0

    .line 426
    .local v19, statusHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    add-int/2addr v6, v1

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    rsub-int/lit8 v2, v19, 0x42

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    float-to-int v2, v2

    sub-int v7, v1, v2

    .line 429
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v6

    int-to-float v3, v7

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewStatusPoint:Landroid/graphics/PointF;

    .line 431
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 432
    .local v16, googleMusicWidth:I
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sGoogleMusic:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 435
    .local v15, googleMusicHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    sub-int v6, v1, v16

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    rsub-int/lit8 v2, v15, 0x42

    div-int/lit8 v2, v2, 0x2

    add-int v7, v1, v2

    .line 437
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, v6, v16

    add-int v3, v7, v15

    invoke-direct {v1, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mGoogleMusicRect:Landroid/graphics/Rect;

    .line 441
    .end local v15           #googleMusicHeight:I
    .end local v16           #googleMusicWidth:I
    .end local v17           #iconHeight:I
    .end local v19           #statusHeight:I
    :cond_19c
    move/from16 v6, p1

    .line 442
    add-int/lit8 v1, p2, 0xd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagBackground:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v7, v1, 0xd

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v1, :cond_1bd

    .line 444
    add-int v7, v7, v18

    .line 448
    :cond_1b4
    :goto_1b4
    return v7

    .line 406
    .end local v18           #imageSize:I
    :cond_1b5
    move/from16 v18, v12

    .restart local v18       #imageSize:I
    goto/16 :goto_bd

    .line 418
    :cond_1b9
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_105

    .line 445
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewBackground:Landroid/graphics/RectF;

    if-eqz v1, :cond_1b4

    .line 446
    add-int/lit8 v7, v7, 0x42

    goto :goto_1b4
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "albumName"
    .parameter "trackName"
    .parameter "thumbnailUrl"
    .parameter "playerUrl"
    .parameter "activityId"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->clearLayoutState()V

    .line 145
    const-string v4, "https://"

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, musicUrlIndex:I
    if-gez v2, :cond_11

    .line 147
    const-string v4, "http://"

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 150
    :cond_11
    if-ltz v2, :cond_7e

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mIsAlbum:Z

    .line 152
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mIsAlbum:Z

    if-eqz v4, :cond_85

    .line 153
    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    .line 157
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getPlaybackStatus(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewStatus:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, context:Landroid/content/Context;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mIsAlbum:Z

    if-eqz v4, :cond_9f

    invoke-static {p1}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, album:Ljava/lang/String;
    :goto_3b
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mIsAlbum:Z

    if-eqz v4, :cond_b5

    .end local v0           #album:Ljava/lang/String;
    :goto_3f
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagTitle:Ljava/lang/String;

    .line 165
    if-eqz p3, :cond_5e

    .line 166
    iput-object p3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImageUrl:Ljava/lang/String;

    .line 167
    new-instance v4, Lcom/google/android/apps/plus/views/MediaImage;

    new-instance v5, Lcom/google/android/apps/plus/content/MediaImageRequest;

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12c

    invoke-direct {v5, p3, v6, v7}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/plus/views/MediaImage;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/content/MediaImageRequest;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    .line 169
    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/MediaImage;->load()V

    .line 172
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    .local v3, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_70

    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_70
    if-eqz p2, :cond_75

    .line 177
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    iput-object p5, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActivityId:Ljava/lang/String;

    .line 184
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->invalidate()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->requestLayout()V

    .line 186
    return-void

    .line 155
    :cond_85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&mode=streaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    goto :goto_23

    .line 160
    .restart local v1       #context:Landroid/content/Context;
    :cond_9f
    const v4, 0x7f0801c1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .restart local v0       #album:Ljava/lang/String;
    :cond_b5
    move-object v0, p2

    .line 163
    goto :goto_3f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 211
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 213
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_68

    move v4, v5

    .line 252
    :goto_15
    return v4

    .line 215
    :pswitch_16
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

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

    .line 216
    .local v1, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 217
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->invalidate()V

    goto :goto_15

    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_34
    move v4, v5

    .line 223
    goto :goto_15

    .line 227
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_36
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 228
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mClickableItems:Ljava/util/Set;

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

    .line 229
    .restart local v1       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    goto :goto_3e

    .line 232
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->invalidate()V

    move v4, v5

    .line 233
    goto :goto_15

    .line 237
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_53
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v6, :cond_63

    .line 238
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v3, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 239
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 240
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->invalidate()V

    goto :goto_15

    :cond_63
    move v4, v5

    .line 243
    goto :goto_15

    :pswitch_65
    move v4, v5

    .line 248
    goto :goto_15

    .line 213
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_16
        :pswitch_36
        :pswitch_65
        :pswitch_53
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 197
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 198
    invoke-static {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->registerListener(Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;)V

    .line 199
    return-void
.end method

.method public onClickableRectClick(Lcom/google/android/apps/plus/views/ClickableRect;)V
    .registers 7
    .parameter "rect"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->isPlaying(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    const/4 v2, 0x1

    .line 269
    .local v2, play:Z
    :goto_d
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v1, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3f

    const-string v3, "com.google.android.apps.plus.service.SkyjamPlaybackService.PLAY"

    :goto_18
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v3, "music_account"

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    const-string v3, "music_url"

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v3, "song"

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mTagTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v3, "activity_id"

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 277
    return-void

    .line 268
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #play:Z
    :cond_3d
    const/4 v2, 0x0

    goto :goto_d

    .line 270
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #play:Z
    :cond_3f
    const-string v3, "com.google.android.apps.plus.service.SkyjamPlaybackService.STOP"

    goto :goto_18
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 204
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 205
    invoke-static {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->unregisterListener(Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;)V

    .line 206
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->drawStage(Landroid/graphics/Canvas;)V

    .line 333
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 301
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 303
    .local v5, widthDimension:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_4c

    .line 312
    sget v4, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sMaxWidth:I

    .line 315
    .local v4, width:I
    :goto_d
    const/high16 v8, 0x4000

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-super {p0, v8, p2}, Landroid/view/View;->onMeasure(II)V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getPaddingLeft()I

    move-result v6

    .line 318
    .local v6, xStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getPaddingTop()I

    move-result v7

    .line 320
    .local v7, yStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getMeasuredWidth()I

    move-result v3

    .line 321
    .local v3, measuredWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getMeasuredHeight()I

    move-result v2

    .line 322
    .local v2, measuredHeight:I
    sub-int v8, v3, v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getPaddingRight()I

    move-result v9

    sub-int v1, v8, v9

    .line 323
    .local v1, contentWidth:I
    sub-int v8, v2, v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 325
    .local v0, contentHeight:I
    invoke-direct {p0, v6, v7, v1, v0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->measureAndLayoutStage(IIII)I

    move-result v7

    .line 327
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p0, v3, v8}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->setMeasuredDimension(II)V

    .line 328
    return-void

    .line 305
    .end local v0           #contentHeight:I
    .end local v1           #contentWidth:I
    .end local v2           #measuredHeight:I
    .end local v3           #measuredWidth:I
    .end local v4           #width:I
    .end local v6           #xStart:I
    .end local v7           #yStart:I
    :sswitch_43
    sget v8, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sMaxWidth:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 306
    .restart local v4       #width:I
    goto :goto_d

    .line 308
    .end local v4           #width:I
    :sswitch_4a
    move v4, v5

    .line 309
    .restart local v4       #width:I
    goto :goto_d

    .line 303
    :sswitch_data_4c
    .sparse-switch
        -0x80000000 -> :sswitch_43
        0x40000000 -> :sswitch_4a
    .end sparse-switch
.end method

.method public onMediaImageChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImageUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MediaImage;->invalidate()V

    .line 262
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->invalidate()V

    .line 263
    return-void
.end method

.method public onPlaybackStatusUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .parameter "musicUrl"
    .parameter "playing"
    .parameter "status"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    .line 282
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 283
    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sStopIcon:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    .line 288
    :goto_12
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewStatus:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const/4 v1, 0x1

    .line 290
    .local v1, statusChanged:Z
    :goto_23
    if-eqz v1, :cond_27

    .line 291
    iput-object p3, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mPreviewStatus:Ljava/lang/String;

    .line 294
    :cond_27
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    if-ne v0, v2, :cond_2d

    if-eqz v1, :cond_30

    .line 295
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->invalidate()V

    .line 297
    :cond_30
    return-void

    .line 285
    .end local v1           #statusChanged:Z
    :cond_31
    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->sPlayIcon:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionIcon:Landroid/graphics/Bitmap;

    goto :goto_12

    .line 288
    :cond_36
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public processClick(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 489
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionRect:Lcom/google/android/apps/plus/views/ClickableRect;

    if-eqz v2, :cond_33

    .line 490
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionRect:Lcom/google/android/apps/plus/views/ClickableRect;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableRect;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 491
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 492
    .local v0, loc:[I
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getLocationOnScreen([I)V

    .line 493
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 495
    :cond_2e
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mActionRect:Lcom/google/android/apps/plus/views/ClickableRect;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->onClickableRectClick(Lcom/google/android/apps/plus/views/ClickableRect;)V

    .line 498
    .end local v0           #loc:[I
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_33
    return-void
.end method

.method public startAutoPlay()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->mMusicUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->onClickableRectClick(Lcom/google/android/apps/plus/views/ClickableRect;)V

    .line 192
    :cond_c
    return-void
.end method
