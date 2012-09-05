.class public Lcom/google/android/apps/plus/views/StreamRowView;
.super Landroid/view/View;
.source "StreamRowView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/StreamRowView$4;,
        Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;,
        Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;
    }
.end annotation


# static fields
.field private static AUTHOR_TOP_MARGIN:I

.field private static CHECKIN_RIGHT_MARGIN:I

.field private static COMMENT_MARGIN_BOTTOM:I

.field private static COMMENT_MARGIN_LEFT:I

.field private static COMMENT_MARGIN_RIGHT:I

.field private static COMMENT_MARGIN_TOP:I

.field private static COMMENT_PLUS_ONE_INFO_VERTICAL_PADDING:I

.field private static COMMENT_SEPARATOR_BOTTOM_MARGIN:I

.field private static COMMENT_SEPARATOR_HEIGHT:I

.field private static COMMENT_SEPARATOR_TOP_MARGIN:I

.field private static CONTENT_BOTTOM_MARGIN:I

.field private static CONTENT_LEFT_MARGIN:I

.field private static CONTENT_TOP_MARGIN:I

.field private static FAV_ICON_SIZE:I

.field private static HANGOUT_AVATAR_DIMENSION:I

.field private static HANGOUT_AVATAR_MARGIN:I

.field private static HANGOUT_LIVE_MARGIN:I

.field private static HANGOUT_UNSUPPORTED_TEXT_MARGIN:I

.field private static ICON_RIGHT_MARGIN:I

.field private static MAX_DOCUMENT_PREVIEW_LENGTH:I

.field private static MAX_PREVIEW_LENGTH:I

.field private static ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

.field private static ORIGINAL_AUTHOR_MARGIN:I

.field private static PLUS_ONE_RIGHT_MARGIN:I

.field private static RESHARE_INDENT:I

.field private static STREAM_IMAGE_DIMENSION:I

.field private static STREAM_IMAGE_MORE_INDICATOR_WIDTH:I

.field private static STREAM_IMAGE_RIGHT_MARGIN:I

.field private static STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

.field private static STREAM_IMAGE_SKYJAM_DIMENSION:I

.field private static STREAM_IMAGE_SKYJAM_RIGHT_MARGIN:I

.field private static STREAM_IMAGE_SMALL_DIMENSION:I

.field private static STREAM_IMAGE_TOP_MARGIN:I

.field private static STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

.field private static STREAM_SKYJAM_PLAY_INFO_HORIZONTAL_SPACING:I

.field private static STREAM_SKYJAM_PLAY_INFO_VERTICAL_MARGIN:I

.field private static TIME_BOTTOM_MARGIN:I

.field private static TIME_TOP_MARGIN:I

.field private static USER_BITMAP_DIMENSION:I

.field private static mInitialized:Z

