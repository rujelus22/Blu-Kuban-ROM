.class public Lcom/google/android/apps/plus/views/EventCardDrawer;
.super Ljava/lang/Object;
.source "EventCardDrawer.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;


# static fields
.field private static sAuthorBitmap:Landroid/graphics/Bitmap;

.field private static sAvatarSize:I

.field private static sBlueRsvpBannerBitmap:Landroid/graphics/Bitmap;

.field private static sDividerPaint:Landroid/graphics/Paint;

.field private static sEventAttendingBitmap:Landroid/graphics/Bitmap;

.field private static sEventCardPadding:I

.field private static sEventInfoBackgroundPaint:Landroid/graphics/Paint;

.field private static sEventInfoTextPaint:Landroid/text/TextPaint;

.field private static sEventMaybeBitmap:Landroid/graphics/Bitmap;

.field private static sEventNameTextPaint:Landroid/text/TextPaint;

.field private static sEventNotAttendingBitmap:Landroid/graphics/Bitmap;

.field private static sEventTextLineSpacing:I

.field private static sGreenRsvpBannerBitmap:Landroid/graphics/Bitmap;

.field private static sGreyRsvpBannerBitmap:Landroid/graphics/Bitmap;

.field private static sHangoutBitmap:Landroid/graphics/Bitmap;

.field private static sHangoutTitle:Ljava/lang/String;

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private static sInitialized:Z

.field private static sLocationBitmap:Landroid/graphics/Bitmap;

.field private static sOnAirNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sOnAirPaint:Landroid/text/TextPaint;

.field private static sOnAirTitle:Ljava/lang/String;

.field private static sResizePaint:Landroid/graphics/Paint;

.field private static sRibbonHeightPercentOverlap:F

.field private static sStatusGoingPaint:Landroid/text/TextPaint;

.field private static sStatusInvitedPaint:Landroid/text/TextPaint;

.field private static sStatusMaybePaint:Landroid/text/TextPaint;

.field private static sStatusNotGoingPaint:Landroid/text/TextPaint;


# instance fields
.field mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAttribution:Ljava/lang/CharSequence;

.field private mAttributionLayoutCorner:Landroid/graphics/Point;

.field mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

.field private mBound:Z

.field mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

.field private mCreatorLayout:Landroid/text/StaticLayout;

.field private mDateLayout:Landroid/text/StaticLayout;

.field private mDateLayoutCorner:Landroid/graphics/Point;

