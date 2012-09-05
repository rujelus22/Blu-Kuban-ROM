.class public Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$4;,
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;,
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;,
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;,
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;,
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;,
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;,
        Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;
    }
.end annotation


# static fields
.field private static final sAssetAbcCollator:Ljava/text/Collator;

.field private static final sAssetAbcSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private final mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/adapters/AggregatedAdapter",
            "<",
            "Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private final mDownloadingSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

.field private final mHasAssetView:Z

.field private final mInstalledSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mListView:Landroid/widget/ListView;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private final mManualUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

.field private final mOwnedSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

.field private final mUnsortedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->sAssetAbcCollator:Ljava/text/Collator;

    .line 99
    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$1;

    invoke-direct {v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->sAssetAbcSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Landroid/view/View$OnClickListener;Z)V
    .registers 11
    .parameter "context"
    .parameter "installer"
    .parameter "listener"
    .parameter "hasAssetView"

    .prologue
    const/4 v5, 0x0

    .line 335
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUnsortedAssets:Ljava/util/List;

    .line 336
    iput-object p1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 338
    iput-object p3, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 340
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 343
    .local v0, rsrc:Landroid/content/res/Resources;
    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_2c

    if-eqz v0, :cond_2c

    .line 344
    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 347
    :cond_2c
    iput-boolean p4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mHasAssetView:Z

    .line 349
    new-instance v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    sget-object v2, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->DOWNLOADING:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const v3, 0x7f0700d9

    sget-object v4, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 351
    new-instance v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    sget-object v2, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->UPDATE_AVAILABLE:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const v3, 0x7f0700da

    sget-object v4, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 353
    new-instance v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    sget-object v2, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->UPDATE_AVAILABLE:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const v3, 0x7f0700db

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 355
    new-instance v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    sget-object v2, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->OWNED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const v3, 0x7f0700dc

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 357
    new-instance v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    sget-object v2, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->INSTALLED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const v3, 0x7f0700dd

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 360
    new-instance v1, Lcom/google/android/finsky/adapters/AggregatedAdapter;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/finsky/adapters/AggregatedAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    .line 365
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->sAssetAbcCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->sAssetAbcSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUnsortedAssets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->updateAssetIconIfNecessary(Lcom/google/android/vending/model/Asset;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getDownloadingAssetView(Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getAssetView(Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/receivers/Installer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    return-object v0
.end method

.method private bindBitmapForAsset(Lcom/google/android/vending/model/Asset;Landroid/widget/ImageView;)V
    .registers 10
    .parameter "asset"
    .parameter "imageView"

    .prologue
    .line 544
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;)V

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->getOrBindImmediately(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 555
    .local v6, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_23

    .line 556
    sget-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    :cond_23
    return-void
.end method

.method private configureCommonSettings(Lcom/google/android/vending/model/Asset;Landroid/view/View;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;)V
    .registers 14
    .parameter "asset"
    .parameter "convertView"
    .parameter "holder"

    .prologue
    const/4 v5, 0x0

    .line 526
    iget-object v6, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v0

    .line 531
    .local v0, descriptionStringId:I
    iget-object v6, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getDevName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v6, p3, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->wifiBug:Landroid/view/View;

    if-eqz v6, :cond_41

    .line 536
    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->hasRequiredInstallationSize()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getRequiredInstallationSize()J

    move-result-wide v1

    .line 538
    .local v1, installSize:J
    :goto_32
    iget-object v6, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {v6}, Lcom/google/android/finsky/receivers/Installer;->getMaxBytesOverMobileRecommended()J

    move-result-wide v3

    .line 539
    .local v3, warningSize:J
    iget-object v6, p3, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->wifiBug:Landroid/view/View;

    cmp-long v7, v1, v3

    if-lez v7, :cond_45

    :goto_3e
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 541
    .end local v1           #installSize:J
    .end local v3           #warningSize:J
    :cond_41
    return-void

    .line 536
    :cond_42
    const-wide/16 v1, 0x0

    goto :goto_32

    .line 539
    .restart local v1       #installSize:J
    .restart local v3       #warningSize:J
    :cond_45
    const/16 v5, 0x8

    goto :goto_3e
.end method

.method private getAccountNameView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 436
    if-nez p1, :cond_b

    .line 437
    iget-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 439
    :cond_b
    const v1, 0x7f080002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 441
    .local v0, accountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;
    iget-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 442
    return-object p1
.end method

.method private getAssetView(Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;)Landroid/view/View;
    .registers 11
    .parameter "asset"
    .parameter "convertView"
    .parameter "parent"
    .parameter "assetType"

    .prologue
    const/4 v5, 0x0

    .line 448
    if-nez p2, :cond_10

    .line 449
    iget-object v2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mHasAssetView:Z

    if-eqz v1, :cond_74

    const v1, 0x7f040008

    :goto_c
    invoke-virtual {v2, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 454
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;

    .line 456
    .local v0, holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;
    if-nez v0, :cond_1d

    .line 457
    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;

    .end local v0           #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;
    invoke-direct {v0, p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 460
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_1d
    iput-object p1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->asset:Lcom/google/android/vending/model/Asset;

    .line 461
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    if-eqz v1, :cond_4b

    .line 463
    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->hasRating()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getRatingCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_78

    .line 464
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getAverageRating()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 465
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 470
    :cond_4b
    :goto_4b
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getDevName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->bindBitmapForAsset(Lcom/google/android/vending/model/Asset;Landroid/widget/ImageView;)V

    .line 473
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->price:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$4;->$SwitchMap$com$google$android$finsky$adapters$MyDownloadsAdapter$AssetType:[I

    invoke-virtual {p4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_96

    .line 486
    :goto_70
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->configureCommonSettings(Lcom/google/android/vending/model/Asset;Landroid/view/View;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;)V

    .line 488
    return-object p2

    .line 449
    .end local v0           #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_74
    const v1, 0x7f040074

    goto :goto_c

    .line 467
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_78
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_4b

    .line 477
    :pswitch_7f
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->price:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->price:Landroid/widget/TextView;

    const v2, 0x7f0700fc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_70

    .line 482
    :pswitch_8d
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->price:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70

    .line 475
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_8d
        :pswitch_8d
    .end packed-switch
.end method

.method private getDownloadingAssetView(Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "asset"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 493
    if-nez p2, :cond_c

    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04005e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 498
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;

    .line 500
    .local v6, holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;
    if-nez v6, :cond_19

    .line 501
    new-instance v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;

    .end local v6           #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;
    invoke-direct {v6, p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;-><init>(Landroid/view/View;)V

    .line 504
    .restart local v6       #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;
    :cond_19
    iput-object p1, v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->asset:Lcom/google/android/vending/model/Asset;

    .line 505
    iget-object v0, v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->bindBitmapForAsset(Lcom/google/android/vending/model/Asset;Landroid/widget/ImageView;)V

    .line 510
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 512
    .local v1, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/finsky/download/DownloadQueue;->getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v2

    .line 514
    .local v2, download:Lcom/google/android/finsky/download/Download;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->downloadingBytes:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->downloadingPercentage:Landroid/widget/TextView;

    iget-object v5, v6, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/Download;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 517
    invoke-direct {p0, p1, p2, v6}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->configureCommonSettings(Lcom/google/android/vending/model/Asset;Landroid/view/View;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;)V

    .line 519
    return-object p2
.end method

.method private getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "sectionAdapter"

    .prologue
    .line 586
    if-nez p2, :cond_c

    .line 587
    iget-object v6, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04008f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 591
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;

    .line 593
    .local v0, holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;
    if-nez v0, :cond_19

    .line 594
    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;

    .end local v0           #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;
    invoke-direct {v0, p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;-><init>(Landroid/view/View;)V

    .line 597
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;
    :cond_19
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->titleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderTextId:I
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->access$1200(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 601
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 604
    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->access$1300(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    move-result-object v5

    .line 605
    .local v5, sectionAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
    if-eqz v5, :cond_7a

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->isVisible(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z

    move-result v6

    if-eqz v6, :cond_7a

    const/4 v2, 0x1

    .line 606
    .local v2, isActionVisible:Z
    :goto_4a
    if-eqz v5, :cond_7c

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->isWaiting(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v3, 0x1

    .line 608
    .local v3, isActionWaiting:Z
    :goto_53
    if-eqz v3, :cond_7e

    .line 609
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 630
    :cond_5b
    :goto_5b
    if-nez v3, :cond_5f

    if-nez v2, :cond_de

    :cond_5f
    const/4 v4, 0x1

    .line 631
    .local v4, isCountVisible:Z
    :goto_60
    iget-object v7, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    if-eqz v4, :cond_e0

    const/4 v6, 0x0

    :goto_65
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    if-eqz v4, :cond_79

    .line 633
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    :cond_79
    return-object p2

    .line 605
    .end local v2           #isActionVisible:Z
    .end local v3           #isActionWaiting:Z
    .end local v4           #isCountVisible:Z
    :cond_7a
    const/4 v2, 0x0

    goto :goto_4a

    .line 606
    .restart local v2       #isActionVisible:Z
    :cond_7c
    const/4 v3, 0x0

    goto :goto_53

    .line 610
    .restart local v3       #isActionWaiting:Z
    :cond_7e
    if-eqz v2, :cond_5b

    .line 611
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 613
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->getLabelId()I

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    new-instance v7, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;

    invoke-direct {v7, p0, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v6, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 622
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_c7

    .line 623
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5b

    .line 625
    :cond_c7
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 626
    iget-object v6, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5b

    .line 630
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_de
    const/4 v4, 0x0

    goto :goto_60

    .line 631
    .restart local v4       #isCountVisible:Z
    :cond_e0
    const/16 v6, 0x8

    goto :goto_65
.end method

.method public static getViewAsset(Landroid/view/View;)Lcom/google/android/vending/model/Asset;
    .registers 3
    .parameter "v"

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 750
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;

    if-eqz v1, :cond_d

    .line 751
    check-cast v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->asset:Lcom/google/android/vending/model/Asset;

    .line 753
    :goto_c
    return-object v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private putAssetsInBuckets()V
    .registers 25

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getAdapters()[Landroid/widget/BaseAdapter;

    move-result-object v3

    check-cast v3, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 662
    .local v3, adapters:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    move-object v4, v3

    .local v4, arr$:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    array-length v12, v4

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_f
    if-ge v11, v12, :cond_19

    aget-object v2, v4, v11

    .line 663
    .local v2, adapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->clearAssets()V

    .line 662
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 666
    .end local v2           #adapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    :cond_19
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v15

    .line 667
    .local v15, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v7

    .line 668
    .local v7, assetStore:Lcom/google/android/finsky/local/AssetStore;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v9, assetsWithUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUnsortedAssets:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_152

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/vending/model/Asset;

    .line 670
    .local v5, asset:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v5}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 672
    .local v17, packageName:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v13

    .line 673
    .local v13, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v13, :cond_5c

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto :goto_38

    .line 678
    :cond_5c
    invoke-interface {v13}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v6

    .line 679
    .local v6, assetState:Lcom/google/android/finsky/local/AssetState;
    sget-object v20, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_132

    .line 680
    invoke-virtual {v5}, Lcom/google/android/vending/model/Asset;->getVersionCode()J

    move-result-wide v18

    .line 681
    .local v18, serverVersionCode:J
    invoke-interface {v13}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v14

    .line 682
    .local v14, localVersionCode:I
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v16

    .line 684
    .local v16, packageManagerVersionCode:I
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->isDisabledByUser(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_38

    .line 691
    move/from16 v0, v16

    if-eq v0, v14, :cond_b6

    .line 692
    const-string v20, "Package %s -- local version inconsistency:"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    const-string v20, "  Server asset v=%d Local asset v=%d Package Mgr v=%d"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    :cond_b6
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_cb

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto/16 :goto_38

    .line 701
    :cond_cb
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v20, v18

    if-gez v20, :cond_d9

    .line 703
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38

    .line 704
    :cond_d9
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v20, v18

    if-nez v20, :cond_ef

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto/16 :goto_38

    .line 709
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    .line 710
    const-string v20, "Skip update of %s -- version inconsistency:"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    const-string v20, "  Server asset v=%d Local asset v=%d Package Mgr v=%d"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 717
    .end local v14           #localVersionCode:I
    .end local v16           #packageManagerVersionCode:I
    .end local v18           #serverVersionCode:J
    :cond_132
    invoke-interface {v13}, Lcom/google/android/finsky/local/LocalAsset;->isDownloadingOrInstalling()Z

    move-result v20

    if-eqz v20, :cond_145

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto/16 :goto_38

    .line 722
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto/16 :goto_38

    .line 726
    .end local v5           #asset:Lcom/google/android/vending/model/Asset;
    .end local v6           #assetState:Lcom/google/android/finsky/local/AssetState;
    .end local v13           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v17           #packageName:Ljava/lang/String;
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Lcom/google/android/finsky/receivers/Installer;->getAppsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v10

    .line 728
    .local v10, eligibleForBulkUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_166
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_190

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/vending/model/Asset;

    .line 729
    .local v8, assetWithUpdate:Lcom/google/android/vending/model/Asset;
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_184

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto :goto_166

    .line 732
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto :goto_166

    .line 736
    .end local v8           #assetWithUpdate:Lcom/google/android/vending/model/Asset;
    :cond_190
    move-object v4, v3

    array-length v12, v4

    const/4 v11, 0x0

    .local v11, i$:I
    :goto_193
    if-ge v11, v12, :cond_1a0

    aget-object v2, v4, v11

    .line 738
    .restart local v2       #adapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->sortAssets()V

    .line 741
    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->notifyDataSetChanged()V

    .line 736
    add-int/lit8 v11, v11, 0x1

    goto :goto_193

    .line 743
    .end local v2           #adapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    :cond_1a0
    return-void
.end method

.method private updateAssetIconIfNecessary(Lcom/google/android/vending/model/Asset;Landroid/graphics/Bitmap;)V
    .registers 12
    .parameter "asset"
    .parameter "bitmap"

    .prologue
    .line 562
    iget-object v7, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 563
    .local v2, firstVisibleRow:I
    iget-object v7, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 564
    .local v6, visibleChildCount:I
    move v3, v2

    .local v3, i:I
    :goto_d
    add-int v7, v2, v6

    if-ge v3, v7, :cond_46

    .line 565
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 566
    .local v4, item:Ljava/lang/Object;
    instance-of v7, v4, Lcom/google/android/vending/model/Asset;

    if-nez v7, :cond_1c

    .line 564
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1c
    move-object v1, v4

    .line 570
    check-cast v1, Lcom/google/android/vending/model/Asset;

    .line 571
    .local v1, currAsset:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v1}, Lcom/google/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 575
    iget-object v7, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    sub-int v8, v3, v2

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, assetRowView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;

    .line 577
    .local v5, viewHolder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;
    if-eqz v5, :cond_46

    iget-object v7, v5, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v7, :cond_46

    .line 578
    iget-object v7, v5, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-static {v7, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 582
    .end local v0           #assetRowView:Landroid/view/View;
    .end local v1           #currAsset:Lcom/google/android/vending/model/Asset;
    .end local v4           #item:Ljava/lang/Object;
    .end local v5           #viewHolder:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;
    :cond_46
    return-void
.end method


# virtual methods
.method public addAssets(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUnsortedAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 641
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUnsortedAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 643
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getCount()I

    move-result v0

    .line 402
    .local v0, itemCount:I
    if-lez v0, :cond_a

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 406
    :cond_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 423
    if-nez p1, :cond_4

    .line 425
    const/4 v0, 0x0

    .line 427
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 369
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 374
    if-nez p1, :cond_4

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 413
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    .line 415
    if-nez p1, :cond_c

    .line 416
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getAccountNameView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 418
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_b
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x4

    return v0
.end method

.method public isAssetItem(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getItemViewType(I)I

    move-result v0

    .line 432
    .local v0, itemType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 392
    if-nez p1, :cond_4

    .line 393
    const/4 v0, 0x1

    .line 396
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_3
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->putAssetsInBuckets()V

    .line 648
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 649
    return-void
.end method
