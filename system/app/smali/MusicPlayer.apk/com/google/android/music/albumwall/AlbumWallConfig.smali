.class public Lcom/google/android/music/albumwall/AlbumWallConfig;
.super Ljava/lang/Object;
.source "AlbumWallConfig.java"


# static fields
.field private static final sBackgroundColorId:[I

.field private static final sLabelFontOpacityId:[I

.field private static final sLabelFontSizeId:[I

.field private static final sLabelMaxLinesId:[I

.field private static final sLabelMultiLineId:[I

.field private static final sLabelSecondaryFontOpacityId:[I

.field private static final sLabelSecondaryFontSizeId:[I

.field private static final sLabelTertiaryFontOpacityId:[I

.field private static final sLabelTertiaryFontSizeId:[I


# instance fields
.field private mAlbumLoading:Landroid/graphics/Bitmap;

.field private mAllowedFocusExitMask:I

.field private mBannerHeight:F

.field private mBannerLabelMaxWidth:F

.field private mBetweenGridPadding:F

.field private mBottomMargin:F

.field private mCellHeight:F

.field private mCellWidth:F

.field private mCloseButtonResourceId:I

.field private mClusterBetweenGridPadding:F

.field private mClusterCellHeight:F

.field private mClusterCellWidth:F

.field private mClusterExpandLabelVertical:Z

.field private mClusterExpandedLabelHeight:F

.field private mClusterExpandedLabelWidth:F

.field private mClusterGridPaddingHeight:F

.field private mClusterGridPaddingWidth:F

.field private mClusterImageHeight:F

.field private mClusterImageWidth:F

.field private mClusterLabelHeight:F

.field private mClusterLabelMargin:F

.field private mClusterLabelWidth:F

.field private mClusterSingleImageHeight:F

.field private mClusterSingleImageWidth:F

.field private mClusterStackSpacing:F

.field private mClusters:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mExpandLabelExpandCell:Z

.field private mExpandLabelVertical:Z

.field private mGridMarginH:F

.field private mGridMarginW:F

.field private mGridPaddingHeight:F

.field private mGridPaddingWidth:F

.field private mGridScrollBarAutoFade:Z

.field private mGridScrollOverlayFollowsThumb:Z

.field private mHideThumbIfContentFits:Z

.field private mHighlightColor:[F

.field private mHorizontalScrolling:Z

.field private mImageHeight:F

.field private mImageWidth:F

.field private mIsExpandedClusterLabelHorizontal:Z

.field private mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

.field private mLabelHeight:F

.field private mLabelHighlightMarginX:F

.field private mLabelHighlightMarginY:F

.field private mLabelLoading:Landroid/graphics/Bitmap;

.field private mLabelMargin:F

.field private mLabelWidth:F

.field private mLabelXMargin:I

.field private mLeftMargin:F

.field private mMaxClosedPileCount:I

.field private mMaxOutstandingAlbumTextureRequests:I

.field private mMaxOverScrollX:F

.field private mMaxOverScrollY:F

.field private mMenuMarkHeight:F

.field private mMenuMarkOffsetX:F

.field private mMenuMarkOffsetY:F

.field private mMenuMarkWidth:F

.field private mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mScrollBarMode:I

.field private mScrollBarOverlayHeight:F

.field private mScrollBarOverlayId:I

.field private mScrollBarOverlayWidth:F

.field private mScrollBarThumbId:I

.field private mScrollBarTrackId:I

.field private mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mShowMenuMark:Z

.field private mShowSongCount:Z

.field private mStyle:I

.field private mTopMargin:F

.field private mUseAlbumArtBackgrounds:Z

.field private mVisibilityMarginBottom:F

.field private mVisibilityMarginLeft:F

.field private mVisibilityMarginRight:F

.field private mVisibilityMarginTop:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMultiLineId:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontSizeId:[I

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontOpacityId:[I

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontSizeId:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontSizeId:[I

    .line 146
    new-array v0, v1, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontOpacityId:[I

    .line 153
    new-array v0, v1, [I

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontOpacityId:[I

    .line 160
    new-array v0, v1, [I

    fill-array-data v0, :array_96

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMaxLinesId:[I

    .line 167
    new-array v0, v1, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sBackgroundColorId:[I

    return-void

    .line 111
    nop

    :array_42
    .array-data 0x4
        0x9t 0x0t 0x8t 0x7ft
        0xft 0x0t 0x8t 0x7ft
        0x15t 0x0t 0x8t 0x7ft
        0x1bt 0x0t 0x8t 0x7ft
    .end array-data

    .line 118
    :array_4e
    .array-data 0x4
        0x59t 0x0t 0x9t 0x7ft
        0x5at 0x0t 0x9t 0x7ft
        0x5bt 0x0t 0x9t 0x7ft
        0x5ct 0x0t 0x9t 0x7ft
    .end array-data

    .line 125
    :array_5a
    .array-data 0x4
        0xat 0x0t 0x8t 0x7ft
        0x10t 0x0t 0x8t 0x7ft
        0x16t 0x0t 0x8t 0x7ft
        0x1ct 0x0t 0x8t 0x7ft
    .end array-data

    .line 132
    :array_66
    .array-data 0x4
        0x5dt 0x0t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x5ft 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data

    .line 139
    :array_72
    .array-data 0x4
        0x61t 0x0t 0x9t 0x7ft
        0x62t 0x0t 0x9t 0x7ft
        0x63t 0x0t 0x9t 0x7ft
        0x64t 0x0t 0x9t 0x7ft
    .end array-data

    .line 146
    :array_7e
    .array-data 0x4
        0xbt 0x0t 0x8t 0x7ft
        0x11t 0x0t 0x8t 0x7ft
        0x17t 0x0t 0x8t 0x7ft
        0x1dt 0x0t 0x8t 0x7ft
    .end array-data

    .line 153
    :array_8a
    .array-data 0x4
        0xct 0x0t 0x8t 0x7ft
        0x12t 0x0t 0x8t 0x7ft
        0x18t 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
    .end array-data

    .line 160
    :array_96
    .array-data 0x4
        0xdt 0x0t 0x8t 0x7ft
        0x13t 0x0t 0x8t 0x7ft
        0x19t 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
    .end array-data

    .line 167
    :array_a2
    .array-data 0x4
        0xet 0x0t 0x8t 0x7ft
        0x14t 0x0t 0x8t 0x7ft
        0x1at 0x0t 0x8t 0x7ft
        0x20t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 10
    .parameter "context"
    .parameter "isClusters"

    .prologue
    const/high16 v6, 0x4220

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/high16 v3, 0x4280

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    .line 28
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    .line 29
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBottomMargin:F

    .line 30
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLeftMargin:F

    .line 31
    const/high16 v1, 0x4170

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    .line 32
    const/high16 v1, 0x4170

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    .line 34
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    .line 35
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    .line 36
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    .line 37
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    .line 38
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    .line 39
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    .line 40
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    .line 41
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    .line 42
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    .line 43
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    .line 44
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    .line 45
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    .line 47
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    .line 48
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    .line 49
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    .line 50
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    .line 51
    const/high16 v1, 0x42aa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    .line 52
    const/high16 v1, 0x42aa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    .line 53
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    .line 54
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    .line 55
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    .line 56
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    .line 57
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    .line 58
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    .line 59
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    .line 60
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterBetweenGridPadding:F

    .line 61
    const/high16 v1, 0x4120

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterStackSpacing:F

    .line 63
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    .line 64
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    .line 66
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginLeft:F

    .line 67
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginTop:F

    .line 68
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginRight:F

    .line 69
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginBottom:F

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    .line 72
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    .line 73
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollBarAutoFade:Z

    .line 74
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    .line 76
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelExpandCell:Z

    .line 79
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_ca

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    .line 80
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    .line 83
    iput v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    .line 85
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxClosedPileCount:I

    .line 97
    const/high16 v1, 0x4380

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    .line 98
    const/high16 v1, 0x4240

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    .line 99
    const/16 v1, 0xf

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    .line 174
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowMenuMark:Z

    .line 176
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetX:F

    .line 177
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetY:F

    .line 179
    const/high16 v1, 0x4210

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkWidth:F

    .line 180
    const/high16 v1, 0x4210

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkHeight:F

    .line 182
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    .line 196
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/music/utils/LabelMaker$Config;

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    .line 201
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p0, p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusters(Z)V

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b7
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    array-length v1, v1

    if-ge v0, v1, :cond_c8

    .line 205
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    new-instance v2, Lcom/google/android/music/utils/LabelMaker$Config;

    invoke-direct {v2}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>()V

    aput-object v2, v1, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 207
    :cond_c8
    return-void

    .line 79
    nop

    :array_ca
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data
.end method

.method private isPile(I)Z
    .registers 3
    .parameter "labelType"

    .prologue
    .line 942
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private updateLabelConfig(Lcom/google/android/music/utils/LabelMaker$Config;I)V
    .registers 13
    .parameter "labelConfig"
    .parameter "labelType"

    .prologue
    const/4 v9, 0x1

    const v8, 0x3b808081

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 957
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 959
    .local v3, resources:Landroid/content/res/Resources;
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isPile(I)Z

    move-result v2

    .line 960
    .local v2, isPile:Z
    if-ne p2, v7, :cond_a6

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerLabelMaxWidth()F

    move-result v4

    .line 962
    .local v4, w:F
    :goto_16
    if-ne p2, v7, :cond_b4

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v1

    .line 964
    .local v1, h:F
    :goto_1c
    const v0, 0x3b808081

    .line 966
    .local v0, OPACITY_SCALE:F
    const/4 v5, 0x4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 967
    if-ne p2, v7, :cond_c2

    move v5, v6

    :goto_25
    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 969
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sBackgroundColorId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    .line 970
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 971
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMultiLineId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:I

    .line 972
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 973
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    .line 974
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 975
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 976
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    .line 977
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    .line 978
    iput-boolean v9, p1, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 979
    float-to-int v5, v4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 980
    float-to-int v5, v1

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 981
    float-to-int v5, v4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 982
    iput-boolean v6, p1, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    .line 983
    iput v6, p1, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    .line 984
    const/4 v5, 0x5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 985
    iput v9, p1, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 986
    if-ne p2, v7, :cond_99

    iget v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    :cond_99
    iput v6, p1, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    .line 987
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMaxLinesId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 988
    return-void

    .line 960
    .end local v0           #OPACITY_SCALE:F
    .end local v1           #h:F
    .end local v4           #w:F
    :cond_a6
    if-eqz v2, :cond_ae

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelWidth()F

    move-result v4

    goto/16 :goto_16

    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v4

    goto/16 :goto_16

    .line 962
    .restart local v4       #w:F
    :cond_b4
    if-eqz v2, :cond_bc

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelHeight()F

    move-result v1

    goto/16 :goto_1c

    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v1

    goto/16 :goto_1c

    .restart local v0       #OPACITY_SCALE:F
    .restart local v1       #h:F
    :cond_c2
    move v5, v7

    .line 967
    goto/16 :goto_25
.end method

.method private updateLabelConfigs()V
    .registers 4

    .prologue
    .line 950
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 951
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    aget-object v0, v2, v1

    .line 952
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateLabelConfig(Lcom/google/android/music/utils/LabelMaker$Config;I)V

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 954
    .end local v0           #config:Lcom/google/android/music/utils/LabelMaker$Config;
    :cond_10
    return-void
.end method


# virtual methods
.method public final getAlbumLoading()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAlbumLoading:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAllowedFocusExitMask()I
    .registers 2

    .prologue
    .line 1020
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAllowedFocusExitMask:I

    return v0
.end method

.method public getBannerHeight()F
    .registers 2

    .prologue
    .line 926
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    return v0
.end method

.method public getBannerLabelMaxWidth()F
    .registers 2

    .prologue
    .line 918
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    return v0
.end method

.method public final getBetweenGridPadding()F
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    return v0
.end method

.method public final getBottomMargin()F
    .registers 2

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBottomMargin:F

    return v0
.end method

.method public final getCellHeight()F
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    return v0
.end method

.method public final getCellWidth()F
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    return v0
.end method

.method public final getCloseButtonResourceId()I
    .registers 2

    .prologue
    .line 827
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCloseButtonResourceId:I

    return v0
.end method

.method public final getClusterCellHeight()F
    .registers 2

    .prologue
    .line 546
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    return v0
.end method

.method public final getClusterCellWidth()F
    .registers 2

    .prologue
    .line 538
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    return v0
.end method

.method public final getClusterExpandedLabelHeight()F
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    return v0
.end method

.method public final getClusterExpandedLabelWidth()F
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    return v0
.end method

.method public final getClusterGridPaddingHeight()F
    .registers 2

    .prologue
    .line 634
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    return v0
.end method

.method public final getClusterGridPaddingWidth()F
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    return v0
.end method

.method public final getClusterImageHeight()F
    .registers 2

    .prologue
    .line 562
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    return v0
.end method

.method public final getClusterImageWidth()F
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    return v0
.end method

.method public final getClusterLabelHeight()F
    .registers 2

    .prologue
    .line 594
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    return v0
.end method

.method public final getClusterLabelMargin()F
    .registers 2

    .prologue
    .line 602
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    return v0
.end method

.method public final getClusterLabelWidth()F
    .registers 2

    .prologue
    .line 586
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    return v0
.end method

.method public final getClusterSingleImageHeight()F
    .registers 2

    .prologue
    .line 570
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    return v0
.end method

.method public final getClusterSingleImageWidth()F
    .registers 2

    .prologue
    .line 578
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    return v0
.end method

.method public getClusterStackSpacing()F
    .registers 2

    .prologue
    .line 654
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterStackSpacing:F

    return v0
.end method

.method public getDefaultBackgroundBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getGridMarginH()F
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    return v0
.end method

.method public final getGridMarginW()F
    .registers 2

    .prologue
    .line 402
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    return v0
.end method

.method public final getGridPaddingHeight()F
    .registers 2

    .prologue
    .line 522
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    return v0
.end method

.method public final getGridPaddingWidth()F
    .registers 2

    .prologue
    .line 514
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    return v0
.end method

.method public final getHideThumbIfContentFits()Z
    .registers 2

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHideThumbIfContentFits:Z

    return v0
.end method

.method public final getHighlightColor()[F
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    return-object v0
.end method

.method public final getImageHeight()F
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    return v0
.end method

.method public final getImageWidth()F
    .registers 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    return v0
.end method

.method public getIsExpandedClusterLabelHorizontal()Z
    .registers 2

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    return v0
.end method

.method public getLabelConfig(I)Lcom/google/android/music/utils/LabelMaker$Config;
    .registers 3
    .parameter "type"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getLabelHeight()F
    .registers 2

    .prologue
    .line 482
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    return v0
.end method

.method public final getLabelHighlightMarginX()F
    .registers 2

    .prologue
    .line 498
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    return v0
.end method

.method public final getLabelHighlightMarginY()F
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    return v0
.end method

.method public final getLabelLoading()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelLoading:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getLabelMargin()F
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    return v0
.end method

.method public final getLabelWidth()F
    .registers 2

    .prologue
    .line 474
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    return v0
.end method

.method public final getLeftMargin()F
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLeftMargin:F

    return v0
.end method

.method public final getMaxClosedPileCount()I
    .registers 2

    .prologue
    .line 789
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxClosedPileCount:I

    return v0
.end method

.method public final getMaxOutstandingAlbumTextureRequests()I
    .registers 2

    .prologue
    .line 765
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    return v0
.end method

.method public final getMaxOverScrollX()F
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    return v0
.end method

.method public final getMaxOverScrollY()F
    .registers 2

    .prologue
    .line 698
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    return v0
.end method

.method public getMenuMarkHeight()F
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkHeight:F

    return v0
.end method

.method public getMenuMarkOffsetX()F
    .registers 2

    .prologue
    .line 889
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetX:F

    return v0
.end method

.method public getMenuMarkOffsetY()F
    .registers 2

    .prologue
    .line 897
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetY:F

    return v0
.end method

.method public getMenuMarkWidth()F
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkWidth:F

    return v0
.end method

.method public getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .registers 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getScrollBarAutoFade()Z
    .registers 2

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollBarAutoFade:Z

    return v0
.end method

.method public final getScrollBarMode()I
    .registers 2

    .prologue
    .line 773
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    return v0
.end method

.method public final getScrollBarOverlayHeight()F
    .registers 2

    .prologue
    .line 839
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayHeight:F

    return v0
.end method

.method public final getScrollBarOverlayId()I
    .registers 2

    .prologue
    .line 815
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayId:I

    return v0
.end method

.method public final getScrollBarOverlayWidth()F
    .registers 2

    .prologue
    .line 831
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayWidth:F

    return v0
.end method

.method public final getScrollBarThumbId()I
    .registers 2

    .prologue
    .line 801
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarThumbId:I

    return v0
.end method

.method public final getScrollBarTrackId()I
    .registers 2

    .prologue
    .line 810
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarTrackId:I

    return v0
.end method

.method public final getScrollOverlayFollowsThumb()Z
    .registers 2

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    return v0
.end method

.method public getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .registers 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public getShowMenuMark()Z
    .registers 2

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowMenuMark:Z

    return v0
.end method

.method public getShowSongCount()Z
    .registers 2

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    return v0
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 914
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mStyle:I

    return v0
.end method

.method public final getTopMargin()F
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    return v0
.end method

.method public getUseAlbumArtBackgrounds()Z
    .registers 2

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mUseAlbumArtBackgrounds:Z

    return v0
.end method

.method public final getVisibilityMarginBottom()F
    .registers 2

    .prologue
    .line 690
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginBottom:F

    return v0
.end method

.method public final getVisibilityMarginLeft()F
    .registers 2

    .prologue
    .line 666
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginLeft:F

    return v0
.end method

.method public final getVisibilityMarginRight()F
    .registers 2

    .prologue
    .line 682
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginRight:F

    return v0
.end method

.method public final getVisibilityMarginTop()F
    .registers 2

    .prologue
    .line 674
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginTop:F

    return v0
.end method

.method public final isClusterExpandedLabelVertical()Z
    .registers 2

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    return v0
.end method

.method public final isClusters()Z
    .registers 2

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    return v0
.end method

.method public final isExpandLabelExpandCell()Z
    .registers 2

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelExpandCell:Z

    return v0
.end method

.method public final isExpandedLabelVertical()Z
    .registers 2

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    return v0
.end method

.method public final isHorizontalScrolling()Z
    .registers 2

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    return v0
.end method

.method public final setAlbumLoading(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAlbumLoading:Landroid/graphics/Bitmap;

    .line 419
    return-void
.end method

.method public setAllowedFocusExitMask(I)V
    .registers 2
    .parameter "mask"

    .prologue
    .line 1013
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAllowedFocusExitMask:I

    .line 1014
    return-void
.end method

.method public setBannerHeight(F)V
    .registers 2
    .parameter "bannerHeight"

    .prologue
    .line 930
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    .line 931
    return-void
.end method

.method public setBannerLabelMaxWidth(F)V
    .registers 2
    .parameter "bannerLabelMaxWidth"

    .prologue
    .line 922
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    .line 923
    return-void
.end method

.method public final setBetweenGridPadding(F)V
    .registers 2
    .parameter "betweenGridPadding"

    .prologue
    .line 534
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    .line 535
    return-void
.end method

.method public final setBottomMargin(F)V
    .registers 2
    .parameter "bottomMargin"

    .prologue
    .line 390
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBottomMargin:F

    .line 391
    return-void
.end method

.method public final setCellHeight(F)V
    .registers 2
    .parameter "cellHeight"

    .prologue
    .line 454
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    .line 455
    return-void
.end method

.method public final setCellWidth(F)V
    .registers 2
    .parameter "cellWidth"

    .prologue
    .line 446
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    .line 447
    return-void
.end method

.method public final setCloseButtonResourceId(I)V
    .registers 2
    .parameter "closeButtonResourceId"

    .prologue
    .line 823
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCloseButtonResourceId:I

    .line 824
    return-void
.end method

.method public final setClusterBetweenGridPadding(F)V
    .registers 2
    .parameter "clusterBetweenGridPadding"

    .prologue
    .line 646
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterBetweenGridPadding:F

    .line 647
    return-void
.end method

.method public final setClusterCellHeight(F)V
    .registers 2
    .parameter "clusterCellHeight"

    .prologue
    .line 550
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    .line 551
    return-void
.end method

.method public final setClusterCellWidth(F)V
    .registers 2
    .parameter "clusterCellWidth"

    .prologue
    .line 542
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    .line 543
    return-void
.end method

.method public final setClusterExpandedLabelHeight(F)V
    .registers 2
    .parameter "clusterExpandedLabelHeight"

    .prologue
    .line 622
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    .line 623
    return-void
.end method

.method public final setClusterExpandedLabelWidth(F)V
    .registers 2
    .parameter "clusterExpandedLabelWidth"

    .prologue
    .line 614
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    .line 615
    return-void
.end method

.method public final setClusterGridPaddingHeight(F)V
    .registers 2
    .parameter "clusterGridPaddingHeight"

    .prologue
    .line 638
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    .line 639
    return-void
.end method

.method public final setClusterGridPaddingWidth(F)V
    .registers 2
    .parameter "clusterGridPaddingWidth"

    .prologue
    .line 630
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    .line 631
    return-void
.end method

.method public final setClusterImageHeight(F)V
    .registers 2
    .parameter "clusterImageHeight"

    .prologue
    .line 566
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    .line 567
    return-void
.end method

.method public final setClusterImageWidth(F)V
    .registers 2
    .parameter "clusterImageWidth"

    .prologue
    .line 558
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    .line 559
    return-void
.end method

.method public final setClusterLabelHeight(F)V
    .registers 2
    .parameter "clusterLabelHeight"

    .prologue
    .line 598
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    .line 599
    return-void
.end method

.method public final setClusterLabelMargin(F)V
    .registers 2
    .parameter "clusterLabelMargin"

    .prologue
    .line 606
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    .line 607
    return-void
.end method

.method public final setClusterLabelWidth(F)V
    .registers 2
    .parameter "clusterLabelWidth"

    .prologue
    .line 590
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    .line 591
    return-void
.end method

.method public final setClusterSingleImageHeight(F)V
    .registers 2
    .parameter "clusterSingleImageHeight"

    .prologue
    .line 574
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    .line 575
    return-void
.end method

.method public final setClusterSingleImageWidth(F)V
    .registers 2
    .parameter "clusterSingleImageWidth"

    .prologue
    .line 582
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    .line 583
    return-void
.end method

.method public final setClusterStackSpacing(F)V
    .registers 2
    .parameter "stackSpacing"

    .prologue
    .line 650
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterStackSpacing:F

    .line 651
    return-void
.end method

.method public setDefaultBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "defaultBackgroundBitmap"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 848
    return-void
.end method

.method public final setGridMarginH(F)V
    .registers 2
    .parameter "gridMarginH"

    .prologue
    .line 414
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    .line 415
    return-void
.end method

.method public final setGridMarginW(F)V
    .registers 2
    .parameter "gridMarginW"

    .prologue
    .line 406
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    .line 407
    return-void
.end method

.method public final setGridPaddingHeight(F)V
    .registers 2
    .parameter "gridPaddingHeight"

    .prologue
    .line 526
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    .line 527
    return-void
.end method

.method public final setGridPaddingWidth(F)V
    .registers 2
    .parameter "gridPaddingWidth"

    .prologue
    .line 518
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    .line 519
    return-void
.end method

.method public final setHideThumbIfContentFits(Z)V
    .registers 2
    .parameter "hideThumbIfContentFits"

    .prologue
    .line 785
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHideThumbIfContentFits:Z

    .line 786
    return-void
.end method

.method public final setImageHeight(F)V
    .registers 2
    .parameter "imageHeight"

    .prologue
    .line 470
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    .line 471
    return-void
.end method

.method public final setImageWidth(F)V
    .registers 2
    .parameter "imageWidth"

    .prologue
    .line 462
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    .line 463
    return-void
.end method

.method public final setIsClusterExpandedLabelVertical(Z)V
    .registers 2
    .parameter "isClusterExpandedLabelVertical"

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    .line 719
    return-void
.end method

.method public final setIsClusters(Z)V
    .registers 2
    .parameter "isClusters"

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    .line 439
    return-void
.end method

.method public final setIsExpandLabelExpandCell(Z)V
    .registers 2
    .parameter "isExpandLabelExpandCell"

    .prologue
    .line 726
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelExpandCell:Z

    .line 727
    return-void
.end method

.method public setIsExpandedClusterLabelHorizontal(Z)V
    .registers 2
    .parameter "isExpandedClusterLabelHorizontal"

    .prologue
    .line 868
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    .line 869
    return-void
.end method

.method public final setIsExpandedLabelVertical(Z)V
    .registers 2
    .parameter "isExpandedLabelVertical"

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    .line 711
    return-void
.end method

.method public final setIsHorizontalScrolling(Z)V
    .registers 2
    .parameter "isHorizontalScrolling"

    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    .line 735
    return-void
.end method

.method public final setLabelHeight(F)V
    .registers 2
    .parameter "labelHeight"

    .prologue
    .line 486
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    .line 487
    return-void
.end method

.method public final setLabelHighlightMarginX(F)V
    .registers 2
    .parameter "labelHighlightMarginX"

    .prologue
    .line 502
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    .line 503
    return-void
.end method

.method public final setLabelHighlightMarginY(F)V
    .registers 2
    .parameter "labelHighlightMarginY"

    .prologue
    .line 510
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    .line 511
    return-void
.end method

.method public final setLabelLoading(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelLoading:Landroid/graphics/Bitmap;

    .line 427
    return-void
.end method

.method public final setLabelMargin(F)V
    .registers 2
    .parameter "labelMargin"

    .prologue
    .line 494
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    .line 495
    return-void
.end method

.method public final setLabelWidth(F)V
    .registers 2
    .parameter "labelWidth"

    .prologue
    .line 478
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    .line 479
    return-void
.end method

.method public final setLeftMargin(F)V
    .registers 2
    .parameter "leftMargin"

    .prologue
    .line 398
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLeftMargin:F

    .line 399
    return-void
.end method

.method public final setMaxOutstandingAlbumTextureRequests(I)V
    .registers 2
    .parameter "maxOutstandingAlbumTextureRequests"

    .prologue
    .line 769
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    .line 770
    return-void
.end method

.method public final setMaxOverScrollX(F)V
    .registers 2
    .parameter "maxOverScrollX"

    .prologue
    .line 662
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    .line 663
    return-void
.end method

.method public final setMaxOverScrollY(F)V
    .registers 2
    .parameter "maxOverScrollY"

    .prologue
    .line 702
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    .line 703
    return-void
.end method

.method public setMenuMarkHeight(F)V
    .registers 2
    .parameter "markHeight"

    .prologue
    .line 374
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkHeight:F

    .line 375
    return-void
.end method

.method public setMenuMarkOffsetX(F)V
    .registers 2
    .parameter "offsetX"

    .prologue
    .line 885
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetX:F

    .line 886
    return-void
.end method

.method public setMenuMarkOffsetY(F)V
    .registers 2
    .parameter "offsetY"

    .prologue
    .line 893
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetY:F

    .line 894
    return-void
.end method

.method public setMenuMarkWidth(F)V
    .registers 2
    .parameter "markWidth"

    .prologue
    .line 366
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkWidth:F

    .line 367
    return-void
.end method

.method public setPressedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V
    .registers 3
    .parameter "pressedItemFrame"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    if-eqz v0, :cond_9

    .line 1003
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->freeOpenGlResources()V

    .line 1005
    :cond_9
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 1006
    return-void
.end method

.method public final setScrollBarAutoFade(Z)V
    .registers 2
    .parameter "autoFade"

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollBarAutoFade:Z

    .line 751
    return-void
.end method

.method public final setScrollBarMode(I)V
    .registers 2
    .parameter "scrollBarMode"

    .prologue
    .line 777
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    .line 778
    return-void
.end method

.method public final setScrollBarOverlayHeight(F)V
    .registers 2
    .parameter "scrollBarOverlayHeight"

    .prologue
    .line 843
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayHeight:F

    .line 844
    return-void
.end method

.method public final setScrollBarOverlayId(I)V
    .registers 2
    .parameter "scrollBarOverlayId"

    .prologue
    .line 819
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayId:I

    .line 820
    return-void
.end method

.method public final setScrollBarOverlayWidth(F)V
    .registers 2
    .parameter "scrollBarOverlayWidth"

    .prologue
    .line 835
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayWidth:F

    .line 836
    return-void
.end method

.method public final setScrollBarThumbId(I)V
    .registers 2
    .parameter "scrollBarThumbId"

    .prologue
    .line 797
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarThumbId:I

    .line 798
    return-void
.end method

.method public final setScrollBarTrackId(I)V
    .registers 2
    .parameter "scrollBarTrackId"

    .prologue
    .line 806
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarTrackId:I

    .line 807
    return-void
.end method

.method public final setScrollOverlayFollowsThumb(Z)V
    .registers 2
    .parameter "gridScrollOverlayFollowsThumb"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    .line 743
    return-void
.end method

.method public setSelectedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V
    .registers 3
    .parameter "selectedItemFrame"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    if-eqz v0, :cond_9

    .line 992
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->freeOpenGlResources()V

    .line 994
    :cond_9
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 995
    return-void
.end method

.method public setShowMenuMark(Z)V
    .registers 2
    .parameter "showMenuMark"

    .prologue
    .line 877
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowMenuMark:Z

    .line 878
    return-void
.end method

.method public setShowSongCount(Z)V
    .registers 2
    .parameter "showSongCount"

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    .line 903
    return-void
.end method

.method public setStyle(I)V
    .registers 2
    .parameter "style"

    .prologue
    .line 910
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mStyle:I

    .line 911
    return-void
.end method

.method public final setTopMargin(F)V
    .registers 2
    .parameter "topMargin"

    .prologue
    .line 382
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    .line 383
    return-void
.end method

.method public setUseAlbumArtBackgrounds(Z)V
    .registers 2
    .parameter "useAlbumArtBackgrounds"

    .prologue
    .line 855
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mUseAlbumArtBackgrounds:Z

    .line 856
    return-void
.end method

.method public final setVisibilityMarginBottom(F)V
    .registers 2
    .parameter "visibilityMarginBottom"

    .prologue
    .line 694
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginBottom:F

    .line 695
    return-void
.end method

.method public final setVisibilityMarginLeft(F)V
    .registers 2
    .parameter "visibilityMarginLeft"

    .prologue
    .line 670
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginLeft:F

    .line 671
    return-void
.end method

.method public final setVisibilityMarginRight(F)V
    .registers 2
    .parameter "visibilityMarginRight"

    .prologue
    .line 686
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginRight:F

    .line 687
    return-void
.end method

.method public final setVisibilityMarginTop(F)V
    .registers 2
    .parameter "visibilityMarginTop"

    .prologue
    .line 678
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginTop:F

    .line 679
    return-void
.end method

.method public updateAlbumWallConfig(II)V
    .registers 35
    .parameter "width"
    .parameter "height"

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 220
    .local v26, resources:Landroid/content/res/Resources;
    const v2, 0x7f0b0004

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 221
    .local v16, isHScrolling:Z
    const v2, 0x7f08002d

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 222
    .local v25, nbColRow:I
    const v2, 0x7f08002e

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v21, v0

    .line 223
    .local v21, mocCellSize:F
    const v2, 0x7f08002f

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v23, v0

    .line 224
    .local v23, mocClusterSingleSize:F
    const v2, 0x7f080030

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 225
    .local v22, mocClusterMultipleSize:F
    const v2, 0x7f080031

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v24, v0

    .line 226
    .local v24, mocMargin:F
    const v2, 0x7f080032

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v28, v0

    .line 227
    .local v28, stackSpacing:F
    div-float v11, v21, v24

    .line 228
    .local v11, cellMarginRatio:F
    div-float v14, v21, v23

    .line 229
    .local v14, clusterSingleRatio:F
    div-float v13, v21, v22

    .line 231
    .local v13, clusterMultipleRatio:F
    const v2, 0x7f09003a

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    .line 232
    .local v30, topMargin:I
    const v2, 0x7f09003b

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 233
    .local v9, bottomMargin:I
    const v2, 0x7f09003c

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 234
    .local v17, leftMargin:I
    const v2, 0x7f09003d

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 235
    .local v18, leftPadding:I
    const v2, 0x7f09003e

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 236
    .local v31, topPadding:I
    const v2, 0x7f09003f

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 237
    .local v27, rightPadding:I
    const v2, 0x7f090040

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 238
    .local v10, bottomPadding:I
    if-eqz v16, :cond_3b7

    sub-int v2, p2, v31

    sub-int v20, v2, v10

    .line 240
    .local v20, minorAxisGridAreaSize:I
    :goto_a1
    move/from16 v0, v20

    int-to-float v2, v0

    mul-float/2addr v2, v11

    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x3f80

    add-float/2addr v4, v11

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v12, v2

    .line 241
    .local v12, cellSize:I
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x3f80

    add-float/2addr v4, v11

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v19, v0

    .line 243
    .local v19, marginSize:I
    move/from16 v0, v30

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setTopMargin(F)V

    .line 244
    int-to-float v2, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBottomMargin(F)V

    .line 245
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLeftMargin(F)V

    .line 246
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridMarginW(F)V

    .line 247
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridMarginH(F)V

    .line 248
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCellWidth(F)V

    .line 249
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCellHeight(F)V

    .line 250
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setImageWidth(F)V

    .line 251
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setImageHeight(F)V

    .line 252
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelWidth(F)V

    .line 253
    const v2, 0x7f090044

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHeight(F)V

    .line 254
    const v2, 0x7f090045

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelMargin(F)V

    .line 255
    const v2, 0x7f090041

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHighlightMarginX(F)V

    .line 256
    const v2, 0x7f090042

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHighlightMarginY(F)V

    .line 257
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridPaddingWidth(F)V

    .line 258
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridPaddingHeight(F)V

    .line 259
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBetweenGridPadding(F)V

    .line 261
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterCellWidth(F)V

    .line 262
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterCellHeight(F)V

    .line 263
    int-to-float v2, v12

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterImageWidth(F)V

    .line 264
    int-to-float v2, v12

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterImageHeight(F)V

    .line 265
    int-to-float v2, v12

    div-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterSingleImageWidth(F)V

    .line 266
    int-to-float v2, v12

    div-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterSingleImageHeight(F)V

    .line 267
    int-to-float v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelWidth(F)V

    .line 268
    const v2, 0x7f090049

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelHeight(F)V

    .line 269
    const v2, 0x7f09004a

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterExpandedLabelWidth(F)V

    .line 270
    const v2, 0x7f09004b

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterExpandedLabelHeight(F)V

    .line 271
    const v2, 0x7f09004c

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelMargin(F)V

    .line 272
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterGridPaddingWidth(F)V

    .line 273
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterGridPaddingHeight(F)V

    .line 274
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterBetweenGridPadding(F)V

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterStackSpacing(F)V

    .line 277
    const v2, 0x7f090057

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBannerLabelMaxWidth(F)V

    .line 278
    const v2, 0x7f090058

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBannerHeight(F)V

    .line 279
    const v2, 0x7f080007

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOverScrollX(F)V

    .line 280
    const v2, 0x7f080008

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOverScrollY(F)V

    .line 282
    const v2, 0x7f09004f

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginLeft(F)V

    .line 283
    const v2, 0x7f090050

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginTop(F)V

    .line 284
    const v2, 0x7f090051

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginRight(F)V

    .line 285
    const v2, 0x7f090052

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginBottom(F)V

    .line 287
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsHorizontalScrolling(Z)V

    .line 288
    const v2, 0x7f0b0005

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollOverlayFollowsThumb(Z)V

    .line 289
    const v2, 0x7f0b0006

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarAutoFade(Z)V

    .line 290
    const v2, 0x7f0b0008

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandedLabelVertical(Z)V

    .line 291
    const v2, 0x7f0b0009

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusterExpandedLabelVertical(Z)V

    .line 292
    const v2, 0x7f0b000a

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandLabelExpandCell(Z)V

    .line 293
    const v2, 0x7f080021

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOutstandingAlbumTextureRequests(I)V

    .line 296
    const v2, 0x7f0b000b

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setShowSongCount(Z)V

    .line 297
    const v2, 0x7f0b000c

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setShowMenuMark(Z)V

    .line 298
    const v2, 0x7f090065

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkOffsetX(F)V

    .line 299
    const v2, 0x7f090066

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkOffsetY(F)V

    .line 300
    const v2, 0x7f090067

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkWidth(F)V

    .line 301
    const v2, 0x7f090068

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkHeight(F)V

    .line 303
    const v2, 0x7f020049

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCloseButtonResourceId(I)V

    .line 305
    const/4 v8, 0x0

    .line 307
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const v2, 0x7f0200d5

    :try_start_31a
    move-object/from16 v0, v26

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 308
    const/4 v2, 0x1

    invoke-static {v8, v12, v12, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_324
    .catch Ljava/lang/OutOfMemoryError; {:try_start_31a .. :try_end_324} :catch_3bd

    move-result-object v8

    .line 313
    :goto_325
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setAlbumLoading(Landroid/graphics/Bitmap;)V

    .line 315
    const/4 v2, 0x1

    :try_start_32b
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_33a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32b .. :try_end_33a} :catch_3c3

    move-result-object v8

    .line 319
    :goto_33b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelLoading(Landroid/graphics/Bitmap;)V

    .line 322
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarMode(I)V

    .line 323
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_428

    .line 343
    :goto_34a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/utils/BackgroundUtils;->getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setDefaultBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    const v2, 0x7f0b0010

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setUseAlbumArtBackgrounds(Z)V

    .line 346
    const v2, 0x7f08002c

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    .line 347
    .local v29, style:I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setStyle(I)V

    .line 349
    const v2, 0x7f0b0007

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandedClusterLabelHorizontal(Z)V

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateLabelConfigs()V

    .line 352
    new-instance v2, Lcom/google/android/opengl/glview/NinePatch;

    const v3, 0x7f02000a

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/opengl/glview/NinePatch;-><init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setSelectedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V

    .line 355
    new-instance v2, Lcom/google/android/opengl/glview/NinePatch;

    const v3, 0x7f020009

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/opengl/glview/NinePatch;-><init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setPressedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V

    .line 358
    const v2, 0x7f080033

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setAllowedFocusExitMask(I)V

    .line 359
    return-void

    .line 238
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #cellSize:I
    .end local v19           #marginSize:I
    .end local v20           #minorAxisGridAreaSize:I
    .end local v29           #style:I
    :cond_3b7
    sub-int v2, p1, v18

    sub-int v20, v2, v27

    goto/16 :goto_a1

    .line 309
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #cellSize:I
    .restart local v19       #marginSize:I
    .restart local v20       #minorAxisGridAreaSize:I
    :catch_3bd
    move-exception v15

    .line 310
    .local v15, e:Ljava/lang/OutOfMemoryError;
    invoke-static {v15, v12, v12}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto/16 :goto_325

    .line 316
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    :catch_3c3
    move-exception v15

    .line 317
    .restart local v15       #e:Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v15, v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto/16 :goto_33b

    .line 328
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    :pswitch_3cb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v2

    if-eqz v2, :cond_40f

    .line 329
    const v2, 0x7f0200be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarThumbId(I)V

    .line 330
    const v2, 0x7f0200b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayId(I)V

    .line 331
    const v2, 0x7f0200c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarTrackId(I)V

    .line 332
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setHideThumbIfContentFits(Z)V

    .line 338
    :goto_3ef
    const v2, 0x7f090055

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayWidth(F)V

    .line 339
    const v2, 0x7f090056

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayHeight(F)V

    goto/16 :goto_34a

    .line 334
    :cond_40f
    const v2, 0x7f0200bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarThumbId(I)V

    .line 335
    const v2, 0x7f0200b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayId(I)V

    .line 336
    const v2, 0x7f0200c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarTrackId(I)V

    goto :goto_3ef

    .line 323
    :pswitch_data_428
    .packed-switch 0x1
        :pswitch_3cb
    .end packed-switch
.end method
