.class public Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;
.super Landroid/view/View;
.source "StreamOneUpHangoutView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;


# static fields
.field protected static sActiveTextPaint:Landroid/text/TextPaint;

.field protected static sAvatarSize:I

.field protected static sAvatarSpacing:I

.field protected static sButtonMarginBottom:I

.field protected static sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

.field protected static sDefaultTextPaint:Landroid/text/TextPaint;

.field protected static sHangoutActiveBitmap:Landroid/graphics/Bitmap;

.field private static sHangoutCardViewInitialized:Z

.field protected static sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sHangoutOverBitmap:Landroid/graphics/Bitmap;

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private static sJoinButtonPaint:Landroid/text/TextPaint;

.field protected static sMaxHangoutAvatarsToDisplay:I

.field protected static sMaxWidth:I

.field protected static sNameMargin:I

.field private static sResizePaint:Landroid/graphics/Paint;

.field private static sUnsupportedTextPaint:Landroid/text/TextPaint;


# instance fields
.field private mAuthorId:Ljava/lang/String;

.field private mAuthorName:Ljava/lang/String;

.field private mAvatarsToDisplay:I

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

.field private mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private final mHangoutAvatars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/ClickableUserImage;",
            ">;"
        }
    .end annotation
.end field

.field private mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

.field private mHangoutIcon:Landroid/graphics/Bitmap;

.field private mHangoutIconRect:Landroid/graphics/Rect;

.field private mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field private mParticipantNames:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const v7, 0x7f0d01ca

    const v6, 0x7f0d01c9

    const v5, 0x7f0a0133

    const v4, 0x7f0d0204

    const/4 v3, 0x1

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutCardViewInitialized:Z

    if-nez v1, :cond_143

    .line 98
    sput-boolean v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutCardViewInitialized:Z

    .line 100
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 106
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 109
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 110
    const v1, 0x7f020133

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutActiveBitmap:Landroid/graphics/Bitmap;

    .line 111
    const v1, 0x7f0200d9

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutOverBitmap:Landroid/graphics/Bitmap;

    .line 113
    const v1, 0x7f0d01f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    .line 114
    const v1, 0x7f0d01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    .line 116
    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxWidth:I

    .line 117
    const v1, 0x7f0d01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sButtonMarginBottom:I

    .line 119
    const v1, 0x7f0d01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sNameMargin:I

    .line 121
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxHangoutAvatarsToDisplay:I

    .line 123
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sResizePaint:Landroid/graphics/Paint;

    .line 125
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 126
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 127
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 128
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 130
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 133
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 135
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0135

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 137
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 139
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 142
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    .line 143
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 144
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 148
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 151
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    .line 152
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 153
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0117

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 154
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 156
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 83
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v7, 0x7f0d01ca

    const v6, 0x7f0d01c9

    const v5, 0x7f0a0133

    const v4, 0x7f0d0204

    const/4 v3, 0x1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutCardViewInitialized:Z

    if-nez v1, :cond_143

    .line 98
    sput-boolean v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutCardViewInitialized:Z

    .line 100
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 106
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 109
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 110
    const v1, 0x7f020133

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutActiveBitmap:Landroid/graphics/Bitmap;

    .line 111
    const v1, 0x7f0200d9

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutOverBitmap:Landroid/graphics/Bitmap;

    .line 113
    const v1, 0x7f0d01f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    .line 114
    const v1, 0x7f0d01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    .line 116
    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxWidth:I

    .line 117
    const v1, 0x7f0d01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sButtonMarginBottom:I

    .line 119
    const v1, 0x7f0d01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sNameMargin:I

    .line 121
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxHangoutAvatarsToDisplay:I

    .line 123
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sResizePaint:Landroid/graphics/Paint;

    .line 125
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 126
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 127
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 128
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 130
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 133
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 135
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0135

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 137
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 139
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 142
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    .line 143
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 144
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 148
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 151
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    .line 152
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 153
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0117

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 154
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 156
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 87
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x7f0d01ca

    const v6, 0x7f0d01c9

    const v5, 0x7f0a0133

    const v4, 0x7f0d0204

    const/4 v3, 0x1

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutCardViewInitialized:Z

    if-nez v1, :cond_143

    .line 98
    sput-boolean v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutCardViewInitialized:Z

    .line 100
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 106
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 109
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 110
    const v1, 0x7f020133

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutActiveBitmap:Landroid/graphics/Bitmap;

    .line 111
    const v1, 0x7f0200d9

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutOverBitmap:Landroid/graphics/Bitmap;

    .line 113
    const v1, 0x7f0d01f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    .line 114
    const v1, 0x7f0d01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    .line 116
    const v1, 0x7f0d01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxWidth:I

    .line 117
    const v1, 0x7f0d01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sButtonMarginBottom:I

    .line 119
    const v1, 0x7f0d01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sNameMargin:I

    .line 121
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxHangoutAvatarsToDisplay:I

    .line 123
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sResizePaint:Landroid/graphics/Paint;

    .line 125
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 126
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 127
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 128
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 130
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 133
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    .line 134
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 135
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0135

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 137
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 139
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 142
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    .line 143
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 144
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 148
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 151
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    .line 152
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 153
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0117

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 154
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 156
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 92
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_143
    return-void
