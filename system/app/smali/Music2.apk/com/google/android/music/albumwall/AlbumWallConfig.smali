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

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMultiLineId:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontSizeId:[I

    .line 124
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontOpacityId:[I

    .line 131
    new-array v0, v1, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontSizeId:[I

    .line 138
    new-array v0, v1, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontSizeId:[I

    .line 145
    new-array v0, v1, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontOpacityId:[I

    .line 152
    new-array v0, v1, [I

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontOpacityId:[I

    .line 159
    new-array v0, v1, [I

    fill-array-data v0, :array_96

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMaxLinesId:[I

    .line 166
    new-array v0, v1, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sBackgroundColorId:[I

    return-void

    .line 110
    nop

    :array_42
    .array-data 0x4
        0xat 0x0t 0x8t 0x7ft
        0x10t 0x0t 0x8t 0x7ft
        0x16t 0x0t 0x8t 0x7ft
        0x1ct 0x0t 0x8t 0x7ft
    .end array-data

    .line 117
    :array_4e
    .array-data 0x4
        0x4bt 0x0t 0x9t 0x7ft
        0x4ct 0x0t 0x9t 0x7ft
        0x4dt 0x0t 0x9t 0x7ft
        0x4et 0x0t 0x9t 0x7ft
    .end array-data

    .line 124
    :array_5a
    .array-data 0x4
        0xbt 0x0t 0x8t 0x7ft
        0x11t 0x0t 0x8t 0x7ft
        0x17t 0x0t 0x8t 0x7ft
        0x1dt 0x0t 0x8t 0x7ft
    .end array-data

    .line 131
    :array_66
    .array-data 0x4
        0x4ft 0x0t 0x9t 0x7ft
        0x50t 0x0t 0x9t 0x7ft
        0x51t 0x0t 0x9t 0x7ft
        0x52t 0x0t 0x9t 0x7ft
    .end array-data

    .line 138
    :array_72
    .array-data 0x4
        0x53t 0x0t 0x9t 0x7ft
        0x54t 0x0t 0x9t 0x7ft
        0x55t 0x0t 0x9t 0x7ft
        0x56t 0x0t 0x9t 0x7ft
    .end array-data

    .line 145
    :array_7e
    .array-data 0x4
        0xct 0x0t 0x8t 0x7ft
        0x12t 0x0t 0x8t 0x7ft
        0x18t 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
    .end array-data

    .line 152
    :array_8a
    .array-data 0x4
        0xdt 0x0t 0x8t 0x7ft
        0x13t 0x0t 0x8t 0x7ft
        0x19t 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
    .end array-data

    .line 159
    :array_96
    .array-data 0x4
        0xet 0x0t 0x8t 0x7ft
        0x14t 0x0t 0x8t 0x7ft
        0x1at 0x0t 0x8t 0x7ft
        0x20t 0x0t 0x8t 0x7ft
    .end array-data

    .line 166
    :array_a2
    .array-data 0x4
        0xft 0x0t 0x8t 0x7ft
        0x15t 0x0t 0x8t 0x7ft
        0x1bt 0x0t 0x8t 0x7ft
        0x21t 0x0t 0x8t 0x7ft
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

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    .line 28
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    .line 29
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLeftMargin:F

    .line 30
    const/high16 v1, 0x4170

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    .line 31
    const/high16 v1, 0x4170

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    .line 33
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    .line 34
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    .line 35
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    .line 36
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    .line 37
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    .line 38
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    .line 39
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    .line 40
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    .line 41
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    .line 42
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    .line 43
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    .line 44
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    .line 46
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    .line 47
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    .line 48
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    .line 49
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    .line 50
    const/high16 v1, 0x42aa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    .line 51
    const/high16 v1, 0x42aa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    .line 52
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    .line 53
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    .line 54
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    .line 55
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    .line 56
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    .line 57
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    .line 58
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    .line 59
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterBetweenGridPadding:F

    .line 60
    const/high16 v1, 0x4120

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterStackSpacing:F

    .line 62
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    .line 63
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    .line 65
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginLeft:F

    .line 66
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginTop:F

    .line 67
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginRight:F

    .line 68
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginBottom:F

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    .line 71
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    .line 72
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollBarAutoFade:Z

    .line 73
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    .line 75
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelExpandCell:Z

    .line 78
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_c8

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    .line 79
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    .line 82
    iput v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    .line 84
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxClosedPileCount:I

    .line 96
    const/high16 v1, 0x4380

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    .line 97
    const/high16 v1, 0x4240

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    .line 98
    const/16 v1, 0xf

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    .line 173
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    .line 174
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowMenuMark:Z

    .line 175
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetX:F

    .line 176
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetY:F

    .line 178
    const/high16 v1, 0x4210

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkWidth:F

    .line 179
    const/high16 v1, 0x4210

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkHeight:F

    .line 181
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    .line 195
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/music/utils/LabelMaker$Config;

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    .line 200
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p0, p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusters(Z)V

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b5
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    array-length v1, v1

    if-ge v0, v1, :cond_c6

    .line 204
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    new-instance v2, Lcom/google/android/music/utils/LabelMaker$Config;

    invoke-direct {v2}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>()V

    aput-object v2, v1, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 206
    :cond_c6
    return-void

    .line 78
    nop

    :array_c8
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
    .line 931
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

    .line 946
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 948
    .local v3, resources:Landroid/content/res/Resources;
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isPile(I)Z

    move-result v2

    .line 949
    .local v2, isPile:Z
    if-ne p2, v7, :cond_a6

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerLabelMaxWidth()F

    move-result v4

    .line 951
    .local v4, w:F
    :goto_16
    if-ne p2, v7, :cond_b4

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v1

    .line 953
    .local v1, h:F
    :goto_1c
    const v0, 0x3b808081

    .line 955
    .local v0, OPACITY_SCALE:F
    const/4 v5, 0x4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 956
    if-ne p2, v7, :cond_c2

    move v5, v6

    :goto_25
    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 958
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sBackgroundColorId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    .line 959
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 960
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMultiLineId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:I

    .line 961
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 962
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    .line 963
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 964
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 965
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    .line 966
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    .line 967
    iput-boolean v9, p1, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 968
    float-to-int v5, v4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 969
    float-to-int v5, v1

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 970
    float-to-int v5, v4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 971
    iput-boolean v6, p1, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    .line 972
    iput v6, p1, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    .line 973
    const/4 v5, 0x5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 974
    iput v9, p1, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 975
    if-ne p2, v7, :cond_99

    iget v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    :cond_99
    iput v6, p1, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    .line 976
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMaxLinesId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 977
    return-void

    .line 949
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

    .line 951
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

    .line 956
    goto/16 :goto_25
.end method

.method private updateLabelConfigs()V
    .registers 4

    .prologue
    .line 939
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 940
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    aget-object v0, v2, v1

    .line 941
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateLabelConfig(Lcom/google/android/music/utils/LabelMaker$Config;I)V

    .line 939
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 943
    .end local v0           #config:Lcom/google/android/music/utils/LabelMaker$Config;
    :cond_10
    return-void
.end method


# virtual methods
.method public final getAlbumLoading()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAlbumLoading:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAllowedFocusExitMask()I
    .registers 2

    .prologue
    .line 1009
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAllowedFocusExitMask:I

    return v0
.end method

.method public getBannerHeight()F
    .registers 2

    .prologue
    .line 915
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    return v0
.end method

.method public getBannerLabelMaxWidth()F
    .registers 2

    .prologue
    .line 907
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    return v0
.end method

.method public final getBetweenGridPadding()F
    .registers 2

    .prologue
    .line 519
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    return v0
.end method

.method public final getCellHeight()F
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    return v0
.end method

.method public final getCellWidth()F
    .registers 2

    .prologue
    .line 431
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    return v0
.end method

.method public final getCloseButtonResourceId()I
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCloseButtonResourceId:I

    return v0
.end method

.method public final getClusterCellHeight()F
    .registers 2

    .prologue
    .line 535
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    return v0
.end method

.method public final getClusterCellWidth()F
    .registers 2

    .prologue
    .line 527
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    return v0
.end method

.method public final getClusterExpandedLabelHeight()F
    .registers 2

    .prologue
    .line 607
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    return v0
.end method

.method public final getClusterExpandedLabelWidth()F
    .registers 2

    .prologue
    .line 599
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    return v0
.end method

.method public final getClusterGridPaddingHeight()F
    .registers 2

    .prologue
    .line 623
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    return v0
.end method

.method public final getClusterGridPaddingWidth()F
    .registers 2

    .prologue
    .line 615
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    return v0
.end method

.method public final getClusterImageHeight()F
    .registers 2

    .prologue
    .line 551
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    return v0
.end method

.method public final getClusterImageWidth()F
    .registers 2

    .prologue
    .line 543
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    return v0
.end method

.method public final getClusterLabelHeight()F
    .registers 2

    .prologue
    .line 583
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    return v0
.end method

.method public final getClusterLabelMargin()F
    .registers 2

    .prologue
    .line 591
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    return v0
.end method

.method public final getClusterLabelWidth()F
    .registers 2

    .prologue
    .line 575
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    return v0
.end method

.method public final getClusterSingleImageHeight()F
    .registers 2

    .prologue
    .line 559
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    return v0
.end method

.method public final getClusterSingleImageWidth()F
    .registers 2

    .prologue
    .line 567
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    return v0
.end method

.method public getClusterStackSpacing()F
    .registers 2

    .prologue
    .line 643
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterStackSpacing:F

    return v0
.end method

.method public getDefaultBackgroundBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getGridMarginH()F
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    return v0
.end method

.method public final getGridMarginW()F
    .registers 2

    .prologue
    .line 391
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    return v0
.end method

.method public final getGridPaddingHeight()F
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    return v0
.end method

.method public final getGridPaddingWidth()F
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    return v0
.end method

.method public final getHideThumbIfContentFits()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHideThumbIfContentFits:Z

    return v0
.end method

.method public final getHighlightColor()[F
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    return-object v0
.end method

.method public final getImageHeight()F
    .registers 2

    .prologue
    .line 455
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    return v0
.end method

.method public final getImageWidth()F
    .registers 2

    .prologue
    .line 447
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    return v0
.end method

.method public getIsExpandedClusterLabelHorizontal()Z
    .registers 2

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    return v0
.end method

.method public getLabelConfig(I)Lcom/google/android/music/utils/LabelMaker$Config;
    .registers 3
    .parameter "type"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getLabelHeight()F
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    return v0
.end method

.method public final getLabelHighlightMarginX()F
    .registers 2

    .prologue
    .line 487
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    return v0
.end method

.method public final getLabelHighlightMarginY()F
    .registers 2

    .prologue
    .line 495
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    return v0
.end method

.method public final getLabelLoading()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelLoading:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getLabelMargin()F
    .registers 2

    .prologue
    .line 479
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    return v0
.end method

.method public final getLabelWidth()F
    .registers 2

    .prologue
    .line 463
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    return v0
.end method

.method public final getLeftMargin()F
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLeftMargin:F

    return v0
.end method

.method public final getMaxClosedPileCount()I
    .registers 2

    .prologue
    .line 778
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxClosedPileCount:I

    return v0
.end method

.method public final getMaxOutstandingAlbumTextureRequests()I
    .registers 2

    .prologue
    .line 754
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    return v0
.end method

.method public final getMaxOverScrollX()F
    .registers 2

    .prologue
    .line 647
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    return v0
.end method

.method public final getMaxOverScrollY()F
    .registers 2

    .prologue
    .line 687
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    return v0
.end method

.method public getMenuMarkHeight()F
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkHeight:F

    return v0
.end method

.method public getMenuMarkOffsetX()F
    .registers 2

    .prologue
    .line 878
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetX:F

    return v0
.end method

.method public getMenuMarkOffsetY()F
    .registers 2

    .prologue
    .line 886
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetY:F

    return v0
.end method

.method public getMenuMarkWidth()F
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkWidth:F

    return v0
.end method

.method public getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .registers 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getScrollBarAutoFade()Z
    .registers 2

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollBarAutoFade:Z

    return v0
.end method

.method public final getScrollBarMode()I
    .registers 2

    .prologue
    .line 762
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    return v0
.end method

.method public final getScrollBarOverlayHeight()F
    .registers 2

    .prologue
    .line 828
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayHeight:F

    return v0
.end method

.method public final getScrollBarOverlayId()I
    .registers 2

    .prologue
    .line 804
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayId:I

    return v0
.end method

.method public final getScrollBarOverlayWidth()F
    .registers 2

    .prologue
    .line 820
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayWidth:F

    return v0
.end method

.method public final getScrollBarThumbId()I
    .registers 2

    .prologue
    .line 790
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarThumbId:I

    return v0
.end method

.method public final getScrollBarTrackId()I
    .registers 2

    .prologue
    .line 799
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarTrackId:I

    return v0
.end method

.method public final getScrollOverlayFollowsThumb()Z
    .registers 2

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    return v0
.end method

.method public getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .registers 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public getShowMenuMark()Z
    .registers 2

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowMenuMark:Z

    return v0
.end method

.method public getShowSongCount()Z
    .registers 2

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    return v0
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 903
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mStyle:I

    return v0
.end method

.method public final getTopMargin()F
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    return v0
.end method

.method public getUseAlbumArtBackgrounds()Z
    .registers 2

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mUseAlbumArtBackgrounds:Z

    return v0
.end method

.method public final getVisibilityMarginBottom()F
    .registers 2

    .prologue
    .line 679
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginBottom:F

    return v0
.end method

.method public final getVisibilityMarginLeft()F
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginLeft:F

    return v0
.end method

.method public final getVisibilityMarginRight()F
    .registers 2

    .prologue
    .line 671
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginRight:F

    return v0
.end method

.method public final getVisibilityMarginTop()F
    .registers 2

    .prologue
    .line 663
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginTop:F

    return v0
.end method

.method public final isClusterExpandedLabelVertical()Z
    .registers 2

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    return v0
.end method

.method public final isClusters()Z
    .registers 2

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    return v0
.end method

.method public final isExpandLabelExpandCell()Z
    .registers 2

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelExpandCell:Z

    return v0
.end method

.method public final isExpandedLabelVertical()Z
    .registers 2

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    return v0
.end method

.method public final isHorizontalScrolling()Z
    .registers 2

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    return v0
.end method

.method public final setAlbumLoading(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAlbumLoading:Landroid/graphics/Bitmap;

    .line 408
    return-void
.end method

.method public setAllowedFocusExitMask(I)V
    .registers 2
    .parameter "mask"

    .prologue
    .line 1002
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAllowedFocusExitMask:I

    .line 1003
    return-void
.end method

.method public setBannerHeight(F)V
    .registers 2
    .parameter "bannerHeight"

    .prologue
    .line 919
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    .line 920
    return-void
.end method

.method public setBannerLabelMaxWidth(F)V
    .registers 2
    .parameter "bannerLabelMaxWidth"

    .prologue
    .line 911
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    .line 912
    return-void
.end method

.method public final setBetweenGridPadding(F)V
    .registers 2
    .parameter "betweenGridPadding"

    .prologue
    .line 523
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    .line 524
    return-void
.end method

.method public final setCellHeight(F)V
    .registers 2
    .parameter "cellHeight"

    .prologue
    .line 443
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    .line 444
    return-void
.end method

.method public final setCellWidth(F)V
    .registers 2
    .parameter "cellWidth"

    .prologue
    .line 435
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    .line 436
    return-void
.end method

.method public final setCloseButtonResourceId(I)V
    .registers 2
    .parameter "closeButtonResourceId"

    .prologue
    .line 812
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCloseButtonResourceId:I

    .line 813
    return-void
.end method

.method public final setClusterBetweenGridPadding(F)V
    .registers 2
    .parameter "clusterBetweenGridPadding"

    .prologue
    .line 635
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterBetweenGridPadding:F

    .line 636
    return-void
.end method

.method public final setClusterCellHeight(F)V
    .registers 2
    .parameter "clusterCellHeight"

    .prologue
    .line 539
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    .line 540
    return-void
.end method

.method public final setClusterCellWidth(F)V
    .registers 2
    .parameter "clusterCellWidth"

    .prologue
    .line 531
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    .line 532
    return-void
.end method

.method public final setClusterExpandedLabelHeight(F)V
    .registers 2
    .parameter "clusterExpandedLabelHeight"

    .prologue
    .line 611
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    .line 612
    return-void
.end method

.method public final setClusterExpandedLabelWidth(F)V
    .registers 2
    .parameter "clusterExpandedLabelWidth"

    .prologue
    .line 603
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    .line 604
    return-void
.end method

.method public final setClusterGridPaddingHeight(F)V
    .registers 2
    .parameter "clusterGridPaddingHeight"

    .prologue
    .line 627
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    .line 628
    return-void
.end method

.method public final setClusterGridPaddingWidth(F)V
    .registers 2
    .parameter "clusterGridPaddingWidth"

    .prologue
    .line 619
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    .line 620
    return-void
.end method

.method public final setClusterImageHeight(F)V
    .registers 2
    .parameter "clusterImageHeight"

    .prologue
    .line 555
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    .line 556
    return-void
.end method

.method public final setClusterImageWidth(F)V
    .registers 2
    .parameter "clusterImageWidth"

    .prologue
    .line 547
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    .line 548
    return-void
.end method

.method public final setClusterLabelHeight(F)V
    .registers 2
    .parameter "clusterLabelHeight"

    .prologue
    .line 587
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    .line 588
    return-void
.end method

.method public final setClusterLabelMargin(F)V
    .registers 2
    .parameter "clusterLabelMargin"

    .prologue
    .line 595
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    .line 596
    return-void
.end method

.method public final setClusterLabelWidth(F)V
    .registers 2
    .parameter "clusterLabelWidth"

    .prologue
    .line 579
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    .line 580
    return-void
.end method

.method public final setClusterSingleImageHeight(F)V
    .registers 2
    .parameter "clusterSingleImageHeight"

    .prologue
    .line 563
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    .line 564
    return-void
.end method

.method public final setClusterSingleImageWidth(F)V
    .registers 2
    .parameter "clusterSingleImageWidth"

    .prologue
    .line 571
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    .line 572
    return-void
.end method

.method public final setClusterStackSpacing(F)V
    .registers 2
    .parameter "stackSpacing"

    .prologue
    .line 639
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterStackSpacing:F

    .line 640
    return-void
.end method

.method public setDefaultBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "defaultBackgroundBitmap"

    .prologue
    .line 836
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 837
    return-void
.end method

.method public final setGridMarginH(F)V
    .registers 2
    .parameter "gridMarginH"

    .prologue
    .line 403
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    .line 404
    return-void
.end method

.method public final setGridMarginW(F)V
    .registers 2
    .parameter "gridMarginW"

    .prologue
    .line 395
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    .line 396
    return-void
.end method

.method public final setGridPaddingHeight(F)V
    .registers 2
    .parameter "gridPaddingHeight"

    .prologue
    .line 515
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    .line 516
    return-void
.end method

.method public final setGridPaddingWidth(F)V
    .registers 2
    .parameter "gridPaddingWidth"

    .prologue
    .line 507
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    .line 508
    return-void
.end method

.method public final setHideThumbIfContentFits(Z)V
    .registers 2
    .parameter "hideThumbIfContentFits"

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHideThumbIfContentFits:Z

    .line 775
    return-void
.end method

.method public final setImageHeight(F)V
    .registers 2
    .parameter "imageHeight"

    .prologue
    .line 459
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    .line 460
    return-void
.end method

.method public final setImageWidth(F)V
    .registers 2
    .parameter "imageWidth"

    .prologue
    .line 451
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    .line 452
    return-void
.end method

.method public final setIsClusterExpandedLabelVertical(Z)V
    .registers 2
    .parameter "isClusterExpandedLabelVertical"

    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    .line 708
    return-void
.end method

.method public final setIsClusters(Z)V
    .registers 2
    .parameter "isClusters"

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    .line 428
    return-void
.end method

.method public final setIsExpandLabelExpandCell(Z)V
    .registers 2
    .parameter "isExpandLabelExpandCell"

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelExpandCell:Z

    .line 716
    return-void
.end method

.method public setIsExpandedClusterLabelHorizontal(Z)V
    .registers 2
    .parameter "isExpandedClusterLabelHorizontal"

    .prologue
    .line 857
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    .line 858
    return-void
.end method

.method public final setIsExpandedLabelVertical(Z)V
    .registers 2
    .parameter "isExpandedLabelVertical"

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    .line 700
    return-void
.end method

.method public final setIsHorizontalScrolling(Z)V
    .registers 2
    .parameter "isHorizontalScrolling"

    .prologue
    .line 723
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    .line 724
    return-void
.end method

.method public final setLabelHeight(F)V
    .registers 2
    .parameter "labelHeight"

    .prologue
    .line 475
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    .line 476
    return-void
.end method

.method public final setLabelHighlightMarginX(F)V
    .registers 2
    .parameter "labelHighlightMarginX"

    .prologue
    .line 491
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    .line 492
    return-void
.end method

.method public final setLabelHighlightMarginY(F)V
    .registers 2
    .parameter "labelHighlightMarginY"

    .prologue
    .line 499
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    .line 500
    return-void
.end method

.method public final setLabelLoading(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelLoading:Landroid/graphics/Bitmap;

    .line 416
    return-void
.end method

.method public final setLabelMargin(F)V
    .registers 2
    .parameter "labelMargin"

    .prologue
    .line 483
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    .line 484
    return-void
.end method

.method public final setLabelWidth(F)V
    .registers 2
    .parameter "labelWidth"

    .prologue
    .line 467
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    .line 468
    return-void
.end method

.method public final setLeftMargin(F)V
    .registers 2
    .parameter "leftMargin"

    .prologue
    .line 387
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLeftMargin:F

    .line 388
    return-void
.end method

.method public final setMaxOutstandingAlbumTextureRequests(I)V
    .registers 2
    .parameter "maxOutstandingAlbumTextureRequests"

    .prologue
    .line 758
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    .line 759
    return-void
.end method

.method public final setMaxOverScrollX(F)V
    .registers 2
    .parameter "maxOverScrollX"

    .prologue
    .line 651
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    .line 652
    return-void
.end method

.method public final setMaxOverScrollY(F)V
    .registers 2
    .parameter "maxOverScrollY"

    .prologue
    .line 691
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    .line 692
    return-void
.end method

.method public setMenuMarkHeight(F)V
    .registers 2
    .parameter "markHeight"

    .prologue
    .line 371
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkHeight:F

    .line 372
    return-void
.end method

.method public setMenuMarkOffsetX(F)V
    .registers 2
    .parameter "offsetX"

    .prologue
    .line 874
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetX:F

    .line 875
    return-void
.end method

.method public setMenuMarkOffsetY(F)V
    .registers 2
    .parameter "offsetY"

    .prologue
    .line 882
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkOffsetY:F

    .line 883
    return-void
.end method

.method public setMenuMarkWidth(F)V
    .registers 2
    .parameter "markWidth"

    .prologue
    .line 363
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMenuMarkWidth:F

    .line 364
    return-void
.end method

.method public setPressedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V
    .registers 3
    .parameter "pressedItemFrame"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    if-eqz v0, :cond_9

    .line 992
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->freeOpenGlResources()V

    .line 994
    :cond_9
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 995
    return-void
.end method

.method public final setScrollBarAutoFade(Z)V
    .registers 2
    .parameter "autoFade"

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollBarAutoFade:Z

    .line 740
    return-void
.end method

.method public final setScrollBarMode(I)V
    .registers 2
    .parameter "scrollBarMode"

    .prologue
    .line 766
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    .line 767
    return-void
.end method

.method public final setScrollBarOverlayHeight(F)V
    .registers 2
    .parameter "scrollBarOverlayHeight"

    .prologue
    .line 832
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayHeight:F

    .line 833
    return-void
.end method

.method public final setScrollBarOverlayId(I)V
    .registers 2
    .parameter "scrollBarOverlayId"

    .prologue
    .line 808
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayId:I

    .line 809
    return-void
.end method

.method public final setScrollBarOverlayWidth(F)V
    .registers 2
    .parameter "scrollBarOverlayWidth"

    .prologue
    .line 824
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayWidth:F

    .line 825
    return-void
.end method

.method public final setScrollBarThumbId(I)V
    .registers 2
    .parameter "scrollBarThumbId"

    .prologue
    .line 786
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarThumbId:I

    .line 787
    return-void
.end method

.method public final setScrollBarTrackId(I)V
    .registers 2
    .parameter "scrollBarTrackId"

    .prologue
    .line 795
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarTrackId:I

    .line 796
    return-void
.end method

.method public final setScrollOverlayFollowsThumb(Z)V
    .registers 2
    .parameter "gridScrollOverlayFollowsThumb"

    .prologue
    .line 731
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    .line 732
    return-void
.end method

.method public setSelectedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V
    .registers 3
    .parameter "selectedItemFrame"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    if-eqz v0, :cond_9

    .line 981
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->freeOpenGlResources()V

    .line 983
    :cond_9
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 984
    return-void
.end method

.method public setShowMenuMark(Z)V
    .registers 2
    .parameter "showMenuMark"

    .prologue
    .line 866
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowMenuMark:Z

    .line 867
    return-void
.end method

.method public setShowSongCount(Z)V
    .registers 2
    .parameter "showSongCount"

    .prologue
    .line 891
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    .line 892
    return-void
.end method

.method public setStyle(I)V
    .registers 2
    .parameter "style"

    .prologue
    .line 899
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mStyle:I

    .line 900
    return-void
.end method

.method public final setTopMargin(F)V
    .registers 2
    .parameter "topMargin"

    .prologue
    .line 379
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    .line 380
    return-void
.end method

.method public setUseAlbumArtBackgrounds(Z)V
    .registers 2
    .parameter "useAlbumArtBackgrounds"

    .prologue
    .line 844
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mUseAlbumArtBackgrounds:Z

    .line 845
    return-void
.end method

.method public final setVisibilityMarginBottom(F)V
    .registers 2
    .parameter "visibilityMarginBottom"

    .prologue
    .line 683
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginBottom:F

    .line 684
    return-void
.end method

.method public final setVisibilityMarginLeft(F)V
    .registers 2
    .parameter "visibilityMarginLeft"

    .prologue
    .line 659
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginLeft:F

    .line 660
    return-void
.end method

.method public final setVisibilityMarginRight(F)V
    .registers 2
    .parameter "visibilityMarginRight"

    .prologue
    .line 675
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginRight:F

    .line 676
    return-void
.end method

.method public final setVisibilityMarginTop(F)V
    .registers 2
    .parameter "visibilityMarginTop"

    .prologue
    .line 667
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mVisibilityMarginTop:F

    .line 668
    return-void
.end method

.method public updateAlbumWallConfig(II)V
    .registers 34
    .parameter "width"
    .parameter "height"

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 219
    .local v25, resources:Landroid/content/res/Resources;
    const v2, 0x7f0b0003

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 220
    .local v15, isHScrolling:Z
    const v2, 0x7f08002e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    .line 221
    .local v24, nbColRow:I
    const v2, 0x7f08002f

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v20, v0

    .line 222
    .local v20, mocCellSize:F
    const v2, 0x7f080030

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 223
    .local v22, mocClusterSingleSize:F
    const v2, 0x7f080031

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v21, v0

    .line 224
    .local v21, mocClusterMultipleSize:F
    const v2, 0x7f080032

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v23, v0

    .line 225
    .local v23, mocMargin:F
    const v2, 0x7f080033

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v27, v0

    .line 226
    .local v27, stackSpacing:F
    div-float v10, v20, v23

    .line 227
    .local v10, cellMarginRatio:F
    div-float v13, v20, v22

    .line 228
    .local v13, clusterSingleRatio:F
    div-float v12, v20, v21

    .line 230
    .local v12, clusterMultipleRatio:F
    const v2, 0x7f09002d

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    .line 231
    .local v29, topMargin:I
    const v2, 0x7f09002e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 232
    .local v16, leftMargin:I
    const v2, 0x7f09002f

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 233
    .local v17, leftPadding:I
    const v2, 0x7f090030

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    .line 234
    .local v30, topPadding:I
    const v2, 0x7f090031

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 235
    .local v26, rightPadding:I
    const v2, 0x7f090032

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 236
    .local v9, bottomPadding:I
    if-eqz v15, :cond_3a6

    sub-int v2, p2, v30

    sub-int v19, v2, v9

    .line 238
    .local v19, minorAxisGridAreaSize:I
    :goto_98
    move/from16 v0, v19

    int-to-float v2, v0

    mul-float/2addr v2, v10

    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v4, 0x3f80

    add-float/2addr v4, v10

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v11, v2

    .line 239
    .local v11, cellSize:I
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v4, 0x3f80

    add-float/2addr v4, v10

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 241
    .local v18, marginSize:I
    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setTopMargin(F)V

    .line 242
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLeftMargin(F)V

    .line 243
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridMarginW(F)V

    .line 244
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridMarginH(F)V

    .line 245
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCellWidth(F)V

    .line 246
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCellHeight(F)V

    .line 247
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setImageWidth(F)V

    .line 248
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setImageHeight(F)V

    .line 249
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelWidth(F)V

    .line 250
    const v2, 0x7f090036

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHeight(F)V

    .line 251
    const v2, 0x7f090037

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelMargin(F)V

    .line 252
    const v2, 0x7f090033

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHighlightMarginX(F)V

    .line 253
    const v2, 0x7f090034

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHighlightMarginY(F)V

    .line 254
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridPaddingWidth(F)V

    .line 255
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridPaddingHeight(F)V

    .line 256
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBetweenGridPadding(F)V

    .line 258
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterCellWidth(F)V

    .line 259
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterCellHeight(F)V

    .line 260
    int-to-float v2, v11

    div-float/2addr v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterImageWidth(F)V

    .line 261
    int-to-float v2, v11

    div-float/2addr v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterImageHeight(F)V

    .line 262
    int-to-float v2, v11

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterSingleImageWidth(F)V

    .line 263
    int-to-float v2, v11

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterSingleImageHeight(F)V

    .line 264
    int-to-float v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelWidth(F)V

    .line 265
    const v2, 0x7f09003b

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelHeight(F)V

    .line 266
    const v2, 0x7f09003c

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterExpandedLabelWidth(F)V

    .line 267
    const v2, 0x7f09003d

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterExpandedLabelHeight(F)V

    .line 268
    const v2, 0x7f09003e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelMargin(F)V

    .line 269
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterGridPaddingWidth(F)V

    .line 270
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterGridPaddingHeight(F)V

    .line 271
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterBetweenGridPadding(F)V

    .line 272
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterStackSpacing(F)V

    .line 274
    const v2, 0x7f090049

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBannerLabelMaxWidth(F)V

    .line 275
    const v2, 0x7f09004a

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBannerHeight(F)V

    .line 276
    const v2, 0x7f080008

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOverScrollX(F)V

    .line 277
    const v2, 0x7f080009

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOverScrollY(F)V

    .line 279
    const v2, 0x7f090041

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginLeft(F)V

    .line 280
    const v2, 0x7f090042

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginTop(F)V

    .line 281
    const v2, 0x7f090043

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginRight(F)V

    .line 282
    const v2, 0x7f090044

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setVisibilityMarginBottom(F)V

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsHorizontalScrolling(Z)V

    .line 285
    const v2, 0x7f0b0004

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollOverlayFollowsThumb(Z)V

    .line 286
    const v2, 0x7f0b0005

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarAutoFade(Z)V

    .line 287
    const v2, 0x7f0b0007

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandedLabelVertical(Z)V

    .line 288
    const v2, 0x7f0b0008

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusterExpandedLabelVertical(Z)V

    .line 289
    const v2, 0x7f0b0009

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandLabelExpandCell(Z)V

    .line 290
    const v2, 0x7f080022

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOutstandingAlbumTextureRequests(I)V

    .line 293
    const v2, 0x7f0b000a

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setShowSongCount(Z)V

    .line 294
    const v2, 0x7f0b000b

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setShowMenuMark(Z)V

    .line 295
    const v2, 0x7f090057

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkOffsetX(F)V

    .line 296
    const v2, 0x7f090058

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkOffsetY(F)V

    .line 297
    const v2, 0x7f090059

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkWidth(F)V

    .line 298
    const v2, 0x7f09005a

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMenuMarkHeight(F)V

    .line 300
    const v2, 0x7f020047

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCloseButtonResourceId(I)V

    .line 302
    const/4 v8, 0x0

    .line 304
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const v2, 0x7f02017a

    :try_start_309
    move-object/from16 v0, v25

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 305
    const/4 v2, 0x1

    invoke-static {v8, v11, v11, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_313
    .catch Ljava/lang/OutOfMemoryError; {:try_start_309 .. :try_end_313} :catch_3ac

    move-result-object v8

    .line 310
    :goto_314
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setAlbumLoading(Landroid/graphics/Bitmap;)V

    .line 312
    const/4 v2, 0x1

    :try_start_31a
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
    :try_end_329
    .catch Ljava/lang/OutOfMemoryError; {:try_start_31a .. :try_end_329} :catch_3b2

    move-result-object v8

    .line 316
    :goto_32a
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelLoading(Landroid/graphics/Bitmap;)V

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarMode(I)V

    .line 320
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_418

    .line 340
    :goto_339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/utils/BackgroundUtils;->getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setDefaultBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    const v2, 0x7f0b000f

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setUseAlbumArtBackgrounds(Z)V

    .line 343
    const v2, 0x7f08002d

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v28

    .line 344
    .local v28, style:I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setStyle(I)V

    .line 346
    const v2, 0x7f0b0006

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandedClusterLabelHorizontal(Z)V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateLabelConfigs()V

    .line 349
    new-instance v2, Lcom/google/android/opengl/glview/NinePatch;

    const v3, 0x7f02000a

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v25

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/opengl/glview/NinePatch;-><init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setSelectedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V

    .line 352
    new-instance v2, Lcom/google/android/opengl/glview/NinePatch;

    const v3, 0x7f020009

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v25

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/opengl/glview/NinePatch;-><init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setPressedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V

    .line 355
    const v2, 0x7f080034

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setAllowedFocusExitMask(I)V

    .line 356
    return-void

    .line 236
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #cellSize:I
    .end local v18           #marginSize:I
    .end local v19           #minorAxisGridAreaSize:I
    .end local v28           #style:I
    :cond_3a6
    sub-int v2, p1, v17

    sub-int v19, v2, v26

    goto/16 :goto_98

    .line 306
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #cellSize:I
    .restart local v18       #marginSize:I
    .restart local v19       #minorAxisGridAreaSize:I
    :catch_3ac
    move-exception v14

    .line 307
    .local v14, e:Ljava/lang/OutOfMemoryError;
    invoke-static {v14, v11, v11}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto/16 :goto_314

    .line 313
    .end local v14           #e:Ljava/lang/OutOfMemoryError;
    :catch_3b2
    move-exception v14

    .line 314
    .restart local v14       #e:Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v14, v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto/16 :goto_32a

    .line 325
    .end local v14           #e:Ljava/lang/OutOfMemoryError;
    :pswitch_3ba
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v2

    if-eqz v2, :cond_3fe

    .line 326
    const v2, 0x7f020165

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarThumbId(I)V

    .line 327
    const v2, 0x7f02015e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayId(I)V

    .line 328
    const v2, 0x7f02016c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarTrackId(I)V

    .line 329
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setHideThumbIfContentFits(Z)V

    .line 335
    :goto_3de
    const v2, 0x7f090047

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayWidth(F)V

    .line 336
    const v2, 0x7f090048

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayHeight(F)V

    goto/16 :goto_339

    .line 331
    :cond_3fe
    const v2, 0x7f020162

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarThumbId(I)V

    .line 332
    const v2, 0x7f02015f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayId(I)V

    .line 333
    const v2, 0x7f02016a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarTrackId(I)V

    goto :goto_3de

    .line 320
    nop

    :pswitch_data_418
    .packed-switch 0x1
        :pswitch_3ba
    .end packed-switch
.end method