.field private static final mRemoteViewDetailMediaIds:[I

.field private static final mRemoteViewDetailMediaSmallIds:[I

.field private static final mRemoteViewMediaIds:[[I

.field private static final mRemoteViewMediaOverlayIds:[[I

.field private static final mRemoteViewTextIds:[I

.field private static sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sAuthorBitmap:Landroid/graphics/Bitmap;

.field private static sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

.field private static sCheckinBitmap:Landroid/graphics/Bitmap;

.field private static sClickedPaint:Landroid/graphics/Paint;

.field private static sCommentBackgroundPaint:Landroid/graphics/Paint;

.field private static sCommentContentPaint:Landroid/text/TextPaint;

.field private static sCommentNamePaint:Landroid/text/TextPaint;

.field private static sCommentSepPaint:Landroid/graphics/Paint;

.field private static sCommentsTopSepPaint:Landroid/graphics/Paint;

.field private static sContentPaint:Landroid/text/TextPaint;

.field private static sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

.field private static sFeedbackPaint:Landroid/text/TextPaint;

.field private static sGoogleMusicBitmap:Landroid/graphics/Bitmap;

.field private static sHangoutJoinButtonPaint:Landroid/text/TextPaint;

.field private static sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sHangoutLiveBitmap:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

.field private static sListenBuyPaint:Landroid/text/TextPaint;

.field private static sLocationBitmap:Landroid/graphics/Bitmap;

.field private static sLocationPaint:Landroid/text/TextPaint;

.field private static sMusicBuyDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sMusicBuyPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sMusicListenDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sMusicListenPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sNamePaint:Landroid/text/TextPaint;

.field private static sOriginalAuthorBitmap:Landroid/graphics/Bitmap;

.field private static sOriginalNamePaint:Landroid/text/TextPaint;

.field private static sPhotosMoreBitmap:Landroid/graphics/Bitmap;

.field private static sPlayMusicBitmap:Landroid/graphics/Bitmap;

.field private static sPlayOverlayBitmap:Landroid/graphics/Bitmap;

.field private static sPlusoneBitmap:Landroid/graphics/Bitmap;

.field private static sPlusoneByMeBitmap:Landroid/graphics/Bitmap;

.field private static sResharePaint:Landroid/graphics/Paint;

.field private static final sResizePaint:Landroid/graphics/Paint;

.field private static sSkyjamAlbumPaint:Landroid/text/TextPaint;

.field private static sSkyjamArtistPaint:Landroid/text/TextPaint;

.field private static sSkyjamButtonPaint:Landroid/text/TextPaint;

.field private static sSkyjamDividerPaint:Landroid/graphics/Paint;

.field private static sSkyjamPlayInfoBackgroundBitmap:Landroid/graphics/Bitmap;

.field private static sSkyjamPlayInfoBackgroundPaint:Landroid/graphics/Paint;

.field private static sSkyjamPlayInfoBorderPaint:Landroid/graphics/Paint;

.field private static sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

.field private static sSkyjamTitlePaint:Landroid/text/TextPaint;

.field private static sStopMusicBitmap:Landroid/graphics/Bitmap;

.field private static sTimePaint:Landroid/text/TextPaint;

.field private static sTitleContentPaint:Landroid/text/TextPaint;

.field private static sVideoBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

.field private mAclDisplay:Ljava/lang/String;

.field private mActivityId:Ljava/lang/String;

.field private mAuthorId:J

.field private mAuthorLayout:Landroid/text/StaticLayout;

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

.field private mCommentBackground:Landroid/graphics/Rect;

.field private mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mCommentNameLayouts:[Landroid/text/StaticLayout;

.field private mCommentTimes:[Ljava/lang/String;

.field private mComments:[Lcom/google/android/apps/plus/content/DbComment;

.field private mContent:Landroid/text/Spanned;

.field private mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mCreationSource:Ljava/lang/String;

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mDisplayComments:Z

.field private mDisplayDetails:Z

.field private mDocumentContent:Landroid/text/Spanned;

.field private mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mDocumentDescription:Landroid/text/Spanned;

.field private mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private final mFavIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

.field private mHangoutUnsupportedTextLayout:Landroid/text/StaticLayout;

.field private final mImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/views/ClickableMediaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCheckIn:Z

.field private mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private final mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

.field private mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mLocked:Z

.field private mMediaContent:Landroid/text/Spanned;

.field private mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mMediaDescription:Landroid/text/Spanned;

.field private mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

.field private mOriginalAuthorId:J

.field private mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

.field private mOriginalAuthorLayout:Landroid/text/StaticLayout;

.field private mOriginalAuthorName:Ljava/lang/String;

.field private final mPlusOneClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

.field private mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mPosition:I

.field private mPublicPost:Z

.field private mRelativeTime:Ljava/lang/String;

.field private mSearchQuery:Ljava/lang/String;

.field private mSkyjamAutoPlay:Z

.field private mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

.field private mSource:Ljava/lang/String;

.field private mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mTitleContent:Landroid/text/Spanned;

.field private mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mTitleDescription:Landroid/text/Spanned;

.field private mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private final mTitleImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalComments:I

.field private mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->sResizePaint:Landroid/graphics/Paint;

    .line 187
    new-array v0, v3, [I

    const v1, 0x7f0d019f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    .line 188
    new-array v0, v3, [I

    const v1, 0x7f0d019d

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaIds:[I

    .line 189
    new-array v0, v3, [I

    const v1, 0x7f0d019e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    .line 190
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3c

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    .line 191
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_44

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaOverlayIds:[[I

    return-void

    .line 190
    :array_3c
    .array-data 0x4
        0xa0t 0x1t 0xdt 0x7ft
        0xa2t 0x1t 0xdt 0x7ft
    .end array-data

    .line 191
    :array_44
    .array-data 0x4
        0xa1t 0x1t 0xdt 0x7ft
        0xa3t 0x1t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/StreamRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 530
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v2, 0x7f020035

    const/high16 v5, 0x3f80

    const v4, 0x7f090001

    const v3, 0x7f09000b

    const/4 v6, 0x1

    .line 536
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 421
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleImages:Ljava/util/Map;

    .line 424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mFavIcons:Ljava/util/Map;

    .line 425
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    .line 484
    new-instance v1, Lcom/google/android/apps/plus/views/StreamRowView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamRowView$1;-><init>(Lcom/google/android/apps/plus/views/StreamRowView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 497
    new-instance v1, Lcom/google/android/apps/plus/views/StreamRowView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamRowView$2;-><init>(Lcom/google/android/apps/plus/views/StreamRowView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 510
    new-instance v1, Lcom/google/android/apps/plus/views/StreamRowView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/StreamRowView$3;-><init>(Lcom/google/android/apps/plus/views/StreamRowView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    .line 538
    sget-boolean v1, Lcom/google/android/apps/plus/views/StreamRowView;->mInitialized:Z

    if-nez v1, :cond_646

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 542
    .local v0, resources:Landroid/content/res/Resources;
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 544
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sOriginalAuthorBitmap:Landroid/graphics/Bitmap;

    .line 546
    const v1, 0x7f020077

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationBitmap:Landroid/graphics/Bitmap;

    .line 547
    const v1, 0x7f020070

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckinBitmap:Landroid/graphics/Bitmap;

    .line 548
    const v1, 0x7f02003a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 550
    const v1, 0x7f020152

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sVideoBitmap:Landroid/graphics/Bitmap;

    .line 552
    const v1, 0x7f0200ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    .line 553
    const v1, 0x7f0200ad

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneByMeBitmap:Landroid/graphics/Bitmap;

    .line 555
    const v1, 0x7f0200a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPhotosMoreBitmap:Landroid/graphics/Bitmap;

    .line 557
    const v1, 0x7f02003d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    .line 558
    const v1, 0x7f0200aa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayMusicBitmap:Landroid/graphics/Bitmap;

    .line 559
    const v1, 0x7f0200cb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sStopMusicBitmap:Landroid/graphics/Bitmap;

    .line 560
    const v1, 0x7f0200ab

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayOverlayBitmap:Landroid/graphics/Bitmap;

    .line 562
    const v1, 0x7f0200e3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 564
    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicBuyDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 565
    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicBuyPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 567
    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicListenDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 569
    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicListenPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 571
    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 573
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    .line 574
    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 576
    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 578
    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutLiveBitmap:Landroid/graphics/drawable/NinePatchDrawable;

    .line 581
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentsTopSepPaint:Landroid/graphics/Paint;

    .line 582
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentsTopSepPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 583
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentsTopSepPaint:Landroid/graphics/Paint;

    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentsTopSepPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 586
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentSepPaint:Landroid/graphics/Paint;

    .line 587
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentSepPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 588
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentSepPaint:Landroid/graphics/Paint;

    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentSepPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 591
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sNamePaint:Landroid/text/TextPaint;

    .line 592
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 593
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 594
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 595
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 597
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sOriginalNamePaint:Landroid/text/TextPaint;

    .line 598
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sOriginalNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 599
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sOriginalNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 600
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sOriginalNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 603
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    .line 604
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 605
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 606
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 607
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 609
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sResharePaint:Landroid/graphics/Paint;

    .line 610
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sResharePaint:Landroid/graphics/Paint;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sResharePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 612
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sResharePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 614
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    .line 615
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 616
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 617
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 618
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 620
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTitleContentPaint:Landroid/text/TextPaint;

    .line 621
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTitleContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 622
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTitleContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 623
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTitleContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 625
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTitleContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 626
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sTitleContentPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 628
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationPaint:Landroid/text/TextPaint;

    .line 629
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 630
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 631
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 632
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 634
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    .line 635
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 636
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 637
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 638
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 640
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentNamePaint:Landroid/text/TextPaint;

    .line 641
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 642
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 643
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 645
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 647
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentContentPaint:Landroid/text/TextPaint;

    .line 648
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 649
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 651
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentContentPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 653
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentContentPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 655
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    .line 656
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 657
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 659
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sClickedPaint:Landroid/graphics/Paint;

    .line 660
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sClickedPaint:Landroid/graphics/Paint;

    const v2, 0x7f090010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 661
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sClickedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 663
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamTitlePaint:Landroid/text/TextPaint;

    .line 664
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 665
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamTitlePaint:Landroid/text/TextPaint;

    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 666
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamTitlePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 668
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamTitlePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 670
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamArtistPaint:Landroid/text/TextPaint;

    .line 671
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamArtistPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 672
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamArtistPaint:Landroid/text/TextPaint;

    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 673
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamArtistPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 676
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamAlbumPaint:Landroid/text/TextPaint;

    .line 677
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 678
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamAlbumPaint:Landroid/text/TextPaint;

    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 679
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamAlbumPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 682
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamButtonPaint:Landroid/text/TextPaint;

    .line 683
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 684
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamButtonPaint:Landroid/text/TextPaint;

    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 685
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamButtonPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 687
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamButtonPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 689
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sListenBuyPaint:Landroid/text/TextPaint;

    .line 690
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sListenBuyPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 691
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sListenBuyPaint:Landroid/text/TextPaint;

    const v2, 0x7f090017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 692
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sListenBuyPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 695
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    .line 696
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 697
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    const v2, 0x7f090018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 699
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 702
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamDividerPaint:Landroid/graphics/Paint;

    .line 703
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamDividerPaint:Landroid/graphics/Paint;

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 704
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 706
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBorderPaint:Landroid/graphics/Paint;

    .line 707
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 708
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 710
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBackgroundPaint:Landroid/graphics/Paint;

    .line 711
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBackgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBackgroundBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 714
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 716
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    .line 717
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 718
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    const v2, 0x7f090076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 719
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c00c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 721
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 723
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    .line 724
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 725
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f090077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 727
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c00c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 729
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 732
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->AUTHOR_TOP_MARGIN:I

    .line 733
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->TIME_TOP_MARGIN:I

    .line 734
    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->TIME_BOTTOM_MARGIN:I

    .line 735
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_LEFT_MARGIN:I

    .line 736
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_TOP_MARGIN:I

    .line 737
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    .line 738
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    .line 739
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->CHECKIN_RIGHT_MARGIN:I

    .line 740
    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_MARGIN:I

    .line 742
    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    .line 743
    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_PLUS_ONE_INFO_VERTICAL_PADDING:I

    .line 745
    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_HEIGHT:I

    .line 747
    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_TOP_MARGIN:I

    .line 749
    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_BOTTOM_MARGIN:I

    .line 751
    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_TOP:I

    .line 752
    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_LEFT:I

    .line 753
    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_RIGHT:I

    .line 754
    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_BOTTOM:I

    .line 755
    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->RESHARE_INDENT:I

    .line 756
    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    .line 757
    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    .line 759
    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->PLUS_ONE_RIGHT_MARGIN:I

    .line 760
    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    .line 761
    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SMALL_DIMENSION:I

    .line 763
    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_RIGHT_MARGIN:I

    .line 765
    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_TOP_MARGIN:I

    .line 766
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_MORE_INDICATOR_WIDTH:I

    .line 768
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    .line 770
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_DIMENSION:I

    .line 772
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_RIGHT_MARGIN:I

    .line 774
    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    .line 776
    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_VERTICAL_MARGIN:I

    .line 778
    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_HORIZONTAL_SPACING:I

    .line 780
    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_DIMENSION:I

    .line 782
    const v1, 0x7f0c00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    .line 783
    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_LIVE_MARGIN:I

    .line 784
    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_UNSUPPORTED_TEXT_MARGIN:I

    .line 786
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->MAX_PREVIEW_LENGTH:I

    .line 787
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamRowView;->MAX_DOCUMENT_PREVIEW_LENGTH:I

    .line 790
    sput-boolean v6, Lcom/google/android/apps/plus/views/StreamRowView;->mInitialized:Z

    .line 793
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_646
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 794
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/StreamRowView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/StreamRowView;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/views/StreamRowView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/views/ItemClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public static bindView(Lcom/google/android/apps/plus/views/StreamRowView;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;ZZLjava/lang/String;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3028
    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3030
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->clear()V

    .line 3031
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3032
    invoke-virtual {p0, p4}, Lcom/google/android/apps/plus/views/StreamRowView;->setClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V

    .line 3033
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setPosition(I)V

    .line 3034
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3035
    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/views/StreamRowView;->setActivityId(Ljava/lang/String;)V

    .line 3036
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamRowView;->setSearchQuery(Ljava/lang/String;)V

    .line 3037
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamRowView;->setDisplayDetails(Z)V

    .line 3038
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setAclDisplay(Ljava/lang/String;)V

    .line 3039
    const/16 v3, 0xd

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setCreationSource(Ljava/lang/String;)V

    .line 3040
    const/4 v3, 0x4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setAuthor(JLjava/lang/String;)V

    .line 3041
    const/16 v1, 0x10

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_c4

    const/4 v1, 0x1

    :goto_49
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setLocked(Z)V

    .line 3042
    const/16 v1, 0xe

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c6

    const/4 v1, 0x1

    :goto_56
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setPublic(Z)V

    .line 3043
    const/16 v1, 0xb

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setTime(Ljava/lang/String;)V

    .line 3049
    if-eqz p6, :cond_ca

    .line 3051
    const/16 v1, 0x8

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3052
    if-eqz v1, :cond_c8

    .line 3053
    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbComment;->deserialize([B)[Lcom/google/android/apps/plus/content/DbComment;

    move-result-object v1

    .line 3058
    :goto_78
    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setComments(ZI[Lcom/google/android/apps/plus/content/DbComment;)V

    .line 3064
    :goto_81
    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3065
    if-eqz v1, :cond_ea

    .line 3066
    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbExplanation;->deserialize([B)[Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v2

    .line 3067
    if-eqz v2, :cond_ea

    .line 3068
    const/4 v1, 0x0

    :goto_8f
    array-length v3, v2

    if-ge v1, v3, :cond_ea

    .line 3069
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_336

    .line 3083
    const-string v3, "StreamRowView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled explanation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    :goto_c1
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 3041
    :cond_c4
    const/4 v1, 0x0

    goto :goto_49

    .line 3042
    :cond_c6
    const/4 v1, 0x0

    goto :goto_56

    .line 3055
    :cond_c8
    const/4 v1, 0x0

    goto :goto_78

    .line 3061
    :cond_ca
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setComments(ZI[Lcom/google/android/apps/plus/content/DbComment;)V

    goto :goto_81

    .line 3071
    :pswitch_d1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3072
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/apps/plus/views/StreamRowView;->setOriginalAuthor(JLjava/lang/String;)V

    goto :goto_c1

    .line 3078
    :pswitch_e5
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setCheckin(Z)V

    goto :goto_c1

    .line 3091
    :cond_ea
    const/16 v1, 0xc

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setSource(Ljava/lang/String;)V

    .line 3093
    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3094
    if-eqz v1, :cond_2be

    .line 3095
    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v10

    .line 3096
    const/4 v1, 0x0

    move v8, v1

    :goto_101
    array-length v1, v10

    if-ge v8, v1, :cond_2be

    .line 3097
    aget-object v1, v10, v8

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    .line 3098
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v2

    .line 3100
    const-string v3, "StreamRowView"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 3101
    const-string v3, "StreamRowView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Media type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", description: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thumbnail URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    :cond_16b
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_33e

    .line 3187
    const-string v1, "StreamRowView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled media type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    :cond_18e
    :goto_18e
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_101

    .line 3110
    :pswitch_193
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setContent(Ljava/lang/String;)V

    goto :goto_18e

    .line 3115
    :pswitch_19b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getFavIconDimension()I

    move-result v2

    .line 3116
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/views/StreamRowView;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setTitleDescription(Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 3119
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 3120
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3121
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18e

    .line 3122
    const-string v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 3123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3125
    :cond_1e0
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v1, v3, v2}, Lcom/google/android/apps/plus/service/EsService;->getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/views/StreamRowView;->setTitleImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_18e

    .line 3133
    :pswitch_1ee
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setMediaContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 3136
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 3137
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    invoke-static {v2, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18e

    .line 3140
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22a

    .line 3141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3144
    :cond_22a
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    invoke-static {p1, p2, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v3, v10, v8

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/content/DbMedia;)V

    goto/16 :goto_18e

    .line 3153
    :pswitch_23d
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setMediaContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 3156
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 3157
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    invoke-static {v2, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3159
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18e

    .line 3160
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_279

    .line 3161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3164
    :cond_279
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    invoke-static {p1, p2, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v3, v10, v8

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/content/DbMedia;)V

    goto/16 :goto_18e

    .line 3173
    :pswitch_28c
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->setDocumentContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setDocumentDescription(Ljava/lang/String;)V

    goto/16 :goto_18e

    .line 3180
    :pswitch_2a0
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/plus/views/StreamRowView;->setSkyjamContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18e

    .line 3194
    :cond_2be
    const/16 v1, 0x11

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3195
    if-eqz v1, :cond_304

    .line 3197
    :try_start_2c6
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v1

    .line 3198
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V
    :try_end_2cd
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2c6 .. :try_end_2cd} :catch_2ee

    .line 3209
    :goto_2cd
    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3210
    if-eqz v1, :cond_31f

    .line 3212
    :try_start_2d4
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    .line 3213
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    :try_end_2db
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2d4 .. :try_end_2db} :catch_309

    .line 3224
    :goto_2db
    const/16 v1, 0xa

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3225
    if-eqz v1, :cond_2ea

    .line 3227
    :try_start_2e3
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    .line 3228
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    :try_end_2ea
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2e3 .. :try_end_2ea} :catch_324

    .line 3235
    :cond_2ea
    :goto_2ea
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->requestLayout()V

    .line 3236
    return-void

    .line 3199
    :catch_2ee
    move-exception v1

    .line 3200
    const-string v2, "StreamRowView"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 3201
    const-string v2, "StreamRowView"

    const-string v3, "Error parsing HangoutData"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3203
    :cond_2ff
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V

    goto :goto_2cd

    .line 3206
    :cond_304
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V

    goto :goto_2cd

    .line 3214
    :catch_309
    move-exception v1

    .line 3215
    const-string v2, "StreamRowView"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31a

    .line 3216
    const-string v2, "StreamRowView"

    const-string v3, "Error parsing PlusOneData"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3218
    :cond_31a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_2db

    .line 3221
    :cond_31f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_2db

    .line 3229
    :catch_324
    move-exception v1

    .line 3230
    const-string v2, "StreamRowView"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2ea

    .line 3231
    const-string v2, "StreamRowView"

    const-string v3, "Error parsing Location"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ea

    .line 3069
    :pswitch_data_336
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_e5
    .end packed-switch

    .line 3108
    :pswitch_data_33e
    .packed-switch 0x1
        :pswitch_193
        :pswitch_19b
        :pswitch_1ee
        :pswitch_23d
        :pswitch_28c
        :pswitch_2a0
        :pswitch_2a0
    .end packed-switch
.end method

.method private measureHeight(II)I
    .registers 26
    .parameter
    .parameter

    .prologue
    .line 1499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 1501
    const/4 v1, 0x0

    .line 2115
    :goto_7
    return v1

    .line 1504
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 1505
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 1507
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1510
    const/high16 v1, 0x4000

    move/from16 v0, v20

    if-ne v0, v1, :cond_22

    move/from16 v1, v19

    .line 1512
    goto :goto_7

    .line 1514
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_LEFT_MARGIN:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    add-int/2addr v2, v3

    sub-int v4, v1, v2

    .line 1517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v5

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    add-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingTop()I

    move-result v6

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    add-int/2addr v6, v7

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    add-int/2addr v1, v2

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_LEFT_MARGIN:I

    add-int v18, v1, v2

    .line 1522
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorName:Ljava/lang/String;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorLayout:Landroid/text/StaticLayout;

    .line 1524
    const v1, 0x7f0700da

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorName:Ljava/lang/String;

    aput-object v5, v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    const-string v1, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRelativeTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &middot; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCreationSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &middot; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1530
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 1531
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z

    if-eqz v1, :cond_a74

    .line 1532
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1533
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclDisplay:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1534
    if-ltz v1, :cond_ed

    .line 1535
    new-instance v3, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclDisplay:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 1536
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1539
    :cond_ed
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1540
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->TIME_TOP_MARGIN:I

    add-int/2addr v2, v3

    move/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1551
    :goto_131
    const v1, 0x7f0700dc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRelativeTime:Ljava/lang/String;

    aput-object v5, v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    const-string v1, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const v1, 0x7f0700dd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCreationSource:Ljava/lang/String;

    aput-object v5, v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    const-string v1, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    const v1, 0x7f0700de

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclDisplay:Ljava/lang/String;

    aput-object v5, v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    const-string v1, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingTop()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->AUTHOR_TOP_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->TIME_TOP_MARGIN:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->TIME_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingTop()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContent:Landroid/text/Spanned;

    if-eqz v1, :cond_d98

    .line 1566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1567
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContent:Landroid/text/Spanned;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move/from16 v0, v18

    invoke-virtual {v1, v0, v10}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v2, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    :goto_216
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorId:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_a89

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    add-int v3, v3, v18

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v5, v1

    move/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3, v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    if-eqz v2, :cond_2a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a4

    .line 1583
    const v2, 0x7f070143

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1585
    new-instance v5, Landroid/text/StaticLayout;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sOriginalNamePaint:Landroid/text/TextPaint;

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    sub-int v2, v4, v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    sub-int v8, v2, v3

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorLayout:Landroid/text/StaticLayout;

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1591
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    .line 1592
    const v2, 0x7f0700db

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    const-string v2, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    :cond_2a4
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->RESHARE_INDENT:I

    sub-int v8, v4, v2

    .line 1599
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->RESHARE_INDENT:I

    add-int v2, v2, v18

    .line 1605
    :goto_2ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContent:Landroid/text/Spanned;

    if-eqz v3, :cond_308

    .line 1606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1607
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContent:Landroid/text/Spanned;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1614
    const-string v3, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    :cond_308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescription:Landroid/text/Spanned;

    if-eqz v3, :cond_364

    .line 1618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1619
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescription:Landroid/text/Spanned;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1626
    const-string v3, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    :cond_364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContent:Landroid/text/Spanned;

    if-eqz v3, :cond_3d1

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1631
    new-instance v9, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContent:Landroid/text/Spanned;

    sget-object v11, Lcom/google/android/apps/plus/views/StreamRowView;->sTitleContentPaint:Landroid/text/TextPaint;

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    sub-int v3, v8, v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    sub-int v12, v3, v5

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object/from16 v17, v0

    invoke-direct/range {v9 .. v17}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1634
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    add-int/2addr v3, v2

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    add-int/2addr v3, v5

    .line 1635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v5, v3, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1639
    const-string v3, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    :cond_3d1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescription:Landroid/text/Spanned;

    if-eqz v3, :cond_42d

    .line 1643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1644
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescription:Landroid/text/Spanned;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1651
    const-string v3, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    :cond_42d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    if-eqz v3, :cond_686

    .line 1655
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    sub-int v3, v8, v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_RIGHT_MARGIN:I

    sub-int v12, v3, v5

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mArtist:Ljava/lang/String;

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->isAlbum()Z

    move-result v3

    if-eqz v3, :cond_a8e

    .line 1663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v10, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAlbum:Ljava/lang/String;

    .line 1664
    const/4 v3, 0x0

    .line 1670
    :goto_452
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v9, Landroid/text/StaticLayout;

    sget-object v11, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamTitlePaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mHeaderLayout:Landroid/text/StaticLayout;

    .line 1672
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mHeaderLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1673
    const-string v6, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v9, Landroid/text/StaticLayout;

    sget-object v11, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamArtistPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v5

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader1Layout:Landroid/text/StaticLayout;

    .line 1676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader1Layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1677
    const-string v5, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    if-eqz v3, :cond_4d4

    .line 1679
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v9, Landroid/text/StaticLayout;

    sget-object v11, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamAlbumPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader2Layout:Landroid/text/StaticLayout;

    .line 1681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader2Layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1682
    const-string v3, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    :cond_4d4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mHeaderLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader1Layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 1687
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader2Layout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_a9c

    .line 1688
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader2Layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 1694
    :goto_501
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-nez v5, :cond_ab6

    .line 1696
    const/4 v5, 0x0

    .line 1697
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->isAlbum()Z

    move-result v6

    if-eqz v6, :cond_aa3

    .line 1698
    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v5, v2

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_RIGHT_MARGIN:I

    add-int v16, v5, v6

    .line 1701
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1702
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v9, Lcom/google/android/apps/plus/views/ClickableButton;

    const v6, 0x7f07012b

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamButtonPaint:Landroid/text/TextPaint;

    sget-object v13, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicListenDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v14, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicListenPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    add-int v17, v1, v3

    move-object/from16 v10, v21

    invoke-direct/range {v9 .. v17}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    iput-object v9, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 1706
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1707
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1709
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_RIGHT_MARGIN:I

    add-int v16, v6, v7

    .line 1715
    :goto_565
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v7, v7, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1716
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v9, Lcom/google/android/apps/plus/views/ClickableButton;

    const v7, 0x7f07012a

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamButtonPaint:Landroid/text/TextPaint;

    sget-object v13, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicBuyDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v14, Lcom/google/android/apps/plus/views/StreamRowView;->sMusicBuyPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    add-int v17, v1, v3

    move-object/from16 v10, v21

    invoke-direct/range {v9 .. v17}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    iput-object v9, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 1720
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v7, v7, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1721
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1724
    if-eqz v5, :cond_aac

    .line 1725
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1731
    :goto_5b9
    sget v9, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    sub-int/2addr v9, v3

    sub-int/2addr v9, v6

    .line 1733
    if-lez v9, :cond_ab2

    .line 1734
    const/4 v3, 0x0

    invoke-virtual {v7, v3, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->isAlbum()Z

    move-result v3

    if-eqz v3, :cond_5d1

    .line 1736
    const/4 v3, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1738
    :cond_5d1
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v1, v3

    .line 1766
    :goto_5d4
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v1

    .line 1768
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-nez v1, :cond_d95

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->isAlbum()Z

    move-result v1

    if-nez v1, :cond_d95

    .line 1770
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1773
    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_VERTICAL_MARGIN:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1775
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_HORIZONTAL_SPACING:I

    add-int v6, v2, v1

    .line 1777
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    add-int v7, v3, v1

    .line 1779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->isPlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b46

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sStopMusicBitmap:Landroid/graphics/Bitmap;

    .line 1782
    :goto_62c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v10, v10, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1783
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v10, Lcom/google/android/apps/plus/views/ClickableImageButton;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    move-object/from16 v0, v21

    invoke-direct {v10, v0, v1, v11}, Lcom/google/android/apps/plus/views/ClickableImageButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;)V

    iput-object v10, v9, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    .line 1785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v9, v9, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1786
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setPosition(II)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    .line 1789
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1793
    :goto_673
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamAutoPlay:Z

    if-eqz v3, :cond_686

    .line 1794
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamAutoPlay:Z

    .line 1795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->setPlayback(Z)V

    .line 1799
    :cond_686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    if-eqz v3, :cond_723

    .line 1802
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    sub-int v3, v1, v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    add-int/2addr v5, v3

    .line 1803
    const/4 v3, 0x0

    .line 1804
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutAvatars:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v2

    :goto_6a3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d92

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 1805
    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_DIMENSION:I

    add-int/2addr v7, v6

    sget v10, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_DIMENSION:I

    add-int/2addr v10, v5

    invoke-virtual {v1, v6, v5, v7, v10}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 1808
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_DIMENSION:I

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    add-int/2addr v1, v7

    add-int/2addr v6, v1

    .line 1810
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_DIMENSION:I

    add-int/2addr v1, v5

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    add-int/2addr v7, v1

    .line 1812
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_DIMENSION:I

    add-int/2addr v1, v6

    move/from16 v0, p1

    if-le v1, v0, :cond_6d2

    .line 1814
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_DIMENSION:I

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    add-int/2addr v1, v6

    add-int/2addr v5, v1

    move v6, v2

    .line 1817
    :cond_6d2
    add-int/lit8 v1, v3, 0x1

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_b4a

    .line 1822
    :goto_6d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_d8e

    .line 1823
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    sub-int/2addr v1, v3

    add-int v17, v7, v1

    .line 1824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->getSupportedStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    .line 1825
    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v1, v3, :cond_b4e

    .line 1826
    sub-int v3, p1, v2

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_UNSUPPORTED_TEXT_MARGIN:I

    sub-int v12, v3, v5

    .line 1827
    new-instance v9, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutUnsupportedTextPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutUnsupportedTextLayout:Landroid/text/StaticLayout;

    .line 1830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutUnsupportedTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int v17, v17, v1

    .line 1843
    :cond_71f
    :goto_71f
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int v1, v1, v17

    .line 1846
    :cond_723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    if-eqz v3, :cond_78a

    .line 1847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1848
    new-instance v9, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    sget-object v11, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    sub-int v3, v8, v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    sub-int v12, v3, v5

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object/from16 v17, v0

    invoke-direct/range {v9 .. v17}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1855
    const-string v3, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    :cond_78a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescription:Landroid/text/Spanned;

    if-eqz v3, :cond_7e6

    .line 1859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1860
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescription:Landroid/text/Spanned;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sContentPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1867
    const-string v3, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e6
    move v3, v1

    .line 1870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 1871
    if-lez v1, :cond_881

    .line 1873
    const/4 v1, 0x0

    .line 1874
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v1

    :goto_7ff
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 1875
    packed-switch v5, :pswitch_data_d9c

    .line 1904
    const/4 v10, 0x0

    .line 1905
    const/4 v9, 0x0

    .line 1906
    const/4 v7, 0x0

    .line 1907
    const/4 v6, 0x0

    .line 1912
    :goto_812
    invoke-virtual {v1, v10, v7, v9, v6}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->setRect(IIII)V

    .line 1913
    add-int/lit8 v1, v5, 0x1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_bdd

    .line 1920
    :cond_81a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v5, 0x3

    if-lt v1, v5, :cond_87b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    if-nez v1, :cond_87b

    .line 1921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1922
    new-instance v9, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    sget-object v12, Lcom/google/android/apps/plus/content/DbMedia;->EMPTY_MEDIA:Lcom/google/android/apps/plus/content/DbMedia;

    sget-object v13, Lcom/google/android/apps/plus/views/StreamRowView;->sPhotosMoreBitmap:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object/from16 v10, v21

    invoke-direct/range {v9 .. v15}, Lcom/google/android/apps/plus/views/ClickableMediaImage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;Landroid/graphics/Bitmap;ILcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 1924
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    add-int/2addr v1, v2

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SMALL_DIMENSION:I

    add-int/2addr v1, v5

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_RIGHT_MARGIN:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    .line 1926
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_MORE_INDICATOR_WIDTH:I

    add-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1929
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    add-int/2addr v6, v3

    .line 1930
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    invoke-virtual {v7, v1, v3, v5, v6}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->setRect(IIII)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1934
    :cond_87b
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v5

    add-int/2addr v3, v1

    .line 1937
    :cond_881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v1, :cond_92a

    .line 1938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1939
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1940
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-direct {v5, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 1941
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v9, 0x21

    invoke-virtual {v6, v5, v7, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1945
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mIsCheckIn:Z

    if-eqz v1, :cond_be0

    .line 1946
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1947
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v14, v5

    .line 1953
    :goto_8b6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1954
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationPaint:Landroid/text/TextPaint;

    sub-int/2addr v8, v14

    sget v9, Lcom/google/android/apps/plus/views/StreamRowView;->CHECKIN_RIGHT_MARGIN:I

    sub-int/2addr v8, v9

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    add-int v6, v2, v14

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->CHECKIN_RIGHT_MARGIN:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1961
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    .line 1962
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v3, v1

    .line 1964
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mIsCheckIn:Z

    if-eqz v1, :cond_bef

    const v1, 0x7f0700df

    .line 1967
    :goto_90a
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    const-string v1, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92a
    move v14, v3

    .line 1972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v1, :cond_bf4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    move v15, v1

    .line 1975
    :goto_93a
    if-lez v15, :cond_9e6

    .line 1978
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v1, :cond_bf8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    if-lez v1, :cond_bf8

    .line 1979
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e000d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1982
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move v3, v4

    .line 1988
    :goto_96d
    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_RIGHT:I

    sub-int/2addr v3, v5

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->PLUS_ONE_RIGHT_MARGIN:I

    sub-int/2addr v3, v5

    sub-int v8, v3, v1

    .line 1990
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    if-lez v1, :cond_985

    .line 1991
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_LEFT:I

    sub-int/2addr v8, v1

    .line 1994
    :cond_985
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v1, :cond_c07

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-object/from16 v0, v21

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->getShortPlusOnesString(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/lang/String;

    move-result-object v1

    .line 1997
    :goto_995
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z

    if-eqz v3, :cond_c17

    .line 1998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2000
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2002
    new-instance v3, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;

    invoke-direct {v3, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;-><init>(Ljava/lang/String;)V

    .line 2003
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x21

    invoke-virtual {v6, v3, v5, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2005
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneClickListener:Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 2009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2015
    :goto_9da
    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    const-string v1, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    :cond_9e6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    add-int/2addr v1, v15

    if-lez v1, :cond_d60

    .line 2022
    if-gtz v15, :cond_9f6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_d8b

    .line 2023
    :cond_9f6
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_PLUS_ONE_INFO_VERTICAL_PADDING:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_TOP_MARGIN:I

    add-int/2addr v1, v3

    add-int/2addr v1, v14

    .line 2024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v3, :cond_c32

    .line 2025
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v3, :cond_c2c

    :goto_a08
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->PLUS_ONE_RIGHT_MARGIN:I

    add-int/2addr v2, v3

    .line 2028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2034
    :goto_a2c
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_TOP_MARGIN:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_PLUS_ONE_INFO_VERTICAL_PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2037
    :goto_a32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v2, :cond_d3f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    if-lez v2, :cond_d3f

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    if-eqz v2, :cond_d3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v2, v2

    if-lez v2, :cond_d3f

    .line 2039
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_TOP:I

    add-int/2addr v2, v1

    .line 2040
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_LEFT:I

    sub-int v1, v4, v1

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_RIGHT:I

    sub-int v11, v1, v3

    .line 2043
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_c3b

    .line 2044
    const/4 v1, 0x0

    :goto_a5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    array-length v3, v3

    if-ge v1, v3, :cond_c3b

    .line 2045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2044
    add-int/lit8 v1, v1, 0x1

    goto :goto_a5d

    .line 1548
    :cond_a74
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    goto/16 :goto_131

    :cond_a89
    move/from16 v2, v18

    move v8, v4

    .line 1602
    goto/16 :goto_2ac

    .line 1666
    :cond_a8e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v10, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mTitle:Ljava/lang/String;

    .line 1667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAlbum:Ljava/lang/String;

    goto/16 :goto_452

    .line 1691
    :cond_a9c
    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto/16 :goto_501

    .line 1711
    :cond_aa3
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v6, v2

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_RIGHT_MARGIN:I

    add-int v16, v6, v7

    goto/16 :goto_565

    .line 1727
    :cond_aac
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_5b9

    .line 1740
    :cond_ab2
    add-int/2addr v3, v6

    add-int/2addr v1, v3

    goto/16 :goto_5d4

    .line 1743
    :cond_ab6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v9, Landroid/text/StaticLayout;

    const v6, 0x7f070129

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/apps/plus/views/StreamRowView;->sListenBuyPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenBuyLayout:Landroid/text/StaticLayout;

    .line 1746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenBuyLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    add-int/2addr v5, v6

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 1751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->isAlbum()Z

    move-result v5

    if-nez v5, :cond_b3d

    .line 1752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    new-instance v6, Lcom/google/android/apps/plus/views/ClickableImageButton;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayOverlayBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    move-object/from16 v0, v21

    invoke-direct {v6, v0, v7, v9}, Lcom/google/android/apps/plus/views/ClickableImageButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;)V

    iput-object v6, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    .line 1755
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1756
    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_DIMENSION:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1758
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    add-int v7, v2, v5

    sget v9, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v9, v1

    sub-int v5, v9, v5

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-virtual {v6, v7, v5}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setPosition(II)V

    .line 1763
    :cond_b3d
    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    goto/16 :goto_5d4

    .line 1779
    :cond_b46
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayMusicBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_62c

    :cond_b4a
    move v3, v1

    move v1, v7

    .line 1818
    goto/16 :goto_6a3

    .line 1831
    :cond_b4e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->shouldDisplayJoinButton()Z

    move-result v1

    if-eqz v1, :cond_71f

    .line 1833
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    new-instance v9, Lcom/google/android/apps/plus/views/ClickableButton;

    const v3, 0x7f070291

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinButtonPaint:Landroid/text/TextPaint;

    sget-object v13, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v14, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutJoinPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    move-object/from16 v10, v21

    move/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    iput-object v9, v1, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 1839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v17, v17, v1

    goto/16 :goto_71f

    .line 1878
    :pswitch_ba6
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    add-int v7, v2, v6

    .line 1880
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    add-int/2addr v6, v3

    move v9, v7

    move v10, v2

    move v7, v3

    .line 1881
    goto/16 :goto_812

    .line 1885
    :pswitch_bb2
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    add-int/2addr v6, v2

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_RIGHT_MARGIN:I

    add-int v9, v6, v7

    .line 1887
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SMALL_DIMENSION:I

    add-int v7, v9, v6

    .line 1889
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SMALL_DIMENSION:I

    add-int/2addr v6, v3

    move v10, v9

    move v9, v7

    move v7, v3

    .line 1890
    goto/16 :goto_812

    .line 1894
    :pswitch_bc5
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    add-int/2addr v6, v2

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_RIGHT_MARGIN:I

    add-int v10, v6, v7

    .line 1896
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SMALL_DIMENSION:I

    add-int v9, v10, v6

    .line 1897
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_TOP_MARGIN:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SMALL_DIMENSION:I

    add-int/2addr v7, v6

    .line 1899
    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SMALL_DIMENSION:I

    add-int/2addr v6, v7

    .line 1900
    goto/16 :goto_812

    :cond_bdd
    move v5, v1

    .line 1914
    goto/16 :goto_7ff

    .line 1949
    :cond_be0
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1950
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v14, v5

    goto/16 :goto_8b6

    .line 1964
    :cond_bef
    const v1, 0x7f0700e0

    goto/16 :goto_90a

    .line 1972
    :cond_bf4
    const/4 v1, 0x0

    move v15, v1

    goto/16 :goto_93a

    .line 1984
    :cond_bf8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    .line 1985
    const/4 v1, 0x0

    goto/16 :goto_96d

    .line 1994
    :cond_c07
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-object/from16 v0, v21

    invoke-static {v0, v1, v3}, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->getLongPlusOnesString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_995

    .line 2011
    :cond_c17
    new-instance v5, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    sget-object v7, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    goto/16 :goto_9da

    .line 2025
    :cond_c2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_a08

    .line 2032
    :cond_c32
    sget-object v2, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_a2c

    .line 2049
    :cond_c3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v1, v1

    new-array v1, v1, [Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentNameLayouts:[Landroid/text/StaticLayout;

    .line 2050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 2051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentTimes:[Ljava/lang/String;

    .line 2052
    const/4 v1, 0x0

    move v10, v1

    move v1, v2

    :goto_c5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v2, v2

    if-ge v10, v2, :cond_d1b

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    aget-object v9, v2, v10

    .line 2054
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_TOP_MARGIN:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_HEIGHT:I

    add-int/2addr v2, v3

    add-int v12, v1, v2

    .line 2055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentTimes:[Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/DbComment;->getCreationTime()J

    move-result-wide v2

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 2057
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_LEFT:I

    sget-object v2, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentTimes:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int v4, v1, v2

    .line 2060
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentNameLayouts:[Landroid/text/StaticLayout;

    new-instance v1, Landroid/text/StaticLayout;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/DbComment;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentNamePaint:Landroid/text/TextPaint;

    sub-int v4, v11, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v1, v13, v10

    .line 2064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentNameLayouts:[Landroid/text/StaticLayout;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_BOTTOM:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 2067
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    new-instance v1, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/DbComment;->getContentHtml()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentContentPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move v4, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    aput-object v1, v13, v10

    .line 2073
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    aget-object v1, v1, v10

    move/from16 v0, v18

    invoke-virtual {v1, v0, v12}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    aget-object v2, v2, v10

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v1, v12

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v10, v2, :cond_d12

    .line 2078
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    .line 2081
    :cond_d12
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_BOTTOM:I

    add-int/2addr v2, v1

    .line 2052
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v1, v2

    goto/16 :goto_c5f

    .line 2084
    :cond_d1b
    const v2, 0x7f0700e1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    const-string v2, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    :cond_d3f
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v2, :cond_d86

    :goto_d47
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v2, :cond_d89

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingRight()I

    move-result v2

    :goto_d51
    sub-int v2, p1, v2

    move/from16 v0, v18

    invoke-direct {v3, v0, v14, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentBackground:Landroid/graphics/Rect;

    .line 2096
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int v14, v1, v2

    .line 2099
    :cond_d60
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    sub-int v1, v14, v1

    .line 2103
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v2, :cond_d6f

    .line 2104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 2107
    :cond_d6f
    const/high16 v2, -0x8000

    move/from16 v0, v20

    if-ne v0, v2, :cond_d7b

    .line 2109
    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2112
    :cond_d7b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/StreamRowView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2091
    :cond_d86
    const/16 v18, 0x0

    goto :goto_d47

    :cond_d89
    const/4 v2, 0x0

    goto :goto_d51

    :cond_d8b
    move v1, v14

    goto/16 :goto_a32

    :cond_d8e
    move/from16 v17, v7

    goto/16 :goto_71f

    :cond_d92
    move v7, v1

    goto/16 :goto_6d8

    :cond_d95
    move v1, v3

    goto/16 :goto_673

    :cond_d98
    move v1, v10

    goto/16 :goto_216

    .line 1875
    nop

    :pswitch_data_d9c
    .packed-switch 0x0
        :pswitch_ba6
        :pswitch_bb2
        :pswitch_bc5
    .end packed-switch
.end method

.method private measureWidth(I)I
    .registers 6
    .parameter

    .prologue
    .line 1472
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1473
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1476
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_d

    .line 1487
    :goto_c
    return v0

    .line 1480
    :cond_d
    const/16 v1, 0x1e0

    .line 1481
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_18

    .line 1483
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_c

    :cond_18
    move v0, v1

    goto :goto_c
.end method


# virtual methods
.method public addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/content/DbMedia;)V
    .registers 12
    .parameter "url"
    .parameter "bitmap"
    .parameter "media"

    .prologue
    .line 1224
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/views/ClickableMediaImage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;Landroid/graphics/Bitmap;ILcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;)V

    .line 1226
    .local v0, mediaImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    if-eqz v1, :cond_40

    .line 1230
    invoke-virtual {p3}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v7

    .line 1231
    .local v7, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1, v7}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1, v7}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1232
    :cond_3b
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mFavIcons:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    .end local v7           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_40
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1331
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPosition:I

    .line 1332
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    .line 1333
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1334
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1335
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mFavIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1336
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 1337
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 1338
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorLayout:Landroid/text/StaticLayout;

    .line 1339
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1340
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mContent:Landroid/text/Spanned;

    .line 1341
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1342
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1343
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1344
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1345
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mIsCheckIn:Z

    .line 1347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorId:J

    .line 1348
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    .line 1349
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorLayout:Landroid/text/StaticLayout;

    .line 1351
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1352
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContent:Landroid/text/Spanned;

    .line 1353
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescription:Landroid/text/Spanned;

    .line 1354
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1356
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContent:Landroid/text/Spanned;

    .line 1357
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescription:Landroid/text/Spanned;

    .line 1358
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1359
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1361
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    .line 1363
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1364
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    .line 1365
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescription:Landroid/text/Spanned;

    .line 1366
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1368
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    .line 1369
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    .line 1370
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentTimes:[Ljava/lang/String;

    .line 1371
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentBackground:Landroid/graphics/Rect;

    .line 1372
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentNameLayouts:[Landroid/text/StaticLayout;

    .line 1373
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 1375
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1377
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 1378
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1379
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 1380
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 1382
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    .line 1383
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutUnsupportedTextLayout:Landroid/text/StaticLayout;

    .line 1385
    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    .line 1386
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 2124
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 2126
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_66

    :pswitch_14
    move v4, v5

    .line 2162
    :goto_15
    return v4

    .line 2128
    :pswitch_16
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

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

    .line 2129
    .local v1, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2130
    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 2131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_15

    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_34
    move v4, v5

    .line 2136
    goto :goto_15

    .line 2140
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_36
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 2142
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

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

    .line 2143
    .restart local v1       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    goto :goto_3e

    .line 2146
    .end local v1           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    move v4, v5

    .line 2147
    goto :goto_15

    .line 2151
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_53
    iget-object v6, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v6, :cond_63

    .line 2152
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v3, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 2153
    iput-object v7, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 2154
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_15

    :cond_63
    move v4, v5

    .line 2157
    goto :goto_15

    .line 2126
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_16
        :pswitch_36
        :pswitch_14
        :pswitch_53
    .end packed-switch
.end method

.method public drawIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0d0199

    const v7, 0x7f0d0156

    const v5, 0x7f0d0063

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 2277
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 2279
    const/4 v0, 0x0

    .line 2511
    :goto_11
    return-object v0

    .line 2282
    :cond_12
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v0, v2

    .line 2286
    :goto_18
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_27

    .line 2287
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2286
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    move v0, v2

    .line 2290
    :goto_28
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 2291
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2290
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_37
    move v0, v2

    .line 2294
    :goto_38
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_47

    .line 2295
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2294
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_47
    move v0, v2

    .line 2298
    :goto_48
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_78

    move v1, v2

    .line 2299
    :goto_4e
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v1, v3, :cond_61

    .line 2300
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2299
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_61
    move v1, v2

    .line 2303
    :goto_62
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaOverlayIds:[[I

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v1, v3, :cond_75

    .line 2304
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaOverlayIds:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2303
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 2298
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 2308
    :cond_78
    invoke-virtual {p2, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2309
    const v0, 0x7f0d019b

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2310
    const v0, 0x7f0d019c

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2313
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_120

    .line 2314
    :cond_93
    const v0, 0x7f0d0198

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sAuthorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2320
    :goto_9b
    const v0, 0x7f0d0049

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2323
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v0

    .line 2324
    :goto_ad
    if-nez v0, :cond_131

    .line 2325
    const v0, 0x7f0d0154

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2326
    invoke-virtual {p2, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2334
    :goto_b8
    iget v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    if-nez v0, :cond_147

    .line 2335
    const v0, 0x7f0d01a4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2336
    const v0, 0x7f0d01a5

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2344
    :goto_c8
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mContent:Landroid/text/Spanned;

    if-eqz v0, :cond_165

    .line 2345
    invoke-virtual {p2, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2346
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mContent:Landroid/text/Spanned;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2352
    :goto_d8
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v0, :cond_174

    .line 2353
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2354
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2357
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2359
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mIsCheckIn:Z

    if-eqz v0, :cond_16a

    .line 2360
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    aget v0, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2364
    :goto_109
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2366
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_175

    .line 2367
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11

    .line 2316
    :cond_120
    const v0, 0x7f0d0198

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_9b

    :cond_12e
    move v0, v2

    .line 2323
    goto/16 :goto_ad

    .line 2328
    :cond_131
    const v1, 0x7f0d0154

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2329
    invoke-virtual {p2, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_b8

    .line 2338
    :cond_147
    const v0, 0x7f0d01a4

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2339
    const v0, 0x7f0d01a5

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2340
    const v0, 0x7f0d01a5

    iget v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c8

    .line 2348
    :cond_165
    invoke-virtual {p2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_d8

    .line 2362
    :cond_16a
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    aget v0, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_109

    :cond_174
    move v0, v2

    .line 2373
    :cond_175
    iget-wide v3, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorId:J

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-eqz v1, :cond_1dc

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    if-eqz v1, :cond_1dc

    .line 2374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2376
    invoke-virtual {p2, v9, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2377
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070144

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    aput-object v7, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2379
    invoke-virtual {p2, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2381
    const v3, 0x7f0d019b

    invoke-virtual {p2, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2382
    const v3, 0x7f0d019c

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v3, v1

    .line 2388
    :goto_1b2
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContent:Landroid/text/Spanned;

    if-eqz v1, :cond_1e9

    .line 2389
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2390
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2391
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v1, v1, v0

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContent:Landroid/text/Spanned;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2392
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1e9

    .line 2393
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11

    .line 2384
    :cond_1dc
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v3, v1

    goto :goto_1b2

    .line 2398
    :cond_1e9
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescription:Landroid/text/Spanned;

    if-eqz v1, :cond_213

    .line 2399
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2400
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2401
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v1, v1, v0

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescription:Landroid/text/Spanned;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2402
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_213

    .line 2403
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11

    :cond_213
    move v4, v0

    .line 2408
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContent:Landroid/text/Spanned;

    if-eqz v0, :cond_279

    .line 2409
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2410
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2411
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContent:Landroid/text/Spanned;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2413
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2414
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26e

    .line 2415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2417
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26e

    .line 2418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2419
    if-eqz v0, :cond_26e

    .line 2420
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2421
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    aget v1, v1, v4

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2423
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewDetailMediaSmallIds:[I

    aget v1, v1, v4

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2428
    :cond_26e
    add-int/lit8 v4, v4, 0x1

    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v0, v0

    if-lt v4, v0, :cond_279

    .line 2429
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11

    .line 2434
    :cond_279
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescription:Landroid/text/Spanned;

    if-eqz v0, :cond_2a3

    .line 2435
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2436
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2437
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescription:Landroid/text/Spanned;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2438
    add-int/lit8 v4, v4, 0x1

    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v0, v0

    if-lt v4, v0, :cond_2a3

    .line 2439
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11

    .line 2444
    :cond_2a3
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    if-eqz v0, :cond_327

    .line 2445
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2446
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2447
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2449
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mFavIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2450
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31c

    .line 2451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2453
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31c

    .line 2454
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2455
    if-eqz v0, :cond_31c

    .line 2456
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2457
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v3, v3, v4

    aget v3, v3, v2

    invoke-virtual {p2, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2458
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v3, v3, v4

    aget v3, v3, v2

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2460
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 2461
    if-eqz v0, :cond_31c

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v0, v1, :cond_31c

    .line 2463
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaOverlayIds:[[I

    aget-object v0, v0, v4

    aget v0, v0, v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2470
    :cond_31c
    add-int/lit8 v4, v4, 0x1

    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v0, v0

    if-lt v4, v0, :cond_327

    .line 2471
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11

    .line 2476
    :cond_327
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3ab

    .line 2478
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_33a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2480
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a8

    .line 2481
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 2482
    if-nez v0, :cond_397

    const/4 v5, 0x0

    .line 2484
    :goto_35b
    sget-object v8, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v8, v8, v4

    aget v8, v8, v3

    invoke-virtual {p2, v8, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2486
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2487
    if-eqz v5, :cond_39c

    .line 2488
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v1, v1, v4

    aget v1, v1, v3

    invoke-virtual {p2, v1, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2495
    :goto_372
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v0, v1, :cond_383

    .line 2496
    sget-object v0, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaOverlayIds:[[I

    aget-object v0, v0, v4

    aget v0, v0, v3

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2500
    :cond_383
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v1, v1, v4

    array-length v1, v1

    if-lt v0, v1, :cond_3a9

    .line 2506
    :cond_38c
    add-int/lit8 v0, v4, 0x1

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3ab

    .line 2507
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11

    .line 2482
    :cond_397
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_35b

    .line 2491
    :cond_39c
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v1, v1, v4

    aget v1, v1, v3

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_372

    :cond_3a8
    move v0, v3

    :cond_3a9
    move v3, v0

    .line 2504
    goto :goto_33a

    .line 2511
    :cond_3ab
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    goto/16 :goto_11
.end method

.method public ensureAuthorAvatarLoaded()Z
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-nez v0, :cond_6

    .line 929
    const/4 v0, 0x0

    .line 935
    :goto_5
    return v0

    .line 933
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    .line 935
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isAvatarLoaded()Z

    move-result v0

    goto :goto_5
.end method

.method public gatherUncachedImagesForRemoteViews(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V
    .registers 15
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2177
    .local p2, imageUrls:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, userIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 2264
    :cond_4
    :goto_4
    return-void

    .line 2182
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2183
    .local v0, alreadyShownUrls:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2185
    .local v2, currentSlot:I
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isAvatarLoaded()Z

    move-result v9

    if-nez v9, :cond_20

    .line 2186
    :cond_17
    iget-wide v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2189
    :cond_20
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContent:Landroid/text/Spanned;

    if-eqz v9, :cond_2b

    .line 2190
    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 2195
    :cond_2b
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescription:Landroid/text/Spanned;

    if-eqz v9, :cond_36

    .line 2196
    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 2201
    :cond_36
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContent:Landroid/text/Spanned;

    if-eqz v9, :cond_6f

    .line 2202
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleImages:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2203
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_68

    .line 2204
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2205
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2206
    .local v8, url:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_68

    .line 2207
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2208
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_68

    .line 2209
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2214
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v8           #url:Ljava/lang/String;
    :cond_68
    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 2219
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_6f
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescription:Landroid/text/Spanned;

    if-eqz v9, :cond_7a

    .line 2220
    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 2225
    :cond_7a
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    if-eqz v9, :cond_b3

    .line 2226
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mFavIcons:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2227
    .restart local v7       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 2228
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2229
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2230
    .restart local v8       #url:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ac

    .line 2231
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2232
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_ac

    .line 2233
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2238
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v8           #url:Ljava/lang/String;
    :cond_ac
    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 2243
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_b3
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 2244
    const/4 v6, 0x0

    .line 2245
    .local v6, imagesDrawn:I
    iget-object v9, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ff

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2246
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableMediaImage;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c6

    .line 2247
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2248
    .restart local v8       #url:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 2249
    .local v1, clickableMediaImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2250
    if-eqz v1, :cond_f3

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_f6

    .line 2251
    :cond_f3
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2254
    :cond_f6
    add-int/lit8 v6, v6, 0x1

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewMediaIds:[[I

    aget-object v9, v9, v2

    array-length v9, v9

    if-lt v6, v9, :cond_c6

    .line 2260
    .end local v1           #clickableMediaImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableMediaImage;>;"
    .end local v8           #url:Ljava/lang/String;
    :cond_ff
    add-int/lit8 v2, v2, 0x1

    sget-object v9, Lcom/google/android/apps/plus/views/StreamRowView;->mRemoteViewTextIds:[I

    array-length v9, v9

    if-lt v2, v9, :cond_4

    goto/16 :goto_4
.end method

.method public getAclDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorId()J
    .registers 3

    .prologue
    .line 942
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorId:J

    return-wide v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorName:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIconDimension()I
    .registers 2

    .prologue
    .line 800
    sget v0, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    return v0
.end method

.method public getObjectType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 4

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSource:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v0

    .line 1205
    .local v0, source:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView$4;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 1211
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    :goto_13
    return-object v1

    .line 1207
    :pswitch_14
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_13

    .line 1205
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method public getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 830
    iget v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPosition:I

    return v0
.end method

.method public hasImage(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSkyjamThumbnail(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hasTitleImage(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleImages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 3262
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mChecked:Z

    return v0
.end method

.method public isLimited()Z
    .registers 2

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPublicPost:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLocked()Z
    .registers 2

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1422
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1423
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 1424
    return-void
.end method

.method public onAvatarChanged(J)V
    .registers 6
    .parameter "userId"

    .prologue
    .line 1440
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v2, :cond_9

    .line 1441
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(J)V

    .line 1444
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v2, :cond_12

    .line 1445
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(J)V

    .line 1448
    :cond_12
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    if-eqz v2, :cond_32

    .line 1449
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutAvatars:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 1450
    .local v0, hangoutAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->onAvatarChanged(J)V

    goto :goto_22

    .line 1453
    .end local v0           #hangoutAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_32
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1431
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1432
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 1433
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter

    .prologue
    .line 2519
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 3010
    :cond_9
    return-void

    .line 2526
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mChecked:Z

    if-eqz v1, :cond_915

    .line 2527
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2528
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2533
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 2534
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingTop()I

    move-result v2

    .line 2537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v1, :cond_91d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_91d

    .line 2538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2542
    :goto_46
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 2548
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingRight()I

    move-result v3

    sub-int v12, v1, v3

    .line 2549
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    add-int/2addr v1, v3

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_LEFT_MARGIN:I

    add-int v8, v1, v3

    .line 2551
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->AUTHOR_TOP_MARGIN:I

    add-int/2addr v1, v2

    .line 2552
    int-to-float v2, v8

    int-to-float v3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2554
    neg-int v2, v8

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->TIME_TOP_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2557
    int-to-float v2, v8

    int-to-float v3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2559
    neg-int v2, v8

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTimeSourceAclLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->TIME_BOTTOM_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingTop()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->USER_BITMAP_DIMENSION:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_100

    .line 2564
    int-to-float v2, v8

    int-to-float v3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2566
    neg-int v2, v8

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2572
    :cond_100
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_925

    .line 2573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_18e

    .line 2576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v2, :cond_921

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_921

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2582
    :goto_128
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v5, v8

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v6, v1

    invoke-direct {v4, v8, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 2586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 2589
    :cond_14e
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    add-int/2addr v2, v8

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    add-int/2addr v2, v3

    .line 2592
    int-to-float v3, v2

    int-to-float v4, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2594
    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 2597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ORIGINAL_AUTHOR_BITMAP_DIMENSION:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2600
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    .line 2603
    :cond_18e
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->RESHARE_INDENT:I

    add-int/2addr v2, v8

    move v7, v2

    move v9, v1

    .line 2610
    :goto_193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_a44

    .line 2611
    int-to-float v1, v7

    int-to-float v2, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2613
    neg-int v1, v7

    int-to-float v1, v1

    neg-int v2, v9

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2615
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    add-int/2addr v1, v9

    .line 2618
    :goto_1be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_a41

    .line 2619
    int-to-float v2, v7

    int-to-float v3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2621
    neg-int v2, v7

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v2, v1

    .line 2626
    :goto_1ea
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_24e

    .line 2628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2629
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_929

    .line 2630
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2631
    if-eqz v1, :cond_221

    .line 2632
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v2, 0x4

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    add-int/2addr v6, v7

    add-int/lit8 v10, v2, 0x4

    sget v13, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    add-int/2addr v10, v13

    invoke-direct {v4, v7, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2637
    :cond_221
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    add-int/2addr v1, v3

    .line 2642
    :goto_226
    add-int v3, v7, v1

    int-to-float v3, v3

    int-to-float v4, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2644
    add-int/2addr v1, v7

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v3, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 2649
    :cond_24e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_279

    .line 2650
    int-to-float v1, v7

    int-to-float v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2652
    neg-int v1, v7

    int-to-float v1, v1

    neg-int v3, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 2657
    :cond_279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    if-eqz v1, :cond_47a

    .line 2658
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v3, v7

    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 2661
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_92c

    .line 2665
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_DIMENSION:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 2667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v7, v1

    add-int v10, v2, v1

    add-int v13, v7, v1

    sget v14, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_DIMENSION:I

    add-int/2addr v13, v14

    add-int/2addr v1, v2

    sget v14, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_DIMENSION:I

    add-int/2addr v1, v14

    invoke-direct {v5, v6, v10, v13, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2672
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v1, v7

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_RIGHT_MARGIN:I

    add-int/2addr v1, v3

    .line 2680
    :goto_2c6
    int-to-float v3, v1

    int-to-float v4, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mHeaderLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2682
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mHeaderLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 2685
    int-to-float v4, v1

    int-to-float v5, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader1Layout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2687
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader1Layout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader2Layout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_349

    .line 2692
    int-to-float v4, v1

    int-to-float v5, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader2Layout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2694
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mSubheader2Layout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2699
    :cond_349
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-nez v4, :cond_93d

    .line 2700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v1, :cond_92f

    .line 2702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 2703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2729
    :cond_389
    :goto_389
    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_BORDER_DIMENSION:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2730
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int v10, v1, v2

    .line 2732
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-nez v1, :cond_a3e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->isAlbum()Z

    move-result v1

    if-nez v1, :cond_a3e

    .line 2734
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v13, v1

    .line 2736
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2738
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_VERTICAL_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    .line 2739
    int-to-float v2, v7

    int-to-float v3, v10

    int-to-float v4, v12

    add-int v1, v10, v14

    int-to-float v5, v1

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2741
    int-to-float v2, v7

    int-to-float v3, v10

    int-to-float v4, v12

    add-int v1, v10, v14

    int-to-float v5, v1

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->isClicked()Z

    move-result v1

    if-eqz v1, :cond_418

    .line 2747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableImageButton;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 2750
    :cond_418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_HORIZONTAL_SPACING:I

    add-int v15, v1, v2

    .line 2752
    int-to-float v2, v15

    int-to-float v3, v10

    int-to-float v4, v15

    add-int v1, v10, v14

    int-to-float v5, v1

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2755
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_HORIZONTAL_SPACING:I

    add-int/2addr v1, v15

    .line 2757
    sub-int v2, v14, v13

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 2760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mStatus:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v2, v2

    sget-object v4, Lcom/google/android/apps/plus/views/StreamRowView;->sSkyjamPlayInfoPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2763
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_PLAY_INFO_HORIZONTAL_SPACING:I

    sub-int v1, v12, v1

    sget-object v2, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2766
    sget-object v2, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v14, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    .line 2768
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v2, v2

    sget-object v4, Lcom/google/android/apps/plus/views/StreamRowView;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2771
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v14

    add-int v2, v10, v1

    .line 2775
    :cond_47a
    :goto_47a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    if-eqz v1, :cond_545

    .line 2776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4be

    .line 2777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2778
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_LIVE_MARGIN:I

    add-int/2addr v3, v4

    .line 2779
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutLiveBitmap:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v6

    int-to-double v13, v6

    div-double/2addr v4, v13

    .line 2781
    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutLiveBitmap:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v6

    int-to-double v13, v6

    mul-double/2addr v4, v13

    double-to-int v4, v4

    add-int/2addr v4, v3

    .line 2782
    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutLiveBitmap:Landroid/graphics/drawable/NinePatchDrawable;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6, v3, v1, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 2783
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sHangoutLiveBitmap:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2786
    :cond_4be
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutAvatars:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    :goto_4d3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 2788
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 2789
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4e9

    .line 2790
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 2792
    :cond_4e9
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    sget v10, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    add-int/2addr v4, v10

    .line 2793
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2794
    if-nez v1, :cond_4f6

    .line 2795
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 2797
    :cond_4f6
    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2799
    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_9bd

    .line 2803
    :goto_503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_541

    .line 2804
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->HANGOUT_AVATAR_MARGIN:I

    sub-int/2addr v1, v2

    add-int/2addr v4, v1

    .line 2805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->getSupportedStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    .line 2806
    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v1, v2, :cond_9c1

    .line 2807
    int-to-float v1, v8

    int-to-float v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2808
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutUnsupportedTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2809
    neg-int v1, v8

    int-to-float v1, v1

    neg-int v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutUnsupportedTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v4, v1

    .line 2816
    :cond_541
    :goto_541
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int v2, v4, v1

    .line 2819
    :cond_545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_5ad

    .line 2820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mFavIcons:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2821
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57c

    .line 2822
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2823
    if-eqz v1, :cond_57c

    .line 2824
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v2, 0x3

    sget v6, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    add-int/2addr v6, v7

    add-int/lit8 v10, v2, 0x4

    sget v13, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    add-int/2addr v10, v13

    invoke-direct {v4, v7, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2830
    :cond_57c
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    add-int/2addr v1, v7

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2832
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->FAV_ICON_SIZE:I

    add-int/2addr v1, v7

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->ICON_RIGHT_MARGIN:I

    add-int/2addr v1, v3

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v3, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContentLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 2837
    :cond_5ad
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_5d8

    .line 2838
    int-to-float v1, v7

    int-to-float v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2840
    neg-int v1, v7

    int-to-float v1, v1

    neg-int v3, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaDescriptionLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 2845
    :cond_5d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6a8

    .line 2846
    const/4 v1, 0x0

    .line 2847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_5f0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 2848
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2849
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 2850
    if-eqz v5, :cond_9e7

    .line 2851
    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2856
    :goto_60d
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v5

    sget-object v10, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v5, v10, :cond_63f

    .line 2857
    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sVideoBitmap:Landroid/graphics/Bitmap;

    iget v10, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    sget-object v14, Lcom/google/android/apps/plus/views/StreamRowView;->sVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v10, v13

    int-to-float v10, v10

    iget v13, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v14, Lcom/google/android/apps/plus/views/StreamRowView;->sVideoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v13

    int-to-float v6, v6

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2863
    :cond_63f
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->isClicked()Z

    move-result v5

    if-eqz v5, :cond_64a

    .line 2864
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 2867
    :cond_64a
    add-int/lit8 v1, v3, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9f2

    .line 2872
    :cond_64f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    if-eqz v1, :cond_6a2

    .line 2873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->isClicked()Z

    move-result v3

    if-eqz v3, :cond_9f5

    .line 2875
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sClickedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2880
    :goto_66e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mMoreIndicatorImage:Lcom/google/android/apps/plus/views/ClickableMediaImage;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2881
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 2883
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    .line 2885
    int-to-float v4, v4

    int-to-float v1, v1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2888
    :cond_6a2
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 2891
    :cond_6a8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_a38

    .line 2894
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mIsCheckIn:Z

    if-eqz v1, :cond_9fe

    .line 2895
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckinBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v7

    int-to-float v4, v2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2896
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2897
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sCheckinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2904
    :goto_6ca
    add-int v4, v7, v3

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->CHECKIN_RIGHT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2906
    add-int/2addr v3, v7

    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->CHECKIN_RIGHT_MARGIN:I

    add-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocationLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 2909
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    add-int/2addr v2, v1

    move v7, v2

    .line 2912
    :goto_6fd
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_716

    .line 2913
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_BOTTOM_MARGIN:I

    sub-int v1, v7, v1

    int-to-float v5, v1

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sResharePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2917
    :cond_716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v1, :cond_a16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    .line 2919
    :goto_724
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    add-int/2addr v2, v1

    if-lez v2, :cond_9

    .line 2920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentBackground:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2921
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-nez v2, :cond_740

    .line 2922
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingLeft()I

    move-result v8

    .line 2925
    :cond_740
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_LEFT:I

    add-int v3, v8, v2

    .line 2926
    if-gtz v1, :cond_74d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_84b

    .line 2927
    :cond_74d
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_PLUS_ONE_INFO_VERTICAL_PADDING:I

    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_TOP_MARGIN:I

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    .line 2929
    if-lez v1, :cond_7bd

    .line 2931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_a19

    .line 2932
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2934
    sget-object v4, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 2939
    :goto_777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v4

    if-eqz v4, :cond_a1c

    .line 2940
    sget-object v4, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneByMeBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v3

    int-to-float v1, v1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2945
    :goto_78b
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->PLUS_ONE_RIGHT_MARGIN:I

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 2947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v3, :cond_7bd

    .line 2948
    int-to-float v3, v1

    int-to-float v4, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2950
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 2956
    :cond_7bd
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v1, :cond_7ca

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_7d0

    :cond_7ca
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    if-lez v1, :cond_80a

    .line 2957
    :cond_7d0
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e000d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2959
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 2960
    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_RIGHT:I

    sub-int v4, v12, v4

    sub-int v3, v4, v3

    int-to-float v3, v3

    int-to-float v4, v2

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sFeedbackPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2964
    :cond_80a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v1, :cond_a28

    .line 2965
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneTextLayout:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v1

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 2969
    :goto_823
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->CONTENT_TOP_MARGIN:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_PLUS_ONE_INFO_VERTICAL_PADDING:I

    add-int/2addr v2, v3

    add-int v7, v1, v2

    .line 2971
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v1, :cond_836

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    if-lez v1, :cond_84b

    .line 2972
    :cond_836
    int-to-float v2, v8

    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_HEIGHT:I

    sub-int v1, v7, v1

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v1, :cond_a31

    int-to-float v4, v12

    :goto_843
    int-to-float v5, v7

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentSepPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2978
    :cond_84b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    if-lez v1, :cond_9

    .line 2979
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_LEFT:I

    add-int v10, v8, v1

    .line 2980
    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_TOP:I

    add-int v2, v7, v1

    .line 2981
    const/4 v1, 0x0

    move v7, v1

    move v1, v2

    :goto_862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v2, v2

    if-ge v7, v2, :cond_9

    .line 2982
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_HEIGHT:I

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_BOTTOM_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2983
    int-to-float v2, v10

    int-to-float v3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentNameLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, v7

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2985
    neg-int v2, v10

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentTimes:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentTimes:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_RIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v1

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sTimePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentNameLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_BOTTOM:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2994
    int-to-float v2, v10

    int-to-float v3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    aget-object v2, v2, v7

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2996
    neg-int v2, v10

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mCommentContentLayouts:[Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 3000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_90c

    .line 3001
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_TOP_MARGIN:I

    add-int v9, v1, v2

    .line 3002
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v12

    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_SEPARATOR_HEIGHT:I

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    sget-object v6, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentSepPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v9

    .line 3006
    :cond_90c
    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->COMMENT_MARGIN_BOTTOM:I

    add-int/2addr v2, v1

    .line 2981
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v1, v2

    goto/16 :goto_862

    .line 2530
    :cond_915
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_26

    .line 2540
    :cond_91d
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sAuthorBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_46

    .line 2579
    :cond_921
    sget-object v2, Lcom/google/android/apps/plus/views/StreamRowView;->sOriginalAuthorBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_128

    :cond_925
    move v7, v8

    move v9, v1

    .line 2605
    goto/16 :goto_193

    .line 2639
    :cond_929
    const/4 v1, 0x0

    goto/16 :goto_226

    :cond_92c
    move v1, v7

    .line 2675
    goto/16 :goto_2c6

    .line 2706
    :cond_92f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_389

    .line 2709
    :cond_93d
    int-to-float v4, v1

    int-to-float v5, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenBuyLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2711
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mListenBuyLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_SKYJAM_INFO_BOTTOM_MARGIN:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2715
    sget-object v4, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v5, v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2716
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    .line 2720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->isAlbum()Z

    move-result v3

    if-nez v3, :cond_389

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    if-eqz v3, :cond_389

    .line 2721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v5, v5, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableImageButton;->isClicked()Z

    move-result v3

    if-eqz v3, :cond_389

    .line 2724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/ClickableImageButton;->drawSelectionRect(Landroid/graphics/Canvas;)V

    goto/16 :goto_389

    :cond_9bd
    move v2, v1

    move v1, v4

    .line 2802
    goto/16 :goto_4d3

    .line 2811
    :cond_9c1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->shouldDisplayJoinButton()Z

    move-result v1

    if-eqz v1, :cond_541

    .line 2812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 2813
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    iget-object v1, v1, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v4, v1

    goto/16 :goto_541

    .line 2853
    :cond_9e7
    sget-object v5, Lcom/google/android/apps/plus/views/StreamRowView;->sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_60d

    :cond_9f2
    move v3, v1

    .line 2870
    goto/16 :goto_5f0

    .line 2877
    :cond_9f5
    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sCommentBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_66e

    .line 2899
    :cond_9fe
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v7

    int-to-float v4, v2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2900
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2901
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto/16 :goto_6ca

    .line 2917
    :cond_a16
    const/4 v1, 0x0

    goto/16 :goto_724

    :cond_a19
    move v1, v2

    .line 2936
    goto/16 :goto_777

    .line 2942
    :cond_a1c
    sget-object v4, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v3

    int-to-float v1, v1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_78b

    .line 2967
    :cond_a28
    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sPlusoneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    goto/16 :goto_823

    .line 2972
    :cond_a31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getRight()I

    move-result v1

    int-to-float v4, v1

    goto/16 :goto_843

    :cond_a38
    move v7, v2

    goto/16 :goto_6fd

    :cond_a3b
    move v4, v1

    goto/16 :goto_503

    :cond_a3e
    move v2, v10

    goto/16 :goto_47a

    :cond_a41
    move v2, v1

    goto/16 :goto_1ea

    :cond_a44
    move v1, v9

    goto/16 :goto_1be
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1460
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->measureWidth(I)I

    move-result v0

    .line 1461
    .local v0, width:I
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->measureHeight(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->setMeasuredDimension(II)V

    .line 1462
    return-void
.end method

.method public onPlaybackStatusUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .parameter "musicUrl"
    .parameter "playing"
    .parameter "status"

    .prologue
    .line 3270
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    if-eqz v2, :cond_53

    .line 3271
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3272
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_54

    if-eqz p1, :cond_54

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3273
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sStopMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3278
    :goto_29
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mMusicUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const/4 v1, 0x1

    .line 3280
    .local v1, statusChanged:Z
    :goto_3e
    if-eqz v1, :cond_44

    .line 3281
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iput-object p3, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mStatus:Ljava/lang/String;

    .line 3284
    :cond_44
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-ne v0, v2, :cond_50

    if-eqz v1, :cond_53

    .line 3285
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    .line 3288
    .end local v0           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v1           #statusChanged:Z
    :cond_53
    return-void

    .line 3275
    .restart local v0       #oldBitmap:Landroid/graphics/Bitmap;
    :cond_54
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mPlayStopButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    sget-object v3, Lcom/google/android/apps/plus/views/StreamRowView;->sPlayMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_29

    .line 3278
    :cond_5e
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public refreshImages()Z
    .registers 10

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1395
    const/4 v0, 0x0

    .line 1397
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1398
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 1399
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_73

    .line 1401
    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_DIMENSION:I

    invoke-static {v3, v5, v0, v6, v7}, Lcom/google/android/apps/plus/service/EsService;->getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1403
    const-string v6, "StreamRowView"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1404
    const-string v6, "StreamRowView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshImages: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requesting url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_65
    if-eqz v5, :cond_73

    .line 1408
    const/4 v2, 0x1

    .line 1409
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/apps/plus/views/StreamRowView;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_73
    move v0, v2

    move v2, v0

    .line 1412
    goto :goto_10

    .line 1414
    :cond_76
    return v2
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 808
    return-void
.end method

.method public setAclDisplay(Ljava/lang/String;)V
    .registers 2
    .parameter "aclDisplay"

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAclDisplay:Ljava/lang/String;

    .line 852
    return-void
.end method

.method public setActivityId(Ljava/lang/String;)V
    .registers 2
    .parameter "activityId"

    .prologue
    .line 844
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;

    .line 845
    return-void
.end method

.method public setAuthor(JLjava/lang/String;)V
    .registers 10
    .parameter "authorId"
    .parameter "authorName"

    .prologue
    .line 911
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorId:J

    .line 913
    if-nez p3, :cond_36

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorName:Ljava/lang/String;

    .line 915
    const-string v0, "StreamRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===> Author name was null for gaia id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_20
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    iget-wide v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;JLjava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 921
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mUserImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 922
    return-void

    .line 917
    :cond_36
    iput-object p3, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAuthorName:Ljava/lang/String;

    goto :goto_20
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 3251
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mChecked:Z

    if-eq p1, v0, :cond_9

    .line 3252
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mChecked:Z

    .line 3253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    .line 3255
    :cond_9
    return-void
.end method

.method public setCheckin(Z)V
    .registers 2
    .parameter "checkIn"

    .prologue
    .line 865
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mIsCheckIn:Z

    .line 866
    return-void
.end method

.method public setClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 814
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 815
    return-void
.end method

.method public setComments(ZI[Lcom/google/android/apps/plus/content/DbComment;)V
    .registers 4
    .parameter "displayComments"
    .parameter "totalComments"
    .parameter "comments"

    .prologue
    .line 1322
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayComments:Z

    .line 1323
    iput p2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTotalComments:I

    .line 1324
    iput-object p3, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mComments:[Lcom/google/android/apps/plus/content/DbComment;

    .line 1325
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 6
    .parameter "contentHtml"

    .prologue
    .line 983
    if-eqz p1, :cond_15

    .line 984
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 985
    .local v0, context:Landroid/content/Context;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z

    if-nez v2, :cond_16

    sget v1, Lcom/google/android/apps/plus/views/StreamRowView;->MAX_PREVIEW_LENGTH:I

    .line 986
    .local v1, maxLength:I
    :goto_c
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mContent:Landroid/text/Spanned;

    .line 989
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #maxLength:I
    :cond_15
    return-void

    .line 985
    .restart local v0       #context:Landroid/content/Context;
    :cond_16
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public setCreationSource(Ljava/lang/String;)V
    .registers 2
    .parameter "creationSource"

    .prologue
    .line 858
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mCreationSource:Ljava/lang/String;

    .line 859
    return-void
.end method

.method public setDisplayDetails(Z)V
    .registers 2
    .parameter "displayDetails"

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z

    .line 838
    return-void
.end method

.method public setDocumentContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1061
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_49

    .line 1062
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_33

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1071
    :cond_33
    :goto_33
    if-eqz p1, :cond_48

    .line 1072
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1073
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z

    if-nez v0, :cond_4b

    sget v0, Lcom/google/android/apps/plus/views/StreamRowView;->MAX_PREVIEW_LENGTH:I

    .line 1074
    :goto_3f
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, p1, v0, v2, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentContent:Landroid/text/Spanned;

    .line 1077
    :cond_48
    return-void

    .line 1068
    :cond_49
    const/4 p1, 0x0

    goto :goto_33

    .line 1073
    :cond_4b
    const/4 v0, -0x1

    goto :goto_3f
.end method

.method public setDocumentDescription(Ljava/lang/String;)V
    .registers 3
    .parameter "description"

    .prologue
    .line 1083
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 1084
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDocumentDescription:Landroid/text/Spanned;

    .line 1086
    :cond_10
    return-void
.end method

.method public setHangoutData(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V
    .registers 3
    .parameter "hangoutData"

    .prologue
    .line 1241
    if-eqz p1, :cond_a

    .line 1242
    new-instance v0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;-><init>(Lcom/google/android/apps/plus/views/StreamRowView;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    .line 1246
    :goto_9
    return-void

    .line 1244
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mHangoutInfo:Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;

    goto :goto_9
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1184
    return-void
.end method

.method public setLocked(Z)V
    .registers 2
    .parameter "locked"

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mLocked:Z

    .line 873
    return-void
.end method

.method public setMediaContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1154
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    .line 1155
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_33

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1164
    :cond_33
    :goto_33
    if-eqz p1, :cond_3d

    .line 1165
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    .line 1167
    :cond_3d
    return-void

    .line 1161
    :cond_3e
    const/4 p1, 0x0

    goto :goto_33
.end method

.method public setOriginalAuthor(JLjava/lang/String;)V
    .registers 10
    .parameter "authorId"
    .parameter "authorName"

    .prologue
    .line 964
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorId:J

    .line 965
    iput-object p3, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    .line 967
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    iget-wide v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;JLjava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 969
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mOriginalAuthorImage:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 970
    return-void
.end method

.method public setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 2
    .parameter "plusOneData"

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 1305
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 823
    iput p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPosition:I

    .line 824
    return-void
.end method

.method public setPublic(Z)V
    .registers 2
    .parameter "publicPost"

    .prologue
    .line 886
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mPublicPost:Z

    .line 887
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .registers 2
    .parameter "searchQuery"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    .line 1003
    return-void
.end method

.method public setSkyjamAutoPlay()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3294
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mBuyButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v0, :cond_11

    .line 3296
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->setPlayback(Z)V

    .line 3301
    :goto_10
    return-void

    .line 3299
    :cond_11
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamAutoPlay:Z

    goto :goto_10
.end method

.method public setSkyjamContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1100
    const-string v0, "https://"

    invoke-virtual {p6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1101
    if-gez v0, :cond_10

    .line 1102
    const-string v0, "http://"

    invoke-virtual {p6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1105
    :cond_10
    if-ltz v0, :cond_61

    .line 1106
    if-eqz p4, :cond_1c

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    :cond_1c
    move v2, v4

    .line 1108
    :goto_1d
    if-eqz v2, :cond_64

    .line 1109
    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1113
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1114
    if-eqz v2, :cond_7d

    invoke-static {p3}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1118
    :goto_2e
    new-instance v0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    invoke-static {p4}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;-><init>(Lcom/google/android/apps/plus/views/StreamRowView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    .line 1121
    if-eqz p5, :cond_61

    .line 1122
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/apps/plus/views/StreamRowView;->STREAM_IMAGE_SKYJAM_DIMENSION:I

    invoke-static {v8, v0, p5, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamRowView;->setSkyjamThumbnail(Landroid/graphics/Bitmap;)V

    .line 1126
    :cond_61
    return-void

    :cond_62
    move v2, v3

    .line 1106
    goto :goto_1d

    .line 1111
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mode=streaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_24

    .line 1114
    :cond_7d
    const v0, 0x7f07012c

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v8, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2e
.end method

.method public setSkyjamThumbnail(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 1141
    if-nez p1, :cond_9

    .line 1142
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    sget-object v1, Lcom/google/android/apps/plus/views/StreamRowView;->sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1146
    :goto_8
    return-void

    .line 1144
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSkyjamInfo:Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;

    iput-object p1, v0, Lcom/google/android/apps/plus/views/StreamRowView$SkyjamInfo;->mThumbnail:Landroid/graphics/Bitmap;

    goto :goto_8
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSource:Ljava/lang/String;

    .line 1198
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mRelativeTime:Ljava/lang/String;

    .line 996
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1011
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44

    .line 1012
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_33

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1021
    :cond_33
    :goto_33
    if-eqz p1, :cond_43

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleContent:Landroid/text/Spanned;

    .line 1025
    :cond_43
    return-void

    .line 1018
    :cond_44
    const/4 p1, 0x0

    goto :goto_33
.end method

.method public setTitleDescription(Ljava/lang/String;)V
    .registers 6
    .parameter "titleDescription"

    .prologue
    .line 1031
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 1032
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z

    if-nez v1, :cond_1c

    sget v0, Lcom/google/android/apps/plus/views/StreamRowView;->MAX_DOCUMENT_PREVIEW_LENGTH:I

    .line 1033
    .local v0, maxLength:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mSearchQuery:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleDescription:Landroid/text/Spanned;

    .line 1036
    .end local v0           #maxLength:I
    :cond_1b
    return-void

    .line 1032
    :cond_1c
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public setTitleImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mTitleImages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 3243
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamRowView;->setChecked(Z)V

    .line 3244
    return-void

    .line 3243
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mImages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;

    .line 1275
    if-nez v0, :cond_b

    .line 1289
    :cond_a
    :goto_a
    return-void

    .line 1279
    :cond_b
    const-string v1, "StreamRowView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1280
    const-string v1, "StreamRowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_40
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/ClickableMediaImage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1284
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mMediaContent:Landroid/text/Spanned;

    if-eqz v0, :cond_a

    .line 1285
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1286
    :cond_5f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView;->mFavIcons:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method
