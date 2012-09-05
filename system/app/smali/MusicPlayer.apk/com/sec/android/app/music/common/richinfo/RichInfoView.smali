.class public Lcom/sec/android/app/music/common/richinfo/RichInfoView;
.super Landroid/widget/HorizontalScrollView;
.source "RichInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;,
        Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;
    }
.end annotation


# static fields
.field private static final CLASSTAG:Ljava/lang/String;

.field private static mIsPortrait:Z

.field public static mPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisplayHeight:I

.field private static sDisplayWidth:I

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;


# instance fields
.field private bIsDrmFile:Z

.field private mBiographyViewLayout:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mCreditsViewLayout:Landroid/view/ViewGroup;

.field private mDiscographyViewLayout:Landroid/view/ViewGroup;

.field private mExceedMinimumYTouch:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMakeTouchDownEventForHorizontalScroll:Z

.field private mMaxPage:I

.field private mMediaInfoViewLayout:Landroid/view/ViewGroup;

.field private mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

.field private mPage:I

.field private final mPageChangeHandler:Landroid/os/Handler;

.field private mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field private mReviewViewLayout:Landroid/view/ViewGroup;

.field private mRichInfoBody:Landroid/view/ViewGroup;

.field private mScrolledLeftEdge:I

.field private mSendTouchEventToHorizonScroll:Z

.field private mTrackListViewLayout:Landroid/view/ViewGroup;

.field private mX:F

.field private mY:F