.end method

.method private clearLayoutState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 318
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 319
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 321
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 322
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 323
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 324
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutIcon:Landroid/graphics/Bitmap;

    .line 325
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutIconRect:Landroid/graphics/Rect;

    .line 326
    return-void
.end method

.method private drawStage(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 466
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_c

    .line 467
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutIcon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v7, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 471
    :cond_c
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    if-nez v5, :cond_2d

    .line 472
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v2

    .line 473
    .local v2, drawX:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v3

    .line 474
    .local v3, drawY:I
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 476
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 479
    .end local v2           #drawX:I
    .end local v3           #drawY:I
    :cond_2d
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v5, :cond_36

    .line 480
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 483
    :cond_36
    iget v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mAvatarsToDisplay:I

    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, i:I
    :goto_44
    if-ltz v4, :cond_62

    .line 484
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 485
    .local v0, avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 486
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_56

    .line 487
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 489
    :cond_56
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 483
    add-int/lit8 v4, v4, -0x1

    goto :goto_44

    .line 492
    .end local v0           #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_62
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    if-eqz v5, :cond_83

    .line 493
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v2

    .line 494
    .restart local v2       #drawX:I
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v3

    .line 495
    .restart local v3       #drawY:I
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 496
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 497
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 499
    .end local v2           #drawX:I
    .end local v3           #drawY:I
    :cond_83
    return-void
.end method

.method private measureAndLayoutStage(III)I
    .registers 41
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 330
    .local v21, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getOccupantCount()I

    move-result v34

    .line 332
    .local v34, participantCount:I
    move/from16 v22, p1

    .line 333
    .local v22, drawX:I
    move/from16 v23, p2

    .line 340
    .local v23, drawY:I
    const/16 v36, 0x0

    .line 342
    .local v36, status:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/Hangout;->isInProgress(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v3

    if-eqz v3, :cond_22a

    .line 343
    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v7}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v36

    .line 345
    sget-object v26, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutActiveBitmap:Landroid/graphics/Bitmap;

    .line 347
    .local v26, hangoutIcon:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-object/from16 v0, v36

    if-eq v0, v3, :cond_213

    .line 348
    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sUnsupportedTextPaint:Landroid/text/TextPaint;

    .line 349
    .local v5, hangoutPaint:Landroid/text/TextPaint;
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, hangoutText:Ljava/lang/String;
    :goto_3c
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 364
    .local v29, iconWidth:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    .line 365
    .local v28, iconHeight:I
    sub-int v3, p3, v29

    div-int/lit8 v3, v3, 0x2

    add-int v22, p1, v3

    .line 366
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutIcon:Landroid/graphics/Bitmap;

    .line 367
    new-instance v3, Landroid/graphics/Rect;

    add-int v7, v22, v29

    add-int v8, v23, v28

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v3, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutIconRect:Landroid/graphics/Rect;

    .line 369
    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sNameMargin:I

    add-int v3, v3, v28

    add-int v23, v23, v3

    .line 372
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v6, v3

    .line 373
    .local v6, textDrawWidth:I
    new-instance v3, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getWidth()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v22, p1, v3

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getHeight()I

    move-result v3

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sNameMargin:I

    add-int/2addr v3, v7

    add-int v23, v23, v3

    .line 382
    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_111

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/Hangout;->isViewOnlyHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v3

    if-eqz v3, :cond_247

    const v3, 0x7f080353

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, joinButtonLabel:Ljava/lang/String;
    :goto_ba
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 388
    new-instance v7, Lcom/google/android/apps/plus/views/ClickableButton;

    sget-object v10, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v11, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v12, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, v21

    move-object/from16 v13, p0

    invoke-direct/range {v7 .. v15}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v30

    .line 392
    .local v30, joinButtonRect:Landroid/graphics/Rect;
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v22, p1, v3

    .line 394
    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sButtonMarginBottom:I

    add-int/2addr v3, v7

    add-int v23, v23, v3

    .line 401
    .end local v9           #joinButtonLabel:Ljava/lang/String;
    .end local v30           #joinButtonRect:Landroid/graphics/Rect;
    :cond_111
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 404
    .local v35, res:Landroid/content/res/Resources;
    const v3, 0x7f0e002c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 406
    .local v31, maxParticipantText:Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v32, v0

    .line 408
    .local v32, maxParticipantTextSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v7, p3, v32

    sget v8, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    sget v10, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    add-int/2addr v8, v10

    div-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 412
    .local v20, avatarsToDisplay:I
    sub-int v24, v34, v20

    .line 413
    .local v24, extraCount:I
    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    sget v8, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    add-int/2addr v7, v8

    mul-int v7, v7, v20

    add-int v25, v3, v7

    .line 414
    .local v25, facePilesize:I
    move/from16 v18, p3

    .line 415
    .local v18, availableWidth:I
    if-lez v24, :cond_1c6

    .line 416
    const v3, 0x7f0e002c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 418
    .local v11, extraText:Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v13, v3

    .line 419
    .local v13, extraTextSize:I
    add-int v3, v25, v13

    move/from16 v0, p3

    if-le v3, v0, :cond_1a9

    .line 420
    add-int/lit8 v24, v24, -0x1

    .line 421
    add-int/lit8 v20, v20, -0x1

    .line 422
    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    sget v8, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    add-int/2addr v7, v8

    mul-int v7, v7, v20

    add-int v25, v3, v7

    .line 423
    const v3, 0x7f0e002c

    add-int/lit8 v7, v24, -0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v12, v24, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 425
    sget-object v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v13, v3

    .line 428
    :cond_1a9
    new-instance v10, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    sget-object v12, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getWidth()I

    move-result v3

    sub-int v18, v18, v3

    .line 432
    .end local v11           #extraText:Ljava/lang/String;
    .end local v13           #extraTextSize:I
    :cond_1c6
    sub-int v18, v18, v25

    .line 434
    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    add-int v3, v3, p1

    div-int/lit8 v7, v18, 0x2

    add-int v22, v3, v7

    .line 435
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mAvatarsToDisplay:I

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 438
    .local v33, numAvatars:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1e0
    move/from16 v0, v27

    move/from16 v1, v33

    if-ge v0, v1, :cond_25c

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 440
    .local v19, avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_252

    .line 441
    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    add-int v3, v3, v22

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    add-int v7, v7, v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 442
    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSpacing:I

    add-int/2addr v3, v7

    add-int v22, v22, v3

    .line 438
    :goto_210
    add-int/lit8 v27, v27, 0x1

    goto :goto_1e0

    .line 351
    .end local v4           #hangoutText:Ljava/lang/String;
    .end local v5           #hangoutPaint:Landroid/text/TextPaint;
    .end local v6           #textDrawWidth:I
    .end local v18           #availableWidth:I
    .end local v19           #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .end local v20           #avatarsToDisplay:I
    .end local v24           #extraCount:I
    .end local v25           #facePilesize:I
    .end local v27           #i:I
    .end local v28           #iconHeight:I
    .end local v29           #iconWidth:I
    .end local v31           #maxParticipantText:Ljava/lang/String;
    .end local v32           #maxParticipantTextSize:I
    .end local v33           #numAvatars:I
    .end local v35           #res:Landroid/content/res/Resources;
    :cond_213
    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sActiveTextPaint:Landroid/text/TextPaint;

    .line 352
    .restart local v5       #hangoutPaint:Landroid/text/TextPaint;
    const v3, 0x7f080450

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mAuthorName:Ljava/lang/String;

    aput-object v10, v7, v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #hangoutText:Ljava/lang/String;
    goto/16 :goto_3c

    .line 356
    .end local v4           #hangoutText:Ljava/lang/String;
    .end local v5           #hangoutPaint:Landroid/text/TextPaint;
    .end local v26           #hangoutIcon:Landroid/graphics/Bitmap;
    :cond_22a
    sget-object v26, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sHangoutOverBitmap:Landroid/graphics/Bitmap;

    .line 357
    .restart local v26       #hangoutIcon:Landroid/graphics/Bitmap;
    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 358
    .restart local v5       #hangoutPaint:Landroid/text/TextPaint;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0e0030

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    move/from16 v0, v34

    invoke-virtual {v3, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #hangoutText:Ljava/lang/String;
    goto/16 :goto_3c

    .line 383
    .restart local v6       #textDrawWidth:I
    .restart local v28       #iconHeight:I
    .restart local v29       #iconWidth:I
    :cond_247
    const v3, 0x7f080451

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_ba

    .line 445
    .restart local v18       #availableWidth:I
    .restart local v19       #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .restart local v20       #avatarsToDisplay:I
    .restart local v24       #extraCount:I
    .restart local v25       #facePilesize:I
    .restart local v27       #i:I
    .restart local v31       #maxParticipantText:Ljava/lang/String;
    .restart local v32       #maxParticipantTextSize:I
    .restart local v33       #numAvatars:I
    .restart local v35       #res:Landroid/content/res/Resources;
    :cond_252
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7, v8, v10}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    goto :goto_210

    .line 449
    .end local v19           #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    :cond_25c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    if-eqz v3, :cond_27a

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    sget v7, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mExtraParticpantsLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v7, v7, v23

    move/from16 v0, v22

    invoke-virtual {v3, v0, v7}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 454
    :cond_27a
    sget v3, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sAvatarSize:I

    add-int v23, v23, v3

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mParticipantNames:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 458
    return v23
.end method


# virtual methods
.method public bind(Lcom/google/apps/tacotown/proto/A2a$HangoutData;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/StreamOneUpListener;)V
    .registers 16
    .parameter "hangoutData"
    .parameter "authorName"
    .parameter "authorId"
    .parameter "oneUpListener"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->clearLayoutState()V

    .line 166
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 167
    iput-object p2, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mAuthorName:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mAuthorId:Ljava/lang/String;

    .line 170
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v10, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getOccupantList()Ljava/util/List;

    move-result-object v9

    .line 172
    .local v9, occupants:Ljava/util/List;,"Ljava/util/List<Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;>;"
    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxHangoutAvatarsToDisplay:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 173
    .local v7, maxAvatars:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1f
    if-ge v6, v7, :cond_51

    .line 174
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    .line 175
    .local v8, occupant:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v8}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V

    .line 178
    .local v0, userImage:Lcom/google/android/apps/plus/views/ClickableUserImage;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 182
    .end local v0           #userImage:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .end local v8           #occupant:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    :cond_51
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mParticipantNames:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->invalidate()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->requestLayout()V

    .line 186
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 203
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 205
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_68

    move v4, v5

    .line 244
    :goto_15
    return v4

    .line 207
    :pswitch_16
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

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

    .line 208
    .local v1, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 209
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 210
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->invalidate()V

    goto :goto_15

    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_34
    move v4, v5

    .line 215
    goto :goto_15

    .line 219
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_36
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 220
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mClickableItems:Ljava/util/Set;

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

    .line 221
    .restart local v1       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    goto :goto_3e

    .line 224
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->invalidate()V

    move v4, v5

    .line 225
    goto :goto_15

    .line 229
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_53
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v6, :cond_63

    .line 230
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v3, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 231
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->invalidate()V

    goto :goto_15

    :cond_63
    move v4, v5

    .line 235
    goto :goto_15

    :pswitch_65
    move v4, v5

    .line 240
    goto :goto_15

    .line 205
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
    .line 190
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 191
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 192
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 251
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutAvatars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 252
    .local v0, avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(Ljava/lang/String;)V

    goto :goto_6

    .line 254
    .end local v0           #avatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    :cond_16
    return-void
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 8
    .parameter "button"

    .prologue
    .line 258
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v2, :cond_4f

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v2}, Lcom/google/android/apps/plus/service/Hangout;->isViewOnlyHangoutOnAir(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.youtube.com/watch?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {v4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getBroadcastDetails()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getYoutubeLiveId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    const-string v2, "com.google.android.youtube"

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/hangout/Utils;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 268
    const-string v2, "com.google.android.youtube"

    const-string v3, "com.google.android.youtube.WatchActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :cond_4c
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4f
    :goto_4f
    return-void

    .line 274
    .restart local v0       #context:Landroid/content/Context;
    :cond_50
    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mAuthorId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mAuthorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mHangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/google/android/apps/plus/service/Hangout;->enterGreenRoomFromStream(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)V

    goto :goto_4f
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 197
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 198
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->drawStage(Landroid/graphics/Canvas;)V

    .line 312
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 282
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 284
    .local v3, widthDimension:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_40

    .line 293
    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxWidth:I

    .line 296
    .local v2, width:I
    :goto_d
    const/high16 v6, 0x4000

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v6, p2}, Landroid/view/View;->onMeasure(II)V

    .line 298
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getPaddingLeft()I

    move-result v4

    .line 299
    .local v4, xStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getPaddingTop()I

    move-result v5

    .line 301
    .local v5, yStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getMeasuredWidth()I

    move-result v1

    .line 302
    .local v1, measuredWidth:I
    sub-int v6, v1, v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getPaddingRight()I

    move-result v7

    sub-int v0, v6, v7

    .line 304
    .local v0, contentWidth:I
    invoke-direct {p0, v4, v5, v0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->measureAndLayoutStage(III)I

    move-result v5

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0, v1, v6}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->setMeasuredDimension(II)V

    .line 307
    return-void

    .line 286
    .end local v0           #contentWidth:I
    .end local v1           #measuredWidth:I
    .end local v2           #width:I
    .end local v4           #xStart:I
    .end local v5           #yStart:I
    :sswitch_37
    sget v6, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->sMaxWidth:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 287
    .restart local v2       #width:I
    goto :goto_d

    .line 289
    .end local v2           #width:I
    :sswitch_3e
    move v2, v3

    .line 290
    .restart local v2       #width:I
    goto :goto_d

    .line 284
    :sswitch_data_40
    .sparse-switch
        -0x80000000 -> :sswitch_37
        0x40000000 -> :sswitch_3e
    .end sparse-switch
.end method

.method public processClick(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 502
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v2, :cond_29

    .line 503
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 504
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 505
    .local v0, loc:[I
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->getLocationOnScreen([I)V

    .line 506
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

    if-eqz v2, :cond_29

    .line 507
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V

    .line 510
    .end local v0           #loc:[I
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_29
    return-void
.end method