.field mDividerLines:[F

.field mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

.field private mLocationIcon:Landroid/graphics/Bitmap;

.field private mLocationIconRect:Landroid/graphics/Rect;

.field private mLocationLayout:Landroid/text/StaticLayout;

.field private mLocationLayoutCorner:Landroid/graphics/Point;

.field private mNameLayout:Landroid/text/StaticLayout;

.field private mNameLayoutCorner:Landroid/graphics/Point;

.field private mRsvpBanner:Landroid/graphics/Bitmap;

.field private mRsvpBannerRect:Landroid/graphics/Rect;

.field private mRsvpIcon:Landroid/graphics/Bitmap;

.field private mRsvpIconRect:Landroid/graphics/Rect;

.field private mRsvpLayout:Landroid/text/StaticLayout;

.field private mRsvpLayoutCorner:Landroid/graphics/Point;

.field mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

.field private mThemeImageRect:Landroid/graphics/Rect;

.field mThemeInfo:Lcom/google/api/services/plusi/model/ThemeImage;

.field private mTypeLabel:Lcom/google/android/apps/plus/views/ClickableButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const v8, 0x7f0d0115

    const v7, 0x7f0d010b

    const v6, 0x7f0d010a

    const v5, 0x7f0d0108

    const/4 v4, 0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-boolean v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sInitialized:Z

    if-nez v2, :cond_1e5

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 137
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sResizePaint:Landroid/graphics/Paint;

    .line 138
    const v2, 0x7f0d01b6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sAvatarSize:I

    .line 139
    const v2, 0x7f0d0106

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sRibbonHeightPercentOverlap:F

    .line 141
    const v2, 0x7f0d0103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventCardPadding:I

    .line 142
    const v2, 0x7f0d0104

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventTextLineSpacing:I

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 147
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoBackgroundPaint:Landroid/graphics/Paint;

    .line 148
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoBackgroundPaint:Landroid/graphics/Paint;

    const v3, 0x7f0a007d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNameTextPaint:Landroid/text/TextPaint;

    .line 153
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNameTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 154
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNameTextPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a0078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 155
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNameTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 157
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNameTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 158
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNameTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 161
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    .line 162
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 163
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a0143

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 164
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 166
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 169
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 170
    .local v1, statusPaint:Landroid/text/TextPaint;
    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 171
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 172
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 174
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusInvitedPaint:Landroid/text/TextPaint;

    .line 175
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusInvitedPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a0141

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 177
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusInvitedPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 180
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusGoingPaint:Landroid/text/TextPaint;

    .line 181
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusGoingPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a013f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 183
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusGoingPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 186
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusNotGoingPaint:Landroid/text/TextPaint;

    .line 187
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusNotGoingPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a0140

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 189
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusNotGoingPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 192
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusMaybePaint:Landroid/text/TextPaint;

    .line 193
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusMaybePaint:Landroid/text/TextPaint;

    const v3, 0x7f0a0142

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 195
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusMaybePaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 198
    new-instance v2, Landroid/text/TextPaint;

    sget-object v3, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirPaint:Landroid/text/TextPaint;

    .line 199
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a007f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 200
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 202
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirPaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 204
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sDividerPaint:Landroid/graphics/Paint;

    .line 205
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sDividerPaint:Landroid/graphics/Paint;

    const v3, 0x7f0a013e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    sget-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sDividerPaint:Landroid/graphics/Paint;

    const v3, 0x7f0d0105

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    const v2, 0x7f02019a

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventAttendingBitmap:Landroid/graphics/Bitmap;

    .line 213
    const v2, 0x7f0201a2

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNotAttendingBitmap:Landroid/graphics/Bitmap;

    .line 215
    const v2, 0x7f0201a1

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventMaybeBitmap:Landroid/graphics/Bitmap;

    .line 218
    const v2, 0x7f0201a4

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sBlueRsvpBannerBitmap:Landroid/graphics/Bitmap;

    .line 220
    const v2, 0x7f0201a5

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sGreenRsvpBannerBitmap:Landroid/graphics/Bitmap;

    .line 222
    const v2, 0x7f0201a6

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sGreyRsvpBannerBitmap:Landroid/graphics/Bitmap;

    .line 225
    const v2, 0x7f0201a0

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sLocationBitmap:Landroid/graphics/Bitmap;

    .line 227
    const v2, 0x7f02019e

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sHangoutBitmap:Landroid/graphics/Bitmap;

    .line 230
    const v2, 0x7f0803dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sHangoutTitle:Ljava/lang/String;

    .line 231
    const v2, 0x7f080142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirTitle:Ljava/lang/String;

    .line 233
    const v2, 0x7f020035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    .line 236
    sput-boolean v4, Lcom/google/android/apps/plus/views/EventCardDrawer;->sInitialized:Z

    .line 239
    .end local v0           #resources:Landroid/content/res/Resources;
    .end local v1           #statusPaint:Landroid/text/TextPaint;
    :cond_1e5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImageRect:Landroid/graphics/Rect;

    .line 241
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIconRect:Landroid/graphics/Rect;

    .line 242
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayoutCorner:Landroid/graphics/Point;

    .line 243
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBannerRect:Landroid/graphics/Rect;

    .line 244
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIconRect:Landroid/graphics/Rect;

    .line 246
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayoutCorner:Landroid/graphics/Point;

    .line 247
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayoutCorner:Landroid/graphics/Point;

    .line 248
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayoutCorner:Landroid/graphics/Point;

    .line 249
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttributionLayoutCorner:Landroid/graphics/Point;

    .line 250
    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDividerLines:[F

    .line 251
    return-void
.end method

.method private layoutBitmapTextLabel(IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;ILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;
    .registers 26
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "bitmap"
    .parameter "bitmapRect"
    .parameter "padding"
    .parameter "text"
    .parameter "textCorner"
    .parameter "paint"
    .parameter "ellipsize"

    .prologue
    .line 361
    move-object/from16 v0, p9

    move/from16 v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    .line 363
    if-eqz p5, :cond_31

    .line 365
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v11, v3, p7

    .line 366
    .local v11, bitmapTotalWidth:I
    sub-int p3, p3, v11

    .line 368
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int v4, v4, p2

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v11

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 375
    .end local v11           #bitmapTotalWidth:I
    :cond_31
    if-eqz p11, :cond_9b

    .line 376
    move/from16 v0, p3

    int-to-float v3, v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-static {v0, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 381
    .local v13, transformedString:Ljava/lang/CharSequence;
    :goto_40
    new-instance v2, Landroid/text/StaticLayout;

    if-gtz p3, :cond_9e

    const-string v3, ""

    :goto_46
    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p10

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 384
    .local v2, returnLayout:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p5, :cond_a0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_68
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 387
    if-eqz p5, :cond_80

    .line 388
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, p4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    .line 389
    .local v10, bitmapShift:I
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 392
    .end local v10           #bitmapShift:I
    :cond_80
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sub-int v3, p4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v12, v3, 0x2

    .line 393
    .local v12, textVerticalShift:I
    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v12

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 395
    return-object v2

    .line 378
    .end local v2           #returnLayout:Landroid/text/StaticLayout;
    .end local v12           #textVerticalShift:I
    .end local v13           #transformedString:Ljava/lang/CharSequence;
    :cond_9b
    move-object/from16 v13, p8

    .restart local v13       #transformedString:Ljava/lang/CharSequence;
    goto :goto_40

    :cond_9e
    move-object v3, v13

    .line 381
    goto :goto_46

    .line 384
    .restart local v2       #returnLayout:Landroid/text/StaticLayout;
    :cond_a0
    const/4 v3, 0x0

    goto :goto_68
.end method

.method private layoutTextLabel(IIILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;
    .registers 20
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "text"
    .parameter "textCorner"
    .parameter "paint"
    .parameter "ellipsize"

    .prologue
    .line 332
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutBitmapTextLabel(IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;ILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attach()V
    .registers 2

    .prologue
    .line 696
    sget-object v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 697
    sget-object v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 698
    return-void
.end method

.method public bind(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/CardView;Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V
    .registers 12
    .parameter "account"
    .parameter "view"
    .parameter "event"
    .parameter "clickListener"

    .prologue
    const/4 v4, 0x0

    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/views/EventCardDrawer;->bind(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/CardView;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    .line 264
    return-void
.end method

.method public bind(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/CardView;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V
    .registers 13
    .parameter "account"
    .parameter "view"
    .parameter "event"
    .parameter "authorGaiaId"
    .parameter "attribution"
    .parameter "clickListener"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventCardDrawer;->clear()V

    .line 270
    iput-object p3, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mBound:Z

    .line 273
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mBound:Z

    if-eqz v0, :cond_3d

    .line 274
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 275
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsEventData;->getThemeImage(Lcom/google/api/services/plusi/model/Theme;)Lcom/google/api/services/plusi/model/ThemeImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeInfo:Lcom/google/api/services/plusi/model/ThemeImage;

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CardView;->removeClickableItem(Lcom/google/android/apps/plus/views/ClickableItem;)V

    .line 280
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    if-eqz p4, :cond_40

    move-object v2, p4

    :goto_2c
    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 283
    iput-object p5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttribution:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CardView;->addClickableItem(Lcom/google/android/apps/plus/views/ClickableItem;)V

    .line 286
    :cond_3d
    return-void

    .line 271
    :cond_3e
    const/4 v0, 0x0

    goto :goto_a

    .line 280
    :cond_40
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    goto :goto_2c
.end method

.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mBound:Z

    if-nez v0, :cond_7

    .line 328
    :goto_6
    return-void

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CardView;->removeClickableItem(Lcom/google/android/apps/plus/views/ClickableItem;)V

    .line 297
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 298
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeInfo:Lcom/google/api/services/plusi/model/ThemeImage;

    .line 299
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 300
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    .line 301
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 302
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    .line 303
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    .line 304
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImageRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBannerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 313
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayout:Landroid/text/StaticLayout;

    .line 314
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayout:Landroid/text/StaticLayout;

    .line 315
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayout:Landroid/text/StaticLayout;

    .line 316
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayout:Landroid/text/StaticLayout;

    .line 317
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mCreatorLayout:Landroid/text/StaticLayout;

    .line 318
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mTypeLabel:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 320
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIcon:Landroid/graphics/Bitmap;

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttributionLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 326
    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttribution:Ljava/lang/CharSequence;

    .line 327
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mBound:Z

    goto :goto_6
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 701
    sget-object v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 702
    sget-object v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 703
    return-void
.end method

.method public draw(IIIILandroid/graphics/Canvas;)I
    .registers 13
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 619
    move v2, p2

    .line 621
    .local v2, returnY:I
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mBound:Z

    if-nez v4, :cond_8

    move v3, v2

    .line 692
    .end local v2           #returnY:I
    .local v3, returnY:I
    :goto_7
    return v3

    .line 626
    .end local v3           #returnY:I
    .restart local v2       #returnY:I
    :cond_8
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    if-eqz v4, :cond_20

    .line 627
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/RemoteImage;->refreshIfInvalidated()V

    .line 628
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/RemoteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 630
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_20

    .line 631
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImageRect:Landroid/graphics/Rect;

    sget-object v5, Lcom/google/android/apps/plus/views/EventCardDrawer;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 636
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_20
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v4, :cond_46

    .line 637
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 639
    .local v0, avatarBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2e

    .line 640
    sget-object v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 643
    :cond_2e
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/plus/views/EventCardDrawer;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v0, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 645
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 646
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4, p5}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 650
    .end local v0           #avatarBitmap:Landroid/graphics/Bitmap;
    :cond_46
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_6a

    .line 652
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBannerRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v4, v6, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 655
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayout:Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {p0, v4, v5, p5}, Lcom/google/android/apps/plus/views/EventCardDrawer;->drawTextLayout(Landroid/text/StaticLayout;Landroid/graphics/Point;Landroid/graphics/Canvas;)V

    .line 657
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_63

    .line 658
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIconRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v4, v6, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 662
    :cond_63
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDividerLines:[F

    sget-object v5, Lcom/google/android/apps/plus/views/EventCardDrawer;->sDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v4, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 666
    :cond_6a
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayout:Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {p0, v4, v5, p5}, Lcom/google/android/apps/plus/views/EventCardDrawer;->drawTextLayout(Landroid/text/StaticLayout;Landroid/graphics/Point;Landroid/graphics/Canvas;)V

    .line 669
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayout:Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {p0, v4, v5, p5}, Lcom/google/android/apps/plus/views/EventCardDrawer;->drawTextLayout(Landroid/text/StaticLayout;Landroid/graphics/Point;Landroid/graphics/Canvas;)V

    .line 670
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayoutCorner:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int v2, v4, v5

    .line 673
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mTypeLabel:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v4, :cond_95

    .line 674
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mTypeLabel:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v4, p5}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 675
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mTypeLabel:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 679
    :cond_95
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_ba

    .line 680
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayout:Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {p0, v4, v5, p5}, Lcom/google/android/apps/plus/views/EventCardDrawer;->drawTextLayout(Landroid/text/StaticLayout;Landroid/graphics/Point;Landroid/graphics/Canvas;)V

    .line 681
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIcon:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIconRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v4, v6, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 682
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayoutCorner:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 687
    :cond_ba
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttribution:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d1

    .line 688
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mCreatorLayout:Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttributionLayoutCorner:Landroid/graphics/Point;

    invoke-virtual {p0, v4, v5, p5}, Lcom/google/android/apps/plus/views/EventCardDrawer;->drawTextLayout(Landroid/text/StaticLayout;Landroid/graphics/Point;Landroid/graphics/Canvas;)V

    .line 689
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttributionLayoutCorner:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mCreatorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int v2, v4, v5

    :cond_d1
    move v3, v2

    .line 692
    .end local v2           #returnY:I
    .restart local v3       #returnY:I
    goto/16 :goto_7
.end method

.method public drawTextLayout(Landroid/text/StaticLayout;Landroid/graphics/Point;Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "layout"
    .parameter "corner"
    .parameter "canvas"

    .prologue
    .line 400
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 401
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 402
    iget v0, p2, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 403
    return-void
.end method

.method public layout(IIII)I
    .registers 28
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mBound:Z

    if-nez v5, :cond_e

    .line 586
    :cond_c
    const/4 v5, 0x0

    .line 615
    :goto_d
    return v5

    .line 589
    :cond_e
    sget v10, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventCardPadding:I

    .line 590
    .local v10, padding:I
    mul-int/lit8 v15, v10, 0x2

    .line 591
    .local v15, doublePadding:I
    sget v11, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventTextLineSpacing:I

    .line 593
    .local v11, lineSpacing:I
    move/from16 v18, p1

    .line 594
    .local v18, themeLeft:I
    move/from16 v19, p2

    .line 595
    .local v19, themeTop:I
    move/from16 v20, p3

    .line 596
    .local v20, themeWidth:I
    move/from16 v0, v20

    int-to-float v5, v0

    const v21, 0x40570a3d

    div-float v5, v5, v21

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 598
    .local v17, themeHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutTheme(IIII)V

    .line 600
    sget v13, Lcom/google/android/apps/plus/views/EventCardDrawer;->sAvatarSize:I

    .line 601
    .local v13, avatarSizeLength:I
    add-int v12, p1, v10

    .line 602
    .local v12, avatarLeft:I
    add-int v5, p2, v17

    sub-int v14, v5, v15

    .line 604
    .local v14, avatarTop:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    add-int v21, v12, v13

    add-int v22, v14, v13

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v12, v14, v0, v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 607
    add-int v5, v12, v13

    add-int v6, v5, v10

    .line 608
    .local v6, infoLeft:I
    add-int v7, p2, v17

    .line 609
    .local v7, infoTop:I
    add-int v5, p1, p3

    sub-int/2addr v5, v6

    sub-int v8, v5, v15

    .line 610
    .local v8, infoWidth:I
    sub-int v5, p4, v17

    sub-int v9, v5, v10

    .local v9, infoHeight:I
    move-object/from16 v5, p0

    .line 612
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutInfo(IIIIII)I

    move-result v16

    .line 615
    .local v16, infoCalculatedHeight:I
    add-int v5, v7, v16

    sub-int v5, v5, p2

    goto :goto_d
.end method

.method protected layoutInfo(IIIIII)I
    .registers 30
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "padding"
    .parameter "spacing"

    .prologue
    .line 506
    move/from16 v6, p2

    .line 509
    .local v6, currentTop:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutStatus(IIII)I

    move-result v4

    add-int/2addr v6, v4

    .line 512
    add-int v6, v6, p5

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v8, v4, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayoutCorner:Landroid/graphics/Point;

    sget-object v10, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNameTextPaint:Landroid/text/TextPaint;

    const/4 v11, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutTextLabel(IIILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayout:Landroid/text/StaticLayout;

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v6, v4

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttribution:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5f

    .line 519
    add-int v6, v6, p6

    .line 520
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttribution:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAttributionLayoutCorner:Landroid/graphics/Point;

    sget-object v10, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutTextLabel(IIILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mCreatorLayout:Landroid/text/StaticLayout;

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mCreatorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v6, v4

    .line 526
    :cond_5f
    add-int v6, v6, p6

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CardView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v5, v7, v9}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDateRange(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, startTimeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayoutCorner:Landroid/graphics/Point;

    sget-object v10, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    const/4 v11, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutTextLabel(IIILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayout:Landroid/text/StaticLayout;

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v6, v4

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    if-eqz v4, :cond_e2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/EventOptions;->broadcast:Ljava/lang/Boolean;

    if-eqz v4, :cond_e2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/EventOptions;->broadcast:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 540
    add-int v6, v6, p6

    .line 541
    new-instance v9, Lcom/google/android/apps/plus/views/ClickableButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CardView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirTitle:Ljava/lang/String;

    sget-object v13, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirPaint:Landroid/text/TextPaint;

    sget-object v14, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v15, Lcom/google/android/apps/plus/views/EventCardDrawer;->sOnAirNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    const/16 v16, 0x0

    move/from16 v17, p1

    move/from16 v18, v6

    invoke-direct/range {v9 .. v18}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mTypeLabel:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mTypeLabel:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v6, v4

    .line 548
    :cond_e2
    const/16 v17, 0x0

    .line 549
    .local v17, locationText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v4, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    move-object/from16 v22, v0

    .line 550
    .local v22, location:Lcom/google/api/services/plusi/model/Place;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v4, Lcom/google/api/services/plusi/model/PlusEvent;->hangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;

    move-object/from16 v21, v0

    .line 552
    .local v21, hangout:Lcom/google/api/services/plusi/model/HangoutInfo;
    if-eqz v22, :cond_145

    .line 553
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    if-eqz v4, :cond_13e

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    iget-object v0, v4, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 554
    :goto_104
    sget-object v4, Lcom/google/android/apps/plus/views/EventCardDrawer;->sLocationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIcon:Landroid/graphics/Bitmap;

    .line 560
    :cond_10a
    :goto_10a
    if-eqz v17, :cond_13b

    .line 561
    add-int v6, v6, p6

    .line 563
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIconRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayoutCorner:Landroid/graphics/Point;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventInfoTextPaint:Landroid/text/TextPaint;

    const/16 v20, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p1

    move v11, v6

    move/from16 v12, p3

    move/from16 v16, p5

    invoke-direct/range {v9 .. v20}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutBitmapTextLabel(IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;ILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayout:Landroid/text/StaticLayout;

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v6, v4

    .line 570
    :cond_13b
    sub-int v4, v6, p2

    return v4

    .line 553
    :cond_13e
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_104

    .line 555
    :cond_145
    if-eqz v21, :cond_10a

    .line 556
    sget-object v17, Lcom/google/android/apps/plus/views/EventCardDrawer;->sHangoutTitle:Ljava/lang/String;

    .line 557
    sget-object v4, Lcom/google/android/apps/plus/views/EventCardDrawer;->sHangoutBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mLocationIcon:Landroid/graphics/Bitmap;

    goto :goto_10a
.end method

.method public layoutStatus(IIII)I
    .registers 23
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "padding"

    .prologue
    .line 414
    const/4 v9, 0x0

    .line 415
    .local v9, rsvpText:Ljava/lang/String;
    const/4 v11, 0x0

    .line 416
    .local v11, textPaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/CardView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 418
    .local v14, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsEventData;->canRsvp(Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 419
    const/4 v1, 0x0

    .line 472
    :goto_15
    return v1

    .line 422
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpStatus(Lcom/google/api/services/plusi/model/PlusEvent;)I

    move-result v16

    .line 423
    .local v16, rsvpStatus:I
    packed-switch v16, :pswitch_data_132

    .line 450
    :goto_21
    sget v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sRibbonHeightPercentOverlap:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 452
    .local v13, bannerOverlap:I
    sub-int v17, p2, v13

    .line 453
    .local v17, rsvpTop:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBannerRect:Landroid/graphics/Rect;

    add-int v2, p1, p3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, p1, p3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int v5, v5, v17

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBannerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p3, v1

    sub-int v4, v1, p4

    .line 458
    .local v4, statusWidth:I
    add-int v3, p2, p4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIconRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayoutCorner:Landroid/graphics/Point;

    const/4 v12, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v8, p4

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layoutBitmapTextLabel(IIIILandroid/graphics/Bitmap;Landroid/graphics/Rect;ILjava/lang/CharSequence;Landroid/graphics/Point;Landroid/text/TextPaint;Z)Landroid/text/StaticLayout;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayout:Landroid/text/StaticLayout;

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayoutCorner:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, v1, p2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_12f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v1, p2

    :goto_9c
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v1, v1, p2

    add-int v15, v1, p4

    .line 467
    .local v15, dividerY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDividerLines:[F

    const/4 v2, 0x0

    move/from16 v0, p1

    int-to-float v3, v0

    aput v3, v1, v2

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDividerLines:[F

    const/4 v2, 0x1

    int-to-float v3, v15

    aput v3, v1, v2

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDividerLines:[F

    const/4 v2, 0x2

    add-int v3, p1, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mDividerLines:[F

    const/4 v2, 0x3

    int-to-float v3, v15

    aput v3, v1, v2

    .line 472
    sub-int v1, v15, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBannerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_15

    .line 425
    .end local v4           #statusWidth:I
    .end local v13           #bannerOverlap:I
    .end local v15           #dividerY:I
    .end local v17           #rsvpTop:I
    :pswitch_d9
    const v1, 0x7f08012a

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 426
    sget-object v11, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusGoingPaint:Landroid/text/TextPaint;

    .line 427
    sget-object v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventAttendingBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    .line 428
    sget-object v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sGreenRsvpBannerBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    goto/16 :goto_21

    .line 431
    :pswitch_f0
    const v1, 0x7f08012c

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 433
    sget-object v11, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusNotGoingPaint:Landroid/text/TextPaint;

    .line 434
    sget-object v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventNotAttendingBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    .line 435
    sget-object v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sGreyRsvpBannerBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    goto/16 :goto_21

    .line 438
    :pswitch_107
    const v1, 0x7f08012b

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 439
    sget-object v11, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusMaybePaint:Landroid/text/TextPaint;

    .line 440
    sget-object v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sEventMaybeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpIcon:Landroid/graphics/Bitmap;

    .line 441
    sget-object v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sBlueRsvpBannerBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    goto/16 :goto_21

    .line 444
    :pswitch_11e
    const v1, 0x7f080129

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 445
    sget-object v11, Lcom/google/android/apps/plus/views/EventCardDrawer;->sStatusInvitedPaint:Landroid/text/TextPaint;

    .line 446
    sget-object v1, Lcom/google/android/apps/plus/views/EventCardDrawer;->sBlueRsvpBannerBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mRsvpBanner:Landroid/graphics/Bitmap;

    goto/16 :goto_21

    .line 462
    .restart local v4       #statusWidth:I
    .restart local v13       #bannerOverlap:I
    .restart local v17       #rsvpTop:I
    :cond_12f
    const/4 v1, 0x0

    goto/16 :goto_9c

    .line 423
    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_d9
        :pswitch_107
        :pswitch_f0
    .end packed-switch
.end method

.method protected layoutTheme(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 484
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeInfo:Lcom/google/api/services/plusi/model/ThemeImage;

    if-eqz v2, :cond_2c

    .line 485
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImageRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 487
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeInfo:Lcom/google/api/services/plusi/model/ThemeImage;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/ThemeImage;->url:Ljava/lang/String;

    invoke-static {p3, p4, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, themeUrl:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/content/EventThemeImageRequest;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/content/EventThemeImageRequest;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, request:Lcom/google/android/apps/plus/content/EventThemeImageRequest;
    new-instance v2, Lcom/google/android/apps/plus/views/RemoteImage;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mContainingCardView:Lcom/google/android/apps/plus/views/CardView;

    invoke-direct {v2, v3, v0}, Lcom/google/android/apps/plus/views/RemoteImage;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/content/ImageRequest;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    .line 492
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/RemoteImage;->load()V

    .line 494
    .end local v0           #request:Lcom/google/android/apps/plus/content/EventThemeImageRequest;
    .end local v1           #themeUrl:Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_9

    .line 716
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(Ljava/lang/String;)V

    .line 718
    :cond_9
    return-void
.end method

.method public onMediaImageChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mEventInfo:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/RemoteImage;->getRequest()Lcom/google/android/apps/plus/content/ImageRequest;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EventThemeImageRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EventThemeImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 709
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventCardDrawer;->mThemeImage:Lcom/google/android/apps/plus/views/RemoteImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/RemoteImage;->invalidate()V

    .line 711
    :cond_1f
    return-void
.end method
