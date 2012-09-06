.class public Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;
.super Lcom/google/android/finsky/widget/BaseWidgetProvider;
.source "NowPlayingWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;,
        Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_OVERLAY_IDS:[I

.field private static final BACKENDS:[I

.field private static final CONTAINERS:[I

.field private static final IMAGE_IDS:[I

.field private static final PORTRAIT_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

.field private static final PORTRAIT_LARGE_REPLACEMENT:Lcom/google/android/finsky/widget/consumption/Block;

.field private static final SQUARE_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

.field public static mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;


# instance fields
.field private final mRowStartCounts:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const v7, 0x7f0b0096

    const/4 v6, 0x4

    const v5, 0x7f0b0097

    .line 1089
    new-array v0, v6, [I

    fill-array-data v0, :array_1e8

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->IMAGE_IDS:[I

    .line 1096
    new-array v0, v6, [I

    fill-array-data v0, :array_1f4

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->ACCESSIBILITY_OVERLAY_IDS:[I

    .line 1103
    new-array v0, v6, [I

    fill-array-data v0, :array_200

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->BACKENDS:[I

    .line 1107
    new-array v0, v6, [I

    fill-array-data v0, :array_20c

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->CONTAINERS:[I

    .line 1111
    new-instance v0, Lcom/google/android/finsky/widget/consumption/Block;

    const v1, 0x7f0400ab

    invoke-direct {v0, v1}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v1, 0x7f0b008e

    const v2, 0x7f0b008f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v0

    const v1, 0x7f0b0090

    const v2, 0x7f0b0091

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_LARGE_REPLACEMENT:Lcom/google/android/finsky/widget/consumption/Block;

    .line 1118
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/widget/consumption/Block;

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400a8

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b008e

    const v3, 0x7f0b008f

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_LARGE_REPLACEMENT:Lcom/google/android/finsky/widget/consumption/Block;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->replaceLastOccurenceInRowWith(Lcom/google/android/finsky/widget/consumption/Block;)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b0

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b0090

    const v4, 0x7f0b008f

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const v3, 0x7f0b0090

    const v4, 0x7f0b0091

    invoke-virtual {v2, v8, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400b1

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b0092

    const v3, 0x7f0b008f

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    const/4 v2, 0x3

    const v3, 0x7f0b0092

    const v4, 0x7f0b0093

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400a9

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b0090

    const v4, 0x7f0b0091

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400aa

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b0092

    const v3, 0x7f0b0093

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    .line 1142
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/finsky/widget/consumption/Block;

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400ae

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b0094

    const v3, 0x7f0b0094

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400ac

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b0095

    const v4, 0x7f0b0095

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400b2

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b0094

    invoke-virtual {v1, v7, v2}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1, v8, v7, v7}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400ad

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    invoke-virtual {v2, v7, v7}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400b4

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b0094

    invoke-virtual {v1, v5, v2}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1, v6, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b5

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b0095

    invoke-virtual {v2, v5, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b3

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    invoke-virtual {v2, v5, v7}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v8, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b6

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b0095

    const v4, 0x7f0b0094

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const v3, 0x7f0b0095

    const v4, 0x7f0b0094

    invoke-virtual {v2, v9, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v8, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b7

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b0095

    invoke-virtual {v2, v7, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v9, v7, v7}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v8, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400af

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    invoke-virtual {v2, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->SQUARE_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    return-void

    .line 1089
    :array_1e8
    .array-data 0x4
        0x8at 0x1t 0x8t 0x7ft
        0x8et 0x1t 0x8t 0x7ft
        0x8ct 0x1t 0x8t 0x7ft
        0x90t 0x1t 0x8t 0x7ft
    .end array-data

    .line 1096
    :array_1f4
    .array-data 0x4
        0x8bt 0x1t 0x8t 0x7ft
        0x8ft 0x1t 0x8t 0x7ft
        0x8dt 0x1t 0x8t 0x7ft
        0x91t 0x1t 0x8t 0x7ft
    .end array-data

    .line 1103
    :array_200
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 1107
    :array_20c
    .array-data 0x4
        0x98t 0x1t 0x8t 0x7ft
        0x9at 0x1t 0x8t 0x7ft
        0x99t 0x1t 0x8t 0x7ft
        0x9bt 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    .line 558
    return-void
.end method

.method protected static varargs fetchConsumptionDataIfNecessary(Landroid/content/Context;[I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1041
    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v4

    .line 1043
    array-length v5, p1

    .line 1044
    new-array v6, v5, [I

    move v2, v3

    move v1, v3

    .line 1046
    :goto_a
    if-ge v2, v5, :cond_3a

    .line 1047
    aget v7, p1, v2

    .line 1048
    invoke-virtual {v4, v7}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->hasConsumptionAppData(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v4, v7}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->isLoadingData(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1049
    :cond_1a
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_44

    .line 1050
    const-string v0, "Data for [%s] is available or loading, skipping"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v3

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1046
    :goto_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_a

    .line 1054
    :cond_32
    invoke-virtual {v4, v7}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->startLoading(I)V

    .line 1055
    add-int/lit8 v0, v1, 0x1

    aput v7, v6, v1

    goto :goto_2d

    .line 1058
    :cond_3a
    if-lez v1, :cond_43

    .line 1059
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->scheduleAlarmForUpdate(Landroid/content/Context;[I)V

    .line 1062
    :cond_43
    return-void

    :cond_44
    move v0, v1

    goto :goto_2d
.end method

.method private generateAccountNeededState(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 9
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const v5, 0x7f080194

    const v4, 0x7f080193

    .line 346
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 348
    .local v1, views:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400a7

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 350
    .local v0, content:Landroid/widget/RemoteViews;
    invoke-virtual {v1, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 351
    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 353
    invoke-static {p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 357
    return-object v1
.end method

.method private generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 9
    .parameter "context"
    .parameter "showBackground"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 255
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400b8

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 257
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f080197

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 258
    const v2, 0x7f080196

    invoke-static {v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getHeaderIconRes(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 259
    invoke-static {v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getEmptyBackgroundRes(I)I

    move-result v0

    .line 260
    .local v0, emptyBackgroundRes:I
    if-eqz p2, :cond_2f

    if-eqz v0, :cond_2f

    .line 261
    const v2, 0x7f080192

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 265
    :cond_2f
    const v2, 0x7f080194

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 266
    const v2, 0x7f080193

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    const v2, 0x7f080014

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 269
    return-object v1
.end method

.method private generateConfigurationState(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 8
    .parameter
    .parameter

    .prologue
    const v4, 0x7f080193

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 275
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400b9

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 277
    const v2, 0x7f080194

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 279
    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingTrampoline;

    invoke-static {p1, v1, p2}, Lcom/google/android/finsky/widget/TrampolineActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 284
    return-object v0
.end method

.method private generateDisabledState(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .registers 16
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "backendId"

    .prologue
    .line 288
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 290
    .local v8, views:Landroid/widget/RemoteViews;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0400b9

    invoke-direct {v1, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 295
    .local v1, content:Landroid/widget/RemoteViews;
    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 296
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-static {p3}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, packageName:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 298
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, appName:Ljava/lang/String;
    const v9, 0x7f070244

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_32} :catch_51

    move-result-object v7

    .line 304
    .end local v0           #appName:Ljava/lang/String;
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .local v7, text:Ljava/lang/String;
    :goto_33
    const v9, 0x7f080040

    invoke-virtual {v1, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 306
    const v9, 0x7f080194

    invoke-virtual {v8, v9, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 308
    invoke-static {p1, p3}, Lcom/google/android/finsky/widget/consumption/EnableAppReceiver;->getEnableIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 309
    .local v4, intent:Landroid/app/PendingIntent;
    const v9, 0x7f080193

    invoke-virtual {v8, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 310
    const v9, 0x7f080193

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 312
    return-object v8

    .line 300
    .end local v4           #intent:Landroid/app/PendingIntent;
    .end local v7           #text:Ljava/lang/String;
    :catch_51
    move-exception v2

    .line 302
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, ""

    .restart local v7       #text:Ljava/lang/String;
    goto :goto_33
.end method

.method private generateUnavailableState(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f080193

    const/4 v4, 0x0

    .line 316
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 318
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400b9

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 321
    const v2, 0x7f070245

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    const v3, 0x7f080040

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 324
    const v2, 0x7f080194

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 326
    invoke-static {p3}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "play.google.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "store/apps/details"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 333
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 339
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 340
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 342
    return-object v0
.end method

.method private generateViewTree(IILcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;Ljava/util/Map;II)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .registers 48
    .parameter "backend"
    .parameter "appWidgetId"
    .parameter "dfeToc"
    .parameter "context"
    .parameter
    .parameter "areaWidth"
    .parameter "areaHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;"
        }
    .end annotation

    .prologue
    .line 364
    .local p5, cachedImages:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Landroid/graphics/Bitmap;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBackends(I)[I

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->fetchConsumptionDataIfNecessary(Landroid/content/Context;[I)V

    .line 366
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v39

    .line 369
    .local v39, widget:Landroid/widget/RemoteViews;
    new-instance v31, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;)V

    .line 370
    .local v31, output:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$002(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 372
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getTitleRes(Lcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v37

    .line 373
    .local v37, title:Ljava/lang/String;
    const v3, 0x7f080197

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 375
    const v3, 0x7f080196

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getHeaderIconRes(I)I

    move-result v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 377
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getHeaderIntent(I)Landroid/content/Intent;

    move-result-object v22

    .line 378
    .local v22, headerIntent:Landroid/content/Intent;
    if-eqz v22, :cond_6a

    .line 379
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 381
    .local v32, pendingIntent:Landroid/app/PendingIntent;
    const v3, 0x7f080014

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 382
    const v3, 0x7f080014

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 385
    .end local v32           #pendingIntent:Landroid/app/PendingIntent;
    :cond_6a
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0021

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    .line 386
    .local v29, maxCorpora:I
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getConsumptionDocLists(I)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move/from16 v0, v29

    invoke-static {v3, v0, v12, v13}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->score(Ljava/util/List;IJ)Ljava/util/List;

    move-result-object v34

    .line 390
    .local v34, scoredBackends:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->arrange(Ljava/util/List;I)Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    move-result-object v19

    .line 391
    .local v19, arrangement:Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v0, v3

    move/from16 v18, v0

    .line 393
    .local v18, N:I
    move-object/from16 v0, v19

    iget v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    if-nez v3, :cond_19f

    const/16 v35, 0x0

    .line 395
    .local v35, stretchedQuadrant:I
    :goto_99
    move-object/from16 v4, v39

    .line 396
    .local v4, target:Landroid/widget/RemoteViews;
    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_c5

    .line 397
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getLayout(Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;)I

    move-result v36

    .line 398
    .local v36, subLayout:I
    const v3, 0x7f080194

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 399
    new-instance v21, Landroid/widget/RemoteViews;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-direct {v0, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 400
    .local v21, content:Landroid/widget/RemoteViews;
    const v3, 0x7f080194

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 401
    move-object/from16 v4, v21

    .line 404
    .end local v21           #content:Landroid/widget/RemoteViews;
    .end local v36           #subLayout:I
    :cond_c5
    const/4 v3, 0x0

    move-object/from16 v0, v31

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$302(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    .line 405
    const/4 v3, 0x1

    move-object/from16 v0, v31

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$402(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    .line 406
    const/16 v23, 0x0

    .line 407
    .local v23, heightRemaining:I
    const/4 v14, -0x1

    .line 408
    .local v14, leftmostContentEdge:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_d6
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_1ce

    .line 409
    move/from16 v10, p6

    .line 410
    .local v10, width:I
    move/from16 v11, p7

    .line 412
    .local v11, height:I
    const v6, 0x7f080194

    .line 413
    .local v6, container:I
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v3, v3

    move-object/from16 v0, v19

    iget v5, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    move/from16 v0, v24

    invoke-static {v3, v0, v5}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->getLocation(III)B

    move-result v7

    .line 415
    .local v7, location:I
    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_125

    .line 416
    sget-object v3, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->CONTAINERS:[I

    aget v6, v3, v24

    .line 417
    div-int/lit8 v10, v10, 0x2

    .line 419
    const/4 v3, 0x4

    move/from16 v0, v18

    if-eq v0, v3, :cond_10d

    const/4 v3, 0x3

    move/from16 v0, v18

    if-ne v0, v3, :cond_125

    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_125

    .line 420
    :cond_10d
    move/from16 v0, p7

    int-to-float v3, v0

    int-to-float v5, v10

    div-float/2addr v3, v5

    const v5, 0x400ccccd

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1b6

    .line 424
    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_1a9

    .line 427
    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_1a3

    div-int/lit8 v11, p7, 0x3

    .line 440
    :goto_123
    add-int v11, v11, v23

    .line 444
    :cond_125
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    aget-object v9, v3, v24

    .local v9, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v12, p5

    .line 445
    invoke-virtual/range {v3 .. v12}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->populateWidget(Landroid/widget/RemoteViews;IIILandroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;IILjava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v38

    .line 449
    .local v38, uris:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    const/4 v3, 0x4

    move/from16 v0, v18

    if-eq v0, v3, :cond_147

    const/4 v3, 0x3

    move/from16 v0, v18

    if-ne v0, v3, :cond_14b

    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_14b

    .line 450
    :cond_147
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->heightRemaining:I
    invoke-static/range {v38 .. v38}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$500(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)I

    move-result v23

    .line 453
    :cond_14b
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static/range {v38 .. v38}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$300(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$376(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)Z

    .line 455
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static/range {v38 .. v38}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$400(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$472(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)Z

    .line 458
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static/range {v38 .. v38}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    if-nez v3, :cond_169

    .line 459
    const/4 v3, 0x0

    move-object/from16 v0, v31

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$102(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    .line 461
    :cond_169
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v3

    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v38 .. v38}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 463
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_17d

    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_1ba

    :cond_17d
    const/16 v26, 0x1

    .line 464
    .local v26, isInLeftHalf:Z
    :goto_17f
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_188

    and-int/lit8 v3, v7, 0x2

    if-eqz v3, :cond_1bd

    :cond_188
    const/16 v27, 0x1

    .line 466
    .local v27, isInRightHalf:Z
    :goto_18a
    if-eqz v26, :cond_19b

    .line 469
    if-eqz v27, :cond_1c0

    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->widestRowWidth:I
    invoke-static/range {v38 .. v38}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$600(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)I

    move-result v3

    sub-int v3, p6, v3

    div-int/lit8 v28, v3, 0x2

    .line 472
    .local v28, leftContentEdge:I
    :goto_196
    const/4 v3, -0x1

    if-ne v14, v3, :cond_1c7

    .line 473
    move/from16 v14, v28

    .line 408
    .end local v28           #leftContentEdge:I
    :cond_19b
    :goto_19b
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_d6

    .line 393
    .end local v4           #target:Landroid/widget/RemoteViews;
    .end local v6           #container:I
    .end local v7           #location:I
    .end local v9           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .end local v10           #width:I
    .end local v11           #height:I
    .end local v14           #leftmostContentEdge:I
    .end local v23           #heightRemaining:I
    .end local v24           #i:I
    .end local v26           #isInLeftHalf:Z
    .end local v27           #isInRightHalf:Z
    .end local v35           #stretchedQuadrant:I
    .end local v38           #uris:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    :cond_19f
    const/16 v35, 0x1

    goto/16 :goto_99

    .line 427
    .restart local v4       #target:Landroid/widget/RemoteViews;
    .restart local v6       #container:I
    .restart local v7       #location:I
    .restart local v10       #width:I
    .restart local v11       #height:I
    .restart local v14       #leftmostContentEdge:I
    .restart local v23       #heightRemaining:I
    .restart local v24       #i:I
    .restart local v35       #stretchedQuadrant:I
    :cond_1a3
    mul-int/lit8 v3, p7, 0x2

    div-int/lit8 v11, v3, 0x3

    goto/16 :goto_123

    .line 432
    :cond_1a9
    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_1b3

    mul-int/lit8 v3, p7, 0x2

    div-int/lit8 v11, v3, 0x3

    :goto_1b1
    goto/16 :goto_123

    :cond_1b3
    div-int/lit8 v11, p7, 0x3

    goto :goto_1b1

    .line 437
    :cond_1b6
    div-int/lit8 v11, p7, 0x2

    goto/16 :goto_123

    .line 463
    .restart local v9       #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .restart local v38       #uris:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    :cond_1ba
    const/16 v26, 0x0

    goto :goto_17f

    .line 464
    .restart local v26       #isInLeftHalf:Z
    :cond_1bd
    const/16 v27, 0x0

    goto :goto_18a

    .line 469
    .restart local v27       #isInRightHalf:Z
    :cond_1c0
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->widestRowWidth:I
    invoke-static/range {v38 .. v38}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$600(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)I

    move-result v3

    sub-int v28, v10, v3

    goto :goto_196

    .line 475
    .restart local v28       #leftContentEdge:I
    :cond_1c7
    move/from16 v0, v28

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_19b

    .line 479
    .end local v6           #container:I
    .end local v7           #location:I
    .end local v9           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .end local v10           #width:I
    .end local v11           #height:I
    .end local v26           #isInLeftHalf:Z
    .end local v27           #isInRightHalf:Z
    .end local v28           #leftContentEdge:I
    .end local v38           #uris:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    :cond_1ce
    const/4 v3, 0x0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 480
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 481
    .local v33, res:Landroid/content/res/Resources;
    const v13, 0x7f080196

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v3, 0x7f0b0085

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v12, v39

    invoke-virtual/range {v12 .. v17}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 484
    const/16 v20, 0x0

    .line 485
    .local v20, backgroundRes:I
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static/range {v31 .. v31}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$300(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    if-eqz v3, :cond_204

    .line 486
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBackgroundRes(I)I

    move-result v20

    .line 500
    :cond_1f7
    :goto_1f7
    if-eqz v20, :cond_203

    .line 501
    const v3, 0x7f080192

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 505
    :cond_203
    return-object v31

    .line 487
    :cond_204
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static/range {v31 .. v31}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$400(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 488
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getEmptyBackgroundRes(I)I

    move-result v20

    .line 489
    if-eqz p1, :cond_1f7

    .line 490
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    .line 493
    .local v30, openIntent:Landroid/content/Intent;
    if-eqz v30, :cond_238

    .line 494
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-static {v0, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 495
    .local v25, intent:Landroid/app/PendingIntent;
    const v3, 0x7f080193

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 497
    .end local v25           #intent:Landroid/app/PendingIntent;
    :cond_238
    const v3, 0x7f080193

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1f7
.end method

.method private generateWidgetLayout(Landroid/content/Context;IIII)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;
    .registers 31
    .parameter "context"
    .parameter "numDocuments"
    .parameter "listBackend"
    .parameter "rowWidth"
    .parameter "height"

    .prologue
    .line 680
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 682
    .local v22, rows:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;>;"
    const/16 v17, 0x0

    .line 686
    .local v17, numImages:I
    :goto_6
    if-lez p5, :cond_35

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_35

    .line 687
    move/from16 v5, p4

    .line 689
    .local v5, width:I
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 693
    .local v21, row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/16 v23, 0x0

    .line 695
    .local v23, tallestElement:I
    const/16 v16, 0x0

    .line 697
    .local v16, numBlocksAdded:I
    const/4 v9, 0x1

    .line 700
    .local v9, isFirstInRow:Z
    :goto_19
    if-lez v5, :cond_33

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_33

    .line 702
    if-nez v23, :cond_56

    move/from16 v6, p5

    .line 703
    .local v6, rowHeight:I
    :goto_25
    sub-int v8, p2, v17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->findLargestBlock(Landroid/content/Context;IIIIZ)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v10

    .line 705
    .local v10, block:Lcom/google/android/finsky/widget/consumption/Block;
    if-nez v10, :cond_59

    .line 723
    .end local v6           #rowHeight:I
    .end local v10           #block:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_33
    if-nez v16, :cond_7b

    .line 773
    .end local v5           #width:I
    .end local v9           #isFirstInRow:Z
    .end local v16           #numBlocksAdded:I
    .end local v21           #row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    .end local v23           #tallestElement:I
    :cond_35
    new-instance v3, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 818
    new-instance v4, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;

    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_123

    const/4 v3, 0x1

    :goto_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p5

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Ljava/util/List;ZI)V

    return-object v4

    .restart local v5       #width:I
    .restart local v9       #isFirstInRow:Z
    .restart local v16       #numBlocksAdded:I
    .restart local v21       #row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    .restart local v23       #tallestElement:I
    :cond_56
    move/from16 v6, v23

    .line 702
    goto :goto_25

    .line 710
    .restart local v6       #rowHeight:I
    .restart local v10       #block:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_59
    add-int/lit8 v16, v16, 0x1

    .line 712
    invoke-virtual {v10}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v3

    add-int v17, v17, v3

    .line 714
    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v5, v3

    .line 718
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 719
    const/4 v9, 0x0

    .line 720
    goto :goto_19

    .line 728
    .end local v6           #rowHeight:I
    .end local v10           #block:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_7b
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v18

    .line 729
    .local v18, replaceable:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/Block;Ljava/lang/Integer;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_83
    :goto_83
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/widget/consumption/Block;

    .line 730
    .restart local v10       #block:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-virtual {v10}, Lcom/google/android/finsky/widget/consumption/Block;->hasLastOccurenceInRowReplacement()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 731
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 733
    .local v11, currCount:I
    :goto_a9
    add-int/lit8 v3, v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 731
    .end local v11           #currCount:I
    :cond_b5
    const/4 v11, 0x0

    goto :goto_a9

    .line 737
    .end local v10           #block:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_b7
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_bf
    :goto_bf
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_118

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 739
    .local v19, replaceableEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/finsky/widget/consumption/Block;Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_bf

    .line 743
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/finsky/widget/consumption/Block;

    .line 744
    .local v24, toReplace:Lcom/google/android/finsky/widget/consumption/Block;
    const/4 v15, -0x1

    .line 745
    .local v15, lastOccurenceIndex:I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .local v12, i:I
    :goto_e5
    if-ltz v12, :cond_f2

    .line 746
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_115

    .line 747
    move v15, v12

    .line 751
    :cond_f2
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/widget/consumption/Block;->getLastOccurenceInRowReplacement()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v20

    .line 752
    .local v20, replacement:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v4

    sub-int v14, v3, v4

    .line 753
    .local v14, imageCountDifference:I
    if-lez v14, :cond_106

    .line 755
    sub-int v3, p2, v17

    if-lt v3, v14, :cond_bf

    .line 761
    :cond_106
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 763
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 765
    add-int v17, v17, v14

    .line 766
    goto :goto_bf

    .line 745
    .end local v14           #imageCountDifference:I
    .end local v20           #replacement:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_115
    add-int/lit8 v12, v12, -0x1

    goto :goto_e5

    .line 768
    .end local v12           #i:I
    .end local v15           #lastOccurenceIndex:I
    .end local v19           #replaceableEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/finsky/widget/consumption/Block;Ljava/lang/Integer;>;"
    .end local v24           #toReplace:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_118
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    sub-int p5, p5, v23

    .line 770
    goto/16 :goto_6

    .line 818
    .end local v5           #width:I
    .end local v9           #isFirstInRow:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #numBlocksAdded:I
    .end local v18           #replaceable:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/Block;Ljava/lang/Integer;>;"
    .end local v21           #row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    .end local v23           #tallestElement:I
    :cond_123
    const/4 v3, 0x0

    goto/16 :goto_4c
.end method

.method private static getBackends(I)[I
    .registers 3
    .parameter "backend"

    .prologue
    .line 1025
    if-nez p0, :cond_5

    .line 1026
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->BACKENDS:[I

    .line 1028
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    goto :goto_4
.end method

.method private static getBackgroundRes(I)I
    .registers 2
    .parameter

    .prologue
    .line 926
    packed-switch p0, :pswitch_data_1a

    .line 939
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 928
    :pswitch_5
    const v0, 0x7f020009

    goto :goto_4

    .line 930
    :pswitch_9
    const v0, 0x7f02000b

    goto :goto_4

    .line 932
    :pswitch_d
    const v0, 0x7f02000c

    goto :goto_4

    .line 934
    :pswitch_11
    const v0, 0x7f02000a

    goto :goto_4

    .line 936
    :pswitch_15
    const v0, 0x7f02000d

    goto :goto_4

    .line 926
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_11
    .end packed-switch
.end method

.method private static getBlocks(I)[Lcom/google/android/finsky/widget/consumption/Block;
    .registers 3
    .parameter "listBackend"

    .prologue
    .line 893
    packed-switch p0, :pswitch_data_12

    .line 902
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid backend"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :pswitch_b
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    .line 900
    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->SQUARE_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    goto :goto_d

    .line 893
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private static getCachedImage(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "context"
    .parameter
    .parameter "uriToFind"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/net/Uri;",
            "II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, cachedImages:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Landroid/graphics/Bitmap;>;"
    invoke-static {p0, p3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    .line 665
    .local v2, targetWidth:I
    invoke-static {p0, p4}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v1

    .line 666
    .local v1, targetHeight:I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    .line 667
    .local v3, wrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    invoke-virtual {v3, p2, v2, v1}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->satisfies(Landroid/net/Uri;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 668
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 671
    .end local v3           #wrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    :goto_28
    return-object v4

    :cond_29
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private static getConsumptionData(I)Ljava/util/List;
    .registers 2
    .parameter "backend"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getConsumptionAppData(I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getDocsWithImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getConsumptionDocLists(I)Ljava/util/List;
    .registers 8
    .parameter "widgetBackend"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1013
    .local v0, allDocs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    invoke-static {p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBackends(I)[I

    move-result-object v1

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_a
    if-ge v3, v4, :cond_23

    aget v5, v1, v3

    .line 1014
    .local v5, listBackend:I
    invoke-static {v5}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getConsumptionData(I)Ljava/util/List;

    move-result-object v2

    .line 1015
    .local v2, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_20

    .line 1016
    new-instance v6, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v6, v5, v2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1020
    .end local v2           #docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    .end local v5           #listBackend:I
    :cond_23
    sget-object v6, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->NEWEST_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1021
    return-object v0
.end method

.method private static getDocsWithImages(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1077
    if-eqz p0, :cond_30

    .line 1078
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    .line 1079
    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1080
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1082
    :cond_20
    const-string v3, "filtering out docId=[%s] because uri was null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getDocId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 1086
    :cond_30
    return-object v1
.end method

.method private static getEmptyBackgroundRes(I)I
    .registers 2
    .parameter

    .prologue
    .line 944
    packed-switch p0, :pswitch_data_1a

    .line 957
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 946
    :pswitch_5
    const v0, 0x7f020002

    goto :goto_4

    .line 948
    :pswitch_9
    const v0, 0x7f020007

    goto :goto_4

    .line 950
    :pswitch_d
    const v0, 0x7f020004

    goto :goto_4

    .line 952
    :pswitch_11
    const v0, 0x7f020003

    goto :goto_4

    .line 954
    :pswitch_15
    const v0, 0x7f020005

    goto :goto_4

    .line 944
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_11
    .end packed-switch
.end method

.method private static getFallbackTitleRes(I)I
    .registers 2
    .parameter

    .prologue
    .line 980
    packed-switch p0, :pswitch_data_18

    .line 990
    :pswitch_3
    const v0, 0x7f07023d

    :goto_6
    return v0

    .line 982
    :pswitch_7
    const v0, 0x7f07023e

    goto :goto_6

    .line 984
    :pswitch_b
    const v0, 0x7f07023f

    goto :goto_6

    .line 986
    :pswitch_f
    const v0, 0x7f070240

    goto :goto_6

    .line 988
    :pswitch_13
    const v0, 0x7f070241

    goto :goto_6

    .line 980
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_13
    .end packed-switch
.end method

.method private static getHeaderIconRes(I)I
    .registers 3
    .parameter

    .prologue
    .line 995
    packed-switch p0, :pswitch_data_20

    .line 1008
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid backend"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :pswitch_b
    const v0, 0x7f02009e

    .line 1006
    :goto_e
    return v0

    .line 999
    :pswitch_f
    const v0, 0x7f0200a1

    goto :goto_e

    .line 1001
    :pswitch_13
    const v0, 0x7f0200a2

    goto :goto_e

    .line 1003
    :pswitch_17
    const v0, 0x7f0200a0

    goto :goto_e

    .line 1006
    :pswitch_1b
    const v0, 0x7f0200a3

    goto :goto_e

    .line 995
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_f
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private static getHeaderIntent(I)Landroid/content/Intent;
    .registers 3
    .parameter "backend"

    .prologue
    .line 909
    packed-switch p0, :pswitch_data_1a

    .line 919
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 915
    :pswitch_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_4

    .line 909
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;
    .registers 3
    .parameter "context"

    .prologue
    .line 1066
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    if-nez v0, :cond_13

    .line 1067
    new-instance v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getBitmapCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;-><init>(Landroid/content/Context;Lcom/android/volley/Cache;)V

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    .line 1069
    :cond_13
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    return-object v0
.end method

.method private static getLayout(Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;)I
    .registers 4
    .parameter "arrangement"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v0, v0

    packed-switch v0, :pswitch_data_38

    .line 889
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :pswitch_22
    const/4 v0, 0x0

    .line 887
    :goto_23
    return v0

    .line 878
    :pswitch_24
    const v0, 0x7f0400c0

    goto :goto_23

    .line 881
    :pswitch_28
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    if-nez v0, :cond_30

    .line 882
    const v0, 0x7f0400be

    goto :goto_23

    .line 884
    :cond_30
    const v0, 0x7f0400bf

    goto :goto_23

    .line 887
    :pswitch_34
    const v0, 0x7f0400bc

    goto :goto_23

    .line 871
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_24
        :pswitch_28
        :pswitch_34
    .end packed-switch
.end method

.method private static getTitleRes(Lcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 962
    packed-switch p2, :pswitch_data_2e

    .line 968
    :pswitch_3
    if-eqz p0, :cond_24

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 969
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 971
    :goto_13
    return-object v0

    .line 964
    :pswitch_14
    const v0, 0x7f07023d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 966
    :pswitch_1c
    const v0, 0x7f070242

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 971
    :cond_24
    invoke-static {p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getFallbackTitleRes(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 962
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private isConsumptionAppDisabled(Landroid/content/Context;I)Z
    .registers 7
    .parameter "context"
    .parameter "backendId"

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-static {p2}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, packageName:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 186
    :cond_7
    :goto_7
    return v2

    .line 185
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, state:I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_7
.end method

.method private mergePortAndLandRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, port:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    .local p2, land:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 217
    .local v5, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    if-eqz p2, :cond_81

    if-eqz p1, :cond_81

    .line 218
    move-object v4, p2

    .line 219
    .local v4, largerSet:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    move-object v8, p1

    .line 220
    .local v8, smallerSet:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_16

    .line 221
    move-object v4, p1

    .line 222
    move-object v8, p2

    .line 224
    :cond_16
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    .line 225
    .local v3, largeWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    const/4 v0, 0x0

    .line 226
    .local v0, found:Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    .line 227
    .local v7, smallWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    iget-object v9, v3, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    iget-object v10, v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 228
    invoke-static {v7, v3}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->merge(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v0, 0x1

    .line 233
    .end local v7           #smallWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    :cond_49
    if-nez v0, :cond_1a

    .line 234
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 238
    .end local v0           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #largeWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    :cond_4f
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    .line 239
    .restart local v7       #smallWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    const/4 v0, 0x0

    .line 240
    .restart local v0       #found:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    .line 241
    .local v6, outputWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    iget-object v9, v6, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    iget-object v10, v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 242
    const/4 v0, 0x1

    .line 246
    .end local v6           #outputWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    :cond_7b
    if-nez v0, :cond_53

    .line 247
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 251
    .end local v0           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #largerSet:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    .end local v7           #smallWrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    .end local v8           #smallerSet:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    :cond_81
    return-object v5
.end method

.method private populateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;IIILjava/util/List;Ljava/util/List;Ljava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .registers 42
    .parameter "context"
    .parameter "widget"
    .parameter "appWidgetId"
    .parameter "containerId"
    .parameter "location"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;"
        }
    .end annotation

    .prologue
    .line 577
    .local p6, rows:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;>;"
    .local p7, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    .local p8, cachedImages:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 578
    .local v19, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    .line 579
    .local v28, urisToLoad:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    const/16 v25, 0x0

    .line 581
    .local v25, shouldAsyncLoadImages:Z
    const/16 v26, 0x0

    .line 582
    .local v26, shownMetadata:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 583
    .local v17, packageName:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 585
    new-instance v27, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;-><init>()V

    .line 586
    .local v27, sorter:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;
    move-object/from16 v0, v27

    move-object/from16 v1, p6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->sort(Ljava/util/List;Landroid/content/res/Resources;)V

    .line 589
    const/16 v22, 0x0

    .local v22, rowIndex:I
    :goto_27
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c0

    .line 590
    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 592
    .local v20, row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    new-instance v24, Landroid/widget/RemoteViews;

    const v30, 0x7f0400ba

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 593
    .local v24, rowLayout:Landroid/widget/RemoteViews;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 594
    .local v23, rowItems:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    const/4 v7, 0x0

    .local v7, blockIndex:I
    :goto_4e
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v7, v0, :cond_168

    .line 595
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/widget/consumption/Block;

    .line 597
    .local v6, block:Lcom/google/android/finsky/widget/consumption/Block;
    new-instance v16, Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Lcom/google/android/finsky/widget/consumption/Block;->getLayoutId()I

    move-result v30

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 599
    .local v16, item:Landroid/widget/RemoteViews;
    sget-object v30, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->IMAGE_IDS:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    invoke-virtual {v6}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 600
    .local v5, N:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_7d
    if-ge v12, v5, :cond_15d

    .line 602
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7, v12}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->getSortedIndex(III)I

    move-result v10

    .line 603
    .local v10, docIndex:I
    if-ltz v10, :cond_91

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-lt v10, v0, :cond_94

    .line 600
    :cond_91
    :goto_91
    add-int/lit8 v12, v12, 0x1

    goto :goto_7d

    .line 606
    :cond_94
    move-object/from16 v0, p7

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    .line 607
    .local v9, doc:Lcom/google/android/finsky/services/ConsumptionAppDoc;
    if-eqz p8, :cond_14a

    .line 608
    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageWidthRes(I)I

    move-result v31

    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v32

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getCachedImage(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 611
    .local v8, cachedBitmap:Landroid/graphics/Bitmap;
    sget-object v30, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->IMAGE_IDS:[I

    aget v30, v30, v12

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 612
    if-nez v8, :cond_c7

    .line 613
    const/16 v25, 0x1

    .line 618
    .end local v8           #cachedBitmap:Landroid/graphics/Bitmap;
    :cond_c7
    :goto_c7
    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageWidthRes(I)I

    move-result v30

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    .line 619
    .local v29, widthDp:I
    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v30

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 620
    .local v11, heightDp:I
    new-instance v30, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;-><init>(Landroid/net/Uri;II)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {v6}, Lcom/google/android/finsky/widget/consumption/Block;->supportsMetadata()Z

    move-result v30

    if-eqz v30, :cond_12b

    .line 622
    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getReason()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_14e

    if-nez v26, :cond_14e

    .line 623
    const v30, 0x7f08019c

    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getReason()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 624
    const v30, 0x7f08019c

    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 625
    const/16 v26, 0x1

    .line 631
    :cond_12b
    :goto_12b
    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getViewIntent()Landroid/content/Intent;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v12, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 633
    .local v18, pendingIntent:Landroid/app/PendingIntent;
    sget-object v30, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->ACCESSIBILITY_OVERLAY_IDS:[I

    aget v30, v30, v12

    move-object/from16 v0, v16

    move/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_91

    .line 616
    .end local v11           #heightDp:I
    .end local v18           #pendingIntent:Landroid/app/PendingIntent;
    .end local v29           #widthDp:I
    :cond_14a
    const/16 v25, 0x1

    goto/16 :goto_c7

    .line 627
    .restart local v11       #heightDp:I
    .restart local v29       #widthDp:I
    :cond_14e
    const v30, 0x7f08019c

    const/16 v31, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_12b

    .line 635
    .end local v9           #doc:Lcom/google/android/finsky/services/ConsumptionAppDoc;
    .end local v10           #docIndex:I
    .end local v11           #heightDp:I
    .end local v29           #widthDp:I
    :cond_15d
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4e

    .line 640
    .end local v5           #N:I
    .end local v6           #block:Lcom/google/android/finsky/widget/consumption/Block;
    .end local v12           #i:I
    .end local v16           #item:Landroid/widget/RemoteViews;
    :cond_168
    and-int/lit8 v30, p5, 0x1

    if-eqz v30, :cond_1aa

    const/4 v14, 0x1

    .line 641
    .local v14, isInLeftHalf:Z
    :goto_16d
    and-int/lit8 v30, p5, 0x2

    if-eqz v30, :cond_1ac

    const/4 v15, 0x1

    .line 642
    .local v15, isInRightHalf:Z
    :goto_172
    const/16 v21, 0x1

    .line 643
    .local v21, rowGravity:I
    if-eqz v14, :cond_1ae

    .line 644
    const/16 v21, 0x5

    .line 648
    :cond_178
    :goto_178
    const v30, 0x7f080195

    const-string v31, "setGravity"

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 650
    if-eqz v14, :cond_18d

    .line 652
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 654
    :cond_18d
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_191
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1b3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/RemoteViews;

    .line 655
    .restart local v16       #item:Landroid/widget/RemoteViews;
    const v30, 0x7f080195

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_191

    .line 640
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #isInLeftHalf:Z
    .end local v15           #isInRightHalf:Z
    .end local v16           #item:Landroid/widget/RemoteViews;
    .end local v21           #rowGravity:I
    :cond_1aa
    const/4 v14, 0x0

    goto :goto_16d

    .line 641
    .restart local v14       #isInLeftHalf:Z
    :cond_1ac
    const/4 v15, 0x0

    goto :goto_172

    .line 645
    .restart local v15       #isInRightHalf:Z
    .restart local v21       #rowGravity:I
    :cond_1ae
    if-eqz v15, :cond_178

    .line 646
    const/16 v21, 0x3

    goto :goto_178

    .line 657
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_1b3
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 589
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_27

    .line 659
    .end local v7           #blockIndex:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #isInLeftHalf:Z
    .end local v15           #isInRightHalf:Z
    .end local v20           #row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    .end local v21           #rowGravity:I
    .end local v23           #rowItems:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v24           #rowLayout:Landroid/widget/RemoteViews;
    :cond_1c0
    new-instance v31, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    const/16 v32, 0x0

    if-nez v25, :cond_1d6

    const/16 v30, 0x1

    :goto_1c8
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move/from16 v3, v30

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/widget/RemoteViews;ZLjava/util/List;)V

    return-object v31

    :cond_1d6
    const/16 v30, 0x0

    goto :goto_1c8
.end method


# virtual methods
.method protected findLargestBlock(Landroid/content/Context;IIIIZ)Lcom/google/android/finsky/widget/consumption/Block;
    .registers 19
    .parameter "context"
    .parameter "availableWidth"
    .parameter "availableHeight"
    .parameter "listBackend"
    .parameter "numImagesLeft"
    .parameter "isFirstInRow"

    .prologue
    .line 833
    const/4 v5, 0x0

    .line 834
    .local v5, largest:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBlocks(I)[Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    .local v1, arr$:[Lcom/google/android/finsky/widget/consumption/Block;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_7
    if-ge v4, v6, :cond_5f

    aget-object v2, v1, v4

    .line 835
    .local v2, block:Lcom/google/android/finsky/widget/consumption/Block;
    iget-object v9, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->hashCode()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 836
    .local v3, currentRowStarts:I
    if-eqz p6, :cond_27

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->hasMaxRowStartCount()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->getMaxRowStartCount()I

    move-result v9

    if-lt v3, v9, :cond_27

    .line 834
    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 841
    :cond_27
    const/4 v7, 0x1

    .line 842
    .local v7, taller:Z
    const/4 v8, 0x1

    .line 844
    .local v8, wider:Z
    if-eqz v5, :cond_41

    .line 845
    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v10

    if-le v9, v10, :cond_5b

    const/4 v7, 0x1

    .line 846
    :goto_36
    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v10

    if-lt v9, v10, :cond_5d

    const/4 v8, 0x1

    .line 849
    :cond_41
    :goto_41
    if-eqz v7, :cond_24

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v9

    if-gt v9, p3, :cond_24

    .line 853
    if-eqz v8, :cond_24

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v9

    if-gt v9, p2, :cond_24

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v9

    move/from16 v0, p5

    if-lt v0, v9, :cond_24

    .line 855
    move-object v5, v2

    goto :goto_24

    .line 845
    :cond_5b
    const/4 v7, 0x0

    goto :goto_36

    .line 846
    :cond_5d
    const/4 v8, 0x0

    goto :goto_41

    .line 860
    .end local v2           #block:Lcom/google/android/finsky/widget/consumption/Block;
    .end local v3           #currentRowStarts:I
    .end local v7           #taller:Z
    .end local v8           #wider:Z
    :cond_5f
    if-eqz v5, :cond_79

    .line 861
    if-eqz p6, :cond_79

    .line 862
    iget-object v9, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/google/android/finsky/widget/consumption/Block;->hashCode()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 863
    .restart local v3       #currentRowStarts:I
    iget-object v9, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/google/android/finsky/widget/consumption/Block;->hashCode()I

    move-result v10

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 867
    .end local v3           #currentRowStarts:I
    :cond_79
    return-object v5
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "newOptions"

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 87
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 65
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 66
    if-ne v0, v2, :cond_19

    .line 81
    :cond_18
    :goto_18
    return-void

    .line 70
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v1

    .line 72
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->getBackendId(Ljava/lang/String;)I

    move-result v0

    .line 73
    if-eq v0, v2, :cond_18

    .line 77
    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-class v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v0

    .line 79
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_18
.end method

.method protected populateWidget(Landroid/widget/RemoteViews;IIILandroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;IILjava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .registers 28
    .parameter "widget"
    .parameter "appWidgetId"
    .parameter "containerId"
    .parameter "location"
    .parameter "context"
    .parameter "docList"
    .parameter "width"
    .parameter "height"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "III",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;"
        }
    .end annotation

    .prologue
    .line 512
    .local p9, cachedImages:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 514
    new-instance v8, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v8, v0, v2, v3, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Ljava/util/List;ZI)V

    .line 517
    .local v8, rows:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v4

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v5

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateWidgetLayout(Landroid/content/Context;IIII)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p9

    .line 520
    invoke-direct/range {v2 .. v10}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->populateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;IIILjava/util/List;Ljava/util/List;Ljava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v17

    .line 522
    .local v17, viewTree:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    iget-boolean v2, v8, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->showBackground:Z

    move-object/from16 v0, v17

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$302(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    .line 523
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->isEmpty()Z

    move-result v2

    move-object/from16 v0, v17

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$402(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    .line 524
    iget v2, v8, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->heightRemaining:I

    move-object/from16 v0, v17

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->heightRemaining:I
    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$502(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)I

    .line 527
    const/4 v15, 0x0

    .line 528
    .local v15, maxRowWidth:I
    invoke-virtual {v8}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_56
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 529
    .local v16, row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v12, 0x0

    .line 530
    .local v12, currRowWidth:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_67
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/widget/consumption/Block;

    .line 531
    .local v11, block:Lcom/google/android/finsky/widget/consumption/Block;
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_67

    .line 533
    .end local v11           #block:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_7b
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 534
    goto :goto_56

    .line 535
    .end local v12           #currRowWidth:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    :cond_80
    move-object/from16 v0, v17

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->widestRowWidth:I
    invoke-static {v0, v15}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$602(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)I

    .line 537
    return-object v17
.end method

.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
    .registers 35
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter
    .parameter "appWidgetIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, cachedImages:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Landroid/graphics/Bitmap;>;"
    if-nez p4, :cond_3

    .line 178
    :cond_2
    return-void

    .line 102
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v27

    .line 104
    .local v27, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    const v2, 0x7f0b0086

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v26

    .line 106
    .local v26, titleHeight:I
    move-object/from16 v18, p4

    .local v18, arr$:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_19
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget v4, v18, v21

    .line 107
    .local v4, appWidgetId:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateAccountNeededState(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v28

    .line 110
    .local v28, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 106
    .end local v28           #views:Landroid/widget/RemoteViews;
    :goto_3a
    add-int/lit8 v21, v21, 0x1

    goto :goto_19

    .line 114
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v19

    .line 115
    .local v19, backendType:Ljava/lang/String;
    if-nez v19, :cond_59

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateConfigurationState(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v28

    .line 118
    .restart local v28       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_3a

    .line 122
    .end local v28           #views:Landroid/widget/RemoteViews;
    :cond_59
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, backend:I
    if-eqz v3, :cond_79

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v2

    if-nez v2, :cond_79

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateUnavailableState(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v28

    .line 127
    .restart local v28       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_3a

    .line 131
    .end local v28           #views:Landroid/widget/RemoteViews;
    :cond_79
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->isConsumptionAppDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateDisabledState(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v28

    .line 133
    .restart local v28       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_3a

    .line 137
    .end local v28           #views:Landroid/widget/RemoteViews;
    :cond_93
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBoundingBoxes(Landroid/content/Context;I)[I

    move-result-object v20

    .line 139
    .local v20, dimens:[I
    const/4 v2, 0x0

    aget v2, v20, v2

    if-nez v2, :cond_c8

    const/4 v2, 0x1

    aget v2, v20, v2

    if-nez v2, :cond_c8

    const/4 v2, 0x2

    aget v2, v20, v2

    if-nez v2, :cond_c8

    const/4 v2, 0x3

    aget v2, v20, v2

    if-nez v2, :cond_c8

    .line 140
    if-nez v3, :cond_b6

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->warmImageCache(Landroid/content/Context;I)V

    .line 144
    :cond_b6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v28

    .line 145
    .restart local v28       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_3a

    .line 149
    .end local v28           #views:Landroid/widget/RemoteViews;
    :cond_c8
    const/4 v2, 0x0

    aget v16, v20, v2

    .line 150
    .local v16, minWidth:I
    const/4 v2, 0x1

    aget v2, v20, v2

    sub-int v9, v2, v26

    .line 151
    .local v9, minHeight:I
    const/4 v2, 0x2

    aget v8, v20, v2

    .line 152
    .local v8, maxWidth:I
    const/4 v2, 0x3

    aget v2, v20, v2

    sub-int v17, v2, v26

    .line 154
    .local v17, maxHeight:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    .local v5, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 155
    invoke-direct/range {v2 .. v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateViewTree(IILcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;Ljava/util/Map;II)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v23

    .local v23, land:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    .line 157
    invoke-direct/range {v10 .. v17}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateViewTree(IILcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;Ljava/util/Map;II)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v25

    .line 160
    .local v25, port:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    new-instance v29, Landroid/widget/RemoteViews;

    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static/range {v23 .. v23}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$000(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Landroid/widget/RemoteViews;

    move-result-object v2

    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static/range {v25 .. v25}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$000(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Landroid/widget/RemoteViews;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v6}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 162
    .local v29, widget:Landroid/widget/RemoteViews;
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static/range {v23 .. v23}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v2

    if-eqz v2, :cond_112

    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static/range {v25 .. v25}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v2

    if-nez v2, :cond_139

    .line 164
    :cond_112
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v25 .. v25}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v2

    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mergePortAndLandRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    .line 166
    .local v22, imagesToLoad:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    move-result-object v2

    new-instance v6, Lcom/google/android/finsky/widget/consumption/ImageBatch;

    new-instance v7, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;I)V

    move-object/from16 v0, v22

    invoke-direct {v6, v3, v0, v7}, Lcom/google/android/finsky/widget/consumption/ImageBatch;-><init>(ILjava/util/List;Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->enqueue(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V

    goto/16 :goto_3a

    .line 175
    .end local v22           #imagesToLoad:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    :cond_139
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_3a
.end method

.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->getCachedBitmaps()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    .line 94
    return-void
.end method

.method public warmImageCache(Landroid/content/Context;I)V
    .registers 12
    .parameter "context"
    .parameter "backend"

    .prologue
    const/4 v8, 0x0

    .line 191
    invoke-static {p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getConsumptionDocLists(I)Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, docLists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 194
    .local v4, imagesToPrefetch:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .line 195
    .local v0, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_d

    .line 196
    new-instance v6, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {v5}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v6, v5, v8, v8}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;-><init>(Landroid/net/Uri;II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 199
    .end local v0           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .end local v2           #i:I
    :cond_3a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6a

    .line 200
    sget-boolean v5, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v5, :cond_5d

    .line 201
    const-string v5, "Warming cache for %s with %d images"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_5d
    invoke-static {p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/widget/consumption/ImageBatch;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v4, v7}, Lcom/google/android/finsky/widget/consumption/ImageBatch;-><init>(ILjava/util/List;Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;)V

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->enqueue(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V

    .line 206
    :cond_6a
    return-void
.end method