.field private final mediaInfoDataList:[Ljava/lang/String;

.field private final mediaInfoDataStringId:[I

.field private final ratingDrawableResourceId:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const-class v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->CLASSTAG:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 387
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "att"

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    .line 66
    iput v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMaxPage:I

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Artist"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Track length"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Genre"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Author"

    aput-object v2, v0, v1

    const-string v1, "Copyright"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "Recrding date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Track number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parent rating"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Transaction ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Location"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mediaInfoDataList:[Ljava/lang/String;

    .line 74
    new-array v0, v5, [I

    fill-array-data v0, :array_7e

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mediaInfoDataStringId:[I

    .line 81
    new-array v0, v4, [I

    fill-array-data v0, :array_a0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->ratingDrawableResourceId:[I

    .line 207
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$1;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageChangeHandler:Landroid/os/Handler;

    .line 1265
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    .line 1269
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    .line 1271
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMakeTouchDownEventForHorizontalScroll:Z

    .line 131
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    .line 134
    return-void

    .line 74
    nop

    :array_7e
    .array-data 0x4
        0x5ft 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
        0x61t 0x0t 0x9t 0x7ft
        0x62t 0x0t 0x9t 0x7ft
        0x63t 0x0t 0x9t 0x7ft
        0x64t 0x0t 0x9t 0x7ft
        0x65t 0x0t 0x9t 0x7ft
        0x66t 0x0t 0x9t 0x7ft
        0x67t 0x0t 0x9t 0x7ft
        0x68t 0x0t 0x9t 0x7ft
        0x69t 0x0t 0x9t 0x7ft
        0x6at 0x0t 0x9t 0x7ft
        0x6bt 0x0t 0x9t 0x7ft
        0x6ct 0x0t 0x9t 0x7ft
        0x6dt 0x0t 0x9t 0x7ft
    .end array-data

    .line 81
    :array_a0
    .array-data 0x4
        0xf5t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/common/richinfo/RichInfoView;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->showView(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->startMusicHub(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private createAllView()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 296
    sput-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasTrackList:Z

    .line 297
    sput-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasBiography:Z

    .line 298
    sput-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasDiscography:Z

    .line 299
    sput-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasReview:Z

    .line 300
    sput-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasCredit:Z

    .line 302
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createTrackListView()V

    .line 303
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createReviewView()V

    .line 304
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createBiography()V

    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createDiscographyView()V

    .line 306
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createCreditView()V

    .line 307
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createMediaInfoView()V

    .line 309
    const-string v0, "RichInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->CLASSTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " How many pages? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method private createBiography()V
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mBiographyViewLayout:Landroid/view/ViewGroup;

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mBiographyViewLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090076

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3, v7, v7}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1129
    const v0, 0x7f0c005b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1132
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->albumSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    if-eqz v1, :cond_7d

    .line 1134
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->albumSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    .line 1136
    if-eqz v1, :cond_f5

    iget-object v3, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    if-eqz v3, :cond_f5

    iget-object v3, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f5

    .line 1145
    :try_start_50
    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_56} :catch_c1

    move-result-object v1

    move-object v3, v1

    .line 1149
    :goto_58
    if-eqz v3, :cond_7d

    .line 1151
    :try_start_5a
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_e4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5a .. :try_end_5f} :catch_cc

    .line 1152
    :try_start_5f
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1153
    const/4 v5, 0x2

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1154
    const/16 v5, 0x74

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1155
    const/16 v5, 0x74

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1157
    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_11f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5f .. :try_end_73} :catch_124

    move-result-object v2

    .line 1162
    :try_start_74
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_c7

    .line 1166
    :goto_77
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1167
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1179
    :cond_7d
    :goto_7d
    const v0, 0x7f0c005c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->biography:Ljava/lang/String;

    .line 1182
    if-eqz v1, :cond_a1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->biography:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    sput-boolean v7, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasBiography:Z

    .line 1187
    :cond_a1
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mBiographyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1188
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasBiography:Z

    if-eqz v0, :cond_c0

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mBiographyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1191
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v1, "BIO"

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    :cond_c0
    return-void

    .line 1146
    :catch_c1
    move-exception v1

    .line 1147
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v3, v2

    goto :goto_58

    .line 1163
    :catch_c7
    move-exception v1

    .line 1164
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    .line 1158
    :catch_cc
    move-exception v1

    move-object v1, v2

    .line 1159
    :goto_ce
    :try_start_ce
    const-string v3, "MpRichInfo"

    const-string v5, "Memory allocation failed getArtwork in biography"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_11f

    .line 1162
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_df

    .line 1166
    :goto_d8
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1167
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7d

    .line 1163
    :catch_df
    move-exception v1

    .line 1164
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d8

    .line 1161
    :catchall_e4
    move-exception v1

    move-object v3, v2

    .line 1162
    :goto_e6
    :try_start_e6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_f0

    .line 1166
    :goto_e9
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1167
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    throw v1

    .line 1163
    :catch_f0
    move-exception v3

    .line 1164
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e9

    .line 1170
    :cond_f5
    if-eqz v1, :cond_7d

    iget-object v2, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    if-eqz v2, :cond_7d

    iget-object v2, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 1172
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1173
    const/high16 v2, 0x7f04

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1174
    new-instance v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    .line 1175
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-object v0, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_7d

    .line 1161
    :catchall_11f
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_e6

    .line 1158
    :catch_124
    move-exception v3

    goto :goto_ce
.end method

.method private createCreditView()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mCreditsViewLayout:Landroid/view/ViewGroup;

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mCreditsViewLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090078

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3, v5, v5}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    move v1, v2

    .line 1016
    :goto_25
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->credits:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;

    .line 1018
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mCreditsViewLayout:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->role:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->PerformerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1020
    sput-boolean v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasCredit:Z

    .line 1016
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 1023
    :cond_52
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasCredit:Z

    if-eqz v0, :cond_6c

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mCreditsViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1026
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v1, "CREDIT"

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_6c
    return-void
.end method

.method private createDiscographyView()V
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    const v2, 0x7f0c004d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f090077

    invoke-direct {p0, v2, v10, v1, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    if-eqz v0, :cond_89

    move v7, v8

    .line 1041
    :goto_26
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_89

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    .line 1047
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v2, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v2, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->albums:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v2, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    .line 1048
    if-eqz v2, :cond_e7

    .line 1049
    iget-object v4, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    .line 1050
    iget-object v3, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    .line 1053
    if-eqz v4, :cond_e4

    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    .line 1055
    :try_start_5c
    invoke-direct {p0, v4}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->getArtwork(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_5f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5c .. :try_end_5f} :catch_74

    move-result-object v2

    .line 1064
    :goto_60
    iget-object v9, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->title:Ljava/lang/String;

    iget v6, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->rating:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeImageItemView(ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1066
    sput-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasDiscography:Z

    .line 1041
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_26

    .line 1056
    :catch_74
    move-exception v0

    .line 1057
    const-string v2, "MpRichInfo"

    const-string v3, "Memory allocation failed getArtwork:index:%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    throw v0

    .line 1070
    :cond_89
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->similarArtists:Ljava/util/ArrayList;

    if-eqz v0, :cond_c9

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->similarArtists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1072
    if-lez v3, :cond_c9

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f09007e

    invoke-direct {p0, v2, v10, v8, v8}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v2, v8

    .line 1077
    :goto_aa
    if-ge v2, v3, :cond_c9

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->performerDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->similarArtists:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    .line 1079
    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v10}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeOneLineTextItemView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1080
    sput-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasDiscography:Z

    .line 1077
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_aa

    .line 1084
    :cond_c9
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasDiscography:Z

    if-eqz v0, :cond_e3

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1087
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v1, "DISCO"

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    :cond_e3
    return-void

    :cond_e4
    move-object v2, v5

    goto/16 :goto_60

    :cond_e7
    move-object v2, v5

    move-object v3, v5

    goto/16 :goto_60
.end method

.method private createMediaInfoView()V
    .registers 15

    .prologue
    const v13, 0x7f0900c5

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    const v2, 0x7f0c0052

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 643
    new-instance v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$6;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    const v2, 0x7f0c0053

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    .line 668
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    if-nez v0, :cond_62

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f09007b

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v10, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 676
    :goto_36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 677
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v0, "0.##"

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 679
    :goto_43
    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mediaInfoDataList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_151

    .line 680
    new-instance v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;

    invoke-direct {v4, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    .line 681
    packed-switch v0, :pswitch_data_4f0

    .line 787
    :goto_50
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mediaInfoDataList:[Ljava/lang/String;

    aget-object v5, v5, v0

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->title:Ljava/lang/String;

    .line 788
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mediaInfoDataStringId:[I

    aget v5, v5, v0

    iput v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->textId:I

    .line 790
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_5f
    :pswitch_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 671
    :cond_62
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f09007b

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v10, v10}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_36

    .line 683
    :pswitch_70
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 685
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_50

    .line 696
    :pswitch_7d
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 698
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_50

    .line 701
    :pswitch_8a
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 703
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_50

    .line 706
    :pswitch_97
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->duration:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 708
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->duration:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_50

    .line 712
    :pswitch_a4
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 714
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_50

    .line 733
    :pswitch_b1
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 735
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_50

    .line 742
    :pswitch_be
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 744
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto :goto_50

    .line 751
    :pswitch_cb
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 753
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_50

    .line 760
    :pswitch_d9
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 762
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v5, v5, Lcom/sec/android/app/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 763
    int-to-double v6, v5

    .line 765
    int-to-double v6, v5

    const-wide/high16 v8, 0x4130

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_100

    .line 766
    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_50

    .line 767
    :cond_100
    int-to-double v6, v5

    const-wide/high16 v8, 0x4090

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_118

    .line 768
    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_50

    .line 770
    :cond_118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_50

    .line 774
    :pswitch_12f
    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    if-eqz v5, :cond_5f

    .line 778
    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    const-string v6, "/mnt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14b

    .line 779
    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    const-string v6, "/mnt"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_50

    .line 781
    :cond_14b
    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    goto/16 :goto_50

    :cond_151
    move v2, v1

    .line 793
    :goto_152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_175

    .line 794
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;

    .line 795
    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->textId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 793
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_152

    .line 799
    :cond_175
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isAnyDrmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 801
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    .line 802
    if-eqz v0, :cond_1de

    .line 804
    new-instance v3, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    .line 806
    :try_start_186
    invoke-virtual {v3, v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->bIsDrmFile:Z
    :try_end_18c
    .catch Ljava/io/FileNotFoundException; {:try_start_186 .. :try_end_18c} :catch_1f0

    .line 812
    :goto_18c
    iget-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->bIsDrmFile:Z

    if-eqz v0, :cond_1de

    .line 814
    invoke-virtual {v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getOptionInfo()Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_1b5

    iget-boolean v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    if-nez v0, :cond_1b5

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900cf

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 821
    :cond_1b5
    invoke-virtual {v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDetailRightsPermission()Ljava/util/ArrayList;

    move-result-object v2

    .line 822
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;

    .line 823
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMDDhhmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 824
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-DD hh:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d8

    .line 827
    iget v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 828
    sparse-switch v2, :sswitch_data_512

    .line 995
    :cond_1d8
    :goto_1d8
    invoke-virtual {v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmType()I

    move-result v0

    if-ne v0, v12, :cond_1de

    .line 1006
    :cond_1de
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v1, "OTHER"

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    return-void

    .line 807
    :catch_1f0
    move-exception v0

    .line 808
    const-string v2, "RichInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException is occured,DRM  Info Page,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18c

    .line 830
    :sswitch_20f
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900c9

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1d8

    .line 836
    :sswitch_22b
    const-string v2, "%s / %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v12

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1d8

    .line 843
    :sswitch_252
    :try_start_252
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 844
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 846
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 847
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6
    :try_end_276
    .catch Ljava/text/ParseException; {:try_start_252 .. :try_end_276} :catch_29b

    .line 851
    :goto_276
    const-string v2, "%s - %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v0, v0, v10

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    .line 848
    :catch_29b
    move-exception v2

    .line 849
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_276

    .line 861
    :sswitch_2a0
    :try_start_2a0
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 862
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 864
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 865
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6
    :try_end_2c4
    .catch Ljava/text/ParseException; {:try_start_2a0 .. :try_end_2c4} :catch_2ec

    .line 869
    :goto_2c4
    const-string v2, "%s / %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v10

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v0, v0, v1

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900c6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    .line 866
    :catch_2ec
    move-exception v2

    .line 867
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2c4

    .line 877
    :sswitch_2f1
    :try_start_2f1
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 878
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 880
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 881
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6
    :try_end_315
    .catch Ljava/text/ParseException; {:try_start_2f1 .. :try_end_315} :catch_360

    .line 885
    :goto_315
    const-string v2, "%s - %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v10

    aput-object v5, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 887
    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 891
    const-string v2, "%s / %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v12

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    .line 882
    :catch_360
    move-exception v2

    .line 883
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_315

    .line 900
    :sswitch_365
    :try_start_365
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 902
    iget-object v4, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6
    :try_end_377
    .catch Ljava/text/ParseException; {:try_start_365 .. :try_end_377} :catch_3aa

    .line 906
    :goto_377
    const-string v2, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 907
    const/4 v1, 0x0

    .line 908
    iget v4, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->drmType:I

    if-ne v4, v11, :cond_4ec

    .line 909
    iget v4, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    if-ne v4, v12, :cond_3af

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 915
    :goto_397
    if-nez v0, :cond_39f

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    :cond_39f
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    .line 903
    :catch_3aa
    move-exception v2

    .line 904
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_377

    .line 911
    :cond_3af
    iget v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4ec

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_397

    .line 925
    :sswitch_3be
    :try_start_3be
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 927
    iget-object v4, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6
    :try_end_3d0
    .catch Ljava/text/ParseException; {:try_start_3be .. :try_end_3d0} :catch_42a

    .line 931
    :goto_3d0
    const-string v2, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 932
    const/4 v2, 0x0

    .line 933
    iget v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->drmType:I

    if-ne v5, v11, :cond_3f1

    .line 934
    iget v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_42f

    .line 935
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v5, 0x7f0900d0

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 940
    :cond_3f1
    :goto_3f1
    if-nez v2, :cond_3f9

    .line 941
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    :cond_3f9
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 947
    const-string v2, "%s / %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v12

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 950
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    .line 928
    :catch_42a
    move-exception v2

    .line 929
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3d0

    .line 936
    :cond_42f
    iget v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3f1

    .line 937
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v5, 0x7f0900d1

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f1

    .line 956
    :sswitch_43e
    :try_start_43e
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 957
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 959
    iget-object v6, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 960
    iget-object v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6
    :try_end_462
    .catch Ljava/text/ParseException; {:try_start_43e .. :try_end_462} :catch_4ad

    .line 964
    :goto_462
    const-string v2, "%s - %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v10

    aput-object v5, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 967
    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 971
    const-string v2, "%s / %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v5, v5, v12

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 974
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    .line 961
    :catch_4ad
    move-exception v2

    .line 962
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_462

    .line 979
    :sswitch_4b2
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f0900d7

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    .line 987
    :sswitch_4cf
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v4, 0x7f090134

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d8

    :cond_4ec
    move-object v0, v1

    goto/16 :goto_397

    .line 681
    nop

    :pswitch_data_4f0
    .packed-switch 0x0
        :pswitch_70
        :pswitch_7d
        :pswitch_8a
        :pswitch_97
        :pswitch_a4
        :pswitch_5f
        :pswitch_5f
        :pswitch_b1
        :pswitch_5f
        :pswitch_be
        :pswitch_5f
        :pswitch_cb
        :pswitch_5f
        :pswitch_d9
        :pswitch_12f
    .end packed-switch

    .line 828
    :sswitch_data_512
    .sparse-switch
        0x0 -> :sswitch_20f
        0x1 -> :sswitch_22b
        0x2 -> :sswitch_252
        0x3 -> :sswitch_2a0
        0x4 -> :sswitch_2f1
        0x6 -> :sswitch_365
        0x8 -> :sswitch_3be
        0xa -> :sswitch_43e
        0x14 -> :sswitch_4cf
        0x1e -> :sswitch_4b2
    .end sparse-switch
.end method

.method private createReviewView()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1096
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mReviewViewLayout:Landroid/view/ViewGroup;

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mReviewViewLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090075

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1102
    const v0, 0x7f0c005c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1104
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v2, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v2, v2, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->review:Ljava/lang/String;

    .line 1105
    if-eqz v2, :cond_43

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 1106
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    sput-boolean v4, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasReview:Z

    .line 1109
    :cond_43
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mReviewViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1110
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasReview:Z

    if-eqz v0, :cond_63

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mReviewViewLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1113
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v1, "REVIEW"

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_63
    return-void
.end method

.method private createTrackListView()V
    .registers 18

    .prologue
    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    const v2, 0x7f0c0049

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f090073

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v7}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    if-eqz v1, :cond_a6

    .line 581
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_a6

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    const v5, 0x7f09007c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    iget v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;->currentMediaNumber:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 592
    const/4 v12, 0x0

    .local v12, i:I
    :goto_60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_a3

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->discs:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;

    .line 594
    .local v15, trackInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    iget-object v2, v15, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->title:Ljava/lang/String;

    add-int/lit8 v5, v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeOneLineTextItemView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 595
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasTrackList:Z

    .line 592
    add-int/lit8 v12, v12, 0x1

    goto :goto_60

    .line 581
    .end local v15           #trackInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;
    :cond_a3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2f

    .line 600
    .end local v12           #i:I
    .end local v13           #j:I
    :cond_a6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->similarAlbums:Ljava/util/ArrayList;

    if-eqz v1, :cond_141

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->similarAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 602
    .local v14, size:I
    if-lez v14, :cond_141

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    const v2, 0x7f09007d

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v7}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 607
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_d2
    if-ge v12, v14, :cond_141

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->similarAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    .line 610
    .local v9, albumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;
    const/4 v3, 0x0

    .line 611
    .local v3, bm:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 612
    .local v10, artwork:Ljava/lang/String;
    const/4 v4, 0x0

    .line 613
    .local v4, artworkUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData;->albumDetailInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->similarAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

    iget-object v8, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

    .line 614
    .local v8, ai:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;
    if-eqz v8, :cond_10b

    .line 615
    iget-object v10, v8, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->artwork:Ljava/lang/String;

    .line 616
    iget-object v4, v8, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->uri:Ljava/lang/String;

    .line 617
    if-eqz v10, :cond_10b

    const-string v1, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10b

    .line 619
    :try_start_105
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->getArtwork(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_10a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_105 .. :try_end_10a} :catch_12a

    move-result-object v3

    .line 627
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/4 v2, 0x1

    iget-object v5, v9, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->title:Ljava/lang/String;

    iget-object v1, v9, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

    iget-object v6, v1, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;->name:Ljava/lang/String;

    const/4 v7, -0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeImageItemView(ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 629
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasTrackList:Z

    .line 607
    add-int/lit8 v12, v12, 0x1

    goto :goto_d2

    .line 620
    :catch_12a
    move-exception v11

    .line 621
    .local v11, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "MpRichInfo"

    const-string v2, "Memory allocation failed getArtwork:index:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    throw v11

    .line 633
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v4           #artworkUri:Ljava/lang/String;
    .end local v8           #ai:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;
    .end local v9           #albumInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;
    .end local v10           #artwork:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/OutOfMemoryError;
    .end local v12           #i:I
    .end local v14           #size:I
    :cond_141
    sget-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasTrackList:Z

    if-eqz v1, :cond_162

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 637
    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v2, "TRACK"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_162
    return-void
.end method

.method private getArtwork(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1202
    if-nez p1, :cond_c

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1235
    :goto_b
    return-object v0

    .line 1210
    :cond_c
    const/4 v0, 0x0

    :try_start_d
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_52

    move-result-object v0

    .line 1214
    :goto_11
    if-eqz v0, :cond_7f

    .line 1216
    :try_start_13
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_58

    .line 1217
    :try_start_18
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1218
    const/4 v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1219
    const/16 v2, 0x74

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1220
    const/16 v2, 0x74

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1222
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_86

    move-result-object v0

    .line 1225
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_b

    .line 1226
    :catch_31
    move-exception v1

    .line 1227
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1228
    const-string v2, "MpRichInfo"

    const-string v3, "fail to read image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v2, "MpRichInfo"

    const-string v3, "IOException occured 2 :%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1211
    :catch_52
    move-exception v0

    .line 1212
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v2

    goto :goto_11

    .line 1224
    :catchall_58
    move-exception v0

    move-object v1, v2

    .line 1225
    :goto_5a
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 1230
    :goto_5d
    throw v0

    .line 1226
    :catch_5e
    move-exception v1

    .line 1227
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1228
    const-string v2, "MpRichInfo"

    const-string v3, "fail to read image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v2, "MpRichInfo"

    const-string v3, "IOException occured 2 :%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 1233
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b

    .line 1224
    :catchall_86
    move-exception v0

    goto :goto_5a
.end method

.method private getRatingDrawableId(I)I
    .registers 3
    .parameter "rating"

    .prologue
    .line 1241
    if-gtz p1, :cond_8

    .line 1242
    const/4 p1, 0x0

    .line 1254
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->ratingDrawableResourceId:[I

    aget v0, v0, p1

    return v0

    .line 1243
    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 1244
    const/4 p1, 0x1

    goto :goto_3

    .line 1245
    :cond_d
    const/4 v0, 0x2

    if-lt p1, v0, :cond_15

    const/4 v0, 0x3

    if-gt p1, v0, :cond_15

    .line 1246
    const/4 p1, 0x2

    goto :goto_3

    .line 1247
    :cond_15
    const/4 v0, 0x4

    if-lt p1, v0, :cond_1d

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1d

    .line 1248
    const/4 p1, 0x3

    goto :goto_3

    .line 1249
    :cond_1d
    const/4 v0, 0x6

    if-lt p1, v0, :cond_25

    const/4 v0, 0x7

    if-gt p1, v0, :cond_25

    .line 1250
    const/4 p1, 0x4

    goto :goto_3

    .line 1251
    :cond_25
    const/16 v0, 0x8

    if-lt p1, v0, :cond_3

    const/16 v0, 0x9

    if-gt p1, v0, :cond_3

    .line 1252
    const/4 p1, 0x5

    goto :goto_3
.end method

.method private initOrientation(I)V
    .registers 7
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_7

    .line 278
    :cond_6
    :goto_6
    return-void

    .line 263
    :cond_7
    if-eqz p1, :cond_c

    const/4 v2, 0x2

    if-ne p1, v2, :cond_29

    .line 264
    :cond_c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .local v1, origin:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 268
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setAllLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 269
    sput-boolean v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    goto :goto_6

    .line 270
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #origin:Landroid/widget/FrameLayout$LayoutParams;
    :cond_29
    if-eq p1, v4, :cond_2e

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 271
    :cond_2e
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 272
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    .restart local v1       #origin:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 274
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setAllLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 276
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    goto :goto_6
.end method

.method private makeImageItemView(ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .registers 18
    .parameter "isShowArtwork"
    .parameter "bm"
    .parameter "artwork"
    .parameter "line1"
    .parameter "line2"
    .parameter "rating"

    .prologue
    .line 436
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030016

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 437
    .local v7, view:Landroid/view/View;
    const-string v8, "RichInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "makeRichInfoImageItemView artwork:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const v8, 0x7f0c0055

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 441
    .local v3, imageView:Landroid/widget/ImageView;
    if-nez p1, :cond_78

    .line 442
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    :cond_32
    :goto_32
    const v8, 0x7f0c0057

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 455
    .local v4, line1View:Landroid/widget/TextView;
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 458
    const v8, 0x7f0c0058

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 459
    .local v5, line2View:Landroid/widget/TextView;
    if-nez p5, :cond_b7

    .line 460
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :goto_52
    const v8, 0x7f0c0059

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 467
    .local v6, ratingView:Landroid/widget/ImageView;
    const/4 v8, -0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_c1

    .line 468
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    :goto_65
    const v8, 0x7f0c0056

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 475
    .local v2, buyButton:Landroid/widget/Button;
    sget-boolean v8, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    if-nez v8, :cond_cb

    .line 476
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    :goto_77
    return-object v7

    .line 443
    .end local v2           #buyButton:Landroid/widget/Button;
    .end local v4           #line1View:Landroid/widget/TextView;
    .end local v5           #line2View:Landroid/widget/TextView;
    .end local v6           #ratingView:Landroid/widget/ImageView;
    :cond_78
    sget-boolean v8, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    if-eqz v8, :cond_80

    if-nez p2, :cond_8a

    if-nez p3, :cond_8a

    .line 444
    :cond_80
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_32

    .line 445
    :cond_8a
    if-eqz p2, :cond_90

    .line 446
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_32

    .line 447
    :cond_90
    const-string v8, ""

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    .line 448
    const-string v8, "RichInfo"

    const-string v9, "do get art work... "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/high16 v8, 0x7f04

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    new-instance v1, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    .line 451
    .local v1, al:Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {v1, v8}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_32

    .line 462
    .end local v1           #al:Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;
    .restart local v4       #line1View:Landroid/widget/TextView;
    .restart local v5       #line2View:Landroid/widget/TextView;
    :cond_b7
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_52

    .line 470
    .restart local v6       #ratingView:Landroid/widget/ImageView;
    :cond_c1
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->getRatingDrawableId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_65

    .line 478
    .restart local v2       #buyButton:Landroid/widget/Button;
    :cond_cb
    const v8, 0x7f090080

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 479
    invoke-virtual {v2, p4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 482
    new-instance v8, Lcom/sec/android/app/music/common/richinfo/RichInfoView$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$3;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_77
.end method

.method private makeOneLineTextItemView(Ljava/lang/String;I)Landroid/view/View;
    .registers 12
    .parameter "line1"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 394
    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030019

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 396
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0c0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 397
    .local v1, line1View:Landroid/widget/TextView;
    if-lez p2, :cond_55

    .line 398
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 399
    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const v5, 0x7f09007f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 400
    .local v2, listItemFormat:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sFormatter:Ljava/util/Formatter;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-virtual {v4, v2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .end local v2           #listItemFormat:Ljava/lang/String;
    :goto_3f
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 406
    const v4, 0x7f0c0063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 407
    .local v0, buyButton:Landroid/widget/Button;
    sget-boolean v4, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    if-nez v4, :cond_59

    .line 408
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    :goto_54
    return-object v3

    .line 402
    .end local v0           #buyButton:Landroid/widget/Button;
    :cond_55
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 410
    .restart local v0       #buyButton:Landroid/widget/Button;
    :cond_59
    const v4, 0x7f090080

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 414
    new-instance v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$2;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_54
.end method

.method private makeSubTitle(IIZZ)Landroid/view/View;
    .registers 14
    .parameter "title"
    .parameter "number"
    .parameter "isTitle"
    .parameter "isShowArrow"

    .prologue
    const/4 v8, 0x0

    .line 524
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030018

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 527
    .local v4, v:Landroid/view/View;
    if-eqz p3, :cond_47

    .line 528
    const v5, 0x7f0c005e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 529
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 532
    if-eqz p4, :cond_46

    .line 533
    const v5, 0x7f0c0060

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 535
    .local v0, leftArrow:Landroid/widget/ImageView;
    const v5, 0x7f0c0061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 537
    .local v1, rightArrow:Landroid/widget/ImageView;
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    new-instance v5, Lcom/sec/android/app/music/common/richinfo/RichInfoView$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$4;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    new-instance v5, Lcom/sec/android/app/music/common/richinfo/RichInfoView$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$5;-><init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    .end local v0           #leftArrow:Landroid/widget/ImageView;
    .end local v1           #rightArrow:Landroid/widget/ImageView;
    .end local v3           #text:Landroid/widget/TextView;
    :cond_46
    :goto_46
    return-object v4

    .line 554
    :cond_47
    const/high16 v5, 0x7f02

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 556
    const v5, 0x7f0c005f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 558
    .local v2, subtitle:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    const/4 v5, -0x1

    if-ne p2, v5, :cond_5f

    .line 560
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_46

    .line 562
    :cond_5f
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method private makeTwoLineTextItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 12
    .parameter "line1"
    .parameter "line2"

    .prologue
    const v8, 0x7f09006d

    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 356
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 358
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0c0064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 359
    .local v0, line1View:Landroid/widget/TextView;
    if-nez p1, :cond_42

    .line 360
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :goto_1e
    const v3, 0x7f0c0068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 367
    .local v1, line2View:Landroid/widget/TextView;
    if-eqz p1, :cond_3c

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 368
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 370
    :cond_3c
    if-nez p2, :cond_49

    .line 371
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :goto_41
    return-object v2

    .line 362
    .end local v1           #line2View:Landroid/widget/TextView;
    :cond_42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1e

    .line 373
    .restart local v1       #line2View:Landroid/widget/TextView;
    :cond_49
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_41
.end method

.method private setAllLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3
    .parameter "layout"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mTrackListViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mBiographyViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mBiographyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mDiscographyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mReviewViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mReviewViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mCreditsViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2d

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mCreditsViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_36

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    :cond_36
    return-void
.end method

.method private setPage(I)V
    .registers 5
    .parameter "page"

    .prologue
    .line 141
    const-string v0, "RichInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RichInfoView setPage() page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPage(previous page): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->showView(IZ)V

    .line 144
    return-void
.end method

.method private showView(IZ)V
    .registers 5
    .parameter "page"
    .parameter "isMoveSmooth"

    .prologue
    const/4 v1, 0x0

    .line 319
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    if-eqz v0, :cond_17

    .line 320
    if-eqz p2, :cond_10

    .line 321
    sget v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->smoothScrollTo(II)V

    .line 333
    :goto_d
    iput p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    .line 334
    return-void

    .line 323
    :cond_10
    sget v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->scrollTo(II)V

    goto :goto_d

    .line 326
    :cond_17
    if-eqz p2, :cond_20

    .line 327
    sget v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->smoothScrollTo(II)V

    goto :goto_d

    .line 329
    :cond_20
    sget v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->scrollTo(II)V

    goto :goto_d
.end method

.method private static startMusicHub(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "search"

    .prologue
    .line 496
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.music.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, i:Landroid/content/Intent;
    const-string v2, "all"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    :try_start_c
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_f} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_f} :catch_15

    .line 514
    :goto_f
    return-void

    .line 509
    :catch_10
    move-exception v0

    .line 510
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 511
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_15
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_f
.end method


# virtual methods
.method public checkPageBoundary(I)I
    .registers 3
    .parameter "page"

    .prologue
    .line 1415
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMaxPage:I

    if-le p1, v0, :cond_6

    .line 1416
    const/4 p1, 0x0

    .line 1420
    :cond_5
    :goto_5
    return p1

    .line 1417
    :cond_6
    if-gez p1, :cond_5

    .line 1418
    iget p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMaxPage:I

    goto :goto_5
.end method

.method public initView(Landroid/view/Display;)V
    .registers 6
    .parameter "display"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->removeAllViews()V

    .line 171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 172
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_6d

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_13
    sput v1, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    .line 176
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v2, :cond_70

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1d
    sput v1, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    .line 180
    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->getMediaMetaData()Lcom/sec/android/app/music/common/data/MediaMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    .line 190
    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->getRichInfoData()Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    .line 195
    sget-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasRichInfo:Z

    if-eqz v1, :cond_73

    .line 196
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createAllView()V

    .line 200
    :goto_56
    sget-object v1, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMaxPage:I

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mRichInfoBody:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->initOrientation(I)V

    .line 205
    return-void

    .line 173
    :cond_6d
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_13

    .line 176
    :cond_70
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1d

    .line 198
    :cond_73
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createMediaInfoView()V

    goto :goto_56
.end method

.method public nextPage()V
    .registers 3

    .prologue
    .line 154
    const-string v0, "RichInfo"

    const-string v1, "RichInfoView nextPage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->checkPageBoundary(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPage(I)V

    .line 156
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1296
    packed-switch v0, :pswitch_data_4e

    .line 1320
    :cond_9
    :goto_9
    :pswitch_9
    iget-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    return v0

    .line 1298
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mX:F

    .line 1299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mY:F

    .line 1300
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    .line 1301
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    goto :goto_9

    .line 1304
    :pswitch_1d
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1305
    iget v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1306
    iget-boolean v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    if-nez v2, :cond_3b

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3b

    .line 1307
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    .line 1310
    :cond_3b
    iget-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    if-nez v1, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 1311
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    .line 1312
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMakeTouchDownEventForHorizontalScroll:Z

    goto :goto_9

    .line 1296
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_1d
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 1284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1285
    iput p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mScrolledLeftEdge:I

    .line 1286
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1333
    packed-switch v0, :pswitch_data_ba

    .line 1403
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_d
    return v0

    .line 1335
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mX:F

    .line 1336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mY:F

    .line 1337
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    .line 1338
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    goto :goto_9

    .line 1341
    :pswitch_1f
    iget-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMakeTouchDownEventForHorizontalScroll:Z

    if-eqz v0, :cond_2b

    .line 1342
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMakeTouchDownEventForHorizontalScroll:Z

    .line 1343
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1349
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1351
    :cond_2b
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    .line 1352
    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1353
    iget-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    if-nez v3, :cond_49

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4248

    cmpl-float v2, v2, v3

    if-lez v2, :cond_49

    .line 1354
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    .line 1357
    :cond_49
    iget-boolean v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mExceedMinimumYTouch:Z

    if-nez v2, :cond_5a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42c8

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5a

    .line 1358
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    goto :goto_9

    :cond_5a
    move v0, v1

    .line 1360
    goto :goto_d

    .line 1365
    :pswitch_5c
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    .line 1366
    iget-boolean v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    if-eqz v2, :cond_9

    .line 1367
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mSendTouchEventToHorizonScroll:Z

    .line 1368
    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_96

    .line 1370
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMaxPage:I

    if-ne v0, v2, :cond_79

    .line 1371
    invoke-direct {p0, v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPage(I)V

    :goto_77
    move v0, v1

    .line 1381
    goto :goto_d

    .line 1374
    :cond_79
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    if-eqz v0, :cond_8b

    .line 1375
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mScrolledLeftEdge:I

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1e

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    div-int/2addr v0, v2

    .line 1379
    :goto_87
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPage(I)V

    goto :goto_77

    .line 1377
    :cond_8b
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mScrolledLeftEdge:I

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1e

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    div-int/2addr v0, v2

    goto :goto_87

    .line 1384
    :cond_96
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    if-nez v0, :cond_a2

    .line 1385
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMaxPage:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPage(I)V

    :goto_9f
    move v0, v1

    .line 1395
    goto/16 :goto_d

    .line 1388
    :cond_a2
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    if-eqz v0, :cond_b1

    .line 1389
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mScrolledLeftEdge:I

    add-int/lit8 v0, v0, 0x1e

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    div-int/2addr v0, v2

    .line 1393
    :goto_ad
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPage(I)V

    goto :goto_9f

    .line 1391
    :cond_b1
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mScrolledLeftEdge:I

    add-int/lit8 v0, v0, 0x1e

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    div-int/2addr v0, v2

    goto :goto_ad

    .line 1333
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_e
        :pswitch_5c
        :pswitch_1f
        :pswitch_5c
    .end packed-switch
.end method

.method public prevPage()V
    .registers 3

    .prologue
    .line 159
    const-string v0, "RichInfo"

    const-string v1, "RichInfoView nextPage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->checkPageBoundary(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPage(I)V

    .line 161
    return-void
.end method

.method public setOrientation(I)V
    .registers 9
    .parameter "orientation"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 227
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_9

    .line 248
    :cond_8
    :goto_8
    return-void

    .line 230
    :cond_9
    if-ne p1, v4, :cond_2f

    .line 231
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayWidth:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 233
    .local v1, origin:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setAllLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 236
    sput-boolean v4, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    .line 237
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageChangeHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 238
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #origin:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 239
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->sDisplayHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 240
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mMediaInfoViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .restart local v1       #origin:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setAllLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 244
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mIsPortrait:Z

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageChangeHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method

.method public setPageWidthDelay(I)V
    .registers 5
    .parameter "page"

    .prologue
    .line 147
    const-string v0, "RichInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RichInfoView setPage() page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPage(previous page): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageChangeHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    return-void
.end method
